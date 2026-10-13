.class public Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "DownloadMetadataToFileTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mApp:Lcom/oculus/library/model/App;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p3}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 23
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 28
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->mApp:Lcom/oculus/library/model/App;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;)Lcom/oculus/library/model/App;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->mApp:Lcom/oculus/library/model/App;

    return-object v0
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_task_DownloadMetadataTaskProvider$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;

    .line 34
    sget v1, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_callable_WriteMetadataToFileProvider$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v1, v2}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;

    .line 36
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->mApp:Lcom/oculus/library/model/App;

    iget-object v2, v2, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v2, p0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataTask;->run()Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;)V

    .line 39
    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
