.class Lcom/facebook/rti/mqtt/protocol/MqttClient$7;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/MqttClient;->ping()V
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
    .line 820
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/MqttClient$7;->this$0:Lcom/facebook/rti/mqtt/protocol/MqttClient;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/protocol/MqttClient;->access$3500(Lcom/facebook/rti/mqtt/protocol/MqttClient;)V

    .line 824
    return-void
.end method
