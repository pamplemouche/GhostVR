.class public Lcom/oculus/modules/BatteryManagerModuleImpl;
.super Lcom/oculus/modules/codegen/BatteryManagerModule;
.source "BatteryManagerModuleImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private batteryDataObject:Lorg/json/JSONObject;

.field private batteryLevel:I

.field private batteryStatus:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private powerSaveMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/modules/codegen/BatteryManagerModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/modules/BatteryManagerModuleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/modules/codegen/BatteryManagerModule;-><init>(Landroid/content/Context;)V

    .line 21
    iput v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryLevel:I

    .line 22
    iput v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryStatus:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryDataObject:Lorg/json/JSONObject;

    .line 29
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    iget-object v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->powerSaveMode:Z

    .line 31
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method protected getLowPowerModeAsyncImpl(Lcom/oculus/modules/codegen/Resolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;>;"
    new-instance v0, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;-><init>()V

    .line 97
    .local v0, "result":Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;
    iget-object v1, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;->isBatterySaver:Z

    .line 98
    invoke-interface {p1, v0}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public processIntent(Landroid/content/Intent;Z)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "forceNativeUpdate"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 43
    sget-object v8, Lcom/oculus/modules/BatteryManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v11, "processIntent()"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_0
    move v8, v10

    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 45
    :sswitch_0
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_0

    :sswitch_1
    const-string v11, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 47
    :pswitch_0
    const-string v8, "present"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    .local v1, "isPresent":Z
    if-eqz v1, :cond_1

    .line 52
    sget-object v8, Lcom/oculus/modules/BatteryManagerModuleImpl;->TAG:Ljava/lang/String;

    const-string v11, "isPresent"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v8, "status"

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 55
    .local v6, "status":I
    const-string v8, "level"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 56
    .local v4, "rawlevel":I
    const-string v8, "scale"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 57
    .local v5, "scale":I
    const-string v8, "plugged"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 59
    .local v3, "plugged":I
    const/4 v2, 0x0

    .line 60
    .local v2, "level":I
    if-ltz v4, :cond_2

    if-lez v5, :cond_2

    .line 61
    mul-int/lit8 v8, v4, 0x64

    div-int v2, v8, v5

    .line 63
    :cond_2
    if-nez p2, :cond_3

    iget v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryLevel:I

    if-ne v2, v8, :cond_3

    iget v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryStatus:I

    if-eq v6, v8, :cond_1

    .line 64
    :cond_3
    iput v2, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryLevel:I

    .line 65
    iput v6, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryStatus:I

    .line 67
    new-instance v7, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;

    invoke-direct {v7}, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;-><init>()V

    .line 68
    .local v7, "update":Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
    iget v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryLevel:I

    int-to-double v8, v8

    iput-wide v8, v7, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->level:D

    .line 69
    iget v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->batteryStatus:I

    int-to-double v8, v8

    iput-wide v8, v7, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->status:D

    .line 70
    int-to-double v8, v3

    iput-wide v8, v7, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->plugged:D

    .line 71
    invoke-virtual {p0, v7}, Lcom/oculus/modules/BatteryManagerModuleImpl;->emitOnBatteryUpdated(Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;)V

    goto :goto_1

    .line 75
    .end local v1    # "isPresent":Z
    .end local v2    # "level":I
    .end local v3    # "plugged":I
    .end local v4    # "rawlevel":I
    .end local v5    # "scale":I
    .end local v6    # "status":I
    .end local v7    # "update":Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
    :pswitch_1
    iget-object v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 76
    .local v0, "enabled":Z
    if-nez p2, :cond_4

    iget-boolean v8, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->powerSaveMode:Z

    if-eq v0, v8, :cond_1

    .line 77
    :cond_4
    iput-boolean v0, p0, Lcom/oculus/modules/BatteryManagerModuleImpl;->powerSaveMode:Z

    .line 78
    invoke-virtual {p0, v0}, Lcom/oculus/modules/BatteryManagerModuleImpl;->emitOnBatterySaverUpdated(Z)V

    goto :goto_1

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bb23923 -> :sswitch_0
        0x6a0dd473 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setLowPowerModeImpl(ZLcom/oculus/modules/codegen/Resolver;)V
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oculus/modules/codegen/Resolver",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "resolver":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/oculus/os/VrApiManager;->getInstance()Lcom/oculus/os/VrApiManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oculus/os/VrApiManager;->setPowerSaveMode(Z)Z

    move-result v0

    .line 87
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->resolve(Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to set Low Power Mode"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/oculus/modules/codegen/Resolver;->reject(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
