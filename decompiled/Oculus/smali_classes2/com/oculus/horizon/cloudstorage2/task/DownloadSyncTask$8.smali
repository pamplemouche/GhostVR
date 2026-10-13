.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;
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
        "<[",
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$localMeta:Lbolts/Capture;

.field final synthetic val$mBuildConflictDataTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTaskProvider;Lcom/oculus/library/model/App;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$mBuildConflictDataTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$localMeta:Lbolts/Capture;

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
            "<[",
            "Ljava/lang/String;",
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
    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->PREPARE_CONFLICT_DATA:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 231
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 233
    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$mBuildConflictDataTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTaskProvider;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->val$localMeta:Lbolts/Capture;

    .line 236
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTaskProvider;->get(Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->run()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;)V

    .line 252
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v2

    .line 238
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "No conflict detected, skipping!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

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
    .line 226
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$8;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
