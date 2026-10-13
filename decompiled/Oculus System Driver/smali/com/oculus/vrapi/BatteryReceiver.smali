.class Lcom/oculus/vrapi/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryReceiver"

.field public static filter:Landroid/content/IntentFilter;

.field private static mBatteryManager:Landroid/os/BatteryManager;

.field public static receiver:Lcom/oculus/vrapi/BatteryReceiver;


# instance fields
.field private batteryCurrentNow:I

.field private batteryLevel:I

.field private batteryStatus:I

.field private batteryTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryLevel:I

    .line 21
    iput v0, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryStatus:I

    .line 22
    iput v0, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryTemperature:I

    .line 23
    iput v0, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryCurrentNow:I

    return-void
.end method

.method private static native dispatchEvent(IIII)V
.end method

.method private processIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string p2, "present"

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "status"

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v1, "level"

    const/4 v2, -0x1

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 34
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "temperature"

    .line 36
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    .line 42
    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    sget-object v2, Lcom/oculus/vrapi/BatteryReceiver;->mBatteryManager:Landroid/os/BatteryManager;

    if-eqz v2, :cond_1

    .line 47
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->mBatteryManager:Landroid/os/BatteryManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 50
    :cond_1
    iget v2, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryStatus:I

    if-ne p2, v2, :cond_2

    iget v2, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryLevel:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryTemperature:I

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryCurrentNow:I

    if-eq v0, v2, :cond_3

    .line 55
    :cond_2
    iput p2, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryStatus:I

    .line 56
    iput v1, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryLevel:I

    .line 57
    iput p1, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryTemperature:I

    .line 58
    iput v0, p0, Lcom/oculus/vrapi/BatteryReceiver;->batteryCurrentNow:I

    .line 59
    invoke-static {p2, v1, p1, v0}, Lcom/oculus/vrapi/BatteryReceiver;->dispatchEvent(IIII)V

    :cond_3
    return-void
.end method

.method private static startReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BatteryReceiver"

    const-string v1, "Registering battery receiver"

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->filter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/vrapi/BatteryReceiver;->filter:Landroid/content/IntentFilter;

    .line 73
    :cond_0
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->receiver:Lcom/oculus/vrapi/BatteryReceiver;

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Lcom/oculus/vrapi/BatteryReceiver;

    invoke-direct {v0}, Lcom/oculus/vrapi/BatteryReceiver;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/BatteryReceiver;->receiver:Lcom/oculus/vrapi/BatteryReceiver;

    .line 78
    :cond_1
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->mBatteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_2

    const-string v0, "batterymanager"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    sput-object v0, Lcom/oculus/vrapi/BatteryReceiver;->mBatteryManager:Landroid/os/BatteryManager;

    .line 83
    :cond_2
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->receiver:Lcom/oculus/vrapi/BatteryReceiver;

    sget-object v1, Lcom/oculus/vrapi/BatteryReceiver;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static stopReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BatteryReceiver"

    const-string v1, "Unregistering battery receiver"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/oculus/vrapi/BatteryReceiver;->receiver:Lcom/oculus/vrapi/BatteryReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    .line 90
    sput-object p0, Lcom/oculus/vrapi/BatteryReceiver;->mBatteryManager:Landroid/os/BatteryManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 97
    invoke-direct {p0, p2, p1}, Lcom/oculus/vrapi/BatteryReceiver;->processIntent(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
