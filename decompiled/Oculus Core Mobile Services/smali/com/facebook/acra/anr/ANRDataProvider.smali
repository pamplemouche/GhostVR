.class public abstract Lcom/facebook/acra/anr/ANRDataProvider;
.super Ljava/lang/Object;
.source "ANRDataProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detectionIntervalTimeMs()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public detectorToUse()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxNumberOfProcessMonitorChecksAfterError()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x64

    return v0
.end method

.method public getMaxNumberOfProcessMonitorChecksBeforeError()I
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0x14

    return v0
.end method

.method public getRecoveryTimeout()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, -0x1

    return v0
.end method

.method public provideDexStatus(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public provideLooperProfileInfo(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public provideStats(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public reportSoftError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public shouldANRDetectorRun()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public shouldAvoidMutexOnSignalHandler()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCleanupStateOnASLThread()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public shouldCollectAndUploadANRReports()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public shouldDedupDiskPersistence()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public shouldLogOnSignalHandler()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public shouldLogProcessPositionInAnrTraceFile()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRecordSignalTime()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public shouldReportSoftErrors()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRunANRDetectorOnBrowserProcess()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartErrorMonitorEarly()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUploadSystemANRTraces()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseStaticMethodCallback()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public updateAnrState(Z)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
