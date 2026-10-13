.class public Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OculusDownloadManagerReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


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
.field private mDownloaderContract:Lcom/oculus/downloader/contract/DownloaderContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/downloader/contract/DownloaderContract;->$ul_$xXXcom_oculus_downloader_contract_DownloaderContract$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/downloader/contract/DownloaderContract;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->mDownloaderContract:Lcom/oculus/downloader/contract/DownloaderContract;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;

    sput-object v0, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 25
    invoke-static {p1, p0}, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;)V

    .line 36
    const-string v0, "extra_download_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 37
    sget-object v2, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->TAG:Ljava/lang/Class;

    const-string v3, "Download complete: %d"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcom/oculus/appmanager/downloader/OculusDownloadManagerReceiver;->mDownloaderContract:Lcom/oculus/downloader/contract/DownloaderContract;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/downloader/contract/DownloaderContract;->onDownloadComplete(J)V

    .line 39
    return-void
.end method
