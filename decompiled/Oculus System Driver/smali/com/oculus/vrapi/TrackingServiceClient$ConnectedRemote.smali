.class Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;
.super Ljava/lang/Object;
.source "TrackingServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrapi/TrackingServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectedRemote"
.end annotation


# instance fields
.field public final ButtonHandler:Lcom/oculus/vrapi/RemoteButtonHandler;

.field public final DeviceIdentifier:J

.field public final ModelId:I

.field public final TouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;JIII)V
    .locals 7

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-wide p2, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->DeviceIdentifier:J

    .line 234
    new-instance v6, Lcom/oculus/vrapi/RemoteTouchHandler;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrapi/RemoteTouchHandler;-><init>(Landroid/content/Context;JII)V

    iput-object v6, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->TouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    .line 235
    new-instance p4, Lcom/oculus/vrapi/RemoteButtonHandler;

    iget-object v4, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->TouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    move-object v0, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/oculus/vrapi/RemoteButtonHandler;-><init>(Landroid/content/Context;JLcom/oculus/vrapi/RemoteTouchHandler;I)V

    iput-object p4, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->ButtonHandler:Lcom/oculus/vrapi/RemoteButtonHandler;

    .line 236
    iput p6, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->ModelId:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->TouchHandler:Lcom/oculus/vrapi/RemoteTouchHandler;

    invoke-virtual {v0}, Lcom/oculus/vrapi/RemoteTouchHandler;->destroy()V

    .line 247
    iget-object v0, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->ButtonHandler:Lcom/oculus/vrapi/RemoteButtonHandler;

    invoke-virtual {v0}, Lcom/oculus/vrapi/RemoteButtonHandler;->destroy()V

    .line 248
    iget-wide v0, p0, Lcom/oculus/vrapi/TrackingServiceClient$ConnectedRemote;->DeviceIdentifier:J

    invoke-static {v0, v1}, Lcom/oculus/vrapi/TrackingServiceClient;->access$500(J)V

    return-void
.end method

.method public notifyDisconnected(Landroid/content/Context;)V
    .locals 0

    .line 241
    invoke-static {p1}, Lcom/oculus/vrapi/NotificationReceiverHelper;->displayControllerDisconnectNotification(Landroid/content/Context;)V

    return-void
.end method
