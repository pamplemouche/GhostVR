.class Lcom/oculus/library/refresher/LibraryCacheRefresher$2;
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
        "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/oculus/library/model/App;",
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
    .line 109
    iput-object p1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    iput-object p2, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->val$updatesResponse:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->val$entitlementsResponse:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;

    .line 115
    iget-object v3, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->val$updatesResponse:Lbolts/Capture;

    .line 116
    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse;

    iget-object v2, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->val$entitlementsResponse:Lbolts/Capture;

    invoke-virtual {v2}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/ImmutableList;

    invoke-static {v3, v1, v2}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$200(Lcom/oculus/library/refresher/LibraryCacheRefresher;Lcom/oculus/library/net/GenerateUpdateInfoResponse;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 118
    invoke-static {}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "updating cache from server response. apps=%d updates=%d assets=%d"

    .line 120
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->val$updatesResponse:Lbolts/Capture;

    .line 121
    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse;

    iget-object v1, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse;->app_binary_updates:Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;

    iget-object v1, v1, Lcom/oculus/library/net/GenerateUpdateInfoResponse$AppBinaryUpdates;->updates:[Lcom/oculus/library/net/GenerateUpdateInfoResponse$ApplicationUpdateInfo;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v6, v0, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;->appBinaryInfo:Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppBinaryInfo;

    iget-object v6, v6, Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppBinaryInfo;->info:[Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse$AppInfo;

    array-length v6, v6

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 117
    invoke-static {v3, v4, v5, v1, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v1, v2, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$300(Lcom/oculus/library/refresher/LibraryCacheRefresher;Ljava/util/List;Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v1, v2, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$400(Lcom/oculus/library/refresher/LibraryCacheRefresher;Ljava/util/List;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v1, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$500(Lcom/oculus/library/refresher/LibraryCacheRefresher;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v1, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$600(Lcom/oculus/library/refresher/LibraryCacheRefresher;Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->this$0:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {v1, v0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->access$700(Lcom/oculus/library/refresher/LibraryCacheRefresher;Lcom/google/common/collect/ImmutableList;)V

    .line 130
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
    .line 109
    invoke-virtual {p0, p1}, Lcom/oculus/library/refresher/LibraryCacheRefresher$2;->then(Lbolts/Task;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
