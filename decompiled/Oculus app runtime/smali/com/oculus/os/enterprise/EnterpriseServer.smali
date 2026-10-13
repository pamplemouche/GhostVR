.class public Lcom/oculus/os/enterprise/EnterpriseServer;
.super Ljava/lang/Object;
.source "EnterpriseServer.java"


# static fields
.field private static final ENTERPRISE_SERVER_PACKAGE:Ljava/lang/String; = "com.oculus.alpenglow"

.field private static final ENTERPRISE_SERVER_SERVICE:Ljava/lang/String; = "com.oculus.alpenglow.enterpriseserver.EnterpriseServer"

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private final mConnectionLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mServiceImpl:Lcom/oculus/os/enterprise/internal/IEnterpriseServer;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mConnectionLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/oculus/os/enterprise/EnterpriseServer$1;

    invoke-direct {v0, p0}, Lcom/oculus/os/enterprise/EnterpriseServer$1;-><init>(Lcom/oculus/os/enterprise/EnterpriseServer;)V

    iput-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 49
    iput-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/os/enterprise/EnterpriseServer;Lcom/oculus/os/enterprise/internal/IEnterpriseServer;)Lcom/oculus/os/enterprise/internal/IEnterpriseServer;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceImpl:Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/os/enterprise/EnterpriseServer;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mConnectionLock:Ljava/lang/Object;

    return-object p0
.end method

.method private ensureBinderConnection()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EnterpriseServerConnection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    sget-object v0, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandler:Landroid/os/Handler;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceImpl:Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oculus.alpenglow"

    const-string v3, "com.oculus.alpenglow.enterpriseserver.EnterpriseServer"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    sget-object v5, Lcom/oculus/os/enterprise/EnterpriseServer;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v0, v3, v4, v5}, Lcom/oculus/os/enterprise/internal/BindServiceWrapper;->bindServiceWithHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mConnectionLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :catch_0
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getConfiguration(Landroid/content/Context;)Lcom/oculus/os/enterprise/Configuration;
    .locals 2

    .line 108
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isStandaloneHmd(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/oculus/os/enterprise/EnterpriseServer;

    invoke-direct {v0, p0}, Lcom/oculus/os/enterprise/EnterpriseServer;-><init>(Landroid/content/Context;)V

    .line 115
    :try_start_0
    invoke-direct {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->ensureBinderConnection()V

    .line 117
    iget-object p0, v0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceImpl:Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    invoke-static {}, Lcom/oculus/os/enterprise/internal/Version;->latest()Lcom/oculus/os/enterprise/internal/Version;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/oculus/os/enterprise/internal/IEnterpriseServer;->getConfigurationWithVersion(Lcom/oculus/os/enterprise/internal/Version;)Lcom/oculus/os/enterprise/internal/Configuration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-direct {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->releaseBinderConnection()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 122
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    invoke-direct {v0}, Lcom/oculus/os/enterprise/EnterpriseServer;->releaseBinderConnection()V

    .line 125
    throw p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Enterprise features not supported on this device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isInEnterpriseMode(Landroid/content/Context;)Z
    .locals 2

    .line 95
    invoke-static {p0}, Lcom/oculus/os/enterprise/EnterpriseServer;->isStandaloneHmd(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 99
    :cond_0
    new-instance p0, Lcom/oculus/os/SettingsManager;

    invoke-direct {p0}, Lcom/oculus/os/SettingsManager;-><init>()V

    const-string v1, "managed_device"

    .line 100
    invoke-virtual {p0, v1, v0}, Lcom/oculus/os/SettingsManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isStandaloneHmd(Landroid/content/Context;)Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oculus.hardware.standalone_vr"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private releaseBinderConnection()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceImpl:Lcom/oculus/os/enterprise/internal/IEnterpriseServer;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/os/enterprise/EnterpriseServer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
