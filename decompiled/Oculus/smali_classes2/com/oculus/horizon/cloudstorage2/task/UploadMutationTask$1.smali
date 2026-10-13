.class Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "UploadMutationTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->run()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;

.field final synthetic val$completionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 58
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;->onResponse(Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;)V

    return-void
.end method
