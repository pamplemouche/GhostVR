.class public Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenterAutoProvider;
.super Lcom/facebook/inject/AbstractProvider;
.source "BluetoothDiscoveryPresenterAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractProvider",
        "<",
        "Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;",
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
.method public get()Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;
    .locals 4

    .prologue
    .line 17
    const-string v0, "getMethod_com.oculus.horizon.bluetooth.BluetoothDiscoveryPresenter"

    invoke-static {v0}, Lcom/facebook/ultralight/instrumentation/systrace/UlTracer;->startTracer(Ljava/lang/String;)V

    .line 19
    :try_start_0
    new-instance v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    .line 20
    invoke-static {p0}, Lcom/oculus/android/AndroidModule;->$ul_$xXXandroid_bluetooth_BluetoothAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRInputService;->$ul_$xXXcom_oculus_horizon_samsung_GearVRInputService$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRInputService;

    move-result-object v2

    .line 22
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/oculus/horizon/samsung/GearVRInputService;Lcom/oculus/horizon/samsung/GearVRControllerHelper;)V
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
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenterAutoProvider;->get()Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    move-result-object v0

    return-object v0
.end method
