.class public Lcom/facebook/acra/anr/ANRDetectorConfig;
.super Ljava/lang/Object;
.source "ANRDetectorConfig.java"


# static fields
.field static final DEFAULT_MAX_NUMBER_OF_PROCESS_MONITOR_CHECKS_AFTER_ERROR:I = 0x64

.field static final DEFAULT_MAX_NUMBER_OF_PROCESS_MONITOR_CHECKS_BEFORE_ERROR:I = 0x14


# instance fields
.field private final mANRReport:Lcom/facebook/acra/anr/ANRReport;

.field private mAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCleanupOnASLThread:Z

.field private final mContext:Landroid/content/Context;

.field private final mDetectorId:I

.field private final mIsInternalBuild:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMaxNumberOfProcessMonitorChecksAfterError:I

.field private final mMaxNumberOfProcessMonitorChecksBeforeError:I

.field private final mProcessName:Ljava/lang/String;

.field private final mRecoveryTimeout:I

.field private final mShouldAvoidMutexOnSignalHandler:Z

.field private final mShouldLogOnSignalHandler:Z

.field private final mShouldRecordSignalTime:Z

.field private final mShouldReportSoftErrors:Z

.field private final mShouldStartProcessErrorMonitorEarly:Z

.field private final mUseStaticMethodCallback:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/acra/anr/ANRReport;Lcom/facebook/acra/anr/AppStateUpdater;Landroid/os/Handler;IZZZ)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "anrReport"    # Lcom/facebook/acra/anr/ANRReport;
    .param p4, "appStateUpdater"    # Lcom/facebook/acra/anr/AppStateUpdater;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mainThreadHandler"    # Landroid/os/Handler;
    .param p6, "detectorId"    # I
    .param p7, "isInternalBuild"    # Z
    .param p8, "cleanupOnASLThread"    # Z
    .param p9, "shouldStartProcessErrorMonitorEarly"    # Z
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 50
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x14

    const/16 v16, 0x64

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v17}, Lcom/facebook/acra/anr/ANRDetectorConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/acra/anr/ANRReport;Lcom/facebook/acra/anr/AppStateUpdater;Landroid/os/Handler;IZZZZZZIZIIZ)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/acra/anr/ANRReport;Lcom/facebook/acra/anr/AppStateUpdater;Landroid/os/Handler;IZZZZZZIZIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "anrReport"    # Lcom/facebook/acra/anr/ANRReport;
    .param p4, "appStateUpdater"    # Lcom/facebook/acra/anr/AppStateUpdater;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "mainThreadHandler"    # Landroid/os/Handler;
    .param p6, "detectorId"    # I
    .param p7, "isInternalBuild"    # Z
    .param p8, "cleanupOnASLThread"    # Z
    .param p9, "shouldStartProcessErrorMonitorEarly"    # Z
    .param p10, "shouldReportSoftErrors"    # Z
    .param p11, "shouldLogOnSignalHandler"    # Z
    .param p12, "avoidMutexOnSignalHandler"    # Z
    .param p13, "recoveryTimeout"    # I
    .param p14, "useStaticMethodCallback"    # Z
    .param p15, "maxNumberOfProcessMonitorChecksBeforeError"    # I
    .param p16, "maxNumberOfProcessMonitorChecksAfterError"    # I
    .param p17, "shouldRecordSignalTime"    # Z

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mProcessName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    .line 91
    iput-object p4, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    .line 92
    iput-object p5, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMainThreadHandler:Landroid/os/Handler;

    .line 93
    iput p6, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mDetectorId:I

    .line 94
    iput-boolean p7, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mIsInternalBuild:Z

    .line 95
    iput-boolean p8, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mCleanupOnASLThread:Z

    .line 96
    iput-boolean p9, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldStartProcessErrorMonitorEarly:Z

    .line 97
    iput-boolean p10, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldReportSoftErrors:Z

    .line 98
    iput-boolean p11, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldLogOnSignalHandler:Z

    .line 99
    iput-boolean p12, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldAvoidMutexOnSignalHandler:Z

    .line 100
    iput p13, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mRecoveryTimeout:I

    .line 101
    iput-boolean p14, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mUseStaticMethodCallback:Z

    .line 102
    move/from16 v0, p15

    iput v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMaxNumberOfProcessMonitorChecksBeforeError:I

    .line 103
    move/from16 v0, p16

    iput v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMaxNumberOfProcessMonitorChecksAfterError:I

    .line 104
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldRecordSignalTime:Z

    .line 105
    return-void
.end method


# virtual methods
.method public getANRReport()Lcom/facebook/acra/anr/ANRReport;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    return-object v0
.end method

.method public getAppStateUpdater()Lcom/facebook/acra/anr/AppStateUpdater;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDetectorId()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mDetectorId:I

    return v0
.end method

.method public getMainThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMaxNumberOfProcessMonitorChecksAfterError()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMaxNumberOfProcessMonitorChecksAfterError:I

    return v0
.end method

.method public getMaxNumberOfProcessMonitorChecksBeforeError()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mMaxNumberOfProcessMonitorChecksBeforeError:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoveryTimeout()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mRecoveryTimeout:I

    return v0
.end method

.method public getSigquitTimeDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mContext:Landroid/content/Context;

    const-string v1, "sigquit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getSigquitTimeFilePath()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x5f

    .line 188
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getSigquitTimeDir()Ljava/io/File;

    move-result-object v2

    .line 189
    .local v2, "sigquitDir":Ljava/io/File;
    iget-object v3, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mProcessName:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "sigTimeFileName":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    :goto_0
    return-object v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isInternalBuild()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mIsInternalBuild:Z

    return v0
.end method

.method public processShouldSendAnrReports()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mProcessName:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mProcessName:Ljava/lang/String;

    const-string v1, ":browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppStateUpdater(Lcom/facebook/acra/anr/AppStateUpdater;)V
    .locals 0
    .param p1, "updater"    # Lcom/facebook/acra/anr/AppStateUpdater;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    .line 137
    return-void
.end method

.method public shouldAvoidMutexOnSignalHandler()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldAvoidMutexOnSignalHandler:Z

    return v0
.end method

.method public shouldCleanupANRStateOnASLThread()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mCleanupOnASLThread:Z

    return v0
.end method

.method public shouldLogOnSignalHandler()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldLogOnSignalHandler:Z

    return v0
.end method

.method public shouldRecordSignalTime()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldRecordSignalTime:Z

    return v0
.end method

.method public shouldReportSoftErrors()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldReportSoftErrors:Z

    return v0
.end method

.method public shouldStartProcessErrorMonitorEarly()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mShouldStartProcessErrorMonitorEarly:Z

    return v0
.end method

.method public shouldUseStaticMethodCallback()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/facebook/acra/anr/ANRDetectorConfig;->mUseStaticMethodCallback:Z

    return v0
.end method
