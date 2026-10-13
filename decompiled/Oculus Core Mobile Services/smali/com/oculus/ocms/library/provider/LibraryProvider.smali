.class public Lcom/oculus/ocms/library/provider/LibraryProvider;
.super Lcom/oculus/content/OculusFbPermissionsContentProvider;
.source "LibraryProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppConverter:Lcom/oculus/library/utils/app/AppConverter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mClock:Lcom/oculus/time/Clock;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mDownloadAndInstallApi:Lcom/oculus/installer/DownloadAndInstallApi;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mInstallerServiceUtil:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLibraryCacheRefresher:Lcom/oculus/library/refresher/LibraryCacheRefresher;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mTrustedApplications:Lcom/oculus/library/security/TrustedApplications;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUninstallerAsyncTaskProvider:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/library/provider/LibraryProvider;)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/library/provider/LibraryProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/ocms/library/provider/LibraryProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/ocms/library/provider/LibraryProvider;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->$ul_$xXXcom_oculus_library_refresher_LibraryCacheRefresher$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/refresher/LibraryCacheRefresher;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryCacheRefresher:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-static {p0}, Lcom/oculus/library/database/LibraryStorage;->$ul_$xXXcom_oculus_library_database_LibraryStorage$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/database/LibraryStorage;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    invoke-static {p0}, Lcom/oculus/installer/DownloadAndInstallApi;->$ul_$xXXcom_oculus_installer_DownloadAndInstallApi$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/installer/DownloadAndInstallApi;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mDownloadAndInstallApi:Lcom/oculus/installer/DownloadAndInstallApi;

    invoke-static {p0}, Lcom/oculus/time/Clock;->$ul_$xXXcom_oculus_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/time/Clock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mClock:Lcom/oculus/time/Clock;

    invoke-static {p0}, Lcom/oculus/library/utils/app/AppConverterUtilsModule;->$ul_$xXXcom_oculus_library_utils_app_AppConverter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/utils/app/AppConverter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-static {p0}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->$ul_$xXXcom_oculus_appmanager_uninstaller_tasks_UninstallerAsyncTaskProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mUninstallerAsyncTaskProvider:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;

    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->$ul_$xXXcom_oculus_appmanager_installer_util_InstallerServiceUtil$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mInstallerServiceUtil:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    invoke-static {p0}, Lcom/oculus/library/security/TrustedApplications;->$ul_$xXXcom_oculus_library_security_TrustedApplications$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/library/security/TrustedApplications;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/ocms/library/provider/LibraryProvider;->mTrustedApplications:Lcom/oculus/library/security/TrustedApplications;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/oculus/ocms/library/provider/LibraryProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/ocms/library/provider/LibraryProvider;Lbolts/Task;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->handleInstallTaskResult(Lbolts/Task;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->handleUninstallResult(Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/ocms/library/provider/LibraryProvider;Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider;->prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private cancelDownload(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 259
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "running cancelDownload(%s) for %s"

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mInstallerServiceUtil:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    invoke-virtual {v0, p1}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->startServiceForCancelDownloadAction(Ljava/lang/String;)V

    .line 264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 265
    const-string v1, "extra_cancel_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-object v0
.end method

.method private getCallbackReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    if-eqz p1, :cond_0

    .line 451
    const-string v0, "result_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 453
    :cond_0
    return-object v0
.end method

.method private getCallingPackageViaUid()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceId()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 178
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    const-string v1, "extra_device_id"

    invoke-virtual {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method private getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 436
    if-eqz p1, :cond_0

    const-string v0, "extra_request_origin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    :try_start_0
    const-string v0, "extra_request_origin"

    .line 439
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/appmanager/info/model/RequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 444
    :cond_0
    :goto_0
    return-object p2

    .line 440
    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v2, "Failed to parse request origin"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleInstallTaskResult(Lbolts/Task;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 6
    .param p3    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/appmanager/info/model/InstallerResult;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/ResultReceiver;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 458
    if-nez p3, :cond_0

    .line 483
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 463
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    const-string v2, "EXTRA_RESULT"

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 465
    invoke-virtual {p3, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    if-eqz v0, :cond_2

    .line 471
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;

    .line 472
    const-string v2, "EXTRA_RESULT"

    iget-object v0, v0, Lcom/oculus/installer/DownloadAndInstallApi$ExceptionWithInstallerResult;->mInstallerResult:Lcom/oculus/appmanager/info/model/InstallerResult;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 474
    invoke-virtual {p3, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "EXTRA_RESULT"

    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mClock:Lcom/oculus/time/Clock;

    .line 481
    invoke-virtual {v2}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    sget-object v4, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 480
    invoke-static {p2, v2, v3, v4}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object v2

    .line 478
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 482
    invoke-virtual {p3, v5, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private handleUninstallResult(Ljava/lang/String;Lcom/oculus/appmanager/info/model/InstallerResult;Landroid/os/ResultReceiver;)V
    .locals 4
    .param p2    # Lcom/oculus/appmanager/info/model/InstallerResult;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 487
    if-nez p3, :cond_0

    .line 499
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    if-nez p2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mClock:Lcom/oculus/time/Clock;

    .line 495
    invoke-virtual {v1}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    sget-object v1, Lcom/oculus/appmanager/info/model/InstallerResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/InstallerResultError;

    .line 494
    invoke-static {p1, v2, v3, v1}, Lcom/oculus/appmanager/info/model/InstallerResult;->createForError(Ljava/lang/String;JLcom/oculus/appmanager/info/model/InstallerResultError;)Lcom/oculus/appmanager/info/model/InstallerResult;

    move-result-object p2

    .line 497
    :cond_1
    const-string v1, "EXTRA_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 498
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private install(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 194
    sget-object v1, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v2, "running install(%s, extras[%d]) for %s"

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 198
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v1, v2, p1, v0, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p2, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v0

    .line 202
    invoke-direct {p0, p2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallbackReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mDownloadAndInstallApi:Lcom/oculus/installer/DownloadAndInstallApi;

    .line 206
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {v2, p1, v3, v0}, Lcom/oculus/installer/DownloadAndInstallApi;->downloadAndInstallAsync(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;

    move-result-object v0

    .line 207
    new-instance v2, Lcom/oculus/ocms/library/provider/LibraryProvider$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/oculus/ocms/library/provider/LibraryProvider$1;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 219
    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v0

    goto :goto_0
.end method

.method private installCustom(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extras required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    const-class v0, Lcom/oculus/appmanager/model/UpdateConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 227
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "running installCustom(extras[%d]) for %s"

    .line 228
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p1, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v5

    .line 231
    invoke-direct {p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallbackReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v6

    .line 233
    const-string v0, "extra_update_config_apk"

    .line 234
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/model/UpdateConfig;

    .line 235
    const-string v0, "extra_update_config_obb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/oculus/appmanager/model/UpdateConfig;

    .line 236
    if-nez v1, :cond_1

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "update config is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mDownloadAndInstallApi:Lcom/oculus/installer/DownloadAndInstallApi;

    iget-object v3, v1, Lcom/oculus/appmanager/model/UpdateConfig;->packageName:Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v4

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/installer/DownloadAndInstallApi;->downloadAndInstallAsync(Lcom/oculus/appmanager/model/UpdateConfig;Lcom/oculus/appmanager/model/UpdateConfig;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lbolts/Task;

    move-result-object v0

    .line 243
    new-instance v2, Lcom/oculus/ocms/library/provider/LibraryProvider$2;

    invoke-direct {v2, p0, v1, v6}, Lcom/oculus/ocms/library/provider/LibraryProvider$2;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Lcom/oculus/appmanager/model/UpdateConfig;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    const-string v1, "extra_response_callback_supported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    return-object v0
.end method

.method private prepareResultReceiverForIPC(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 308
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 309
    sget-object v0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-object v0
.end method

.method private query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 415
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "running query(%s) for %s"

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    invoke-virtual {v0, p1}, Lcom/oculus/library/database/LibraryStorage;->get(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 418
    if-nez v1, :cond_0

    .line 419
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find entitlement for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    .line 422
    :cond_0
    new-instance v0, Lcom/oculus/library/utils/app/AppsCursor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/oculus/library/utils/app/AppsCursor;-><init>(I)V

    .line 423
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/library/utils/app/AppsCursor;->fill(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private queryAll()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 406
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "running queryAll() for %s"

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    invoke-virtual {v0}, Lcom/oculus/library/database/LibraryStorage;->getAll()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 409
    new-instance v1, Lcom/oculus/library/utils/app/AppsCursor;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/oculus/library/utils/app/AppsCursor;-><init>(I)V

    .line 410
    invoke-virtual {v1, v0}, Lcom/oculus/library/utils/app/AppsCursor;->fill(Ljava/util/Collection;)V

    .line 411
    return-object v1
.end method

.method private queryDeploymentGk()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/ocms/library/provider/MC$oculus_library;->disable_ocms_deployment:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string v2, "deployment_gk"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    return-object v1

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refetch(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1    # Landroid/os/ResultReceiver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 363
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v3, "running refetch() for %s"

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->refreshHorizon(Z)Lbolts/Task;

    move-result-object v0

    .line 369
    iget-object v3, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryCacheRefresher:Lcom/oculus/library/refresher/LibraryCacheRefresher;

    invoke-virtual {v3}, Lcom/oculus/library/refresher/LibraryCacheRefresher;->refreshCache()Lbolts/Task;

    move-result-object v3

    .line 370
    if-nez p1, :cond_1

    .line 387
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 367
    goto :goto_0

    .line 374
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Lbolts/Task;

    aput-object v0, v4, v2

    aput-object v3, v4, v1

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/ocms/library/provider/LibraryProvider$5;

    invoke-direct {v1, p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider$5;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Landroid/os/ResultReceiver;)V

    .line 375
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_1
.end method

.method private refreshHorizon(Z)Lbolts/Task;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/oculus/ocms/library/provider/LibraryProvider$4;

    invoke-direct {v0, p0, p1}, Lcom/oculus/ocms/library/provider/LibraryProvider$4;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Z)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private uninstall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 270
    sget-object v0, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v1, "running uninstall(%s) for %s"

    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0, p2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallbackReceiver(Landroid/os/Bundle;)Landroid/os/ResultReceiver;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-direct {p0, p2, v1}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getOriginOrDefault(Landroid/os/Bundle;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mMobileConfig:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v4, Lcom/oculus/ocms/library/provider/MC$oculus_library;->queue_uninstall_requests_enabled:J

    .line 276
    invoke-interface {v2, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v2

    .line 277
    sget-object v3, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v4, "queueUninstallRequestsEnabled: %b"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mInstallerServiceUtil:Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;

    .line 281
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v2, p1, v3, v1}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->startServiceForUninstallAction(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 283
    new-instance v2, Lcom/oculus/ocms/library/provider/LibraryProvider$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider$3;-><init>(Lcom/oculus/ocms/library/provider/LibraryProvider;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 302
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mUninstallerAsyncTaskProvider:Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;

    .line 298
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTaskProvider;->get(Ljava/lang/String;Ljava/lang/String;Landroid/os/ResultReceiver;)Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 299
    invoke-virtual {v0, v1}, Lcom/oculus/appmanager/uninstaller/tasks/UninstallerAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private update(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 390
    sget-object v1, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v2, "running update(%s, values[%d]) for %s"

    .line 394
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 395
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getCallingPackageViaUid()Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v1, v2, p1, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mAppConverter:Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v1, p2}, Lcom/oculus/library/utils/app/AppConverter;->fromContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/utils/app/ContentValueUnpack;

    move-result-object v1

    .line 398
    iget-object v2, v1, Lcom/oculus/library/utils/app/ContentValueUnpack;->app:Lcom/oculus/library/model/App;

    if-nez v2, :cond_1

    .line 399
    sget-object v1, Lcom/oculus/ocms/library/provider/LibraryProvider;->TAG:Ljava/lang/String;

    const-string v2, "Unable to save, cannot create app from given content values"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mLibraryStorage:Lcom/oculus/library/database/LibraryStorage;

    iget-object v3, v1, Lcom/oculus/library/utils/app/ContentValueUnpack;->app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/utils/app/ContentValueUnpack;->missingColumns:Ljava/util/Set;

    invoke-virtual {v2, v3, v1}, Lcom/oculus/library/database/LibraryStorage;->save(Lcom/oculus/library/model/App;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unknown method requested"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :sswitch_0
    const-string v2, "deployment_gk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "install_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "install_custom_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "uninstall_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "cancel_download_package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "refetch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "get_device_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->queryDeploymentGk()Landroid/os/Bundle;

    move-result-object v1

    .line 171
    :goto_1
    return-object v1

    .line 156
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->install(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 158
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->installCustom(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 160
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/oculus/ocms/library/provider/LibraryProvider;->uninstall(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 162
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->cancelDownload(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 164
    :pswitch_5
    if-eqz p3, :cond_2

    const-string v0, "result_receiver"

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 168
    :goto_2
    invoke-direct {p0, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->refetch(Landroid/os/ResultReceiver;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 166
    goto :goto_2

    .line 171
    :pswitch_6
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getDeviceId()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    .line 152
    :sswitch_data_0
    .sparse-switch
        -0x75199b64 -> :sswitch_2
        -0x4912fe17 -> :sswitch_3
        -0x2566ad4c -> :sswitch_4
        -0x1362ca5e -> :sswitch_1
        0x30e049e -> :sswitch_0
        0x203081fb -> :sswitch_6
        0x40ace067 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected doDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doGetType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected doInitialization()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/ocms/library/provider/LibraryProvider;)V

    .line 73
    return-void
.end method

.method protected doInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p2    # Landroid/content/ContentValues;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
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

    .prologue
    .line 104
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/Constants;->getContentTypeFor(Landroid/net/Uri;)Lcom/oculus/ocms/library/provider/ContentType;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 106
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

    .line 109
    :cond_0
    sget-object v1, Lcom/oculus/ocms/library/provider/LibraryProvider$6;->$SwitchMap$com$oculus$ocms$library$provider$ContentType$QueryMethod:[I

    iget-object v0, v0, Lcom/oculus/ocms/library/provider/ContentType;->queryMethod:Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;

    invoke-virtual {v0}, Lcom/oculus/ocms/library/provider/ContentType$QueryMethod;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
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

    .line 115
    :cond_1
    invoke-direct {p0, v0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/oculus/ocms/library/provider/LibraryProvider;->queryAll()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-static {p1}, Lcom/oculus/ocms/library/provider/contract/OCMSLibraryContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    if-nez p2, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no values provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/oculus/ocms/library/provider/LibraryProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method protected getFbPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.oculus.ocms.fbpermission.LIBRARY_PROVIDER"

    return-object v0
.end method

.method protected onCheckPermissions()Z
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->onCheckPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mTrustedApplications:Lcom/oculus/library/security/TrustedApplications;

    invoke-virtual {v0}, Lcom/oculus/library/security/TrustedApplications;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCheckReadOnlyPermissions()Z
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->onCheckReadOnlyPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/ocms/library/provider/LibraryProvider;->mTrustedApplications:Lcom/oculus/library/security/TrustedApplications;

    invoke-virtual {v0}, Lcom/oculus/library/security/TrustedApplications;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
