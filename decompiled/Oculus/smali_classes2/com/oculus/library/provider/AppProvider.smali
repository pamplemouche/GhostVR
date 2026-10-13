.class public Lcom/oculus/library/provider/AppProvider;
.super Lcom/oculus/content/OculusPublicContentProvider;
.source "AppProvider.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadSuperClassContentProvider.SecureContentProvider"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/library/provider/AppProvider;)V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/library/provider/AppProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/provider/AppProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/library/provider/AppProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/provider/AppProvider;)V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/oculus/library/provider/AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oculus/content/OculusPublicContentProvider;-><init>()V

    return-void
.end method

.method private cancelDownload(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "cancel"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 330
    const/4 v0, 0x2

    sget v1, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v0, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 332
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 333
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->cancelDownloadOptimistically(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAccessLevel()Lcom/oculus/library/security/AccessControl$Level;
    .locals 5

    .prologue
    .line 442
    const/4 v0, 0x3

    sget v1, Lcom/oculus/library/security/SecurityModule$UL_id;->$ul_$xXXcom_oculus_library_security_AccessControl$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/security/AccessControl;

    .line 443
    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v1, 0x2

    sget v3, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v1, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v2, v1}, Lcom/oculus/library/security/AccessControl;->getAccessLevel(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceId()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 244
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 245
    const-string v1, "extra_device_id"

    .line 246
    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-object v0
.end method

.method private static getIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 481
    if-nez p0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-object v0

    .line 484
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 485
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 488
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getInstallCallbackReceiver(Landroid/os/Bundle;)Lcom/oculus/library/model/InstallerCallbackReceiver;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    if-eqz p1, :cond_0

    .line 309
    const-string v0, "result_receiver"

    .line 310
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 311
    if-eqz v0, :cond_0

    .line 312
    new-instance v1, Lcom/oculus/library/model/InstallerCallbackReceiver;

    new-instance v2, Lcom/oculus/library/provider/AppProvider$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/library/provider/AppProvider$2;-><init>(Lcom/oculus/library/provider/AppProvider;Landroid/os/ResultReceiver;)V

    invoke-direct {v1, v2}, Lcom/oculus/library/model/InstallerCallbackReceiver;-><init>(Lcom/oculus/library/model/InstallerCallback;)V

    move-object v0, v1

    .line 325
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 3

    .prologue
    .line 293
    if-eqz p1, :cond_0

    const-string v0, "extra_request_origin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    const-string v0, "extra_request_origin"

    .line 296
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/appmanager/info/model/RequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 302
    :cond_0
    :goto_0
    return-object p2

    .line 297
    :catch_0
    move-exception v0

    .line 298
    sget-object v1, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse request origin"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private insertContentValues(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1    # Landroid/content/ContentValues;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 350
    if-nez p1, :cond_0

    move-object v0, v1

    .line 375
    :goto_0
    return-object v0

    .line 357
    :cond_0
    const/4 v0, 0x4

    :try_start_0
    sget v2, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    invoke-virtual {v0, p1}, Lcom/oculus/library/legacy/LegacyUtils;->buildAppFromInsertContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/model/App;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    iget-object v2, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getEntry(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/oculus/library/provider/AppProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 367
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 361
    const/4 v0, 0x6

    sget v3, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v3, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    const-string v4, "Failed to create App because of missing value"

    invoke-virtual {v0, v3, v4, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 362
    goto :goto_0

    .line 370
    :cond_1
    const/4 v0, 0x5

    sget v2, Lcom/oculus/common/packagescache/PackagesCacheModule$UL_id;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/common/packagescache/PackagesCache;

    iget-object v2, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/oculus/common/packagescache/PackagesCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    new-instance v0, Lcom/oculus/library/model/App$Builder;

    invoke-direct {v0, v1}, Lcom/oculus/library/model/App$Builder;-><init>(Lcom/oculus/library/model/App;)V

    sget-object v1, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v0, v1}, Lcom/oculus/library/model/App$Builder;->withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/library/model/App$Builder;->build()Lcom/oculus/library/model/App;

    move-result-object v0

    move-object v1, v0

    .line 374
    :cond_2
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, v1}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->insertOrUpdateEntry(Lcom/oculus/library/model/App;)V

    .line 375
    const/4 v0, 0x1

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryDBCacheManager;

    invoke-virtual {v0, v1}, Lcom/oculus/cache/library/LibraryDBCacheManager;->insertEntry(Lcom/oculus/library/model/App;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private install(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 251
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "install"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 252
    const/4 v0, 0x2

    sget v1, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v0, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 254
    const/4 v0, 0x0

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 256
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p2, v0}, Lcom/oculus/library/provider/AppProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v2

    .line 257
    invoke-direct {p0, p2}, Lcom/oculus/library/provider/AppProvider;->getInstallCallbackReceiver(Landroid/os/Bundle;)Lcom/oculus/library/model/InstallerCallbackReceiver;

    move-result-object v3

    .line 260
    const/4 v0, 0x4

    sget v4, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/oculus/library/legacy/LegacyUtils;->performEntitlementInstall(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/InstallerCallbackReceiver;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 262
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    return-object v0
.end method

.method private installCustom(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 269
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_CUSTOM_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "install_custom"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 270
    const/4 v0, 0x2

    sget v1, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v0, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 272
    const/4 v0, 0x0

    sget v1, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 274
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p1, v0}, Lcom/oculus/library/provider/AppProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v6

    .line 275
    invoke-direct {p0, p1}, Lcom/oculus/library/provider/AppProvider;->getInstallCallbackReceiver(Landroid/os/Bundle;)Lcom/oculus/library/model/InstallerCallbackReceiver;

    move-result-object v5

    .line 277
    const-string v0, "extra_update_config_apk"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/model/UpdateConfig;

    .line 278
    const-string v0, "extra_update_config_obb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oculus/appmanager/model/UpdateConfig;

    .line 279
    if-nez v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "update config is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    const/4 v0, 0x4

    sget v3, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v7, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v7}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    iget-object v3, v1, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/library/legacy/LegacyUtils;->performCustomInstall(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/InstallerCallbackReceiver;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    return-object v0
.end method

.method private static parseIntegerWithDefault(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 467
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 469
    :goto_0
    return-object p1

    .line 468
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private queryAll(Z)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 400
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getApps()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 401
    new-instance v1, Lcom/oculus/library/legacy/LegacySupportCursor;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 402
    invoke-virtual {v1, v0, p1}, Lcom/oculus/library/legacy/LegacySupportCursor;->setUp(Lcom/google/common/collect/ImmutableList;Z)V

    .line 403
    return-object v1
.end method

.method private queryByAppId(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 432
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, p1}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getEntryById(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 433
    if-nez v1, :cond_0

    .line 434
    new-instance v0, Lcom/oculus/library/legacy/LegacySupportCursor;

    invoke-direct {v0, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 438
    :goto_0
    return-object v0

    .line 436
    :cond_0
    new-instance v0, Lcom/oculus/library/legacy/LegacySupportCursor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 437
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/library/legacy/LegacySupportCursor;->setUp(Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0
.end method

.method private queryByPackageName(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 421
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, p1}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getEntry(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 422
    if-nez v1, :cond_0

    .line 423
    new-instance v0, Lcom/oculus/library/legacy/LegacySupportCursor;

    invoke-direct {v0, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 427
    :goto_0
    return-object v0

    .line 425
    :cond_0
    new-instance v0, Lcom/oculus/library/legacy/LegacySupportCursor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 426
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oculus/library/legacy/LegacySupportCursor;->setUp(Lcom/google/common/collect/ImmutableList;Z)V

    goto :goto_0
.end method

.method private varargs queryDatabaseWithSortAndLimit(ZLjava/lang/Integer;Ljava/lang/String;[Lcom/oculus/model/ProductStatus;)Landroid/database/Cursor;
    .locals 3
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Lcom/oculus/model/ProductStatus;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 412
    const/4 v0, 0x1

    sget v1, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryDBCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 413
    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryDBCacheManager;

    invoke-virtual {v0, p2, p3, p4}, Lcom/oculus/cache/library/LibraryDBCacheManager;->getCurrentUserEntries(Ljava/lang/Integer;Ljava/lang/String;[Lcom/oculus/model/ProductStatus;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 414
    new-instance v1, Lcom/oculus/library/legacy/LegacySupportCursor;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/oculus/library/legacy/LegacySupportCursor;-><init>(I)V

    .line 415
    invoke-virtual {v1, v0, p1}, Lcom/oculus/library/legacy/LegacySupportCursor;->setUp(Lcom/google/common/collect/ImmutableList;Z)V

    .line 416
    return-object v1
.end method

.method private refetch(Landroid/os/ResultReceiver;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 379
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "refetch"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 381
    const/4 v0, 0x0

    sget v1, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 382
    const/4 v0, 0x4

    sget v1, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    invoke-virtual {v0, p1}, Lcom/oculus/library/legacy/LegacyUtils;->performRefetch(Landroid/os/ResultReceiver;)V

    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method private requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;
    .locals 5

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/oculus/library/provider/AppProvider;->getAccessLevel()Lcom/oculus/library/security/AccessControl$Level;

    move-result-object v0

    .line 449
    invoke-virtual {v0, p1}, Lcom/oculus/library/security/AccessControl$Level;->hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x2

    sget v3, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 452
    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v0, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Please ensure your app\'s signing certificate has access to this feature."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_0
    return-object v0
.end method

.method private uninstall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 338
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "uninstall"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 339
    const/4 v0, 0x2

    sget v1, Lcom/oculus/library/provider/ProviderModule$UL_id;->$ul_$xXXcom_oculus_library_provider_CallingPackageGetter$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/provider/CallingPackageGetter;

    invoke-virtual {v0, p0}, Lcom/oculus/library/provider/CallingPackageGetter;->getCallingPackage(Lcom/oculus/library/provider/AppProvider;)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 341
    const/4 v0, 0x0

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 343
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p2, v0}, Lcom/oculus/library/provider/AppProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v2

    .line 345
    const/4 v0, 0x4

    sget v3, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/oculus/library/legacy/LegacyUtils;->performUninstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 346
    const/4 v0, 0x0

    return-object v0
.end method

.method private update(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 387
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 388
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, p1}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getEntry(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 395
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-static {v2, p2}, Lcom/oculus/library/legacy/LegacyUtils;->updateLibraryProductModel(Lcom/oculus/library/model/App;Landroid/content/ContentValues;)Lcom/oculus/library/model/App;

    move-result-object v3

    .line 393
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v1, v0, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0, v3}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->insertOrUpdateEntry(Lcom/oculus/library/model/App;)V

    .line 394
    const/4 v0, 0x7

    sget v4, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_util_LibraryCacheUpdaterUtil$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/util/LibraryCacheUpdaterUtil;

    invoke-virtual {v0, v3, v1}, Lcom/oculus/cache/library/util/LibraryCacheUpdaterUtil;->startServiceForUpdateApp(Lcom/oculus/library/model/App;Z)V

    .line 395
    invoke-static {v3, v2}, Lcom/oculus/library/utils/AppInternalUtils;->areTwoAppsEqual(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 219
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unknown method requested"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :sswitch_0
    const-string v1, "install_package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "install_custom_package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "uninstall_package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "cancel_download_package"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "refetch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "get_device_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 221
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/oculus/library/provider/AppProvider;->install(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 236
    :goto_1
    return-object v0

    .line 223
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/oculus/library/provider/AppProvider;->installCustom(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 225
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/oculus/library/provider/AppProvider;->uninstall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 227
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/oculus/library/provider/AppProvider;->cancelDownload(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 229
    :pswitch_4
    if-eqz p3, :cond_1

    const-string v0, "result_receiver"

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 234
    :goto_2
    invoke-direct {p0, v0}, Lcom/oculus/library/provider/AppProvider;->refetch(Landroid/os/ResultReceiver;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 232
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 236
    :pswitch_5
    invoke-direct {p0}, Lcom/oculus/library/provider/AppProvider;->getDeviceId()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        -0x75199b64 -> :sswitch_1
        -0x4912fe17 -> :sswitch_2
        -0x2566ad4c -> :sswitch_3
        -0x1362ca5e -> :sswitch_0
        0x203081fb -> :sswitch_5
        0x40ace067 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 191
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 192
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "delete"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 193
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 195
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 196
    sget v0, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->clearMemoryCache()I

    move-result v0

    return v0

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Lcom/oculus/library/provider/Constants;->getContentTypeFor(Landroid/net/Uri;)Lcom/oculus/library/provider/ContentType;

    move-result-object v0

    iget-object v0, v0, Lcom/oculus/library/provider/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/library/provider/AppProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/library/provider/AppProvider;)V

    .line 71
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheChangeEventBus;->getInstance()Lcom/oculus/cache/library/LibraryCacheChangeEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/cache/library/LibraryCacheChangeEventBus;->register(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p2    # Landroid/content/ContentValues;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 158
    const/4 v0, 0x0

    sget v2, Lcom/oculus/cache/library/LibraryCacheModule$UL_id;->$ul_$xXXcom_oculus_cache_library_LibraryMemoryCacheManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->ensureCacheLoaded()V

    .line 159
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v2, "insert"

    invoke-direct {p0, v0, v2}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 160
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 163
    sget v0, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->useOCMS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 166
    sget v0, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    new-instance v3, Lcom/oculus/library/provider/AppProvider$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/oculus/library/provider/AppProvider$1;-><init>(Lcom/oculus/library/provider/AppProvider;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v3}, Lcom/oculus/libraryapi/OVRLibraryInternal;->refetch(Landroid/os/ResultReceiver;)V

    .line 173
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v0, 0x4

    sget v2, Lcom/oculus/library/legacy/LegacyModule$UL_id;->$ul_$xXXcom_oculus_library_legacy_LegacyUtils$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/legacy/LegacyUtils;

    invoke-virtual {v0, p2}, Lcom/oculus/library/legacy/LegacyUtils;->buildAppFromInsertContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    sget-object v0, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unexpected null app from content values, returning null uri"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    const-string v2, "Error while waiting for ocms refresh"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p2}, Lcom/oculus/library/provider/AppProvider;->insertContentValues(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_1
    invoke-direct {p0, p2}, Lcom/oculus/library/provider/AppProvider;->insertContentValues(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->ensureInitialized()V

    .line 111
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v2, "query"

    invoke-direct {p0, v0, v2}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 114
    invoke-static {p1}, Lcom/oculus/library/provider/Constants;->getContentTypeFor(Landroid/net/Uri;)Lcom/oculus/library/provider/ContentType;

    move-result-object v2

    .line 115
    if-nez v2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    sget-object v3, Lcom/oculus/library/provider/AppProvider$3;->$SwitchMap$com$oculus$library$provider$ContentType$QueryMethod:[I

    iget-object v4, v2, Lcom/oculus/library/provider/ContentType;->queryMethod:Lcom/oculus/library/provider/ContentType$QueryMethod;

    invoke-virtual {v4}, Lcom/oculus/library/provider/ContentType$QueryMethod;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 149
    const/4 v0, 0x6

    sget v3, Lcom/oculus/errorreporting/ErrorReportingModule$UL_id;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXBINDING_ID:I

    iget-object v4, p0, Lcom/oculus/library/provider/AppProvider;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v3, Lcom/oculus/library/provider/AppProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown query method encountered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/oculus/library/provider/ContentType;->queryMethod:Lcom/oculus/library/provider/ContentType$QueryMethod;

    .line 150
    invoke-virtual {v2}, Lcom/oculus/library/provider/ContentType$QueryMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v3, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v1

    .line 120
    :pswitch_0
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 121
    if-nez v1, :cond_1

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packageName in uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    sget-object v2, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 125
    invoke-virtual {v0, v2}, Lcom/oculus/library/security/AccessControl$Level;->hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z

    move-result v0

    .line 124
    invoke-direct {p0, v1, v0}, Lcom/oculus/library/provider/AppProvider;->queryByPackageName(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 127
    :pswitch_1
    const-string v2, "direct"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2, v1}, Lcom/oculus/library/provider/AppProvider;->parseIntegerWithDefault(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    .line 132
    sget-object v2, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 133
    invoke-virtual {v0, v2}, Lcom/oculus/library/security/AccessControl$Level;->hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z

    move-result v4

    if-eqz p5, :cond_2

    .line 135
    invoke-static {p5}, Lcom/oculus/library/legacy/LegacyUtils;->toLegacyContractColumn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz p4, :cond_3

    .line 137
    invoke-static {p4}, Lcom/oculus/library/utils/AppStatusConverter;->appStatusNamesToLegacyProductStatuses([Ljava/lang/String;)[Lcom/oculus/model/ProductStatus;

    move-result-object v0

    .line 132
    :goto_2
    invoke-direct {p0, v4, v3, v2, v0}, Lcom/oculus/library/provider/AppProvider;->queryDatabaseWithSortAndLimit(ZLjava/lang/Integer;Ljava/lang/String;[Lcom/oculus/model/ProductStatus;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 135
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 137
    goto :goto_2

    .line 140
    :cond_4
    sget-object v1, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    invoke-virtual {v0, v1}, Lcom/oculus/library/security/AccessControl$Level;->hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/library/provider/AppProvider;->queryAll(Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-static {p1}, Lcom/oculus/library/provider/AppProvider;->getIdFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 143
    if-nez v1, :cond_5

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty app id in uri!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_5
    sget-object v2, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    .line 147
    invoke-virtual {v0, v2}, Lcom/oculus/library/security/AccessControl$Level;->hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z

    move-result v0

    .line 146
    invoke-direct {p0, v1, v0}, Lcom/oculus/library/provider/AppProvider;->queryByAppId(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public doShutdown()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Lcom/oculus/content/OculusPublicContentProvider;->shutdown()V

    .line 477
    invoke-static {}, Lcom/oculus/cache/library/LibraryCacheChangeEventBus;->getInstance()Lcom/oculus/cache/library/LibraryCacheChangeEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oculus/cache/library/LibraryCacheChangeEventBus;->unregister(Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p2    # Landroid/content/ContentValues;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    sget-object v0, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    const-string v1, "update"

    invoke-direct {p0, v0, v1}, Lcom/oculus/library/provider/AppProvider;->requires(Lcom/oculus/library/security/AccessControl$Feature;Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;

    .line 209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 210
    invoke-static {p1}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packageName in uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/oculus/library/provider/AppProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public onLibraryMemoryCacheChangeEvent(Lcom/oculus/cache/library/event/LibraryMemoryCacheChangeEvent;)V
    .locals 3
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p1, Lcom/oculus/cache/library/event/LibraryMemoryCacheChangeEvent;->apps:Lcom/google/common/collect/ImmutableList;

    .line 78
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryByPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/library/provider/AppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->queryAllPackages()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method
