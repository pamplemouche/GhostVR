.class Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;
.super Ljava/lang/Object;
.source "AbstractANRDetector.java"

# interfaces
.implements Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/AbstractANRDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessAnrErrorMonitorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/AbstractANRDetector;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/AbstractANRDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/anr/AbstractANRDetector;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFailed()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed when checking process error state"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->processMonitorStopped(I)V

    .line 101
    return-void
.end method

.method public onErrorCleared()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$000(Lcom/facebook/acra/anr/AbstractANRDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$100(Lcom/facebook/acra/anr/AbstractANRDetector;)Z

    move-result v0

    .line 76
    .local v0, "inAnr":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->anrErrorClearedOnProcessMonitor()V

    .line 80
    :cond_0
    return-void

    .line 76
    .end local v0    # "inAnr":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onErrorDetectOnOtherProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$000(Lcom/facebook/acra/anr/AbstractANRDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$100(Lcom/facebook/acra/anr/AbstractANRDetector;)Z

    move-result v7

    .line 109
    .local v7, "inAnr":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const/4 v6, 0x0

    .line 111
    .local v6, "acknowledged":Z
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    iget-object v0, v0, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 113
    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v0

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/acra/anr/ANRReport;->logOtherProcessAnr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 115
    const/4 v6, 0x1

    .line 117
    :cond_0
    return v6

    .line 109
    .end local v6    # "acknowledged":Z
    .end local v7    # "inAnr":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onErrorDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMsg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$000(Lcom/facebook/acra/anr/AbstractANRDetector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-static {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$100(Lcom/facebook/acra/anr/AbstractANRDetector;)Z

    move-result v0

    .line 65
    .local v0, "inAnr":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    iget-object v1, v1, Lcom/facebook/acra/anr/AbstractANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/facebook/acra/anr/ANRReport;->logSystemInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    :cond_0
    return-void

    .line 65
    .end local v0    # "inAnr":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onMaxChecksReachedAfterError()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reached max number of checks after error was detected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->processMonitorStopped(I)V

    .line 92
    return-void
.end method

.method public onMaxChecksReachedBeforeError()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/facebook/acra/anr/AbstractANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reached max number of checks before error was detected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;->processMonitorStopped(I)V

    .line 86
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/acra/anr/AbstractANRDetector$ProcessAnrErrorMonitorListener;->this$0:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->processMonitorStarted()V

    .line 58
    return-void
.end method
