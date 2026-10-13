.class public Lcom/oculus/security/basecomponent/OculusPublicActivity;
.super Landroid/app/Activity;
.source "OculusPublicActivity.java"


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
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusPublicActivity;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/security/basecomponent/OculusPublicActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusPublicActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/security/basecomponent/OculusPublicActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/security/basecomponent/OculusPublicActivity;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->$ul_$xXXcom_oculus_security_basecomponent_OculusIntentLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/security/basecomponent/OculusIntentLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/security/basecomponent/OculusPublicActivity;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0, p0}, Lcom/oculus/security/basecomponent/OculusPublicActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/security/basecomponent/OculusPublicActivity;)V

    .line 29
    iget-object v0, p0, Lcom/oculus/security/basecomponent/OculusPublicActivity;->mOculusIntentLogger:Lcom/oculus/security/basecomponent/OculusIntentLogger;

    const-string v1, "%s/%s"

    .line 30
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusPublicActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/oculus/security/basecomponent/OculusPublicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/oculus/security/basecomponent/OculusIntentLogger;->logIntent(Ljava/lang/String;Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/oculus/security/basecomponent/OculusPublicActivity;->doCreate(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
