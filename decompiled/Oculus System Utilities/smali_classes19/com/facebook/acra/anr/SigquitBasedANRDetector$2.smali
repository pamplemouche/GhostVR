.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckFailed()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCheckFailed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onErrorCleared()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On error cleared"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$602(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z

    .line 120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->anrErrorClearedOnProcessMonitor()V

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onErrorDetectOnOtherProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
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
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onErrorDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On error detected %s %s"

    invoke-static {v0, v1, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$402(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0, p2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$502(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$602(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z

    .line 110
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$702(Lcom/facebook/acra/anr/SigquitBasedANRDetector;J)J

    .line 111
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$800(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onMaxChecksReachedAfterError()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onMaxChecksReachedBeforeError()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Started monitoring"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method
