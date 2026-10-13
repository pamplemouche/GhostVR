.class public Lcom/oculus/horizon/promotion/PromotionManagerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "PromotionManagerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/promotion/PromotionManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/promotion/PromotionManager;
    .locals 3

    .prologue
    .line 14
    const-string v0, "getMethod_com.oculus.horizon.promotion.PromotionManager"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/promotion/PromotionManager;

    .line 17
    invoke-static {p0}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;->$ul_$xXXcom_oculus_horizon_promotion_PromotionFetchHelperProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/promotion/PromotionFetchHelperProvider;

    move-result-object v1

    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/promotion/PromotionLoggingHelper;->$ul_$xXXcom_oculus_horizon_promotion_PromotionLoggingHelperProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/promotion/PromotionLoggingHelperProvider;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/horizon/promotion/PromotionManager;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/promotion/PromotionFetchHelperProvider;Lcom/oculus/horizon/promotion/PromotionLoggingHelperProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
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
    .line 11
    invoke-virtual {p0}, Lcom/oculus/horizon/promotion/PromotionManagerAutoProvider;->get()Lcom/oculus/horizon/promotion/PromotionManager;

    move-result-object v0

    return-object v0
.end method
