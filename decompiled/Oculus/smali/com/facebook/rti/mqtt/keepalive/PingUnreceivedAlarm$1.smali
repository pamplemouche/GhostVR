.class Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;
.super Landroid/content/BroadcastReceiver;
.source "PingUnreceivedAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;->this$0:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;->this$0:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string v0, "PingUnreceivedAlarm"

    const-string/jumbo v1, "receiver; action=%s"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;->this$0:Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->access$000(Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
