.class Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "DownloadWildcardsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->run()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;

.field final synthetic val$completionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 64
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;)V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p1, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;->cloud_file_wildcards:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;

    iget-object v0, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;->nodes:[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcard;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    iget-object v0, p1, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;->cloud_file_wildcards:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;

    iget-object v2, v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcards;->nodes:[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcard;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 55
    iget-object v4, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse$UserCloudFileWildcard;->wildcard:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask$1;->onResponse(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFileWildcardsResponse;)V

    return-void
.end method
