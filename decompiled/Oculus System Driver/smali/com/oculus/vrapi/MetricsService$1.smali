.class final Lcom/oculus/vrapi/MetricsService$1;
.super Ljava/lang/Object;
.source "MetricsService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/MetricsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 54
    invoke-static {}, Lcom/oculus/vrapi/MetricsService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/MetricsService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to metrics service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p2}, Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/oculus/vrapi/MetricsService;->access$202(Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;)Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    .line 57
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/oculus/vrapi/MetricsService;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 62
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/MetricsService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected from metrics service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lcom/oculus/vrapi/MetricsService;->access$202(Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;)Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    .line 64
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
