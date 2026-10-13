.class public abstract Lcom/oculus/content/OculusSecureContentProvider;
.super Lcom/facebook/secure/content/SecureContentProvider;
.source "OculusSecureContentProvider.java"


# instance fields
.field private mAppInitLock:Lcom/oculus/common/init/AppInitLock;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusSecureContentProvider;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/content/OculusSecureContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusSecureContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/content/OculusSecureContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusSecureContentProvider;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_oculus_common_init_AppInitLock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/init/AppInitLock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusSecureContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusContentProviderLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusContentProviderLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusSecureContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/secure/content/SecureContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final allowOwnCallingProcess()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    return v0
.end method

.method protected doInitialization()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected getLogger()Lcom/facebook/secure/logger/ContentProviderLogger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/content/OculusSecureContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-object v0
.end method

.method protected final onInitialize()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/facebook/secure/content/SecureContentProvider;->onInitialize()V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/content/OculusSecureContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/content/OculusSecureContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusSecureContentProvider;)V

    .line 29
    iget-object v0, p0, Lcom/oculus/content/OculusSecureContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-virtual {v0}, Lcom/oculus/common/init/AppInitLock;->waitForInitialization()V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/content/OculusSecureContentProvider;->doInitialization()V

    .line 31
    return-void
.end method
