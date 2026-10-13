.class Lcom/facebook/rti/mqtt/protocol/MqttClient$4;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->subscribe(ILjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

.field final synthetic val$msgId:I

.field final synthetic val$topics:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 758
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->val$topics:Ljava/util/List;

    iput p3, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->val$topics:Ljava/util/List;

    iget v2, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$4;->val$msgId:I

    invoke-static {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3200(Lcom/facebook/rti/mqtt/protocol/MqttClient;Ljava/util/List;I)V

    .line 762
    return-void
.end method
