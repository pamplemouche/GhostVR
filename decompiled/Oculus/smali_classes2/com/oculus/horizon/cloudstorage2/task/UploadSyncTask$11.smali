.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;
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
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$downloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->val$downloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->val$downloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;->run()Lbolts/Task;

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
    .line 173
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
