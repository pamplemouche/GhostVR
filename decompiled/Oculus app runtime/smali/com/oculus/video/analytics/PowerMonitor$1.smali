.class final Lcom/oculus/video/analytics/PowerMonitor$1;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/analytics/PowerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    move-wide v4, v2

    .line 56
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->access$000()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->access$100()I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->isCharging()Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 61
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->getCurrentMA()I

    move-result v8

    cmp-long v9, v2, v0

    if-lez v9, :cond_0

    int-to-long v9, v8

    add-long/2addr v9, v4

    const-wide/16 v4, 0x2

    .line 63
    div-long/2addr v9, v4

    long-to-double v4, v9

    sub-long v2, v6, v2

    long-to-double v2, v2

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v9

    .line 65
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->access$200()D

    move-result-wide v9

    mul-double v2, v2, v4

    add-double/2addr v9, v2

    invoke-static {v9, v10}, Lcom/oculus/video/analytics/PowerMonitor;->access$202(D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    int-to-long v2, v8

    move-wide v4, v2

    move-wide v2, v6

    goto :goto_1

    :cond_1
    move-wide v2, v0

    .line 75
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->access$100()I

    move-result v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x0

    .line 76
    invoke-static {v6, v7}, Lcom/oculus/video/analytics/PowerMonitor;->access$202(D)D

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x3e8

    .line 79
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :cond_3
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
