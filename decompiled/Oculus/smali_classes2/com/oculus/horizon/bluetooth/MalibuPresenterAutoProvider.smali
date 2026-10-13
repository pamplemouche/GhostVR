.class public Lcom/oculus/horizon/bluetooth/MalibuPresenterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "MalibuPresenterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/bluetooth/MalibuPresenter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/facebook/inject/AbstractProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/oculus/horizon/bluetooth/MalibuPresenter;
    .locals 8

    .prologue
    .line 19
    const-string v0, "getMethod_com.oculus.horizon.bluetooth.MalibuPresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 21
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    .line 22
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v1

    .line 23
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothHelper;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothHelper;

    move-result-object v2

    .line 24
    invoke-static {p0}, Lcom/oculus/android/AndroidModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Candroid_bluetooth_le_BluetoothLeScanner$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v3

    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRInputService;->$ul_$xXXcom_oculus_horizon_samsung_GearVRInputService$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRInputService;

    move-result-object v4

    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v5

    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothLogger;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothLogger;

    move-result-object v6

    .line 28
    invoke-static {p0}, Lcom/oculus/executors/ExecutorsModule;->$ul_$xXXandroid_os_Handler$xXXcom_oculus_executors_ForUiThread$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/os/Handler;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/bluetooth/MalibuPresenter;-><init>(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothHelper;Lcom/facebook/inject/Lazy;Lcom/oculus/horizon/samsung/GearVRInputService;Lcom/oculus/horizon/samsung/GearVRControllerHelper;Lcom/oculus/horizon/bluetooth/BluetoothLogger;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/MalibuPresenterAutoProvider;->get()Lcom/oculus/horizon/bluetooth/MalibuPresenter;

    move-result-object v0

    return-object v0
.end method
