.class public Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;
.super Ljava/lang/Object;
.source "MqttBatteryStateManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getBatteryState()Lcom/facebook/rti/common/guavalite/base/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Lcom/facebook/rti/mqtt/common/hardware/BatteryState;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 20
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v2, "status"

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 27
    const/4 v2, 0x2

    if-ne v4, v2, :cond_2

    move v2, v0

    .line 28
    :goto_1
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 30
    :goto_2
    const-string v1, "level"

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    const-string/jumbo v4, "scale"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 33
    if-eq v1, v6, :cond_1

    if-ne v3, v6, :cond_4

    .line 34
    :cond_1
    new-instance v1, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;-><init>(ZZLcom/facebook/rti/common/guavalite/base/Optional;)V

    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 27
    goto :goto_1

    :cond_3
    move v0, v1

    .line 28
    goto :goto_2

    .line 37
    :cond_4
    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 38
    new-instance v3, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;-><init>(ZZLcom/facebook/rti/common/guavalite/base/Optional;)V

    invoke-static {v3}, Lcom/facebook/rti/common/guavalite/base/Optional;->of(Ljava/lang/Object;)Lcom/facebook/rti/common/guavalite/base/Optional;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0

    .line 41
    :catch_1
    move-exception v0

    .line 42
    invoke-static {}, Lcom/facebook/rti/common/guavalite/base/Optional;->absent()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    goto :goto_0
.end method
