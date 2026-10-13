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

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;-><init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-object v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-static {v0}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->access$100(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "HandshakeBinder should only receive one transaction!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-ne p1, v2, :cond_1

    .line 56
    iget-object v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;->this$0:Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->access$102(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;I)I

    .line 57
    return v2

    .line 60
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code was received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
