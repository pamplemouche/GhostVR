.class public Lcom/oculus/horizon/legacy/social/MeManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MeManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/legacy/social/MeManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 6

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.legacy.social.MeManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/legacy/social/MeManager;

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/platform/PresenceManager;->$ul_$xXXcom_oculus_horizon_platform_PresenceManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/platform/PresenceManager;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v3

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v4

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/fresco/FrescoModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_facebook_imagepipeline_core_ImagePipeline$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/legacy/social/MeManager;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/platform/PresenceManager;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/horizon/api/ApiRequestManager;Lcom/facebook/inject/Lazy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
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
    .line 15
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/MeManagerAutoProvider;->get()Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    return-object v0
.end method
