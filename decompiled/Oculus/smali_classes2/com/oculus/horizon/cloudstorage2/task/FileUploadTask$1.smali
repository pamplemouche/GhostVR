.class Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;
.super Ljava/lang/Object;
.source "FileUploadTask.java"

# interfaces
.implements Lcom/facebook/fbuploader/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->run()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

.field final synthetic val$completionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 98
    return-void
.end method

.method public onCompletion(Lcom/facebook/fbuploader/UploadResult;)V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    new-instance v1, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method public onProgress(F)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;->onProgress(Ljava/io/File;F)V

    .line 88
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;->onProgress(Ljava/io/File;F)V

    .line 81
    :cond_0
    return-void
.end method
