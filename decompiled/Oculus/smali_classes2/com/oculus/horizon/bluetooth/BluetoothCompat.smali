.class public Lcom/oculus/horizon/bluetooth/BluetoothCompat;
.super Ljava/lang/Object;
.source "BluetoothCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfBluetoothScanningPermission(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/oculus/horizon/bluetooth/BluetoothCompat;->needsLocationPermissionForBluetoothScanning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 34
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 35
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 36
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 37
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 42
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static needsLocationPermissionForBluetoothScanning()Z
    .locals 2

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
