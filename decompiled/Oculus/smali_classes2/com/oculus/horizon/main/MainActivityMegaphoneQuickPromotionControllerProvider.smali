.class public Lcom/oculus/horizon/main/MainActivityMegaphoneQuickPromotionControllerProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "MainActivityMegaphoneQuickPromotionControllerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/main/MainActivityMegaphoneQuickPromotionController;",
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
.method public get(Lcom/oculus/horizon/main/MainActivity;)Lcom/oculus/horizon/main/MainActivityMegaphoneQuickPromotionController;
    .locals 1

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.main.MainActivityMegaphoneQuickPromotionController"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/main/MainActivityMegaphoneQuickPromotionController;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/main/MainActivityMegaphoneQuickPromotionController;-><init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/main/MainActivity;)V
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
