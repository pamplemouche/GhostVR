.class public Lcom/oculus/horizon/obe/ObeRoadblocksHelperAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "ObeRoadblocksHelperAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/obe/ObeRoadblocksHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/obe/ObeRoadblocksHelper;
    .locals 4

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.obe.ObeRoadblocksHelper"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/obe/ObeRoadblocksHelper;

    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_roadblock_ui_UserRoadblockPaymentMethodChecker$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockMalibuShowChecker;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_roadblock_ui_UserRoadblockMalibuShowChecker$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockHSWShowChecker;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_roadblock_ui_UserRoadblockHSWShowChecker$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/obe/ObeRoadblocksHelper;-><init>(Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;Lcom/facebook/inject/Lazy;)V
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
    .line 14
    invoke-virtual {p0}, Lcom/oculus/horizon/obe/ObeRoadblocksHelperAutoProvider;->get()Lcom/oculus/horizon/obe/ObeRoadblocksHelper;

    move-result-object v0

    return-object v0
.end method
