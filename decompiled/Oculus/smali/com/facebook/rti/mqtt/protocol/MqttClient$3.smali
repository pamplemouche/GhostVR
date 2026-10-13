.class Lcom/facebook/rti/mqtt/protocol/MqttClient$3;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->stopConnectingIfConnectNotSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$3;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$600(Lcom/facebook/rti/mqtt/protocol/MqttClient;)Lcom/facebook/rti/mqtt/protocol/MqttClientCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClientCore;->stopConnectingIfConnectNotSent()V

    .line 667
    return-void
.end method
