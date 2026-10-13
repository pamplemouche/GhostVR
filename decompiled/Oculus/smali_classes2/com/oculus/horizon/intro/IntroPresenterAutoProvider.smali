.class public Lcom/oculus/horizon/intro/IntroPresenterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "IntroPresenterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/intro/IntroPresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/intro/IntroPresenter;
    .locals 5

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.intro.IntroPresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/intro/IntroPresenter;

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/intro/IntroModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Long$x3E$xXXcom_oculus_horizon_intro_IntroActivityShowDelay$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/intro/IntroManager;->$ul_$xXXcom_oculus_horizon_intro_IntroManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/intro/IntroManager;

    move-result-object v2

    .line 21
    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_config_updater_ConfigUpdater$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_logging_OculusLogger$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/intro/IntroPresenter;-><init>(Ljavax/inject/Provider;Lcom/oculus/horizon/intro/IntroManager;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/oculus/horizon/intro/IntroPresenterAutoProvider;->get()Lcom/oculus/horizon/intro/IntroPresenter;

    move-result-object v0

    return-object v0
.end method
