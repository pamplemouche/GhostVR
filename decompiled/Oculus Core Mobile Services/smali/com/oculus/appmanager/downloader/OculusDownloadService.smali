.class public Lcom/oculus/appmanager/downloader/OculusDownloadService;
.super Landroid/app/IntentService;
.source "OculusDownloadService.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mOculusDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/downloader/OculusDownloadService;)V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/downloader/OculusDownloadService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/downloader/OculusDownloadService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/downloader/OculusDownloadService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/downloader/OculusDownloadService;)V
    .locals 1

    .prologue
    .line 13
    invoke-static {p0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/downloader/OculusDownloadService;->mOculusDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/appmanager/downloader/OculusDownloadService;

    sput-object v0, Lcom/oculus/appmanager/downloader/OculusDownloadService;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "FileDownloaderService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private onDownloadComplete(J)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/appmanager/downloader/OculusDownloadService;->mOculusDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->onDownloadComplete(J)V

    .line 55
    return-void
.end method


# virtual methods
.method protected doHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 34
    sget-object v0, Lcom/oculus/appmanager/downloader/OculusDownloadService;->TAG:Ljava/lang/Class;

    const-string v1, "doHandleIntent(): %s"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/oculus/downloader/contract/DownloaderContract$Contract;->ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v0, Lcom/oculus/downloader/contract/DownloaderContract$Contract;->EXTRA_DOWNLOAD_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/oculus/downloader/contract/DownloaderContract$Contract;->EXTRA_DOWNLOAD_ID:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/oculus/appmanager/downloader/OculusDownloadService;->onDownloadComplete(J)V

    .line 51
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/oculus/appmanager/downloader/OculusDownloadService;->TAG:Ljava/lang/Class;

    const-string v1, "No download_id in intent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/oculus/appmanager/downloader/OculusDownloadService;->TAG:Ljava/lang/Class;

    const-string v2, "unrecognized action: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 13
    invoke-static {p0, p0}, Lcom/oculus/appmanager/downloader/OculusDownloadService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/downloader/OculusDownloadService;)V

    .line 22
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/downloader/OculusDownloadService;->doHandleIntent(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
