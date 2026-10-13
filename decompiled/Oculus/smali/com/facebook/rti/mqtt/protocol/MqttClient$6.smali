.class Lcom/facebook/rti/mqtt/protocol/MqttClient$6;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->publish(Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;Lcom/facebook/rti/common/util/RtiWakeLock;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field final synthetic val$bytes:[B

.field final synthetic val$mqttPublishListener:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

.field final synthetic val$msgId:I

.field final synthetic val$qos:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

.field final synthetic val$refCode:Ljava/lang/String;

.field final synthetic val$sendingWakeLock:Lcom/facebook/rti/common/util/RtiWakeLock;

.field final synthetic val$startTime:J

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BLcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;ILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;Lcom/facebook/rti/common/util/RtiWakeLock;)V
    .locals 1

    .prologue
    .line 800
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$bytes:[B

    iput-object p4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$qos:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    iput p5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$msgId:I

    iput-object p6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$mqttPublishListener:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    iput-wide p7, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$startTime:J

    iput-object p9, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$refCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$sendingWakeLock:Lcom/facebook/rti/common/util/RtiWakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 803
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$topic:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$bytes:[B

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$qos:Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;

    .line 804
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/protocol/messages/MqttQOSLevel;->getValue()I

    move-result v3

    iget v4, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$msgId:I

    iget-object v5, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$mqttPublishListener:Lcom/facebook/rti/mqtt/protocol/MqttPublishListener;

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$startTime:J

    iget-object v8, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$refCode:Ljava/lang/String;

    .line 803
    invoke-static/range {v0 .. v8}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3400(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/lang/String;[BIILcom/facebook/rti/mqtt/protocol/MqttPublishListener;JLjava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$6;->val$sendingWakeLock:Lcom/facebook/rti/common/util/RtiWakeLock;

    invoke-virtual {v0}, Lcom/facebook/rti/common/util/RtiWakeLock;->release()V

    .line 806
    return-void
.end method
