.class Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MqttNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;-><init>(Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Ljava/util/concurrent/ScheduledExecutorService;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 87
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-static {v1, v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->access$000(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Landroid/net/NetworkInfo;)V

    .line 88
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, "MqttNetworkManager"

    const-string v1, "Not rebroadcasting initial sticky broadcast"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->access$100(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->access$200(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    goto :goto_0
.end method
