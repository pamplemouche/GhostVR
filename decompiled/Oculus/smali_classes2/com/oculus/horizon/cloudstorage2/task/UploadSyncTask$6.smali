.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$actionMapCapture:Lbolts/Capture;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$localActualMeta:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lbolts/Capture;Lcom/oculus/library/model/App;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$actionMapCapture:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$localActualMeta:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->UPLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$actionMapCapture:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->sizeTotalFileActions()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "No actions required, cancelling upload!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    const-string v2, "Upload sync needs to reconcile %d files"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$actionMapCapture:Lbolts/Capture;

    .line 276
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->sizeTotalFileActions()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 274
    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$app:Lcom/oculus/library/model/App;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$actionMapCapture:Lbolts/Capture;

    .line 280
    invoke-virtual {v2}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->val$localActualMeta:Lbolts/Capture;

    invoke-virtual {v3}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v5}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v5

    .line 279
    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$300(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$ProgressListener;Lcom/oculus/horizon/cloudstorage2/Reporter;)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-static {v0}, Lbolts/Task;->whenAllResult(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

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
    .line 263
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
