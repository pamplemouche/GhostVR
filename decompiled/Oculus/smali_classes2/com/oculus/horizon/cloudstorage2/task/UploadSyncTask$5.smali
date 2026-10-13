.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;
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
        "Ljava/util/List",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
        ">;",
        "Lbolts/Task",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$actionMapCapture:Lbolts/Capture;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$localCachedMeta:Lbolts/Capture;

.field final synthetic val$uploadMutationProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTaskProvider;Lcom/oculus/library/model/App;Lbolts/Capture;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$uploadMutationProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$localCachedMeta:Lbolts/Capture;

    iput-object p5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$actionMapCapture:Lbolts/Capture;

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
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/cloudstorage2/task/FileUploadTask$RemoteFile;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->SEND_MUTATION:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 293
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$uploadMutationProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTaskProvider;

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$app:Lcom/oculus/library/model/App;

    .line 296
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$localCachedMeta:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-virtual {v4, v5, v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->buildListOfUploadFiles(Lcom/oculus/library/model/App;Ljava/util/List;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;)[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$actionMapCapture:Lbolts/Capture;

    .line 297
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->val$localCachedMeta:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-static {v5, v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;)[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    .line 298
    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    .line 294
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTaskProvider;->get(Ljava/lang/String;[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->run()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
