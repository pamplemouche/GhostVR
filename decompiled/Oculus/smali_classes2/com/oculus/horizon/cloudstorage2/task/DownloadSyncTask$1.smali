.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;
.super Ljava/lang/Object;
.source "DownloadSyncTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->runWithOptions(Z)Lbolts/Task;
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
        "Ljava/io/File;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$completionSource:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lbolts/TaskCompletionSource;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

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
            "Ljava/io/File;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DONE:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->done(Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    .line 361
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)V

    .line 363
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$DownloadSyncException;

    .line 365
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$DownloadSyncException;-><init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;Ljava/lang/Throwable;)V

    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->reportFailure(Ljava/lang/Exception;)V

    .line 373
    :goto_0
    return-object v3

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->val$completionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v3}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "canceled"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->reportSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "success"

    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
