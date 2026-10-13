.class Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;
.super Landroid/os/Handler;
.source "MqttBackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MqttBackgroundServiceHandler"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    .line 40
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    return-void
.end method

.method private declared-synchronized onFlushed()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->mDone:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitUninterruptibly()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected flushOnDestroy()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->waitUninterruptibly()Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 45
    const-string v0, "MqttBackgroundService"

    const-string v1, "handleMessage %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Message is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->ensureInitialized()V

    .line 64
    :goto_0
    return-void

    .line 55
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doStartCommand(Landroid/content/Intent;II)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->this$0:Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService;->doDestroy()V

    .line 59
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->onFlushed()V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected sendOnCreate()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method

.method protected sendOnStart(Landroid/content/Intent;II)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/manager/MqttBackgroundService$MqttBackgroundServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method
