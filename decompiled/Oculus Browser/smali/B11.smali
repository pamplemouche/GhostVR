.class public LB11;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothGatt;

.field public final b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt;Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LB11;->a:Landroid/bluetooth/BluetoothGatt;

    .line 3
    iput-object p2, p0, LB11;->b:Lorg/chromium/device/bluetooth/Wrappers$BluetoothDeviceWrapper;

    return-void
.end method
