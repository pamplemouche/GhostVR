.class Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "DownloadMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;->run()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;

.field final synthetic val$completionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 48
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask$1;->onResponse(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)V

    return-void
.end method
