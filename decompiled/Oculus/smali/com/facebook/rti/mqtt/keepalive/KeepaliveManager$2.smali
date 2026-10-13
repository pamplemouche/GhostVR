.class Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;
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
    .line 139
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v1, v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/rti/common/guavalite/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v7, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    monitor-enter v7

    .line 148
    :try_start_0
    invoke-static {}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "receiver/keepalive; action=%s delay=%d"

    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 151
    invoke-static {v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v8

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 147
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 154
    monitor-exit v7

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 157
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/time/MonotonicClock;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$202(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)J

    .line 158
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$500(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$600(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$900(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 163
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$700(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 165
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 166
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$800(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 162
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 175
    :cond_2
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$1000(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 167
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$500(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$900(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 169
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$700(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 171
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;->this$0:Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    .line 172
    invoke-static {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->access$800(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 168
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
