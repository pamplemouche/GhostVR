.class Lcom/facebook/rti/mqtt/manager/MqttPushService$1;
.super Ljava/lang/Object;
.source "MqttPushService.java"

# interfaces
.implements Lcom/facebook/rti/common/logging/MqttSystemDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/manager/MqttPushService;->doCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttPushService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSysDump()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttPushService$1;->this$0:Lcom/facebook/rti/mqtt/manager/MqttPushService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttPushService;->getMqttStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
