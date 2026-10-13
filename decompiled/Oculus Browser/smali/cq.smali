.class public abstract Lcq;
.super LSt;
.source "PG"

# interfaces
.implements Ldq;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, LSt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Ldq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Ldq;

    if-eqz v1, :cond_1

    check-cast v0, Ldq;

    return-object v0

    :cond_1
    new-instance v0, Lbq;

    invoke-direct {v0, p0}, Lbq;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
