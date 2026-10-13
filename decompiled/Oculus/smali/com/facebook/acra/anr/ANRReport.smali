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

    const-string/jumbo v2, "traces"

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
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/facebook/acra/ErrorReporter;->addToAnrInProgressUpdateFile(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 368
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 372
    :cond_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private convertRawBytesToLong([B)J
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 277
    const-wide/16 v2, 0x0

    move v1, v0

    .line 279
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

    .prologue
    const/4 v0, 0x1

    .line 446
    if-nez p0, :cond_0

    .line 456
    :goto_0
    return v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 450
    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v0

    .line 453
    :cond_1
    if-nez v1, :cond_2

    .line 454
    sget-object v2, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not delete error report: %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 456
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
    const-string v1, "anr_process_error_detected_time"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_process_error_detected_time"

    .line 380
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 378
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v1, "anr_process_error_detection_failure_time"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_process_error_detection_failure_time"

    .line 383
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "anr_process_error_detection_failure_cause"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_process_error_detection_failure_cause"

    .line 387
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "anr_system_error_msg"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_system_error_msg"

    .line 391
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v1, "anr_system_tag"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_system_tag"

    .line 394
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "anr_process_error_started_time"

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    const-string v3, "anr_process_error_started_time"

    .line 397
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    if-gt v1, v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anr_other_process_error_state_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anr_other_process_error_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-static {v3, v0}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 406
    monitor-exit v2

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static purgeDirectory(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 460
    if-eqz p0, :cond_1

    .line 461
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 464
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    invoke-static {v3}, Lcom/facebook/acra/anr/ANRReport;->purgeDirectory(Ljava/io/File;)V

    .line 468
    :cond_0
    invoke-static {v3}, Lcom/facebook/acra/anr/ANRReport;->deleteFile(Ljava/io/File;)Z

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_1
    return-void
.end method

.method private recordSigquitTimes(Ljava/io/File;)Ljava/util/SortedMap;
    .locals 13
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
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 259
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    .line 260
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 261
    const/16 v0, 0x8

    :try_start_1
    new-array v0, v0, [B

    .line 262
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 263
    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    .line 264
    sget-object v0, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Corrupted file %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v8, v9}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    if-eqz v7, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 270
    sget-object v0, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not read from file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-static {v0, v1, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 269
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 267
    :cond_2
    :try_start_5
    invoke-direct {p0, v0}, Lcom/facebook/acra/anr/ANRReport;->convertRawBytesToLong([B)J

    move-result-wide v8

    .line 268
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v0, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 269
    if-eqz v7, :cond_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 260
    :catch_3
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 269
    :catchall_0
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    if-eqz v7, :cond_4

    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_4
    :goto_3
    :try_start_a
    throw v0

    :catch_4
    move-exception v7

    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 273
    :cond_6
    return-object v3

    .line 269
    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public collectThreadDump(Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;IZJJJJLjava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 9
    .param p1    # Ljava/lang/Long;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Long;
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
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v2, v3}, Lcom/facebook/acra/ErrorReporter;->checkAndMaybeUpdateDailySentReportCount(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    if-eqz p16, :cond_0

    .line 111
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p16

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v2

    sub-long v2, p7, v2

    .line 118
    iget-object v4, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v4}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v4

    sub-long v4, p9, v4

    .line 119
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    invoke-interface {v6}, Lcom/facebook/acra/PerformanceMarker;->markerStart()V

    .line 123
    :cond_2
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    if-eqz v6, :cond_3

    .line 124
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    iget-object v7, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v6, v7}, Lcom/facebook/acra/anr/ANRDataProvider;->provideStats(Lcom/facebook/acra/ErrorReporter;)V

    .line 125
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    iget-object v7, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v6, v7}, Lcom/facebook/acra/anr/ANRDataProvider;->provideLooperProfileInfo(Lcom/facebook/acra/ErrorReporter;)V

    .line 126
    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    iget-object v7, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v6, v7}, Lcom/facebook/acra/anr/ANRDataProvider;->provideDexStatus(Lcom/facebook/acra/ErrorReporter;)V

    .line 129
    :cond_3
    if-eqz p1, :cond_4

    .line 130
    const-string v6, "anr_timeout_delay"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->initializeProcessErrorPropertiesOnErrorReport()V

    .line 133
    const-string v6, "anr_detected_uptime"

    .line 134
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v6, v7}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v6, "anr_detect_time_tag"

    .line 136
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v6, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "anr_recovery_delay"

    const-string v3, "-1"

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "anr_detected_pre_gkstore"

    .line 142
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "anr_detector_id"

    .line 144
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "anr_detector_start_time"

    .line 146
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "asl_app_in_foreground"

    .line 148
    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "anr_java_callback_uptime"

    invoke-static/range {p19 .. p19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-wide/16 v2, 0x0

    cmp-long v2, p11, v2

    if-lez v2, :cond_5

    .line 151
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v2

    sub-long v2, p11, v2

    .line 152
    const-string v4, "anr_detector_actual_start_time"

    .line 153
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v4, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p13, v2

    if-lez v2, :cond_6

    .line 156
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter;->getAppStartTickTimeMs()J

    move-result-wide v2

    sub-long v2, p13, v2

    .line 157
    const-string v4, "anr_detector_switch_time"

    .line 158
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {v4, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_6
    const-string v2, "black_box_trace"

    invoke-static {v2, p3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "long_stall_trace"

    invoke-static {v2, p4}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "anr_async_broadcast_receivers"

    .line 164
    invoke-static {}, Lcom/facebook/acra/asyncbroadcastreceiver/AsyncBroadcastReceiverObserver;->blameActiveReceivers()Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "first_sigquit"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "sigquit_times"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz p17, :cond_9

    .line 168
    move-object/from16 v0, p17

    invoke-direct {p0, v0}, Lcom/facebook/acra/anr/ANRReport;->recordSigquitTimes(Ljava/io/File;)Ljava/util/SortedMap;

    move-result-object v3

    .line 169
    const/4 v2, 0x1

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 172
    if-eqz v3, :cond_7

    .line 173
    const-string v4, "first_sigquit"

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v4, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v4, 0x0

    .line 180
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v3, v4

    .line 181
    goto :goto_1

    .line 178
    :cond_7
    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v3

    goto :goto_2

    .line 182
    :cond_8
    const-string/jumbo v2, "sigquit_times"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_9
    invoke-static {}, Lcom/facebook/acra/ACRA;->getCachedShouldDedupDiskPersistence()Z

    move-result v4

    .line 185
    const/4 v3, 0x0

    .line 187
    if-nez p16, :cond_14

    .line 189
    if-eqz v4, :cond_d

    .line 190
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v3, v2

    .line 201
    :goto_3
    if-eqz p15, :cond_f

    .line 202
    const-string v2, "anr_with_sigquit_traces"

    const-string v5, "1"

    invoke-static {v2, v5}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 204
    if-nez v4, :cond_a

    .line 205
    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v5}, Lcom/facebook/acra/ErrorReporter;->getAppVersionCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v5}, Lcom/facebook/acra/ErrorReporter;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    :cond_a
    move-object/from16 v0, p15

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 221
    :goto_4
    if-eqz v4, :cond_13

    .line 222
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/lang/String;Lcom/facebook/acra/FileGenerator;)I

    .line 235
    :goto_5
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v2, :cond_b

    .line 236
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/facebook/acra/PerformanceMarker;->markerEnd(S)V

    .line 238
    :cond_b
    sget-object v2, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ANR Report done"

    invoke-static {v2, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    if-eqz v3, :cond_c

    .line 246
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 249
    :cond_c
    iget-object v3, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v3

    .line 252
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 253
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 192
    :cond_d
    :try_start_2
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    if-nez v2, :cond_e

    .line 193
    new-instance v2, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mContext:Landroid/content/Context;

    const-string v6, ".stacktrace"

    const-string/jumbo v7, "traces"

    invoke-direct {v2, v5, v6, v7}, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;->generate()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    .line 198
    :cond_e
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v2

    goto :goto_3

    .line 211
    :cond_f
    const-string v2, "anr_with_sigquit_traces"

    const-string v5, "0"

    invoke-static {v2, v5}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-nez v4, :cond_12

    .line 214
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    .line 215
    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter;->getAppVersionCode()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v5}, Lcom/facebook/acra/ErrorReporter;->getAppVersionName()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-static {v3, v2, v5}, Lcom/facebook/acra/StackTraceDumper;->dumpStackTraces(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 239
    :catch_0
    move-exception v2

    .line 240
    :try_start_3
    iget-object v4, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    if-eqz v4, :cond_10

    .line 241
    iget-object v4, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/facebook/acra/PerformanceMarker;->markerEnd(S)V

    .line 243
    :cond_10
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 245
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_11

    .line 246
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_11
    throw v2

    .line 217
    :cond_12
    :try_start_4
    invoke-static {v3}, Lcom/facebook/acra/StackTraceDumper;->dumpStackTraces(Ljava/io/OutputStream;)V

    goto :goto_4

    .line 224
    :cond_13
    sget-object v2, Lcom/facebook/acra/anr/ANRReport;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Dumped traces to: %s (%d bytes)"

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    .line 227
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    .line 228
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 224
    invoke-static {v2, v4, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    iget-object v4, p0, Lcom/facebook/acra/anr/ANRReport;->mTracesFile:Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/io/File;Lcom/facebook/acra/FileGenerator;)V

    goto/16 :goto_5

    .line 232
    :cond_14
    const-string v2, "anr_with_sigquit_traces"

    const-string v4, "1"

    invoke-static {v2, v4}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mErrorReporter:Lcom/facebook/acra/ErrorReporter;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/acra/anr/ANRReport;->mFileGenerator:Lcom/facebook/acra/anr/ANRReport$UUIDFileGenerator;

    invoke-virtual {v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->prepareANRReport(Ljava/io/File;Lcom/facebook/acra/FileGenerator;)V
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
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 300
    iget-object v1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

    monitor-enter v1

    .line 301
    :try_start_0
    iget v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 302
    monitor-exit v1

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    .line 307
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 308
    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    .line 311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v2, p0, Lcom/facebook/acra/anr/ANRReport;->mANRProcessErrorProperties:Ljava/util/Map;

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

    move-result-object v0

    .line 313
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/facebook/acra/anr/ANRReport;->addProcessErrorPropertiesToErrorReport()V

    .line 317
    iget v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    iget v2, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    if-le v0, v2, :cond_1

    .line 318
    iget v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mMaxUsedAnrProcessStateIndex:I

    .line 320
    :cond_1
    iget v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/acra/anr/ANRReport;->mCurrentAnrProcessStateIndex:I

    .line 321
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logProcessMonitorFailure(JI)V
    .locals 5

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
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

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

    const-string/jumbo v1, "traces"

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

    .prologue
    .line 438
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    .line 439
    return-void
.end method

.method public setPerformanceMarker(Lcom/facebook/acra/PerformanceMarker;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRReport;->mPerformanceMarker:Lcom/facebook/acra/PerformanceMarker;

    .line 443
    return-void
.end method
