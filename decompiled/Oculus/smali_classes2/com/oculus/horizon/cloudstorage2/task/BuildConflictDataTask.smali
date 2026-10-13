.class public Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "BuildConflictDataTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/ConflictData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lcom/oculus/library/model/App;

.field private final mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mDownloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mLocalMeta:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 1
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p4}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 27
    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;->$ul_$xXXcom_oculus_horizon_cloudstorage2_task_DownloadMetadataTaskProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mDownloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    .line 33
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mApp:Lcom/oculus/library/model/App;

    .line 34
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mLocalMeta:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mLocalMeta:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    return-object v0
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/cloudstorage2/ConflictData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "Starting to gather data for the conflict."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mDownloadMetadataProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;->mApp:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1, p0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;->run()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/BuildConflictDataTask;)V

    .line 44
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
