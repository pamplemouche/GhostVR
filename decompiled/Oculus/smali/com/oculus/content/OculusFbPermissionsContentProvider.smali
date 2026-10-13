.class public abstract Lcom/oculus/content/OculusFbPermissionsContentProvider;
.super Lcom/facebook/secure/content/FbPermissionsContentProvider;
.source "OculusFbPermissionsContentProvider.java"


# instance fields
.field private mAppInitLock:Lcom/oculus/common/init/AppInitLock;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

.field private mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusFbPermissionsContentProvider;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusFbPermissionsContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/content/OculusFbPermissionsContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusFbPermissionsContentProvider;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_oculus_common_init_AppInitLock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/init/AppInitLock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusContentProviderLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusContentProviderLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final allowOwnCallingProcess()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method protected doInitialization()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected getLogger()Lcom/facebook/secure/logger/ContentProviderLogger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-object v0
.end method

.method protected getReporter()Lcom/facebook/secure/logger/Reporter;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    return-object v0
.end method

.method protected final onInitialize()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Lcom/facebook/secure/content/FbPermissionsContentProvider;->onInitialize()V

    .line 21
    invoke-virtual {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusFbPermissionsContentProvider;)V

    .line 35
    new-instance v0, Lcom/oculus/content/OculusFbPermissionsContentProvider$1;

    invoke-direct {v0, p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider$1;-><init>(Lcom/oculus/content/OculusFbPermissionsContentProvider;)V

    iput-object v0, p0, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mFbPermissionReporter:Lcom/facebook/secure/logger/Reporter;

    .line 48
    iget-object v0, p0, Lcom/oculus/content/OculusFbPermissionsContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-virtual {v0}, Lcom/oculus/common/init/AppInitLock;->waitForInitialization()V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/content/OculusFbPermissionsContentProvider;->doInitialization()V

    .line 50
    return-void
.end method
