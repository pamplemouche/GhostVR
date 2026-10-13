.class Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BleRemoteTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/BleRemoteTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteBatteryReceiver"
.end annotation


# static fields
.field private static final REMOTE_BATTERY_CHANGED:Ljava/lang/String; = "com.samsung.android.app.vr.input.service.receiver.action.ACTION_BATTERY_CHANGED"

.field private static final REMOTE_NUM_BATTERY_LEVELS:I = 0xa


# instance fields
.field private batteryChangedFilter:Landroid/content/IntentFilter;

.field public batteryLevel:I

.field public deviceIdentifier:J

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/oculus/vrapi/BleRemoteTrackingService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/BleRemoteTrackingService;Landroid/content/Context;)V
    .locals 2

    .line 322
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->this$0:Lcom/oculus/vrapi/BleRemoteTrackingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryChangedFilter:Landroid/content/IntentFilter;

    const/4 v0, 0x0

    .line 315
    iput v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryLevel:I

    .line 317
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 319
    iput-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->deviceIdentifier:J

    .line 323
    iput-object p2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "level"

    const/4 v0, -0x1

    .line 347
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 348
    iget p2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryLevel:I

    if-eq p1, p2, :cond_0

    .line 350
    iput p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryLevel:I

    .line 351
    iget-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->deviceIdentifier:J

    mul-int/lit8 p1, p1, 0xa

    invoke-static {v0, v1, p1}, Lcom/oculus/vrapi/BleRemoteTrackingService;->access$600(JI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public startReceiver(J)V
    .locals 0

    .line 328
    iput-wide p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->deviceIdentifier:J

    .line 329
    iget-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryChangedFilter:Landroid/content/IntentFilter;

    if-nez p1, :cond_0

    .line 331
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.android.app.vr.input.service.receiver.action.ACTION_BATTERY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryChangedFilter:Landroid/content/IntentFilter;

    .line 333
    :cond_0
    iget-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopReceiver()V
    .locals 4

    .line 338
    iget-wide v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->deviceIdentifier:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 339
    iput-wide v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->deviceIdentifier:J

    .line 340
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;->batteryLevel:I

    :cond_0
    return-void
.end method
