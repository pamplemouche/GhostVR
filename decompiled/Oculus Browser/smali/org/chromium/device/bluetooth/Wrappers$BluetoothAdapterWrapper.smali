.class public Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/bluetooth/BluetoothAdapter;

.field public final b:Landroid/content/Context;

.field public c:LC11;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    iput-object p2, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->b:Landroid/content/Context;

    return-void
.end method

.method public static createWithDefaultAdapter()Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    const-string v4, "Bluetooth"

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "BluetoothAdapterWrapper.create failed: SDK version (%d) too low."

    .line 4
    invoke-static {v4, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    .line 6
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    .line 8
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "BluetoothAdapterWrapper.create failed: Lacking Bluetooth permissions."

    .line 9
    invoke-static {v4, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 10
    :cond_3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "BluetoothAdapterWrapper.create failed: No Low Energy support."

    .line 12
    invoke-static {v4, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 13
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "BluetoothAdapterWrapper.create failed: Default adapter not found."

    .line 14
    invoke-static {v4, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 15
    :cond_6
    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;

    .line 16
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 17
    invoke-direct {v1, v0, v2}, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/content/Context;)V

    return-object v1
.end method


# virtual methods
.method public a()LC11;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->c:LC11;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, LC11;

    invoke-direct {v1, v0}, LC11;-><init>(Landroid/bluetooth/le/BluetoothLeScanner;)V

    iput-object v1, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->c:LC11;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$BluetoothAdapterWrapper;->c:LC11;

    return-object v0
.end method
