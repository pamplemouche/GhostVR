.class public Lcom/oculus/horizon/promotion/PromotionFetchHelperProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "PromotionFetchHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/promotion/PromotionFetchHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 14
    return-void
.end method


# virtual methods
.method public get(Lcom/oculus/horizon/promotion/PromotionManager;)Lcom/oculus/horizon/promotion/PromotionFetchHelper;
    .locals 1

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.promotion.PromotionFetchHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/promotion/PromotionFetchHelper;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/promotion/PromotionFetchHelper;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/promotion/PromotionManager;)V
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
