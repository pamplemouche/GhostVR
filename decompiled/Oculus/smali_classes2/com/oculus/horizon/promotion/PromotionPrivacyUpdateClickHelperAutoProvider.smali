.class public Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PromotionPrivacyUpdateClickHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelper;",
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
.method public get()Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelper;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.promotion.PromotionPrivacyUpdateClickHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelper;

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/SocialManager;->$ul_$xXXcom_oculus_horizon_legacy_social_SocialManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/SocialManager;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelper;-><init>(Lcom/oculus/horizon/legacy/social/SocialManager;Lcom/oculus/horizon/debug/DebugErrorToaster;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
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
    invoke-virtual {p0}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelperAutoProvider;->get()Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateClickHelper;

    move-result-object v0

    return-object v0
.end method
