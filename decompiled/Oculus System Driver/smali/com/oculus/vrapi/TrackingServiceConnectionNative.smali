.class public Lcom/oculus/vrapi/TrackingServiceConnectionNative;
.super Lcom/oculus/vrapi/BinderConnection;
.source "TrackingServiceConnectionNative.java"

# interfaces
.implements Lcom/oculus/vrapi/ITrackingServiceConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/vrapi/BinderConnection<",
        "Lcom/oculus/vrapi/ITrackingService;",
        ">;",
        "Lcom/oculus/vrapi/ITrackingServiceConnection;"
    }
.end annotation


# static fields
.field private static final CONNECTION_MAX_RETRIES:I = 0x12c

.field private static final CONNECTION_RETRY_INTERVAL_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "TrackingServiceConnectionNative"

.field private static final TRACKING_SERVICE_NAME:Ljava/lang/String; = "TrackingService"


# instance fields
.field private final mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

.field private final mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

.field private mTrackingService:Lcom/oculus/vrapi/ITrackingService;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;Lcom/oculus/vrapi/ITrackingServiceClient;)V
    .locals 3

    const-string v0, "TrackingService"

    const/16 v1, 0x12c

    const/16 v2, 0x64

    .line 23
    invoke-direct {p0, v0, v1, v2}, Lcom/oculus/vrapi/BinderConnection;-><init>(Ljava/lang/String;II)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    .line 24
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    .line 25
    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    return-void
.end method


# virtual methods
.method protected bridge synthetic asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p1

    return-object p1
.end method

.method protected asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingService;
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/oculus/vrapi/ITrackingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic binderDied()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/oculus/vrapi/BinderConnection;->binderDied()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public bridge synthetic disconnect()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/oculus/vrapi/BinderConnection;->disconnect()V

    return-void
.end method

.method public getTrackingSocketFd()I
    .locals 4

    const/4 v0, -0x1

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    invoke-interface {v1}, Lcom/oculus/vrapi/ITrackingService;->getTrackingSocketFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "TrackingServiceConnectionNative"

    const-string v2, "TrackingService doesn\'t support socket communication"

    .line 79
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 82
    :cond_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "TrackingServiceConnectionNative"

    const-string v3, "Failed to create communication socket"

    .line 89
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "TrackingServiceConnectionNative"

    const-string v3, "Failed to connect to TrackingService to ask for communication socket"

    .line 86
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public onClientConnect()Z
    .locals 3

    const-string v0, "TrackingServiceConnectionNative"

    const-string v1, "onClientConnect"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->setShouldReconnect(Z)V

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->getService()Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/oculus/vrapi/ITrackingService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    const-string v0, "TrackingServiceConnectionNative"

    const-string v2, "Failed to connect to client"

    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onClientDisconnect()V
    .locals 4

    const-string v0, "TrackingServiceConnectionNative"

    const-string v1, "onClientDisconnect"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->setShouldReconnect(Z)V

    .line 52
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    iget-object v1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {v0, v1}, Lcom/oculus/vrapi/ITrackingService;->unregisterClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TrackingServiceConnectionNative"

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister TrackingService client callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->disconnect()V

    return-void
.end method

.method protected bridge synthetic onConnected(Landroid/os/IInterface;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/oculus/vrapi/ITrackingService;

    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->onConnected(Lcom/oculus/vrapi/ITrackingService;)V

    return-void
.end method

.method protected onConnected(Lcom/oculus/vrapi/ITrackingService;)V
    .locals 3

    const-string v0, "TrackingServiceConnectionNative"

    const-string v1, "onConnected"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    .line 110
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {p1, v0}, Lcom/oculus/vrapi/ITrackingService;->getSharedMemoryFileDescriptor(Lcom/oculus/vrapi/ITrackingServiceClient;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    .line 112
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    invoke-static {v0, p1}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetTrackingServiceInterface(Lcom/oculus/vrapi/ITrackingService;I)V

    .line 113
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mTrackingService:Lcom/oculus/vrapi/ITrackingService;

    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {p1, v0}, Lcom/oculus/vrapi/ITrackingService;->registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TrackingServiceConnectionNative"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to native tracking service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onDisconnected(Landroid/os/IInterface;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/oculus/vrapi/ITrackingService;

    invoke-virtual {p0, p1}, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->onDisconnected(Lcom/oculus/vrapi/ITrackingService;)V

    return-void
.end method

.method protected onDisconnected(Lcom/oculus/vrapi/ITrackingService;)V
    .locals 1

    const-string p1, "TrackingServiceConnectionNative"

    const-string v0, "onDisconnected"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionNative;->mDisconnectCallback:Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;

    invoke-interface {p1}, Lcom/oculus/vrapi/ITrackingServiceConnection$IDisconnectCallback;->onDisconnect()V

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 127
    invoke-static {p1, v0}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetTrackingServiceInterface(Lcom/oculus/vrapi/ITrackingService;I)V

    return-void
.end method
