.class public abstract LPr;
.super Lkn;
.source "PG"


# instance fields
.field public c:Lcv;


# direct methods
.method public synthetic constructor <init>(LNr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkn;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lpm;Lcv;)V
    .locals 3

    check-cast p1, LLr;

    iput-object p2, p0, LPr;->c:Lcv;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, LHr;

    move-object p2, p0

    check-cast p2, LNr;

    .line 1
    new-instance v0, LOr;

    invoke-direct {v0, p2}, LOr;-><init>(LNr;)V

    check-cast p1, LIr;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v1, p1, LEr;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-static {p2, v0}, LGr;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object p1, p1, LEr;->a:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
