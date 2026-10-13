.class public Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PromotionPrivacyUpdateFetchHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;",
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
.method public get()Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;
    .locals 5

    .prologue
    .line 18
    const-string v0, "getMethod_com.oculus.horizon.promotion.PromotionPrivacyUpdateFetchHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 20
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/social/SocialMethods;->$ul_$xXXcom_oculus_horizon_social_SocialMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialMethods;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v2

    .line 23
    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_res_Resources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v3

    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fqp$x5Fprivacy$x5Froadblock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;-><init>(Lcom/oculus/horizon/social/SocialMethods;Lcom/oculus/horizon/debug/DebugErrorToaster;Landroid/content/res/Resources;Ljavax/inject/Provider;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelperAutoProvider;->get()Lcom/oculus/horizon/promotion/PromotionPrivacyUpdateFetchHelper;

    move-result-object v0

    return-object v0
.end method
