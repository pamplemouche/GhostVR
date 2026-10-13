.class public Lcom/oculus/installer/service/InstallerServiceUriProxy;
.super Landroid/app/IntentService;
.source "InstallerServiceUriProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetManager:Lcom/oculus/installer/service/AssetManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/installer/service/InstallerServiceUriProxy;)V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/installer/service/InstallerServiceUriProxy;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/installer/service/InstallerServiceUriProxy;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/installer/service/InstallerServiceUriProxy;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/installer/service/InstallerServiceUriProxy;)V
    .locals 1

    .prologue
    .line 22
    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/installer/service/AssetManager;->$ul_$xXXcom_oculus_installer_service_AssetManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/installer/service/AssetManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oculus/installer/service/InstallerServiceUriProxy;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "InstallerServiceUriProxy"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 22
    invoke-static {p0, p0}, Lcom/oculus/installer/service/InstallerServiceUriProxy;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/installer/service/InstallerServiceUriProxy;)V

    .line 51
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->TAG:Ljava/lang/String;

    const-string v2, "Null intent"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    sget-object v0, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->TAG:Ljava/lang/String;

    const-string v2, "Null packageName"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    :try_start_0
    sget-object v1, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_REQUEST_ORIGIN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/appmanager/info/model/RequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    sget-object v2, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_REQUEST_METHOD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 74
    iget-object v0, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->TAG:Ljava/lang/String;

    const-string v2, "missing request method"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v0, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/installer/service/InstallerServiceUriProxy;->TAG:Ljava/lang/String;

    const-string v2, "cannot parse request origin"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    sget-object v2, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_REQUEST_METHOD:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    sget-object v3, Lcom/oculus/installer/service/InstallerServiceUriProxy$Contract;->EXTRA_CALLING_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v4, "install_asset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 81
    iget-object v2, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/oculus/installer/service/AssetManager;->installAsset(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/appmanager/info/model/RequestOrigin;)V

    goto :goto_0

    .line 82
    :cond_4
    const-string v1, "cancel_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    invoke-virtual {v1, p1, v0}, Lcom/oculus/installer/service/AssetManager;->cancelAssetDownload(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "uninstall_asset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    iget-object v1, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    invoke-virtual {v1, p1, v0}, Lcom/oculus/installer/service/AssetManager;->uninstallAsset(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_6
    const-string v1, "asset_details"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 87
    iget-object v1, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    invoke-virtual {v1, p1, v0}, Lcom/oculus/installer/service/AssetManager;->getAssetDetails(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_7
    const-string v1, "asset_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oculus/installer/service/InstallerServiceUriProxy;->mAssetManager:Lcom/oculus/installer/service/AssetManager;

    invoke-virtual {v1, p1, v0}, Lcom/oculus/installer/service/AssetManager;->getAssetList(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
