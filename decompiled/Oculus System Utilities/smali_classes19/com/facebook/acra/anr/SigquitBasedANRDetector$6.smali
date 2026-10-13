.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->hookMethodsAndMaybeStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

.field final synthetic val$startDetectorRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-object p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->val$startDetectorRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1600()V

    .line 345
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1700(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1800(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1800(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;->val$startDetectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_0
    monitor-exit v1

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
