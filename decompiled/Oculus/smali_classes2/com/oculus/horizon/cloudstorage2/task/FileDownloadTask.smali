.class public Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "FileDownloadTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;,
        Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private downloadManager:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

.field private final mPrependUri:Ljava/lang/String;

.field private final mRequests:[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/String;[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # [Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;
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
    .line 222
    invoke-direct {p0, p4}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 218
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 223
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->mPrependUri:Ljava/lang/String;

    .line 224
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->mRequests:[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->mPrependUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 230
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;-><init>(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->downloadManager:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

    .line 231
    const/4 v0, 0x1

    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->downloadManager:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->addStrongListener(Lcom/oculus/downloader/OculusDownloadListener;)V

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->downloadManager:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->mRequests:[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->download([Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;)V

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->downloadManager:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
