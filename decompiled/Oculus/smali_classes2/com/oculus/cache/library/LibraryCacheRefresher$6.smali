.class Lcom/oculus/cache/library/LibraryCacheRefresher$6;
.super Ljava/lang/Object;
.source "LibraryCacheRefresher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryCacheRefresher;->fetchAssets(Lcom/google/common/collect/ImmutableList;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

.field final synthetic val$apps:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/LibraryCacheRefresher;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$6;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    iput-object p2, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$6;->val$apps:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$6;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    invoke-static {v0}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$900(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/oculus/appmanager/assets/InstallWatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$6;->val$apps:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/assets/InstallWatcher;->fetchAssetList(Lcom/google/common/collect/ImmutableList;)Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryCacheRefresher$6;->call()Lcom/oculus/appmanager/assets/GenerateAssetListAndBinIdResponse;

    move-result-object v0

    return-object v0
.end method
