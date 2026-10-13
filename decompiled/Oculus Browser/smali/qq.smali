.class public abstract Lqq;
.super LSt;
.source "PG"

# interfaces
.implements Lrq;


# direct methods
.method public static a(Landroid/os/IBinder;)Lrq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lrq;

    if-eqz v1, :cond_1

    check-cast v0, Lrq;

    return-object v0

    :cond_1
    new-instance v0, Lpq;

    invoke-direct {v0, p0}, Lpq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
