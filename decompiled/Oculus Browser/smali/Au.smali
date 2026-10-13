.class public abstract LAu;
.super LFt;
.source "PG"

# interfaces
.implements Lzu;


# direct methods
.method public static a(Landroid/os/IBinder;)Lzu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lzu;

    if-eqz v1, :cond_1

    check-cast v0, Lzu;

    return-object v0

    :cond_1
    new-instance v0, LBu;

    invoke-direct {v0, p0}, LBu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
