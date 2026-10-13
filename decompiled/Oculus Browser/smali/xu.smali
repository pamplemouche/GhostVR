.class public abstract Lxu;
.super LFt;
.source "PG"

# interfaces
.implements Lwu;


# direct methods
.method public static a(Landroid/os/IBinder;)Lwu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.IDeviceOrientationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lwu;

    if-eqz v1, :cond_1

    check-cast v0, Lwu;

    return-object v0

    :cond_1
    new-instance v0, Lyu;

    invoke-direct {v0, p0}, Lyu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
