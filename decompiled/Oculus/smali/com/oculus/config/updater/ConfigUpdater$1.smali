.class Lcom/oculus/config/updater/ConfigUpdater$1;
.super Ljava/lang/Object;
.source "ConfigUpdater.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/config/updater/ConfigUpdater;->fetchAsync()Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/config/updater/ConfigUpdater;

.field final synthetic val$fetchStartTime:J


# direct methods
.method constructor <init>(Lcom/oculus/config/updater/ConfigUpdater;J)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    iput-wide p2, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->val$fetchStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/config/updater/ConfigUpdater$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdater;->access$000(Lcom/oculus/config/updater/ConfigUpdater;)Lcom/oculus/time/Clock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->val$fetchStartTime:J

    sub-long/2addr v0, v2

    .line 95
    iget-object v2, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {v2}, Lcom/oculus/config/updater/ConfigUpdater;->access$100(Lcom/oculus/config/updater/ConfigUpdater;)Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-virtual {v3}, Lcom/oculus/config/updater/ConfigUpdater;->getTimeSinceLastUpdate()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/oculus/config/updater/logging/ConfigUpdaterLogger;->logConfigUpdateSuccess(JJ)V

    .line 96
    iget-object v0, p0, Lcom/oculus/config/updater/ConfigUpdater$1;->this$0:Lcom/oculus/config/updater/ConfigUpdater;

    invoke-static {v0}, Lcom/oculus/config/updater/ConfigUpdater;->access$200(Lcom/oculus/config/updater/ConfigUpdater;)V

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method
