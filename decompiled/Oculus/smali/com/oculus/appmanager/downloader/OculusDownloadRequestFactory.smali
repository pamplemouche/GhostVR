.class public Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;
.super Ljava/lang/Object;
.source "OculusDownloadRequestFactory.java"


# instance fields
.field private final mDownloadManagerUtils:Lcom/oculus/downloader/util/OculusDownloadManagerUtils;


# direct methods
.method public constructor <init>(Lcom/oculus/downloader/util/OculusDownloadManagerUtils;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->mDownloadManagerUtils:Lcom/oculus/downloader/util/OculusDownloadManagerUtils;

    .line 15
    return-void
.end method

.method private applyDefaultDestinationConfig(Landroid/app/DownloadManager$Request;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 35
    return-void
.end method

.method private applyDefaultNetworkingConfig(Landroid/app/DownloadManager$Request;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 43
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 44
    iget-object v0, p0, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->mDownloadManagerUtils:Lcom/oculus/downloader/util/OculusDownloadManagerUtils;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->setAllowedOverMetered(Landroid/app/DownloadManager$Request;Z)V

    .line 45
    return-void
.end method

.method private applyDefaultVisibilityConfig(Landroid/app/DownloadManager$Request;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 52
    return-void
.end method


# virtual methods
.method public createAuthenticatedRequest(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2

    .prologue
    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 63
    return-object v1
.end method

.method public createAuthenticatedRequestWithDefaultConfig(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->createAuthenticatedRequest(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->applyDefaultNetworkingConfig(Landroid/app/DownloadManager$Request;)V

    .line 24
    invoke-direct {p0, v0}, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->applyDefaultVisibilityConfig(Landroid/app/DownloadManager$Request;)V

    .line 25
    invoke-direct {p0, v0}, Lcom/oculus/appmanager/downloader/OculusDownloadRequestFactory;->applyDefaultDestinationConfig(Landroid/app/DownloadManager$Request;)V

    .line 26
    return-object v0
.end method
