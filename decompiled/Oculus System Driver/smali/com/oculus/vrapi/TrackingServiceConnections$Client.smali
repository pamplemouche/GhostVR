.class Lcom/oculus/vrapi/TrackingServiceConnections$Client;
.super Ljava/lang/Object;
.source "TrackingServiceConnections.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceConnections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Client"
.end annotation


# instance fields
.field final mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

.field final mDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/vrapi/ITrackingServiceClient;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    .line 220
    iput-object p2, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mDescription:Ljava/lang/String;

    .line 221
    iget-object p1, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {p1}, Lcom/oculus/vrapi/ITrackingServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrapi/TrackingServiceConnections$Client;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->destroy()V

    return-void
.end method

.method private destroy()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-interface {v0}, Lcom/oculus/vrapi/ITrackingServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "TrackingServiceConnections"

    const-string v1, "Client died. Removing callback"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceConnections$Client;->mClient:Lcom/oculus/vrapi/ITrackingServiceClient;

    invoke-static {v0}, Lcom/oculus/vrapi/TrackingServiceConnections;->access$100(Lcom/oculus/vrapi/ITrackingServiceClient;)V

    return-void
.end method
