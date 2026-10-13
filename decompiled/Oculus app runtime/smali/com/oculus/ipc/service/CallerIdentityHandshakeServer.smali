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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;)I
    .locals 0

    .line 12
    iget p0, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return p0
.end method

.method static synthetic access$102(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;I)I
    .locals 0

    .line 12
    iput p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    return p1
.end method


# virtual methods
.method public getCallingUid(Landroid/os/Bundle;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "extra_key_handshake_binder"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 31
    new-instance v0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$HandshakeBinder;-><init>(Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;Lcom/oculus/ipc/service/CallerIdentityHandshakeServer$1;)V

    .line 33
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-interface {p1, v0, v2, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 38
    iget p1, p0, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->mCallingUid:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    .line 39
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "HandshakeBinder did not receive a response from the client."

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Landroid/os/RemoteException;

    const-string v0, "Bundle is missing handshake binder!"

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
