.class public abstract LH;
.super Landroid/os/Binder;
.source "PG"

# interfaces
.implements LI;


# direct methods
.method public static a(Landroid/os/IBinder;)LI;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.support.customtabs.trusted.ITrustedWebActivityService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, LI;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, LI;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, LG;

    invoke-direct {v0, p0}, LG;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
