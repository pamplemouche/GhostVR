.class Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;
.super Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;
.source "MqttBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MqttBackgroundServiceMainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;-><init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V

    .line 107
    return-void
.end method


# virtual methods
.method protected flushOnDestroy()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doDestroy()V

    .line 122
    return-void
.end method

.method protected sendOnCreate()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->ensureInitialized()V

    .line 112
    return-void
.end method

.method protected sendOnStart(Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceMainThreadHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doStartCommand(Landroid/content/Intent;II)V

    .line 117
    return-void
.end method
