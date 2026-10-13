.class Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;
.super Ljava/lang/Object;
.source "ApplicationForegroundTracker.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->onActivityPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

.field final synthetic val$onActivityResumed:J


# direct methods
.method constructor <init>(Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;J)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->this$0:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    iput-wide p2, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->val$onActivityResumed:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-object v4

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->this$0:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->access$002(Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;J)J

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->this$0:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    invoke-static {v0}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->access$100(Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;)Lcom/oculus/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->uptime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->val$onActivityResumed:J

    sub-long/2addr v0, v2

    .line 105
    iget-object v2, p0, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->this$0:Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;

    invoke-static {v2, v0, v1}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;->access$200(Lcom/oculus/horizon/foreground/ApplicationForegroundTracker;J)V

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/foreground/ApplicationForegroundTracker$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
