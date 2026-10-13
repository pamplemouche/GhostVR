.class Lcom/oculus/cache/library/LibraryCacheRefresher$5;
.super Ljava/lang/Object;
.source "LibraryCacheRefresher.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryCacheRefresher;->fetchUpdates(Lcom/google/common/collect/ImmutableList;)Lbolts/Task;
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
        "Lcom/oculus/library/net/GenerateUpdateInfoResponse;",
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
    .line 248
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    iput-object p2, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->val$apps:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/library/net/GenerateUpdateInfoResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->val$apps:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 254
    invoke-virtual {v0}, Lcom/oculus/library/model/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v4, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;

    iget-object v5, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    const/4 v1, 0x0

    sget v6, Lcom/oculus/common/packagescache/PackagesCacheModule$UL_id;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXBINDING_ID:I

    iget-object v7, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    .line 257
    invoke-static {v7}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$700(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/facebook/inject/InjectionContext;

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/common/packagescache/PackagesCache;

    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/oculus/common/packagescache/PackagesCache;->getInstalledVersionCode(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v4, v5, v0, v1}, Lcom/oculus/library/net/GenerateUpdateInfoRequest$EntitlementIdentifier;-><init>(Ljava/lang/String;J)V

    .line 255
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->this$0:Lcom/oculus/cache/library/LibraryCacheRefresher;

    .line 264
    invoke-static {v0}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$800(Lcom/oculus/cache/library/LibraryCacheRefresher;)Lcom/oculus/library/net/LibraryMethods;

    move-result-object v0

    new-instance v1, Lcom/oculus/library/net/GenerateUpdateInfoRequest;

    invoke-direct {v1, v2}, Lcom/oculus/library/net/GenerateUpdateInfoRequest;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/oculus/library/net/LibraryMethods;->generateUpdateInfo(Lcom/oculus/library/net/GenerateUpdateInfoRequest;)Lcom/oculus/library/net/GenerateUpdateInfoResponse;
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 270
    if-nez v0, :cond_2

    .line 271
    const-string v0, "server response is null while updating app updates"

    .line 272
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheRefresher;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to refresh library due to patch check query"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 267
    throw v0

    .line 277
    :cond_2
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
    .line 248
    invoke-virtual {p0}, Lcom/oculus/cache/library/LibraryCacheRefresher$5;->call()Lcom/oculus/library/net/GenerateUpdateInfoResponse;

    move-result-object v0

    return-object v0
.end method
