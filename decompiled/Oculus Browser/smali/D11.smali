.class public LD11;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "PG"


# instance fields
.field public final a:LA11;

.field public final b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(LA11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 2
    iput-object p1, p0, LD11;->a:LA11;

    .line 3
    iput-object p2, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Bluetooth"

    const-string v2, "wrapper onCharacteristicChanged."

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, LD11;->a:LA11;

    iget-object v2, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 3
    iget-object v2, v2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->b:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 5
    check-cast v0, Lz11;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "device onCharacteristicChanged."

    .line 6
    invoke-static {v1, v3, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object p1, p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;->a:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 8
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v3, Lu11;

    invoke-direct {v3, v0, p2, p1}, Lu11;-><init>(Lz11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;[B)V

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v3}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v2

    .line 10
    :cond_1
    throw v2
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    iget-object v0, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 4
    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Lv11;

    invoke-direct {v2, p1, p2, p3}, Lv11;-><init>(Lz11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v0

    .line 7
    :cond_1
    throw v0
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    iget-object v0, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->b:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;

    .line 4
    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Lw11;

    invoke-direct {v2, p1, p2, p3}, Lw11;-><init>(Lz11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattCharacteristicWrapper;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v0

    .line 7
    :cond_1
    throw v0
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-ne p3, v1, :cond_0

    const-string v1, "Connected"

    goto :goto_0

    :cond_0
    const-string v1, "Disconnected"

    :goto_0
    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Bluetooth"

    const-string v3, "onConnectionStateChange status:%d newState:%s"

    invoke-static {v1, v3, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Ls11;

    invoke-direct {v2, p1, p3, p2}, Ls11;-><init>(Lz11;II)V

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    throw v0

    .line 5
    :cond_2
    throw v0
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    iget-object v0, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 4
    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Lx11;

    invoke-direct {v2, p1, p2, p3}, Lx11;-><init>(Lz11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v0

    .line 7
    :cond_1
    throw v0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    iget-object v0, p0, LD11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;->c:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;

    .line 4
    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Ly11;

    invoke-direct {v2, p1, p2, p3}, Ly11;-><init>(Lz11;Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattDescriptorWrapper;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v0

    .line 7
    :cond_1
    throw v0
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4

    .line 1
    iget-object p1, p0, LD11;->a:LA11;

    check-cast p1, Lz11;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    if-nez p2, :cond_0

    const-string v2, "OK"

    goto :goto_0

    :cond_0
    const-string v2, "Error"

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Bluetooth"

    const-string v3, "onServicesDiscovered status:%d==%s"

    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, LH11;->a()LH11;

    move-result-object v1

    new-instance v2, Lt11;

    invoke-direct {v2, p1, p2}, Lt11;-><init>(Lz11;I)V

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    throw v0

    .line 5
    :cond_2
    throw v0
.end method
