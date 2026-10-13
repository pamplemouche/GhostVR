.class public Lcom/oculus/horizon/spatialai/SpatialAIService;
.super Landroid/app/IntentService;
.source "SpatialAIService.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMapDownloadMethod:Lcom/oculus/horizon/spatialai/MapDownloadMethod;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMapUploadMethod:Lcom/oculus/horizon/spatialai/MapUploadMethod;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/spatialai/SpatialAIService;)V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/spatialai/SpatialAIService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/spatialai/SpatialAIService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/spatialai/SpatialAIService;)V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/spatialai/SpatialAIService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spatialai/SpatialAIService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/horizon/spatialai/MapDownloadMethod;->$ul_$xXXcom_oculus_horizon_spatialai_MapDownloadMethod$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/spatialai/MapDownloadMethod;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMapDownloadMethod:Lcom/oculus/horizon/spatialai/MapDownloadMethod;

    invoke-static {p0}, Lcom/oculus/horizon/spatialai/MapUploadMethod;->$ul_$xXXcom_oculus_horizon_spatialai_MapUploadMethod$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/spatialai/MapUploadMethod;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMapUploadMethod:Lcom/oculus/horizon/spatialai/MapUploadMethod;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/oculus/horizon/spatialai/SpatialAIService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static varargs close([Ljava/io/Closeable;)V
    .locals 5

    .prologue
    .line 664
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 666
    :try_start_0
    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 667
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    sget-object v3, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to close a closeable"

    invoke-static {v3, v0, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 673
    :cond_1
    return-void
.end method

.method private fetchGuardian(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 248
    new-instance v0, Lcom/oculus/horizon/spatialai/GuardianAPI;

    .line 249
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/spatialai/GuardianAPI;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spatialai/GuardianAPI;->exportGuardianJsonAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Guardian retrieval failed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "result_key"

    const-string v1, "Map upload response had an error."

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .line 258
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->setGuardianInfo(Ljava/lang/String;)Lcom/oculus/horizon/spatialai/MapUploadRequest;

    .line 258
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fetchMap(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->pullMapFromTrackingEnvViaPipe(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read the map"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "result_key"

    const-string v2, "Map upload response had an error."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "colocation"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/horizon/spatialai/SpatialAIHelper;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 274
    :cond_1
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Map does not exist."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "result_key"

    const-string v2, "Map does not exist."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_2
    new-instance v0, Lretrofit/mime/TypedFile;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1, v2}, Lretrofit/mime/TypedFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->setCloudFile(Lretrofit/mime/TypedFile;)Lcom/oculus/horizon/spatialai/MapUploadRequest;

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCurrentMapUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/oculus/os/MapManager;

    invoke-direct {v0}, Lcom/oculus/os/MapManager;-><init>()V

    invoke-virtual {v0}, Lcom/oculus/os/MapManager;->getCurrentMapUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 652
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x1

    aget-object v0, p0, v0

    return-object v0
.end method

.method private static isNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 660
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private localizeOnMapandGuardian(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 330
    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->parseReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v3

    .line 332
    if-nez v3, :cond_0

    .line 333
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "No result receiver provided."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 337
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 339
    invoke-static {p1, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->parseUuid(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-nez v0, :cond_1

    .line 342
    invoke-virtual {v3, v6, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 350
    :cond_1
    :try_start_0
    new-instance v2, Lcom/oculus/horizon/spatialai/MapDownloadRequest;

    invoke-direct {v2, v0}, Lcom/oculus/horizon/spatialai/MapDownloadRequest;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v4, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMapDownloadMethod:Lcom/oculus/horizon/spatialai/MapDownloadMethod;

    invoke-virtual {v4, v2}, Lcom/oculus/horizon/spatialai/MapDownloadMethod;->getMapResponse(Lcom/oculus/horizon/spatialai/MapDownloadRequest;)Lcom/oculus/horizon/spatialai/MapDownloadResponse;
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 359
    if-nez v4, :cond_2

    .line 360
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Download response is null"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "result_key"

    const-string v2, "Map download response had an error."

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v3, v6, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-object v2, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v4, "Map download response had an error."

    invoke-static {v2, v4, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    const-string v0, "result_key"

    const-string v2, "Map download response had an error."

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3, v6, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v2, v4, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 367
    :cond_3
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Download response parts are null"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "result_key"

    const-string v2, "Map download response had an error."

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3, v6, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v2, v4, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 374
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Download UUID is not the same"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "result_key"

    const-string v2, "Map download response had an error."

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v3, v6, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 380
    :cond_5
    iget-object v0, v4, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v0, v0, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->mapDownloadUri:Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "colocation"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 384
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 388
    :cond_6
    new-instance v0, Lcom/oculus/horizon/spatialai/MapDownloadManager;

    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 389
    invoke-static {v6, v1, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spatialai/MapDownloadManager;-><init>(Lcom/oculus/appmanager/downloader/OculusFileDownloader;Ljava/io/File;Landroid/os/ResultReceiver;Lcom/oculus/horizon/spatialai/MapDownloadResponse;Lcom/oculus/horizon/spatialai/SpatialAIService;)V

    .line 390
    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v6, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v1, v0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->addListener(Lcom/oculus/downloader/OculusDownloadListener;)V

    .line 391
    invoke-virtual {v0}, Lcom/oculus/horizon/spatialai/MapDownloadManager;->enqueue()V

    goto/16 :goto_0
.end method

.method private static parseReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Extras are empty."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    const-string v0, "receiver_tag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    goto :goto_0
.end method

.method private static parseUuid(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "No provided uuid."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "result_key"

    const-string v1, "No provided uuid."

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    .line 165
    :cond_0
    return-object v0
.end method

.method private static prepPipeReadConnection(Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 621
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 623
    new-instance v1, Lcom/oculus/os/MapManager;

    invoke-direct {v1}, Lcom/oculus/os/MapManager;-><init>()V

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/oculus/os/MapManager;->readMap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 625
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 627
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "pullMapFromTrackingEnvViaPipe failed due to a pipeline failure or rejection"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Closeable;

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    .line 629
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to prep pipe read connection in pullMapFromTrackingEnvViaPipe"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :cond_0
    new-array v2, v7, [Ljava/io/Closeable;

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    .line 633
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 634
    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static prepPipeWriteConnection(Ljava/lang/String;Ljava/io/FileInputStream;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/FileInputStream;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/OutputStream;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 545
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    .line 547
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v4, "The file size was %d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    new-instance v1, Lcom/oculus/os/MapManager;

    invoke-direct {v1}, Lcom/oculus/os/MapManager;-><init>()V

    .line 551
    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 550
    invoke-virtual {v1, v4, p0, v2, v3}, Lcom/oculus/os/MapManager;->writeMap(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Closeable;

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    .line 555
    new-instance v0, Ljava/io/IOException;

    const-string v1, "pushMapToTrackingEnvViaPipe operation rejected or pipeline failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    new-array v1, v7, [Ljava/io/Closeable;

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getReadEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    .line 559
    new-instance v1, Landroid/util/Pair;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 560
    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getWriteEnd([Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private pullMapFromTrackingEnvViaPipe(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 566
    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Null or empty UUID received by SpatialAIService for shareMapandGuardian map"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :goto_0
    return v3

    .line 578
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "colocation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 579
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIHelper;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 581
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to locate or create new map file"

    invoke-static {v0, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 613
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 586
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 588
    :try_start_3
    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->prepPipeReadConnection(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v6

    .line 589
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 590
    :try_start_4
    iget-object v1, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 592
    sget-object v6, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v7, "File size recorded as %d"

    invoke-static {v6, v7, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    const/high16 v6, 0x10000

    new-array v7, v6, [B

    move-object v6, v1

    move v1, v3

    .line 597
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_3

    .line 599
    const/4 v1, 0x0

    const/high16 v8, 0x10000

    invoke-static {v0, v7, v1, v8}, Lcom/oculus/horizon/spatialai/SpatialAIService;->readFromStreamWithTimeOut(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 601
    if-nez v1, :cond_2

    .line 602
    new-instance v1, Ljava/io/IOException;

    const-string v6, "pullMapFromTrackingEnvViaPipe failed due to timeout"

    invoke-direct {v1, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 609
    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 610
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 611
    sget-object v5, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v6, "pullMapFromTrackingEnvViaPipe failed"

    invoke-static {v5, v0, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 613
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    move v0, v3

    :goto_3
    move v3, v0

    .line 616
    goto/16 :goto_0

    .line 605
    :cond_2
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v4, v7, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 613
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_4
    new-array v5, v12, [Ljava/io/Closeable;

    aput-object v1, v5, v3

    aput-object v4, v5, v2

    invoke-static {v5}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    throw v0

    :cond_3
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v0, v1, v3

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    move v0, v2

    .line 614
    goto :goto_3

    .line 613
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 609
    :catch_1
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private static readFromStreamWithTimeOut(Ljava/io/InputStream;[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 642
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    .line 643
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 648
    :goto_0
    return v0

    .line 645
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 648
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendUuid(Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "No provided uuid."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "result_key"

    const-string v2, "No provided uuid."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v1, "result_key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private shareMapandGuardian(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->parseReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "No result receiver provided."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    invoke-static {p1, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->parseUuid(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 214
    if-nez v2, :cond_1

    .line 215
    invoke-virtual {v0, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 218
    :cond_1
    new-instance v3, Lcom/oculus/horizon/spatialai/MapUploadRequest;

    invoke-direct {v3}, Lcom/oculus/horizon/spatialai/MapUploadRequest;-><init>()V

    invoke-virtual {v3, v2}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->setUuid(Ljava/lang/String;)Lcom/oculus/horizon/spatialai/MapUploadRequest;

    move-result-object v2

    .line 221
    invoke-direct {p0, v2, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->fetchGuardian(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z

    move-result v3

    .line 223
    if-nez v3, :cond_2

    .line 224
    invoke-virtual {v0, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->fetchMap(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z

    move-result v3

    .line 231
    if-nez v3, :cond_3

    .line 232
    invoke-virtual {v0, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 237
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->uploadMapAndGuardian(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 238
    invoke-virtual {v0, v4, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 242
    :cond_4
    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private uploadMapAndGuardian(Lcom/oculus/horizon/spatialai/MapUploadRequest;Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMapUploadMethod:Lcom/oculus/horizon/spatialai/MapUploadMethod;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/spatialai/MapUploadMethod;->sendMapData(Lcom/oculus/horizon/spatialai/MapUploadRequest;)Lcom/oculus/horizon/spatialai/MapUploadResponse;

    move-result-object v1

    .line 291
    if-nez v1, :cond_0

    .line 292
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "UPLOAD RESPONSE IS NULL"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return v0

    .line 295
    :cond_0
    iget-object v2, v1, Lcom/oculus/horizon/spatialai/MapUploadResponse;->mutationUploadMap:Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;

    if-nez v2, :cond_1

    .line 296
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "NO MUTATION UPLOAD MAP RESPONSE IS NULL"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    sget-object v2, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v3, "Map upload response had an error."

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    const-string v1, "result_key"

    const-string v2, "Map upload response had an error."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/oculus/horizon/spatialai/MapUploadResponse;->mutationUploadMap:Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;->uuid:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 300
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "NO MUTATION UPLOAD MAP UUID IS NULL"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->getUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/oculus/horizon/spatialai/MapUploadRequest;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/oculus/horizon/spatialai/MapUploadResponse;->mutationUploadMap:Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;

    iget-object v1, v1, Lcom/oculus/horizon/spatialai/MapUploadResponse$MutationUploadMap;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 304
    :cond_3
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "uuid is different"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v1, "result_key"

    const-string v2, "Map upload response had an error."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_4
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Map upload was successful."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v1, "result_key"

    const-string v2, "Map upload was successful."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/oculus/http/core/base/ApiException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 44
    invoke-static {p0, p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/spatialai/SpatialAIService;)V

    .line 84
    return-void
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0x12

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v4, Lcom/oculus/horizon/spatialai/MC$oculus_colocation_service_whitelist;->enabled:J

    invoke-interface {v0, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Do Not Have Gatekeeper Permissions"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 93
    :cond_0
    sget v0, Lcom/oculus/os/Version;->CURRENT_SDK_VERSION:I

    if-ge v0, v6, :cond_1

    .line 94
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v3, "The OSSDK version must be at least %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    if-nez p1, :cond_2

    .line 99
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Null intent received"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Null intent received by SpatialAIService"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Null or empty action received"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Null or empty action received by SpatialAIService"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 145
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v4, "Unknown intent received: "

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v0, v4, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :sswitch_0
    const-string v4, "action_get_current_uuid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "action_share_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "action_localize_on_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    .line 124
    :pswitch_0
    invoke-static {}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getCurrentMapUUID()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->parseReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 126
    if-nez v1, :cond_5

    .line 127
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "No result receiver provided."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_5
    invoke-static {v0, v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->sendUuid(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 135
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->shareMapandGuardian(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 140
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->localizeOnMapandGuardian(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        -0x33bcaa17 -> :sswitch_2
        -0x2c46400d -> :sswitch_0
        -0x25e35cd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pushMapToTrackingEnvViaPipe(Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 489
    if-nez p1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/oculus/horizon/spatialai/SpatialAIService;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v3, "Null or empty UUID received by SpatialAIService for shareMapandGuardian map"

    invoke-virtual {v0, v1, v3}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 536
    :goto_0
    return v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "colocation"

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 499
    new-instance v6, Ljava/io/File;

    invoke-static {p1}, Lcom/oculus/horizon/spatialai/SpatialAIHelper;->getMapFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 504
    :try_start_1
    invoke-static {p1, v4}, Lcom/oculus/horizon/spatialai/SpatialAIService;->prepPipeWriteConnection(Ljava/lang/String;Ljava/io/FileInputStream;)Landroid/util/Pair;

    move-result-object v5

    .line 506
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 507
    :try_start_2
    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 510
    const/16 v5, 0x1000

    new-array v7, v5, [B

    move-object v5, v1

    move v1, v2

    .line 512
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, v1

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_4

    .line 514
    const/4 v1, 0x0

    const/16 v8, 0x1000

    invoke-static {v4, v7, v1, v8}, Lcom/oculus/horizon/spatialai/SpatialAIService;->readFromStreamWithTimeOut(Ljava/io/InputStream;[BII)I

    move-result v1

    .line 516
    if-nez v1, :cond_2

    .line 517
    new-instance v1, Ljava/io/IOException;

    const-string v5, "Failed to write new map"

    invoke-direct {v1, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    :catch_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 523
    :goto_2
    :try_start_3
    sget-object v5, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v7, "pushMapToTrackingEnvViaPipe failed!"

    invoke-static {v5, v0, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 527
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 528
    :cond_1
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v5, "Map download deleted successfully"

    invoke-static {v0, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_3
    new-array v0, v12, [Ljava/io/Closeable;

    aput-object v1, v0, v2

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    :goto_4
    move v0, v3

    .line 536
    goto :goto_0

    .line 519
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v0, v7, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 526
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 527
    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 528
    :cond_3
    sget-object v5, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v6, "Map download deleted successfully"

    invoke-static {v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_6
    new-array v5, v12, [Ljava/io/Closeable;

    aput-object v1, v5, v2

    aput-object v4, v5, v3

    invoke-static {v5}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    throw v0

    .line 527
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 528
    :cond_5
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v5, "Map download deleted successfully"

    invoke-static {v1, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_7
    new-array v1, v12, [Ljava/io/Closeable;

    aput-object v0, v1, v2

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/oculus/horizon/spatialai/SpatialAIService;->close([Ljava/io/Closeable;)V

    goto :goto_4

    .line 530
    :cond_6
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v5, "Failed to delete map download"

    invoke-static {v1, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v5, "Failed to delete map download"

    invoke-static {v0, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v5, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete map download"

    invoke-static {v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 526
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 522
    :catch_1
    move-exception v0

    move-object v4, v1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public receiveGuardian(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 448
    iget-object v0, p1, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v0, v0, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->guardianInfo:Ljava/lang/String;

    .line 450
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 451
    :cond_0
    const-string v0, "result_key"

    const-string v1, "Map download response had an error."

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x0

    .line 462
    :cond_1
    :goto_0
    return v0

    .line 455
    :cond_2
    new-instance v1, Lcom/oculus/horizon/spatialai/GuardianAPI;

    .line 456
    invoke-virtual {p0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/spatialai/GuardianAPI;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/spatialai/GuardianAPI;->importGuardianJsonAsString(Ljava/lang/String;Z)Z

    move-result v0

    .line 458
    if-nez v0, :cond_1

    .line 459
    const-string v1, "result_key"

    const-string v2, "Map download response had an error."

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public receiveMap(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 438
    iget-object v0, p1, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v0, v0, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/spatialai/SpatialAIService;->pushMapToTrackingEnvViaPipe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const-string v0, "result_key"

    const-string v1, "Map download response had an error."

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeMapandGuardian(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/spatialai/SpatialAIService;->receiveMap(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    :goto_0
    return v0

    .line 412
    :cond_0
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v1

    .line 414
    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x2ee0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 417
    iget-object v2, p1, Lcom/oculus/horizon/spatialai/MapDownloadResponse;->queryMapFromUuid:Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;

    iget-object v2, v2, Lcom/oculus/horizon/spatialai/MapDownloadResponse$QueryMapFromUuid;->uuid:Ljava/lang/String;

    invoke-static {}, Lcom/oculus/horizon/spatialai/SpatialAIService;->getCurrentMapUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    sget-object v2, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v3, "Relocalization took "

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "ms"

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 422
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/spatialai/SpatialAIService;->receiveGuardian(Lcom/oculus/horizon/spatialai/MapDownloadResponse;Landroid/os/Bundle;)Z

    move-result v1

    .line 423
    if-nez v1, :cond_2

    .line 424
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to import guardian!"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_2
    sget-object v0, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v1, "Successfully imported guardian"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x1

    goto :goto_0

    .line 433
    :cond_3
    sget-object v1, Lcom/oculus/horizon/spatialai/SpatialAIService;->TAG:Ljava/lang/String;

    const-string v2, "Relocalization failed!"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
