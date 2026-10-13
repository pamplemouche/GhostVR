.class public abstract LcB;
.super LbB;
.source "PG"

# interfaces
.implements LdB;


# direct methods
.method public static a(Landroid/os/IBinder;)LdB;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LdB;

    if-eqz v1, :cond_1

    check-cast v0, LdB;

    return-object v0

    :cond_1
    new-instance v0, LfB;

    invoke-direct {v0, p0}, LfB;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
