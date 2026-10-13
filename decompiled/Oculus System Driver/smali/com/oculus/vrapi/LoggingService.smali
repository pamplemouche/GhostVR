.class public Lcom/oculus/vrapi/LoggingService;
.super Ljava/lang/Object;
.source "LoggingService.java"


# static fields
.field private static final LOGGING_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field private static final LOGGING_PACKAGE_NAME_CHINA:Ljava/lang/String; = "com.oculus.systemservices"

.field private static final LOGGING_SERVICE_NAME:Ljava/lang/String; = ".service.SDKLoggingService"

.field private static final MS_TO_WAIT_FOR_CONNECTION:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "LoggingService"

.field private static sLogBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogBufferLocker:Ljava/lang/Object;

.field private static sServiceConnection:Landroid/content/ServiceConnection;

.field private static sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

.field private static shouldUnbindFromService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBuffer:Ljava/util/Queue;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/oculus/vrapi/LoggingService;->shouldUnbindFromService:Z

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

    .line 41
    new-instance v0, Lcom/oculus/vrapi/LoggingService$1;

    invoke-direct {v0}, Lcom/oculus/vrapi/LoggingService$1;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/LoggingService;->sServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 31
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;
    .locals 1

    .line 31
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;)Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;
    .locals 0

    .line 31
    sput-object p0, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

    return-object p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/oculus/vrapi/LoggingService;->flushLogBuffer()V

    return-void
.end method

.method public static bind(Landroid/content/Context;Z)V
    .locals 5

    .line 73
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/oculus/vrapi/LoggingService;->isServiceBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 79
    sget-object p0, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    const-string p1, "No context to bind logging service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "com.oculus.systemservices"

    goto :goto_0

    :cond_2
    const-string p1, "com.oculus.horizon"

    .line 85
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".service.SDKLoggingService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    const-string v2, "Binding to logging service"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 95
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 94
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 96
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging Package version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    :catch_0
    :try_start_2
    sget-object p1, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot get Logging Package version"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 102
    sget-object v1, Lcom/oculus/vrapi/LoggingService;->sServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    sput-boolean p0, Lcom/oculus/vrapi/LoggingService;->shouldUnbindFromService:Z

    .line 106
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static flushLogBuffer()V
    .locals 5

    .line 136
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :goto_0
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/LoggingService;->sLogBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 140
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

    invoke-interface {v2, v1}, Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 149
    :try_start_1
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t write logs to logging service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    .line 147
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException, Can\'t write logs to logging service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    .line 145
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException, Can\'t write logs to logging service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v1

    .line 143
    sget-object v2, Lcom/oculus/vrapi/LoggingService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException, Can\'t write logs to logging service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isServiceBound()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

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

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static log(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .line 120
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sLogBuffer:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object p1, Lcom/oculus/vrapi/LoggingService;->sLogBufferLocker:Ljava/lang/Object;

    monitor-enter p1

    .line 122
    :try_start_0
    invoke-static {p0, p2}, Lcom/oculus/vrapi/LoggingService;->bind(Landroid/content/Context;Z)V

    .line 123
    sget-object p0, Lcom/oculus/vrapi/LoggingService;->sServiceInterface:Lcom/oculus/logging/sdk_logging/SDKLoggingInterface;

    if-eqz p0, :cond_0

    .line 124
    invoke-static {}, Lcom/oculus/vrapi/LoggingService;->flushLogBuffer()V

    .line 126
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unbind(Landroid/content/Context;)V
    .locals 1

    .line 110
    sget-boolean v0, Lcom/oculus/vrapi/LoggingService;->shouldUnbindFromService:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 113
    sget-object v0, Lcom/oculus/vrapi/LoggingService;->sServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 p0, 0x0

    .line 115
    sput-boolean p0, Lcom/oculus/vrapi/LoggingService;->shouldUnbindFromService:Z

    :cond_1
    return-void
.end method
