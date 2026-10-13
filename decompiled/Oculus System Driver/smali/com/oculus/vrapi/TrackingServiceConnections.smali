.class public Lcom/oculus/vrapi/TrackingServiceConnections;
.super Ljava/lang/Object;
.source "TrackingServiceConnections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrapi/TrackingServiceConnections$Client;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackingServiceConnections"

.field private static final mCallbackMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Landroid/os/IBinder;",
            "Lcom/oculus/vrapi/TrackingServiceConnections$Client;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z = false

.field private static mLockObject:Ljava/lang/Object;

.field private static final mRegisteredRemotes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/oculus/vrapi/TrackingServiceConnections;->removeRegisteredClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    return-void
.end method

.method private static assertNotDestroyed()V
    .locals 2

    .line 210
    sget-boolean v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TrackingServiceConnections is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mInitialized:Z

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mInitialized:Z

    return v0
.end method

.method private static notifyClientRemoteConnected(JLcom/oculus/vrapi/TrackingServiceConnections$Client;)V
    .locals 3

    :try_start_0
    const-string v0, "TrackingServiceConnections"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of new remote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p2, p2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {p2, p0, p1}, Lcom/oculus/vrapi/ITrackingServiceClient;->onRemoteConnected(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TrackingServiceConnections"

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyClientRemoteConnected failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static notifyClientRemoteDisconnected(JLcom/oculus/vrapi/TrackingServiceConnections$Client;)V
    .locals 5

    :try_start_0
    const-string v0, "TrackingServiceConnections"

    const-string v1, "Notifying client %s of disconnect of remote %d"

    const/4 v2, 0x2

    .line 181
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mDescription:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 182
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 181
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {p2, p0, p1}, Lcom/oculus/vrapi/ITrackingServiceClient;->onRemoteDisconnected(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TrackingServiceConnections"

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyClientRemoteDisconnected failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static native notifyRemoteButtonState(JI)Z
.end method

.method public static notifyRemoteButtonStateFromNative(JI)V
    .locals 6

    .line 193
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    .line 195
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

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

    check-cast v2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    iget-object v2, v2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {v2, p0, p1, p2}, Lcom/oculus/vrapi/ITrackingServiceClient;->onButtonDown(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "TrackingServiceConnections"

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyRemoteButtonState failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static native notifyRemoteConnected(JIIIIIIII)Z
.end method

.method public static notifyRemoteConnectedFromNative(J)Z
    .locals 4

    .line 127
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    .line 129
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TrackingServiceConnections"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to register remote connection for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " which has already been registered"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 133
    monitor-exit v0

    return p0

    .line 135
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "TrackingServiceConnections"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;

    .line 140
    invoke-static {p0, p1, v2}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyClientRemoteConnected(JLcom/oculus/vrapi/TrackingServiceConnections$Client;)V

    goto :goto_0

    .line 143
    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static native notifyRemoteDisconnected(J)Z
.end method

.method public static notifyRemoteDisconnectedFromNative(J)V
    .locals 4

    .line 161
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    .line 163
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TrackingServiceConnections"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested disconnect of remote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " that was not registered"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    monitor-exit v0

    return-void

    .line 173
    :cond_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrapi/TrackingServiceConnections$Client;

    .line 174
    invoke-static {p0, p1, v2}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyClientRemoteDisconnected(JLcom/oculus/vrapi/TrackingServiceConnections$Client;)V

    goto :goto_0

    .line 176
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;Ljava/lang/String;)V
    .locals 4

    .line 73
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    const-string v0, "TrackingServiceConnections"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerClientCallback from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    new-instance v1, Lcom/oculus/vrapi/TrackingServiceConnections$Client;

    invoke-direct {v1, p0, p1}, Lcom/oculus/vrapi/TrackingServiceConnections$Client;-><init>(Lcom/oculus/vrapi/ITrackingServiceClient;Ljava/lang/String;)V

    .line 82
    sget-object p1, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/oculus/vrapi/ITrackingServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p0, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 86
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyClientRemoteConnected(JLcom/oculus/vrapi/TrackingServiceConnections$Client;)V

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "TAG"

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException during registerClientCallback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static removeRegisteredClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 4

    .line 110
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-interface {p0}, Lcom/oculus/vrapi/ITrackingServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;

    if-eqz p0, :cond_0

    const-string v1, "TrackingServiceConnections"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed registration for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p0}, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->access$000(Lcom/oculus/vrapi/TrackingServiceConnections$Client;)V

    goto :goto_0

    :cond_0
    const-string p0, "TrackingServiceConnections"

    const-string v1, "Failed to remove client callback because callback was not in array"

    .line 118
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static shutdown()V
    .locals 6

    .line 48
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/oculus/vrapi/TrackingServiceConnections;->mRegisteredRemotes:Ljava/util/HashSet;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 53
    sget-object v3, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    array-length v0, v1

    if-lez v0, :cond_0

    const-string v0, "TrackingServiceConnections"

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remotes are still registered.  Forcibly unregistering."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    array-length v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    .line 61
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oculus/vrapi/TrackingServiceConnections;->notifyRemoteDisconnected(J)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->verifyNoClientConnections()V

    .line 67
    sput-boolean v2, Lcom/oculus/vrapi/TrackingServiceConnections;->mInitialized:Z

    return-void

    :catchall_0
    move-exception v1

    .line 54
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    const-string v0, "TrackingServiceConnections"

    const-string v1, "unregisterClientCallback"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0}, Lcom/oculus/vrapi/TrackingServiceConnections;->removeRegisteredClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    return-void
.end method

.method public static verifyNoClientConnections()V
    .locals 2

    .line 102
    invoke-static {}, Lcom/oculus/vrapi/TrackingServiceConnections;->assertNotDestroyed()V

    .line 104
    sget-object v0, Lcom/oculus/vrapi/TrackingServiceConnections;->mCallbackMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "TrackingServiceConnections"

    const-string v1, "Client callback are still registered when asked to verify that there are no connections"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
