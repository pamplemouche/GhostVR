.class Lcom/facebook/acra/ErrorReporter$AcraReportHandler;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Lcom/facebook/acra/ErrorReporter$ReportHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcraReportHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/acra/ErrorReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/acra/ErrorReporter$1;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter$AcraReportHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleReport(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/Spool$FileBeingConsumed;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "reporter"    # Lcom/facebook/acra/ErrorReporter;
    .param p2, "dumpFile"    # Lcom/facebook/acra/Spool$FileBeingConsumed;
    .param p3, "uploadedByProcess"    # Ljava/lang/String;
    .param p4, "inProgress"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 377
    iget-object v1, p2, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    .line 378
    .local v1, "curFileName":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "curFileNameString":Ljava/lang/String;
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Loading file %s"

    invoke-static {v6, v7, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/acra/ErrorReporter;->access$000(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/Spool$FileBeingConsumed;)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    .line 382
    .local v0, "crashReport":Lcom/facebook/acra/CrashReportData;
    if-eqz v0, :cond_0

    .line 383
    const-string v6, "ACRA_REPORT_TYPE"

    sget-object v7, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v7}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v6, "ACRA_REPORT_FILENAME"

    invoke-virtual {v0, v6, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v6, "UPLOADED_BY_PROCESS"

    invoke-virtual {v0, v6, p3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Sending file %s"

    invoke-static {v6, v7, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    invoke-static {p1, v0}, Lcom/facebook/acra/ErrorReporter;->access$100(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V

    .line 390
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 404
    .end local v0    # "crashReport":Lcom/facebook/acra/CrashReportData;
    :cond_0
    :goto_0
    return v4

    .line 392
    :catch_0
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/RuntimeException;
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to send crash reports"

    invoke-static {v4, v3, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 394
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    move v4, v5

    .line 395
    goto :goto_0

    .line 396
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 397
    .local v3, "e":Ljava/io/IOException;
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Failed to load crash report for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v6, v3, v7, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->access$200(Ljava/io/File;)Z

    move v4, v5

    .line 399
    goto :goto_0

    .line 400
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 401
    .local v3, "e":Lcom/facebook/acra/sender/ReportSenderException;
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Failed to send crash report for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v6, v3, v7, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v5

    .line 402
    goto :goto_0
.end method
