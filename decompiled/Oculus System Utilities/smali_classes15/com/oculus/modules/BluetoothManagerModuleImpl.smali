.class public Lcom/oculus/modules/BluetoothManagerModuleImpl;
.super Lcom/oculus/modules/codegen/BluetoothManagerModule;
.source "BluetoothManagerModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothConnectionState:I

.field private bluetoothDataObject:Lorg/json/JSONObject;

.field private bluetoothState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/BluetoothManagerModule;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    .line 19
    iput v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothConnectionState:I

    .line 20
    iput-object v2, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 21
    iput-object v2, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothDataObject:Lorg/json/JSONObject;

    .line 26
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    iget-object v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 28
    sget-object v1, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Could not get BluetoothAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Security exception in BluetoothManagerModule"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private emitEvent()V
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;-><init>()V

    .line 87
    .local v0, "update":Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;
    iget v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothConnectionState:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;->connectionStateInt:D

    .line 88
    iget v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;->stateInt:D

    .line 89
    invoke-virtual {p0, v0}, Lcom/oculus/modules/BluetoothManagerModuleImpl;->emitOnBluetoothUpdated(Lcom/oculus/modules/codegen/BluetoothManagerModule$BluetoothUpdate;)V

    .line 90
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method protected onNoStickyIntent()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oculus/modules/BluetoothManagerModuleImpl;->emitEvent()V

    .line 55
    return-void
.end method

.method protected onStartReceiver()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "onStartReceiver(): Could not get bluetoothAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    iput v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    goto :goto_0
.end method

.method protected processIntent(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    const/high16 v5, -0x80000000

    .line 59
    sget-object v3, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "processIntent()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v2, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    .line 62
    .local v2, "previousBluetoothState":I
    iget v1, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothConnectionState:I

    .line 64
    .local v1, "previousBluetoothConnectionState":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    if-ne v0, v3, :cond_2

    .line 66
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    .line 79
    :goto_0
    if-nez p2, :cond_0

    iget v3, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothState:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothConnectionState:I

    if-eq v1, v3, :cond_1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/oculus/modules/BluetoothManagerModuleImpl;->emitEvent()V

    .line 83
    :cond_1
    return-void

    .line 70
    :cond_2
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    if-ne v0, v3, :cond_3

    .line 71
    const-string v3, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothConnectionState:I

    goto :goto_0

    .line 76
    :cond_3
    sget-object v3, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received invalid intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected toggleBluetoothImpl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 94
    sget-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "toggleBluetooth()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 97
    sget-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "toggleBluetooth(): Could not get bluetoothAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    sget-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "Enabling bluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 104
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disabling bluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/oculus/modules/BluetoothManagerModuleImpl;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
