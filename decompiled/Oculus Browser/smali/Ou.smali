.class public abstract LOu;
.super LSt;
.source "PG"

# interfaces
.implements LPu;


# direct methods
.method public static a(Landroid/os/IBinder;)LPu;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, LPu;

    if-eqz v1, :cond_1

    check-cast v0, LPu;

    return-object v0

    :cond_1
    new-instance v0, LNu;

    invoke-direct {v0, p0}, LNu;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
