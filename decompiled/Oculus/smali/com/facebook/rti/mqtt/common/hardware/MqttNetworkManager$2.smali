.class Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;
.super Ljava/lang/Object;
.source "MqttNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->idleModeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field final synthetic val$now:J


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;J)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    iput-wide p2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 361
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->access$300(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->val$now:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;->this$0:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->access$100(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    .line 364
    :cond_0
    return-void
.end method
