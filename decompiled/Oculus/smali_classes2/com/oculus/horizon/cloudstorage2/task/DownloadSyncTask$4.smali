.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;
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
        "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;",
        "Lbolts/Task",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$fileDownloadProvider:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTaskProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->val$fileDownloadProvider:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->val$app:Lcom/oculus/library/model/App;

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
            "<[",
            "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 316
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    .line 318
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    const-string v2, "Download sync needs to download %d files"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->val$fileDownloadProvider:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTaskProvider;

    sget v1, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    .line 321
    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v1, v3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getDownloadTempDir(Lcom/oculus/library/model/App;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTaskProvider;->get(Ljava/lang/String;[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->run()Lbolts/Task;

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
    .line 312
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
