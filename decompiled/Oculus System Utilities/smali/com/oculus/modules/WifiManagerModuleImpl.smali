.class public Lcom/oculus/modules/WifiManagerModuleImpl;
.super Lcom/oculus/modules/codegen/WifiManagerModule;
.source "WifiManagerModuleImpl.java"


# static fields
.field private static final NUM_SIGNAL_LEVELS:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private wifiDataObject:Lorg/json/JSONObject;

.field private wifiLevel:I

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/modules/codegen/WifiManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/WifiManagerModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/WifiManagerModule;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiLevel:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiState:I

    .line 20
    iput-object v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiDataObject:Lorg/json/JSONObject;

    .line 21
    iput-object v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 25
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    return-void
.end method

.method private emitEvent()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;-><init>()V

    .line 61
    .local v0, "data":Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;
    iget v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiLevel:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiLevel:D

    .line 62
    iget v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiState:I

    int-to-double v2, v1

    iput-wide v2, v0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiStateInt:D

    .line 63
    sget-object v1, Lcom/oculus/modules/WifiManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "Calling emitOnWifiUpdated()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, v0}, Lcom/oculus/modules/WifiManagerModuleImpl;->emitOnWifiUpdated(Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    return-object v0
.end method

.method protected onNoStickyIntent()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oculus/modules/WifiManagerModuleImpl;->emitEvent()V

    .line 38
    return-void
.end method

.method protected processIntent(Landroid/content/Intent;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    .line 42
    sget-object v3, Lcom/oculus/modules/WifiManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v4, "processIntent()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget v0, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiLevel:I

    .line 45
    .local v0, "previousWifiLevel":I
    iget v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiState:I

    .line 47
    .local v1, "previousWifiState":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.RSSI_CHANGED"

    if-ne v3, v4, :cond_3

    .line 48
    const-string v3, "newRssi"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 49
    .local v2, "rssi":I
    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    iput v3, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiLevel:I

    .line 54
    .end local v2    # "rssi":I
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget v3, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiLevel:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiState:I

    if-eq v1, v3, :cond_2

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/oculus/modules/WifiManagerModuleImpl;->emitEvent()V

    .line 57
    :cond_2
    return-void

    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    if-ne v3, v4, :cond_0

    .line 51
    const-string v3, "wifi_state"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiState:I

    goto :goto_0
.end method

.method protected toggleWifiImpl(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 69
    sget-object v1, Lcom/oculus/modules/WifiManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v2, "toggleWifi()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/oculus/modules/WifiManagerModuleImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/oculus/modules/WifiManagerModuleImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception in toggleWifi(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
