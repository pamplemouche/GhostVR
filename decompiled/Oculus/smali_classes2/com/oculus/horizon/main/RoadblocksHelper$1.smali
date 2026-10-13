.class Lcom/oculus/horizon/main/RoadblocksHelper$1;
.super Ljava/lang/Object;
.source "RoadblocksHelper.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/main/RoadblocksHelper;->checkTermsOfService()V
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
.field final synthetic this$0:Lcom/oculus/horizon/main/RoadblocksHelper;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/main/RoadblocksHelper;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$1;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 123
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 125
    const-string v1, "Fail to check for TOS with error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 126
    invoke-static {v1, v2}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/oculus/horizon/main/RoadblocksHelper$1;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v1}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$100(Lcom/oculus/horizon/main/RoadblocksHelper;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object p1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/main/RoadblocksHelper$1;->this$0:Lcom/oculus/horizon/main/RoadblocksHelper;

    invoke-static {v0}, Lcom/oculus/horizon/main/RoadblocksHelper;->access$200(Lcom/oculus/horizon/main/RoadblocksHelper;)Lcom/oculus/horizon/main/RoadblocksTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/main/RoadblocksTimer;->onUpdate()V

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
    .line 120
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/main/RoadblocksHelper$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
