.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;
.super Ljava/lang/Object;
.source "UploadSyncTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->run()Lbolts/Task;
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
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$uploadConflictDetectorProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetectorProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetectorProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->val$uploadConflictDetectorProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetectorProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;)",
            "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->NEW_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->val$uploadConflictDetectorProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetectorProvider;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->val$app:Lcom/oculus/library/model/App;

    .line 192
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetectorProvider;->get(Lcom/oculus/library/model/App;Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$602(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Z)Z

    .line 196
    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$10;->then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    return-object v0
.end method
