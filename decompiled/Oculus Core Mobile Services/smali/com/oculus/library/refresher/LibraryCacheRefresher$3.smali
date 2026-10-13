.class Lcom/oculus/library/refresher/LibraryCacheRefresher$3;
.super Ljava/lang/Object;
.source "LibraryCacheRefresher.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/library/refresher/LibraryCacheRefresher;->refreshCache()Lbolts/Task;
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
        "Lcom/oculus/library/net/GenerateUpdateInfoResponse;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

.field final synthetic val$entitlementsResponse:Lbolts/Capture;

.field final synthetic val$updatesResponse:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/library/refresher/LibraryCacheRefresher;Lbolts/Capture;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    iput-object p2, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->val$updatesResponse:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->val$entitlementsResponse:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/library/net/GenerateUpdateInfoResponse;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->val$updatesResponse:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    iget-object v0, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->val$entitlementsResponse:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-static {v1, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$800(Lcom/oculus/library/refresher/LibraryCacheRefresher;Lcom/google/common/collect/ImmutableList;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/oculus/library/refresher/LibraryCacheRefresher$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
