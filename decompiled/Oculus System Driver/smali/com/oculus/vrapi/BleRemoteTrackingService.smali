.class public Lcom/oculus/vrapi/BleRemoteTrackingService;
.super Ljava/lang/Object;
.source "BleRemoteTrackingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteBatteryReceiver;,
        Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;,
        Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleRemoteTrackingService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    .line 33
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(JI[B)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrapi/BleRemoteTrackingService;->nativeSetRemoteConnectionState(JI[B)V

    return-void
.end method

.method static synthetic access$600(JI)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Lcom/oculus/vrapi/BleRemoteTrackingService;->nativeBatteryLevelChanged(JI)V

    return-void
.end method

.method private static native nativeBatteryLevelChanged(JI)V
.end method

.method private static native nativeSetRemoteConnectionState(JI[B)V
.end method


# virtual methods
.method public connectToRemoteService()Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    iget-object v0, v0, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->ConnectionState:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    sget-object v2, Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;->Disconnected:Lcom/oculus/vrapi/BleRemoteTrackingService$ConnectState;

    if-ne v0, v2, :cond_0

    const-string v0, "BleRemoteTrackingService"

    const-string v2, "Connection has been lost to remote service.  Destroying and restarting"

    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/oculus/vrapi/BleRemoteTrackingService;->destroy()V

    goto :goto_0

    :cond_0
    const-string v0, "BleRemoteTrackingService"

    const-string v2, "Remote service connection has already been started"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 58
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.hmt.vrsvc"

    const-string v3, "com.samsung.android.app.vr.input.service.SamsungVRInputService"

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "BleRemoteTrackingService"

    const-string v3, "Unified input service - was not found: falling back to individual service"

    .line 64
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.android.app.vr.input.service"

    const-string v3, "com.samsung.android.app.vr.input.service.SamsungVRInputService"

    .line 66
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "BleRemoteTrackingService"

    const-string v2, "Remote service was not found"

    .line 70
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 76
    :cond_2
    new-instance v2, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    iget-object v3, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;-><init>(Lcom/oculus/vrapi/BleRemoteTrackingService;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    .line 77
    iget-object v2, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BleRemoteTrackingService"

    const-string v2, "Binding to remote service failed"

    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    return v1

    :cond_3
    const-string v0, "BleRemoteTrackingService"

    const-string v1, "bind to service succeeded"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 2

    const-string v0, "BleRemoteTrackingService"

    const-string v1, "destroy()"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;->access$000(Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/oculus/vrapi/BleRemoteTrackingService;->remoteServiceConnection:Lcom/oculus/vrapi/BleRemoteTrackingService$RemoteServiceConnection;

    :cond_0
    return-void
.end method
