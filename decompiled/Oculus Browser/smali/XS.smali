.class public abstract LXS;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements LYS;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.chromium.IsReadyToPayServiceCallback"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "org.chromium.IsReadyToPayServiceCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    move-object p2, p0

    check-cast p2, Ldu0;

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p2, Ldu0;->a:Leu0;

    .line 7
    invoke-virtual {p1, p1}, Leu0;->a(LQu0;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p2, Ldu0;->a:Leu0;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Leu0;->a(LQu0;)V

    :goto_1
    return v0
.end method
