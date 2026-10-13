.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->postAnrEnd(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

.field final synthetic val$uptimeMillisWhenSomethingCouldRunOnMainThread:J


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-wide p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->val$uptimeMillisWhenSomethingCouldRunOnMainThread:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 403
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->inAnrState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->val$uptimeMillisWhenSomethingCouldRunOnMainThread:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mainThreadUnblocked(J)V

    .line 407
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->ANR_RECOVERED:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 409
    :cond_0
    return-void
.end method
