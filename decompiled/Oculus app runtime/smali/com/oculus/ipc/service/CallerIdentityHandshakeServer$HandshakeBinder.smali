.class Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;
.super Landroid/os/Binder;
.source "CallerIdentityHandshakeServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandshakeBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;


# direct methods
.method private constructor <init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;-><init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    iget-object p2, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-static {p2}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->access$100(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 56
    iget-object p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p1, p3}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->access$102(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;I)I

    return p2

    .line 60
    :cond_0
    new-instance p2, Landroid/os/RemoteException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected code was received: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "HandshakeBinder should only receive one transaction!"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
