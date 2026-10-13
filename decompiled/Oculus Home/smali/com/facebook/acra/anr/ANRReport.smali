.class public Lcom/facebook/acra/anr/ANRReport;
.super Ljava/lang/Object;
.source "ANRReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAXIMUM_NUMBER_OF_OTHER_PROCESSES_TO_REPORT:I = 0x5


# instance fields
.field private mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

.field private final mANRProcessErrorProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAnrProcessStateIndex:I

.field private final mErrorReporter:Lcom/facebook/acra/ErrorReporter;

.field private final mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

.field private mMaxUsedAnrProcessStateIndex:I

.field private mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

.field private mTracesFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/facebook/acra/anr/ANRReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorReporter"    # Lcom/facebook/acra/ErrorReporter;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    .line 76
    new-instance v0, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    const-string v1, ".cachedreport"

    const-string v2, "traces"

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    .line 81
    return-void
.end method

.method private addProcessErrorPropertiesToErrorReport()V
    .locals 5

    .prologue
    .line 361
    iget-object v3, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v3

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    iget-object v4, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-virtual {v2, v4}, Lcom/facebook/acra/ErrorReporter;->addToAnrInProgressUpdateFile(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 368
    .local v1, "success":Z
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    if-eqz v1, :cond_0

    .line 370
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 372
    :cond_0
    return-void

    .line 365
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .restart local v1    # "success":Z
    goto :goto_0

    .line 368
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private convertRawBytesToLong([B)J
    .locals 8
    .param p1, "buffer"    # [B

    .prologue
    .line 277
    const-wide/16 v2, 0x0

    .line 278
    .local v2, "value":J
    const/4 v1, 0x0

    .line 279
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 280
    aget-byte v4, p1, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    .line 281
    add-int/lit8 v1, v1, 0x8

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-wide v2
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    .line 446
    if-nez p0, :cond_1

    move v0, v1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 449
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 450
    .local v0, "deleted":Z
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 451
    const/4 v0, 0x1

    .line 453
    :cond_2
    if-nez v0, :cond_0

    .line 454
    sget-object v2, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not delete error report: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private initializeProcessErrorPropertiesOnErrorReport()V
    .locals 6

    .prologue
    .line 377
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v2

    .line 378
    :try_start_0
    const-string v3, "anr_process_error_detected_time"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_process_error_detected_time"

    .line 380
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "anr_process_error_detection_failure_time"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_process_error_detection_failure_time"

    .line 383
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 381
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v3, "anr_process_error_detection_failure_cause"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_process_error_detection_failure_cause"

    .line 387
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v3, "anr_system_error_msg"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_system_error_msg"

    .line 391
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v3, "anr_system_tag"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_system_tag"

    .line 394
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "anr_process_error_started_time"

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v4, "anr_process_error_started_time"

    .line 397
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    if-gt v0, v1, :cond_0

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_other_process_error_state_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anr_other_process_error_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 406
    monitor-exit v2

    .line 407
    return-void

    .line 406
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static purgeDirectory(Ljava/io/File;)V
    .locals 6
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 460
    if-eqz p0, :cond_1

    .line 461
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 462
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 464
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 465
    invoke-static {v0}, Lcom/facebook/acra/anr/ANRReport;->purgeDirectory(Ljava/io/File;)V

    .line 468
    :cond_0
    invoke-static {v0}, Lcom/facebook/acra/anr/ANRReport;->deleteFile(Ljava/io/File;)Z

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method private recordSigquitTimes(Ljava/io/File;)Ljava/util/SortedMap;
    .locals 20
    .param p1, "sigquitTimeDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 258
    .local v10, "timesMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 259
    .local v7, "sigquitTimeFiles":[Ljava/io/File;
    array-length v14, v7

    const/4 v11, 0x0

    move v13, v11

    :goto_0
    if-ge v13, v14, :cond_6

    aget-object v6, v7, v13

    .line 260
    .local v6, "sigquitTimeFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v4, "input":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 261
    const/16 v11, 0x8

    :try_start_1
    new-array v2, v11, [B

    .line 262
    .local v2, "buffer":[B
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 263
    .local v5, "read":I
    const/16 v11, 0x8

    if-eq v5, v11, :cond_2

    .line 264
    sget-object v11, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Corrupted file %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    if-eqz v4, :cond_0

    if-eqz v12, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    .end local v2    # "buffer":[B
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "read":I
    :cond_0
    :goto_1
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_0

    .line 269
    .restart local v2    # "buffer":[B
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "read":I
    :catch_0
    move-exception v11

    :try_start_3
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v2    # "buffer":[B
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v5    # "read":I
    :catch_1
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/IOException;
    sget-object v11, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v12, "Could not read from file %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v12, v15}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 269
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v5    # "read":I
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 267
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/facebook/acra/anr/ANRReport;->convertRawBytesToLong([B)J

    move-result-wide v8

    .line 268
    .local v8, "timeVal":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v10, v11, v15}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    if-eqz v4, :cond_0

    if-eqz v12, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_2
    move-exception v11

    :try_start_7
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 260
    .end local v2    # "buffer":[B
    .end local v5    # "read":I
    .end local v8    # "timeVal":J
    :catch_3
    move-exception v11

    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 269
    :catchall_0
    move-exception v12

    move-object/from16 v19, v12

    move-object v12, v11

    move-object/from16 v11, v19

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v12, :cond_5

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_4
    :goto_3
    :try_start_a
    throw v11

    :catch_4
    move-exception v15

    invoke-virtual {v12, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 273
    .end local v4    # "input":Ljava/io/FileInputStream;
    .end local v6    # "sigquitTimeFile":Ljava/io/File;
    :cond_6
    return-object v10

    .line 269
    .restart local v4    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "sigquitTimeFile":Ljava/io/File;
    :catchall_1
    move-exception v11

    goto :goto_2
.end method


# virtual methods
.method public collectThreadDump(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;IZJJJJLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 21
    .param p1, "delay"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "startupANRDetected"    # Z
    .param p3, "loomTraceId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "longStallTraceId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "anrDetectorId"    # I
    .param p6, "inForeground"    # Z
    .param p7, "detectionUptimeMillis"    # J
    .param p9, "detectorStartTime"    # J
    .param p11, "actualStartTime"    # J
    .param p13, "switchTime"    # J
    .param p15, "systemTraces"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16, "tracesFileName"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p17, "sigquitTimeDir"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p18, "mySigquitTimeFileName"    # Ljava/lang/String;
    .param p19, "javaCallbackUptime"    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    sget-object v15, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v14, v15}, Lcom/facebook/acra/ErrorReporter;->checkAndMaybeUpdateDailySentReportCount(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 109
    if-eqz p16, :cond_0

    .line 111
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p16

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v12, "tracesFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 254
    .end local v12    # "tracesFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v14

    sub-long v10, p7, v14

    .line 118
    .local v10, "timeSinceAppStart":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v14

    sub-long p9, p9, v14

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v14, :cond_2

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    invoke-interface {v14}, Lcom/facebook/acra/PerformanceMarker;->markerStart()V

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v14, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14, v15}, Lcom/facebook/acra/anr/ANRDataProvider;->provideStats(Lcom/facebook/acra/ErrorReporter;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14, v15}, Lcom/facebook/acra/anr/ANRDataProvider;->provideLooperProfileInfo(Lcom/facebook/acra/ErrorReporter;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14, v15}, Lcom/facebook/acra/anr/ANRDataProvider;->provideDexStatus(Lcom/facebook/acra/ErrorReporter;)V

    .line 129
    :cond_3
    if-eqz p1, :cond_4

    .line 130
    const-string v14, "anr_timeout_delay"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/facebook/acra/anr/ANRReport;->initializeProcessErrorPropertiesOnErrorReport()V

    .line 133
    const-string v14, "anr_detected_uptime"

    .line 134
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 133
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v14, "anr_detect_time_tag"

    .line 136
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 135
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v14, "anr_recovery_delay"

    const-string v15, "-1"

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v14, "anr_detected_pre_gkstore"

    .line 142
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 141
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v14, "anr_detector_id"

    .line 144
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 143
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v14, "anr_detector_start_time"

    .line 146
    invoke-static/range {p9 .. p10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 145
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v14, "asl_app_in_foreground"

    .line 148
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 147
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v14, "anr_java_callback_uptime"

    invoke-static/range {p19 .. p19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-wide/16 v14, 0x0

    cmp-long v14, p11, v14

    if-lez v14, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v14

    sub-long p11, p11, v14

    .line 152
    const-string v14, "anr_detector_actual_start_time"

    .line 153
    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 152
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v14, p13, v14

    if-lez v14, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v14

    sub-long p13, p13, v14

    .line 157
    const-string v14, "anr_detector_switch_time"

    .line 158
    invoke-static/range {p13 .. p14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 157
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_6
    const-string v14, "black_box_trace"

    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v14, "long_stall_trace"

    move-object/from16 v0, p4

    invoke-static {v14, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v14, "anr_async_broadcast_receivers"

    .line 164
    invoke-static {}, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->blameActiveReceivers()Ljava/lang/String;

    move-result-object v15

    .line 162
    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v14, "first_sigquit"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v14, "sigquit_times"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz p17, :cond_9

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, p17

    invoke-direct {v0, v1}, Lcom/facebook/acra/anr/ANRReport;->recordSigquitTimes(Ljava/io/File;)Ljava/util/SortedMap;

    move-result-object v9

    .line 169
    .local v9, "sigquitTimesMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 170
    .local v5, "first":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {v9}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 172
    .local v8, "sigquitTime":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v5, :cond_7

    .line 173
    const-string v16, "first_sigquit"

    .line 175
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 173
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v5, 0x0

    .line 180
    :goto_2
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_7
    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 182
    .end local v8    # "sigquitTime":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_8
    const-string v14, "sigquit_times"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "first":Z
    .end local v9    # "sigquitTimesMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_9
    invoke-static {}, Lcom/facebook/acra/ACRA;->getCachedShouldDedupDiskPersistence()Z

    move-result v3

    .line 185
    .local v3, "dedupDiskPersistence":Z
    const/4 v6, 0x0

    .line 187
    .local v6, "outStream":Ljava/io/OutputStream;
    if-nez p16, :cond_14

    .line 189
    if-eqz v3, :cond_d

    .line 190
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .end local v6    # "outStream":Ljava/io/OutputStream;
    .local v7, "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .line 201
    .end local v7    # "outStream":Ljava/io/OutputStream;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    :goto_3
    if-eqz p15, :cond_f

    .line 202
    const-string v14, "anr_with_sigquit_traces"

    const-string v15, "1"

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v13, Ljava/io/PrintWriter;

    invoke-direct {v13, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v13, "writer":Ljava/io/PrintWriter;
    if-nez v3, :cond_a

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppVersionCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppVersionName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_a
    move-object/from16 v0, p15

    invoke-virtual {v13, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v13}, Ljava/io/PrintWriter;->flush()V

    .line 221
    .end local v13    # "writer":Ljava/io/PrintWriter;
    :goto_4
    if-eqz v3, :cond_13

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/lang/String;Lcom/facebook/acra/FileGenerator;)I

    .line 235
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v14, :cond_b

    .line 236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    const/4 v15, 0x2

    invoke-interface {v14, v15}, Lcom/facebook/acra/PerformanceMarker;->markerEnd(S)V

    .line 238
    :cond_b
    sget-object v14, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v15, "ANR Report done"

    invoke-static {v14, v15}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    if-eqz v6, :cond_c

    .line 246
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 249
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v15

    .line 252
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 253
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 192
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    if-nez v14, :cond_e

    .line 193
    new-instance v14, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mContext:Landroid/content/Context;

    const-string v16, ".stacktrace"

    const-string v17, "traces"

    invoke-direct/range {v14 .. v17}, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v14}, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->generate()Ljava/io/File;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    .line 198
    :cond_e
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v6    # "outStream":Ljava/io/OutputStream;
    .restart local v7    # "outStream":Ljava/io/OutputStream;
    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/OutputStream;
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    goto/16 :goto_3

    .line 211
    :cond_f
    const-string v14, "anr_with_sigquit_traces"

    const-string v15, "0"

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez v3, :cond_12

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    .line 215
    invoke-virtual {v14}, Lcom/facebook/acra/ErrorReporter;->getAppVersionCode()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v15}, Lcom/facebook/acra/ErrorReporter;->getAppVersionName()Ljava/lang/String;

    move-result-object v15

    .line 214
    invoke-static {v6, v14, v15}, Lcom/facebook/acra/StackTraceDumper;->dumpStackTraces(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 239
    :catch_0
    move-exception v4

    .line 240
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v14, :cond_10

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Lcom/facebook/acra/PerformanceMarker;->markerEnd(S)V

    .line 243
    :cond_10
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    if-eqz v6, :cond_11

    .line 246
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_11
    throw v14

    .line 217
    :cond_12
    :try_start_4
    invoke-static {v6}, Lcom/facebook/acra/StackTraceDumper;->dumpStackTraces(Ljava/io/OutputStream;)V

    goto/16 :goto_4

    .line 224
    :cond_13
    sget-object v14, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v15, "Dumped traces to: %s (%d bytes)"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    move-object/from16 v16, v0

    .line 227
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    move-object/from16 v17, v0

    .line 228
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 224
    invoke-static/range {v14 .. v17}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/io/File;Lcom/facebook/acra/FileGenerator;)V

    goto/16 :goto_5

    .line 232
    :cond_14
    const-string v14, "anr_with_sigquit_traces"

    const-string v15, "1"

    invoke-static {v14, v15}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p16

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/io/File;Lcom/facebook/acra/FileGenerator;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5
.end method

.method public getFileGenerator()Lcom/facebook/acra/FileGenerator;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    return-object v0
.end method

.method public logMainThreadUnblocked(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 291
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_main_thread_unblocked_uptime"

    .line 293
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 295
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logOtherProcessAnr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "detectionTime"    # J

    .prologue
    .line 300
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v2

    .line 301
    :try_start_0
    iget v1, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    const/4 v3, 0x5

    if-lt v1, v3, :cond_0

    .line 302
    monitor-exit v2

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 310
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x2c

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 312
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_other_process_error_state_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 317
    iget v1, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    iget v3, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    if-le v1, v3, :cond_1

    .line 318
    iget v1, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    iput v1, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    .line 320
    :cond_1
    iget v1, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    .line 321
    monitor-exit v2

    goto :goto_0

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logProcessMonitorFailure(JI)V
    .locals 5
    .param p1, "failureTime"    # J
    .param p3, "cause"    # I

    .prologue
    .line 346
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_process_error_detection_failure_time"

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_process_error_detection_failure_cause"

    .line 352
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 354
    monitor-exit v1

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logProcessMonitorStart(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 336
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_process_error_started_time"

    .line 338
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 337
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    .line 341
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 342
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logSystemInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "systemErrorMsg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "systemTag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "detectionTime"    # J

    .prologue
    .line 326
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_process_error_detected_time"

    .line 328
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_system_error_msg"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v2, "anr_system_tag"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 332
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportThreadDump(J)V
    .locals 7
    .param p1, "recoveryDelayMs"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 415
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 417
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    .line 418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    const-string v0, "anr_recovery_delay"

    .line 421
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-static {v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldANRDetectorRun()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mContext:Landroid/content/Context;

    const-string v1, "traces"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/acra/anr/ANRReport;->purgeDirectory(Ljava/io/File;)V

    .line 425
    sget-object v0, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ANR Reports purged"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_0
    return-void

    .line 418
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    new-array v3, v5, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/facebook/acra/ErrorReporter;->prepareReports(ILcom/facebook/acra/FileGenerator;Z[Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    .line 433
    sget-object v0, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ANR Reports sent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    .locals 0
    .param p1, "anrDataProvider"    # Lcom/facebook/acra/anr/ANRDataProvider;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    .line 439
    return-void
.end method

.method public setPerformanceMarker(Lcom/facebook/acra/PerformanceMarker;)V
    .locals 0
    .param p1, "performanceMarker"    # Lcom/facebook/acra/PerformanceMarker;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    .line 443
    return-void
.end method
