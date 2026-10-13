.class public Lcom/oculus/vrapi/TrackingServiceClient;
.super Ljava/lang/Object;
.source "TrackingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;,
        Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;,
        Lcom/oculus/vrapi/TrackingServiceClient$TouchRange;
    }
.end annotation


# static fields
.field private static final FEATURE_STANDALONE_VR:Ljava/lang/String; = "oculus.hardware.standalone_vr"

.field private static final TAG:Ljava/lang/String; = "TrackingServiceClient"

.field private static mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

.field private static mClientDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

.field private static mClientTrackingModeFlags:I

.field private static final mConnectedRemotes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;",
            ">;"
        }
    .end annotation
.end field

.field private static mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    .line 138
    new-instance v0, Lcom/oculus/vrapi/TrackingServiceClient$1;

    invoke-direct {v0}, Lcom/oculus/vrapi/TrackingServiceClient$1;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClientDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    const/4 v0, 0x0

    .line 148
    sput v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClientTrackingModeFlags:I

    .line 149
    new-instance v0, Lcom/oculus/vrapi/TrackingServiceClient$2;

    invoke-direct {v0}, Lcom/oculus/vrapi/TrackingServiceClient$2;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 13
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceClient;->clearRemotes()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 13
    sget v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClientTrackingModeFlags:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300(JLcom/oculus/vrapi/TrackingServiceClient$TouchRange;Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;)Z
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetRemoteConnected(JLcom/oculus/vrapi/TrackingServiceClient$TouchRange;Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .line 13
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(J)V
    .locals 0

    .line 13
    invoke-static {p0, p1}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetRemoteDisconnected(J)V

    return-void
.end method

.method private static clearRemotes()V
    .locals 3

    .line 126
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    .line 130
    invoke-virtual {v2}, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->destroy()V

    goto :goto_0

    :cond_0
    const-string v1, "TrackingServiceClient"

    const-string v2, "TrackingServiceConnection mConnectedRemotes.clear()"

    .line 133
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getTrackingSocketFileDescriptor()I
    .locals 1

    .line 50
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceConnection;->getTrackingSocketFd()I

    move-result v0

    return v0
.end method

.method private static native nativeSetRemoteConnected(JLcom/oculus/vrapi/TrackingServiceClient$TouchRange;Lcom/oculus/vrapi/TrackingServiceClient$ModelIdWrapper;)Z
.end method

.method private static native nativeSetRemoteDisconnected(J)V
.end method

.method public static native nativeSetTrackingServiceInterface(Lcom/oculus/vrapi/ITrackingService;I)V
.end method

.method public static onClientConnect()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceConnection;->onClientConnect()Z

    move-result v0

    return v0
.end method

.method public static onClientDisconnect()V
    .locals 2

    const-string v0, "TrackingServiceClient"

    const-string v1, "onClientDisconnect"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceConnection;->onClientDisconnect()V

    return-void
.end method

.method public static onInitialize(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "TrackingServiceClient"

    const-string v1, "onInitialize"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sput-object p0, Lcom/oculus/vrapi/TrackingServiceClient;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 63
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v1, "TrackingServiceClient"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package metadata available for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v2, "com.oculus.tracking_service.request_secure_tracking"

    .line 67
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "com.oculus.tracking_service.request_audit_secure_tracking"

    .line 68
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "TrackingServiceClient"

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 76
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    const/4 v0, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 79
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    or-int/lit8 v0, v0, 0x2

    .line 82
    :cond_2
    sput v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClientTrackingModeFlags:I

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oculus.hardware.standalone_vr"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    new-instance p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;

    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mClientDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-direct {p0, v0, v1}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;-><init>(Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;Lcom/oculus/vrapi/ITrackingServiceClient;)V

    sput-object p0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    goto :goto_2

    .line 87
    :cond_3
    new-instance v0, Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mClientDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    sget-object v2, Lcom/oculus/vrapi/TrackingServiceClient;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-direct {v0, p0, v1, v2}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;-><init>(Landroid/content/Context;Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;Lcom/oculus/vrapi/ITrackingServiceClient;)V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    :goto_2
    return v3
.end method

.method public static onRemoteTouch(JIII)V
    .locals 2

    .line 115
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceClient;->mConnectedRemotes:Ljava/util/Hashtable;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;

    if-eqz p0, :cond_0

    .line 120
    iget-object p0, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->TouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    invoke-virtual {p0, p2, p3, p4}, Lcom/oculus/vrapi/RemoteTouchHandler;->onTouch(III)V

    .line 122
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

.method public static onShutdown()V
    .locals 2

    const-string v0, "TrackingServiceClient"

    const-string v1, "onShutdown"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceConnection;->close()V

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/oculus/vrapi/TrackingServiceClient;->mConnection:Lcom/oculus/vrapi/ITrackingServiceConnection;

    return-void
.end method
