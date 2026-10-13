.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 80
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$000(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$100(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Clearing ANR state by timeout"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    sget-object v2, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->NO_ANR_DETECTED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v0, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->anrHasEnded(Z)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$102(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z

    .line 92
    :cond_1
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
