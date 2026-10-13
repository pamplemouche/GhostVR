.class public Lcom/oculus/vrapi/MetricsService;
.super Ljava/lang/Object;
.source "MetricsService.java"


# static fields
.field private static final METRICS_SERVICE_ACTIVITY_FULL_NAME:Ljava/lang/String; = "com.oculus.ovrmonitormetricsservice.MetricsService"

.field private static final METRICS_SERVICE_ACTIVITY_NAME:Ljava/lang/String; = "MetricsService"

.field private static final METRICS_SERVICE_NAME:Ljava/lang/String; = "com.oculus.ovrmonitormetricsservice"

.field private static final MINIMUM_METRICS_SERVICE_VERSION:I = 0x7

.field private static final TAG:Ljava/lang/String; = "MetricsService"

.field private static final UPDATE2_METRICS_SERVICE_VERSION:I = 0x9

.field private static sMutex:Ljava/lang/Object;

.field private static sServiceConnection:Landroid/content/ServiceConnection;

.field private static sServiceEnabled:Z

.field private static sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

.field private static sServiceVersion:I

.field private static shouldUnbindFromService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/oculus/vrapi/MetricsService;->shouldUnbindFromService:Z

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    const/4 v0, -0x1

    .line 41
    sput v0, Lcom/oculus/vrapi/MetricsService;->sServiceVersion:I

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    .line 51
    new-instance v0, Lcom/oculus/vrapi/MetricsService$1;

    invoke-direct {v0}, Lcom/oculus/vrapi/MetricsService$1;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/MetricsService;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;)Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;
    .locals 0

    .line 34
    sput-object p0, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    return-object p0
.end method

.method public static bind(Landroid/content/Context;)V
    .locals 4

    .line 75
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/MetricsService;->isServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/oculus/vrapi/MetricsService;->isServiceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    monitor-exit v0

    return-void

    .line 86
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.ovrmonitormetricsservice"

    const-string v3, "com.oculus.ovrmonitormetricsservice.MetricsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 88
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/oculus/vrapi/MetricsService;->shouldUnbindFromService:Z

    .line 93
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static isServiceAvailable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x7

    .line 162
    invoke-static {p0, v0}, Lcom/oculus/vrapi/MetricsService;->isServiceAvailable(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isServiceAvailable(Landroid/content/Context;I)Z
    .locals 2

    .line 167
    sget v0, Lcom/oculus/vrapi/MetricsService;->sServiceVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oculus.ovrmonitormetricsservice"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 176
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/oculus/vrapi/MetricsService;->sServiceVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    :cond_0
    sget p0, Lcom/oculus/vrapi/MetricsService;->sServiceVersion:I

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isServiceBound()Z
    .locals 2

    .line 69
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 2

    .line 97
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-boolean v1, Lcom/oculus/vrapi/MetricsService;->shouldUnbindFromService:Z

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 100
    sput-boolean p0, Lcom/oculus/vrapi/MetricsService;->shouldUnbindFromService:Z

    const/4 p0, 0x0

    .line 101
    sput-object p0, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static updateMetrics(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 107
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    sget-boolean v1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 110
    :try_start_1
    invoke-static {p0, v1}, Lcom/oculus/vrapi/MetricsService;->isServiceAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;->updateMetrics2(Ljava/lang/String;JLjava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    goto :goto_0

    .line 116
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5, p1}, Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;->updateMetrics(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    :try_start_2
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException, Can\'t send updated metrics to metrics service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sput-boolean v2, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 119
    sget-object v1, Lcom/oculus/vrapi/MetricsService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException, Can\'t send updated metrics to metrics service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sput-boolean v2, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    .line 125
    :goto_0
    sget-boolean p1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    if-nez p1, :cond_1

    .line 126
    invoke-static {p0}, Lcom/oculus/vrapi/MetricsService;->unbind(Landroid/content/Context;)V

    .line 129
    :cond_1
    sget-boolean p0, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static updateUtilization(Landroid/content/Context;FF)Z
    .locals 9

    .line 134
    sget-object v0, Lcom/oculus/vrapi/MetricsService;->sMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-boolean v1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 137
    :try_start_1
    invoke-static {p0, v1}, Lcom/oculus/vrapi/MetricsService;->isServiceAvailable(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    sget-object v3, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move v7, p1

    move v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;->updateUtilization2(Ljava/lang/String;JFF)Z

    move-result p1

    sput-boolean p1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    goto :goto_0

    .line 143
    :cond_0
    sget-object v3, Lcom/oculus/vrapi/MetricsService;->sServiceInterface:Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move v7, p1

    move v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/oculus/metrics/OVRMonitorMetricsServiceInterface;->updateUtilization(Ljava/lang/String;JFF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    :try_start_2
    sget-object p2, Lcom/oculus/vrapi/MetricsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException, Can\'t send updated utiliztion to metrics service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sput-boolean v2, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 146
    sget-object p2, Lcom/oculus/vrapi/MetricsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException, Can\'t send updated utiliztion to metrics service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sput-boolean v2, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    .line 152
    :goto_0
    sget-boolean p1, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    if-nez p1, :cond_1

    .line 153
    invoke-static {p0}, Lcom/oculus/vrapi/MetricsService;->unbind(Landroid/content/Context;)V

    .line 156
    :cond_1
    sget-boolean p0, Lcom/oculus/vrapi/MetricsService;->sServiceEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 157
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
