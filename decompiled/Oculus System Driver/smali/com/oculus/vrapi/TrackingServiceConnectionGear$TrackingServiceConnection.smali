.class Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;
.super Ljava/lang/Object;
.source "TrackingServiceConnectionGear.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceConnectionGear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackingServiceConnection"
.end annotation


# instance fields
.field mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;


# direct methods
.method public constructor <init>(Lcom/oculus/vrapi/TrackingServiceConnectionGear;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    .line 41
    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "TrackingServiceConnectionGear"

    const-string v0, "TrackingServiceConnection.onServiceConnected()"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p2}, Lcom/oculus/vrapi/ITrackingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$002(Lcom/oculus/vrapi/TrackingServiceConnectionGear;Lcom/oculus/vrapi/ITrackingService;)Lcom/oculus/vrapi/ITrackingService;

    :try_start_0
    const-string p1, "TrackingServiceConnectionGear"

    const-string p2, "TrackingService trying to registerClient"

    .line 51
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p1}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$000(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p2}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$100(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingServiceClient;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oculus/vrapi/ITrackingService;->getSharedMemoryFileDescriptor(Lcom/oculus/vrapi/ITrackingServiceClient;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TrackingServiceConnectionGear"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    const-string p2, "TrackingServiceConnectionGear"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackingServiceConnection.onServiceConnected() connected, fd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p2}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$000(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/oculus/vrapi/TrackingServiceClient;->nativeSetTrackingServiceInterface(Lcom/oculus/vrapi/ITrackingService;I)V

    .line 61
    :try_start_1
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p1}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$000(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingService;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p2}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$100(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)Lcom/oculus/vrapi/ITrackingServiceClient;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oculus/vrapi/ITrackingService;->registerClient(Lcom/oculus/vrapi/ITrackingServiceClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "TrackingServiceConnectionGear"

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_1
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    const-string p1, "TrackingServiceConnectionGear"

    const-string p2, "Signaling connection"

    .line 68
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->mSignalOnConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$002(Lcom/oculus/vrapi/TrackingServiceConnectionGear;Lcom/oculus/vrapi/ITrackingService;)Lcom/oculus/vrapi/ITrackingService;

    const-string p1, "TrackingServiceConnectionGear"

    const-string v0, "TrackingServiceConnection.onServiceDisconnected() disconnected"

    .line 77
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnectionGear$TrackingServiceConnection;->this$0:Lcom/oculus/vrapi/TrackingServiceConnectionGear;

    invoke-static {p1}, Lcom/oculus/vrapi/TrackingServiceConnectionGear;->access$200(Lcom/oculus/vrapi/TrackingServiceConnectionGear;)V

    return-void
.end method
