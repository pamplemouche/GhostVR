.class public Lcom/oculus/horizon/spatialai/MapDownloadManager;
.super Ljava/lang/Object;
.source "MapDownloadManager.java"

# interfaces
.implements Lcom/oculus/downloader/OculusDownloadListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDownloadFileFolder:Ljava/io/File;

.field private final mOculusFileDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

.field private final mReceiver:Landroid/os/ResultReceiver;

.field private final mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

.field private mService:Lcom/oculus/horizon/spatialai/SpatialAIService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/spatialai/SpatialAIService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/oculus/appmanager/downloader/OculusFileDownloader;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/oculus/horizon/spatialai/MapDownloadResponse;Lcom/oculus/horizon/spatialai/SpatialAIService;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mOculusFileDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    .line 47
    iput-object p2, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mDownloadFileFolder:Ljava/io/File;

    .line 48
    iput-object p3, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mReceiver:Landroid/os/ResultReceiver;

    .line 49
    iput-object p5, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mService:Lcom/oculus/horizon/spatialai/SpatialAIService;

    .line 50
    iput-object p4, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

    .line 51
    return-void
.end method

.method private copyToTemporaryMapLocation(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oculus/downloader/contract/DownloaderContract;->EXTERNAL_DOWNLOAD_SUB_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mDownloadFileFolder:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v2}, Lcom/facebook/common/iolite/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Temporary map download was not deleted."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public enqueue()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

    iget-object v0, v0, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v2, v0, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/oculus/extras/ExtrasBuilder;

    invoke-direct {v0}, Lcom/oculus/extras/ExtrasBuilder;-><init>()V

    const-string v1, "uuid"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/extras/ExtrasBuilder;->build()Lcom/oculus/extras/Extras;

    move-result-object v8

    .line 59
    const/4 v4, 0x3

    .line 61
    new-instance v0, Lcom/oculus/downloader/model/DownloadConfig;

    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

    iget-object v1, v1, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v1, v1, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->mapDownloadUri:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Lcom/oculus/horizon/spatialai/SpatialAIHelper;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/oculus/downloader/model/DownloadConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mOculusFileDownloader:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v1, v0, v8}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->enqueue(Lcom/oculus/downloader/model/DownloadConfig;Lcom/oculus/extras/Extras;)J

    move-result-wide v0

    .line 73
    sget-object v2, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Download id:"

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public onDownloadComplete(Lcom/oculus/downloader/model/DownloadInfo;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    iget-object v1, p1, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    const-string v2, "uuid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/oculus/extras/Extras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    :cond_0
    sget-object v1, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Map download failed."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "result_key"

    const-string v2, "Map Download Empty or Wrong File"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 122
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {v2}, Lcom/oculus/horizon/spatialai/SpatialAIHelper;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    :try_start_0
    invoke-direct {p0, v1}, Lcom/oculus/horizon/spatialai/MapDownloadManager;->copyToTemporaryMapLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    sget-object v1, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    const-string v2, "Download Success"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "result_key"

    const-string v2, "Download Success"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mService:Lcom/oculus/horizon/spatialai/SpatialAIService;

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mResponse:Lcom/oculus/horizon/spatialai/MapDownloadResponse;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->writeMapandGuardian(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mReceiver:Landroid/os/ResultReceiver;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    sget-object v2, Lcom/oculus/horizon/spatialai/MapDownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "Failed to copy map file from download location!"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/MapDownloadManager;->mReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method
