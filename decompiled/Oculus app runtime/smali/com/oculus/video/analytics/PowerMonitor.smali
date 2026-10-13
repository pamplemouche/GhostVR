.class public Lcom/oculus/video/analytics/PowerMonitor;
.super Ljava/lang/Object;
.source "PowerMonitor.java"


# static fields
.field private static final PACIFIC_BOARD_NAME:Ljava/lang/String; = "pacific"

.field private static final TAG:Ljava/lang/String; = "PowerMonitor"

.field private static batteryManager:Landroid/os/BatteryManager; = null

.field private static context:Landroid/content/Context; = null

.field private static globalPowerConsumptionMAh:D = 0.0

.field private static keepMeasuring:Z = true

.field private static final measureRunnable:Ljava/lang/Runnable;

.field private static measureThread:Ljava/lang/Thread;

.field private static monitors:I


# instance fields
.field private measuring:Z

.field private powerConsumptionMAh:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/oculus/video/analytics/PowerMonitor$1;

    invoke-direct {v0}, Lcom/oculus/video/analytics/PowerMonitor$1;-><init>()V

    sput-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureThread:Ljava/lang/Thread;

    .line 91
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->powerConsumptionMAh:D

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    .line 108
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 109
    sput-object p1, Lcom/oculus/video/analytics/PowerMonitor;->context:Landroid/content/Context;

    const-string v0, "batterymanager"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    sput-object p1, Lcom/oculus/video/analytics/PowerMonitor;->batteryManager:Landroid/os/BatteryManager;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/oculus/video/analytics/PowerMonitor;->keepMeasuring:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 10
    sget v0, Lcom/oculus/video/analytics/PowerMonitor;->monitors:I

    return v0
.end method

.method static synthetic access$200()D
    .locals 2

    .line 10
    sget-wide v0, Lcom/oculus/video/analytics/PowerMonitor;->globalPowerConsumptionMAh:D

    return-wide v0
.end method

.method static synthetic access$202(D)D
    .locals 0

    .line 10
    sput-wide p0, Lcom/oculus/video/analytics/PowerMonitor;->globalPowerConsumptionMAh:D

    return-wide p0
.end method

.method public static getCurrentMA()I
    .locals 2

    .line 29
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->batteryManager:Landroid/os/BatteryManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 32
    :cond_0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "pacific"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 33
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->batteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 34
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 38
    :cond_1
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->batteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isCharging()Z
    .locals 4

    .line 16
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 19
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v2, Lcom/oculus/video/analytics/PowerMonitor;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "status"

    .line 21
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static release()V
    .locals 2

    .line 95
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    const/4 v1, 0x0

    .line 97
    :try_start_0
    sput-boolean v1, Lcom/oculus/video/analytics/PowerMonitor;->keepMeasuring:Z

    .line 98
    sget-object v1, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 99
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public getMeasurementMAh()D
    .locals 4

    .line 142
    iget-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/oculus/video/analytics/PowerMonitor;->globalPowerConsumptionMAh:D

    iget-wide v2, p0, Lcom/oculus/video/analytics/PowerMonitor;->powerConsumptionMAh:D

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public startMeasure()V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    if-eqz v0, :cond_0

    const-string v0, "PowerMonitor"

    const-string v1, "startMeasure: measuring already started"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "PowerMonitor"

    const-string v1, "startMeasure"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    .line 121
    sget-wide v1, Lcom/oculus/video/analytics/PowerMonitor;->globalPowerConsumptionMAh:D

    iput-wide v1, p0, Lcom/oculus/video/analytics/PowerMonitor;->powerConsumptionMAh:D

    .line 122
    sget-object v1, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    monitor-enter v1

    .line 123
    :try_start_0
    sget v2, Lcom/oculus/video/analytics/PowerMonitor;->monitors:I

    add-int/2addr v2, v0

    sput v2, Lcom/oculus/video/analytics/PowerMonitor;->monitors:I

    .line 124
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 125
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopMeasure()V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    if-nez v0, :cond_0

    const-string v0, "PowerMonitor"

    const-string v1, "stopMeasure: measuring not started"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMeasure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oculus/video/analytics/PowerMonitor;->getMeasurementMAh()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/oculus/video/analytics/PowerMonitor;->measuring:Z

    .line 135
    sget-object v0, Lcom/oculus/video/analytics/PowerMonitor;->measureRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    .line 136
    :try_start_0
    sget v1, Lcom/oculus/video/analytics/PowerMonitor;->monitors:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/oculus/video/analytics/PowerMonitor;->monitors:I

    .line 137
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
