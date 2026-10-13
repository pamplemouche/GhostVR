.class public Lcom/oculus/modules/BatteryStateModuleImpl;
.super Lcom/oculus/modules/codegen/BatteryStateModule;
.source "BatteryStateModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private batteryDataObject:Lorg/json/JSONObject;

.field private batteryLevel:I

.field private batteryStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/oculus/modules/codegen/BatteryStateModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/BatteryStateModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/BatteryStateModule;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryLevel:I

    .line 19
    iput v0, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryStatus:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryDataObject:Lorg/json/JSONObject;

    .line 24
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    return-object v0
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 35
    sget-object v7, Lcom/oculus/modules/BatteryStateModuleImpl;->TAG:Ljava/lang/String;

    const-string v8, "processIntent()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    if-ne v7, v8, :cond_0

    .line 38
    const-string v7, "present"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "isPresent":Z
    if-nez v0, :cond_1

    .line 65
    .end local v0    # "isPresent":Z
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v0    # "isPresent":Z
    :cond_1
    sget-object v7, Lcom/oculus/modules/BatteryStateModuleImpl;->TAG:Ljava/lang/String;

    const-string v8, "isPresent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v7, "status"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 46
    .local v5, "status":I
    const-string v7, "level"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 47
    .local v3, "rawlevel":I
    const-string v7, "scale"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 48
    .local v4, "scale":I
    const-string v7, "plugged"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "plugged":I
    const/4 v1, 0x0

    .line 51
    .local v1, "level":I
    if-ltz v3, :cond_2

    if-lez v4, :cond_2

    .line 52
    mul-int/lit8 v7, v3, 0x64

    div-int v1, v7, v4

    .line 54
    :cond_2
    if-nez p2, :cond_3

    iget v7, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryLevel:I

    if-ne v1, v7, :cond_3

    iget v7, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryStatus:I

    if-eq v5, v7, :cond_0

    .line 55
    :cond_3
    iput v1, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryLevel:I

    .line 56
    iput v5, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryStatus:I

    .line 58
    new-instance v6, Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;

    invoke-direct {v6}, Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;-><init>()V

    .line 59
    .local v6, "update":Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;
    iget v7, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryLevel:I

    int-to-double v8, v7

    iput-wide v8, v6, Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;->level:D

    .line 60
    iget v7, p0, Lcom/oculus/modules/BatteryStateModuleImpl;->batteryStatus:I

    int-to-double v8, v7

    iput-wide v8, v6, Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;->status:D

    .line 61
    int-to-double v8, v2

    iput-wide v8, v6, Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;->plugged:D

    .line 62
    invoke-virtual {p0, v6}, Lcom/oculus/modules/BatteryStateModuleImpl;->emitOnBatteryUpdated(Lcom/oculus/modules/codegen/BatteryStateModule$BatteryUpdate;)V

    goto :goto_0
.end method
