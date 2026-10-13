.class public Lt11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:Lz11;


# direct methods
.method public constructor <init>(Lz11;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt11;->x:Lz11;

    iput p2, p0, Lt11;->w:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lt11;->x:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 2
    iget-wide v1, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 3
    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->c:LB11;

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lt11;->w:I

    const-string v1, "Bluetooth.Web.Android.onServicesDiscovered.Status.Disconnected"

    invoke-static {v1, v0}, LfV;->e(Ljava/lang/String;I)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lt11;->w:I

    const-string v1, "Bluetooth.Web.Android.onServicesDiscovered.Status.Connected"

    invoke-static {v1, v0}, LfV;->e(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lt11;->x:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->c:LB11;

    .line 7
    iget-object v1, v0, LB11;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 11
    new-instance v4, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    iget-object v5, v0, LB11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    invoke-direct {v4, v3, v5}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;-><init>(Landroid/bluetooth/BluetoothGattService;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lt11;->x:Lz11;

    iget-object v3, v3, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    invoke-static {v3}, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a(Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v3, v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->a:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v3, v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothGattServiceWrapper;->a:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lt11;->x:Lz11;

    iget-object v3, v3, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 19
    iget-wide v4, v3, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a:J

    .line 20
    invoke-static {v4, v5, v3, v2, v1}, LJ/N;->MAoRk69U(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_2
    iget-object v0, p0, Lt11;->x:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 22
    iget-wide v1, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a:J

    .line 23
    invoke-static {v1, v2, v0}, LJ/N;->M9HSgyay(JLjava/lang/Object;)V

    :cond_3
    return-void
.end method
