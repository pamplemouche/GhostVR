.class public Lcom/oculus/horizon/payments/ui/PurchasePresenterProvider;
.super Lcom/facebook/inject/AbstractAssistedProvider;
.source "PurchasePresenterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractAssistedProvider",
        "<",
        "Lcom/oculus/horizon/payments/ui/PurchasePresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/inject/AbstractAssistedProvider;-><init>(Lcom/facebook/inject/InjectorLike;)V

    .line 20
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Lcom/oculus/horizon/payments/ui/PurchasePresenter;
    .locals 10

    .prologue
    .line 24
    const-string v0, "getMethod_com.oculus.horizon.payments.ui.PurchasePresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 26
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 27
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v2

    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;-><init>(Landroid/content/Context;Lcom/oculus/horizon/logging/OculusLogger;Lcom/oculus/horizon/commerce/PurchaseMethods;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->stopTracer()V

    throw v0
.end method
