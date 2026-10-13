.class public interface abstract Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;
.super Ljava/lang/Object;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onBluetoothDeviceBondStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
.end method

.method public abstract onBluetoothStateChanged(II)V
.end method
