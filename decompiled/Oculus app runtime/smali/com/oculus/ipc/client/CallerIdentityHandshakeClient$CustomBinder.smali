.class Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;
.super Landroid/os/Binder;
.source "CallerIdentityHandshakeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/ipc/client/CallerIdentityHandshakeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomBinder"
.end annotation


# instance fields
.field private mTargetUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    iput p1, p0, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;->mTargetUid:I

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iget p4, p0, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;->mTargetUid:I

    const/4 v0, 0x0

    if-ne p1, p4, :cond_0

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    const/4 p4, 0x0

    invoke-interface {p1, p3, p2, p4, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    return p3

    .line 49
    :cond_0
    new-instance p1, Landroid/os/RemoteException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    iget v1, p0, Lcom/oculus/ipc/client/CallerIdentityHandshakeClient$CustomBinder;->mTargetUid:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, v0

    .line 54
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p3

    const-string p3, "Handshake transaction is not from expected uid [expected: %d, from: %d]"

    .line 50
    invoke-static {p2, p3, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_1
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
.end method
