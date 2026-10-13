.class public Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;
.super Ljava/lang/Object;
.source "CallerIdentityHandshakeServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;
    }
.end annotation


# instance fields
.field private mCallingUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;I)I
    .locals 0

    .prologue
    .line 12
    iput p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return p1
.end method


# virtual methods
.method public getCallingUid(Landroid/os/Bundle;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    const-string v0, "extra_key_handshake_binder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Bundle is missing handshake binder!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    new-instance v1, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;

    invoke-direct {v1, p0, v4}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;-><init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$1;)V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 36
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 38
    iget v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 39
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "HandshakeBinder did not receive a response from the client."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    iget v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return v0
.end method
