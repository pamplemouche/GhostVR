.class public abstract Lcom/oculus/content/OculusPublicContentProvider;
.super Lcom/facebook/secure/content/PublicContentProvider;
.source "OculusPublicContentProvider.java"


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
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusPublicContentProvider;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/content/OculusPublicContentProvider;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusPublicContentProvider;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/content/OculusPublicContentProvider;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/content/OculusPublicContentProvider;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/common/init/AppInitModule;->$ul_$xXXcom_oculus_common_init_AppInitLock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/init/AppInitLock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusPublicContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusContentProviderLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusContentProviderLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/content/OculusPublicContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/facebook/secure/content/PublicContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected final allowOwnCallingProcess()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method protected doInitialization()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected getLogger()Lcom/facebook/secure/logger/ContentProviderLogger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oculus/content/OculusPublicContentProvider;->mOculusContentProviderLogger:Lcom/oculus/security/basecomponent/OculusContentProviderLogger;

    return-object v0
.end method

.method protected final onInitialize()V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0}, Lcom/facebook/secure/content/PublicContentProvider;->onInitialize()V

    .line 19
    invoke-virtual {p0}, Lcom/oculus/content/OculusPublicContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/content/OculusPublicContentProvider;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/content/OculusPublicContentProvider;)V

    .line 28
    iget-object v0, p0, Lcom/oculus/content/OculusPublicContentProvider;->mAppInitLock:Lcom/oculus/common/init/AppInitLock;

    invoke-virtual {v0}, Lcom/oculus/common/init/AppInitLock;->waitForInitialization()V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/content/OculusPublicContentProvider;->doInitialization()V

    .line 30
    return-void
.end method
