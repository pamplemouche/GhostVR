.class public Lcom/facebook/acra/config/DefaultAcraConfig;
.super Ljava/lang/Object;
.source "DefaultAcraConfig.java"

# interfaces
.implements Lcom/facebook/acra/config/AcraReportingConfig;


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mCrashReportUrl:Ljava/lang/String;

.field private final mDefaultCrashReportUrl:Ljava/lang/String;

.field private final mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mIsInternalBuild:Z

.field private final mIsZeroCrashlogBlocked:Z

.field private final mSessionId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mShouldStartANRDetector:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/config/DefaultAcraConfig;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 7

    .prologue
    .line 62
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/acra/config/DefaultAcraConfig;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application context cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crash report url cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mApplicationContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mCrashReportUrl:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mDefaultCrashReportUrl:Ljava/lang/String;

    .line 48
    iput-boolean p3, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mIsInternalBuild:Z

    .line 49
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 50
    iput-boolean p4, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mShouldStartANRDetector:Z

    .line 51
    iput-boolean p5, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mIsZeroCrashlogBlocked:Z

    .line 52
    iput-object p6, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mSessionId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public allowCollectionOfMaxNumberOfLinesInLogcat()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public allowProxy()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public allowUnsafeConnectionsForDebugging()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public crashReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mCrashReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public createReportSender()Lcom/facebook/acra/sender/FlexibleReportSender;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/facebook/acra/sender/HttpPostSender;

    invoke-direct {v0, p0}, Lcom/facebook/acra/sender/HttpPostSender;-><init>(Lcom/facebook/acra/config/AcraReportingConfig;)V

    return-object v0
.end method

.method public enableLeanCrashReporting()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultCrashLogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mDefaultCrashReportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method protected getLogcatNumberOfLinesToCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "200"

    return-object v0
.end method

.method public getMaxPendingJavaCrashReports()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7fffffff

    return v0
.end method

.method public getMaxPendingMiniDumpReports()I
    .locals 1

    .prologue
    .line 160
    const v0, 0x7fffffff

    return v0
.end method

.method public getMaxReportsSentPerDay()I
    .locals 1

    .prologue
    .line 165
    const v0, 0x7fffffff

    return v0
.end method

.method public getOomReservationOverride()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getPreallocatedFileSizeOverride()J
    .locals 2

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartupBlockingConfig()Lcom/facebook/acra/config/StartupBlockingConfig;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "Android"

    return-object v0
.end method

.method public isInternalBuild()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mIsInternalBuild:Z

    return v0
.end method

.method public isZeroCrashlogBlocked()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mIsZeroCrashlogBlocked:Z

    return v0
.end method

.method public logcatArguments(Z)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v0, "10000"

    .line 89
    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "-t"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "-v"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "threadtime"

    aput-object v2, v1, v0

    .line 90
    return-object v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/acra/config/DefaultAcraConfig;->getLogcatNumberOfLinesToCapture()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldImmediatelyUpload()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public shouldInstallPeriodicReporter()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public shouldLazyFieldsOverwriteExistingValues()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOnlyWriteReport()Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public shouldReportField(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSkipReportOnSocketTimeout()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartANRDetector()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/facebook/acra/config/DefaultAcraConfig;->mShouldStartANRDetector:Z

    return v0
.end method

.method public shouldStopAnrDetectorOnErrorReporting()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseUploadService()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0xbb8

    return v0
.end method
