.class public abstract LFr;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    const v0, 0xffffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_0
    const/4 p4, 0x1

    if-eqz p3, :cond_1

    return p4

    :cond_1
    move-object p3, p0

    check-cast p3, LKr;

    if-ne p1, p4, :cond_3

    .line 1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, LGr;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    check-cast p3, LOr;

    .line 2
    iget-object p2, p3, LOr;->a:LNr;

    .line 3
    iget-object p2, p2, LPr;->c:Lcv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->r()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    iget-object p1, p2, Lcv;->a:Lsv;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsv;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance p3, Lzm;

    invoke-direct {p3, p1}, Lzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 7
    iget-object p1, p2, Lcv;->a:Lsv;

    invoke-virtual {p1, p3}, Lsv;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    const/4 p4, 0x0

    :goto_1
    return p4
.end method
