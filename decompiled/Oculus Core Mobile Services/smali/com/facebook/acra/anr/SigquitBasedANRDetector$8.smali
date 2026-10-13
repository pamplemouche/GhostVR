.class Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;
.super Ljava/lang/Object;
.source "SigquitBasedANRDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/acra/anr/SigquitBasedANRDetector;->handleAnrDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

.field final synthetic val$callbackUptime:J

.field final synthetic val$clearFirst:Z

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$errorTag:Ljava/lang/String;

.field final synthetic val$errorUptime:J

.field final synthetic val$sigquitData:Ljava/lang/String;

.field final synthetic val$sigquitFileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 538
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iput-boolean p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$clearFirst:Z

    iput-object p3, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$sigquitData:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$sigquitFileName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$callbackUptime:J

    iput-object p7, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorMsg:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorTag:Ljava/lang/String;

    iput-wide p9, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorUptime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$clearFirst:Z

    if-eqz v0, :cond_0

    .line 542
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clearing current ANR"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->anrErrorClearedOnProcessMonitor()V

    .line 545
    :cond_0
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "On processing thread handling ANR start"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    sget-object v1, Lcom/facebook/acra/anr/AppStateUpdater$AnrState;->DURING_ANR:Lcom/facebook/acra/anr/AppStateUpdater$AnrState;

    invoke-virtual {v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->notifyStateListeners(Lcom/facebook/acra/anr/AppStateUpdater$AnrState;)V

    .line 547
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->this$0:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$sigquitData:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$sigquitFileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$callbackUptime:J

    iget-object v6, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorMsg:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorTag:Ljava/lang/String;

    iget-wide v8, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;->val$errorUptime:J

    invoke-static/range {v1 .. v9}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->access$1900(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    .line 549
    return-void
.end method
