.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;
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
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
        "Lbolts/Task",
        "<[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;

.field final synthetic val$remoteJson:Lbolts/Capture;

.field final synthetic val$remoteMeta:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lbolts/Capture;Lbolts/Capture;Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$remoteJson:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$remoteMeta:Lbolts/Capture;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;

    iput-object p5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$app:Lcom/oculus/library/model/App;

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
            "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
            ">;)",
            "Lbolts/Task",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$remoteJson:Lbolts/Capture;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$400(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$remoteMeta:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->run()Lbolts/Task;

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
    .line 203
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$9;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
