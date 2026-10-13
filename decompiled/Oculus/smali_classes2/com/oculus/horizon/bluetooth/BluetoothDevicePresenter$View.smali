.class public interface abstract Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$View;
.super Ljava/lang/Object;
.source "BluetoothDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
.end method

.method public abstract getFragment()Landroidx/fragment/app/Fragment;
.end method

.method public abstract onBluetoothConnectionStateChange(II)V
.end method

.method public abstract onBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBluetoothDeviceCharacteristics(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onError(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$Reason;)V
.end method
