.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodCheckerAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "UserRoadblockPaymentMethodCheckerAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;",
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
.method public get()Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;
    .locals 3

    .prologue
    .line 16
    const-string v0, "getMethod_com.oculus.horizon.roadblock.ui.UserRoadblockPaymentMethodChecker"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 18
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;

    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v1

    .line 20
    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;-><init>(Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/facebook/mobileconfig/factory/MobileConfig;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodCheckerAutoProvider;->get()Lcom/oculus/horizon/roadblock/ui/UserRoadblockPaymentMethodChecker;

    move-result-object v0

    return-object v0
.end method
