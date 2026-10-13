.class public abstract LRf1;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements LSf1;


# direct methods
.method public static a(Landroid/os/IBinder;)LSf1;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.webapk.lib.runtime_library.IWebApkApi"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, LSf1;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, LSf1;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, LQf1;

    invoke-direct {v0, p0}, LQf1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
