.class public Lcom/oculus/horizon/legacy/social/MeManagerLoginHandlerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MeManagerLoginHandlerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;
    .locals 3

    .prologue
    .line 15
    const-string v0, "getMethod_com.oculus.horizon.legacy.social.MeManagerLoginHandler"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 17
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/fresco/FrescoModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_facebook_imagepipeline_core_ImagePipeline$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/legacy/social/MeManager;Lcom/facebook/inject/Lazy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
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
    .line 12
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/MeManagerLoginHandlerAutoProvider;->get()Lcom/oculus/horizon/legacy/social/MeManagerLoginHandler;

    move-result-object v0

    return-object v0
.end method
