.class Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;
.super Landroid/content/BroadcastReceiver;
.source "KeepaliveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v7, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    monitor-enter v7

    .line 200
    :try_start_0
    invoke-static {}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "receiver/keepalive; action=%s delay=%d"

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 203
    invoke-static {v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 199
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$600(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$900(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$700(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v2

    add-long v4, v0, v2

    .line 209
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$500(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$600(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$900(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 211
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$700(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 214
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 210
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 218
    monitor-exit v7

    goto/16 :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 221
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0, v4, v5}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$202(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)J

    .line 222
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$600(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)V

    .line 226
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1000(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method
