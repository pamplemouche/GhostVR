.class public abstract Lcom/oculus/security/basecomponent/OculusPublicService;
.super Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;
.source "OculusPublicService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EndpointWithoutSwitchOff"
    }
.end annotation


# instance fields
.field private mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusPublicService;)V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/security/basecomponent/OculusPublicService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusPublicService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/security/basecomponent/OculusPublicService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusPublicService;)V
    .locals 1

    .prologue
    .line 14
    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusIntentLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusIntentLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusPublicService;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCreate()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/facebook/secure/service/PublicBaseServiceWithSwitchOff;->doCreate()V

    .line 14
    invoke-static {p0, p0}, Lcom/oculus/security/basecomponent/OculusPublicService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusPublicService;)V

    .line 27
    return-void
.end method

.method public getIntentLogger()Lcom/facebook/secure/logger/IntentLogger;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusPublicService;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    return-object v0
.end method
