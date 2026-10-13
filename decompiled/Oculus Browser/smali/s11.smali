.class public Ls11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Lz11;


# direct methods
.method public constructor <init>(Lz11;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls11;->y:Lz11;

    iput p2, p0, Ls11;->w:I

    iput p3, p0, Ls11;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Ls11;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Ls11;->x:I

    const-string v2, "Bluetooth.Web.Android.onConnectionStateChange.Status.Connected"

    invoke-static {v2, v0}, LfV;->e(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Ls11;->y:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->c:LB11;

    .line 4
    iget-object v0, v0, LB11;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget v0, p0, Ls11;->x:I

    const-string v2, "Bluetooth.Web.Android.onConnectionStateChange.Status.Disconnected"

    invoke-static {v2, v0}, LfV;->e(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Ls11;->y:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    iget-object v0, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->c:LB11;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, LB11;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 8
    iget-object v0, p0, Ls11;->y:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->c:LB11;

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Ls11;->x:I

    const-string v2, "Bluetooth.Web.Android.onConnectionStateChange.Status.InvalidState"

    invoke-static {v2, v0}, LfV;->e(Ljava/lang/String;I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Ls11;->y:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 11
    iget-wide v2, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Ls11;->y:Lz11;

    iget-object v0, v0, Lz11;->a:Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;

    .line 13
    iget-wide v2, v0, Lorg/chromium/device/bluetooth/ChromeBluetoothDevice;->a:J

    .line 14
    iget v4, p0, Ls11;->x:I

    iget v5, p0, Ls11;->w:I

    if-ne v5, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 15
    :goto_1
    invoke-static {v2, v3, v0, v4, v1}, LJ/N;->MmnW7gQC(JLjava/lang/Object;IZ)V

    :cond_4
    return-void
.end method
