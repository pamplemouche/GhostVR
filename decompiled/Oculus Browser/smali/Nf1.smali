.class public abstract LNf1;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements LOf1;


# direct methods
.method public static a(Landroid/os/IBinder;)LOf1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, LOf1;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, LOf1;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, LMf1;

    invoke-direct {v0, p0}, LMf1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
