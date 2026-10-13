.class public LTj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:LJs;


# instance fields
.field public final a:Lul;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "SessionManager"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LTj;->b:LJs;

    return-void
.end method

.method public constructor <init>(Lul;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LTj;->a:Lul;

    return-void
.end method


# virtual methods
.method public a()LOj;
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, LTj;->b()LSj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, LOj;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, LOj;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(LUj;Ljava/lang/Class;)V
    .locals 3

    .line 15
    invoke-static {p1}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p2}, Lxp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Must be called from the main thread."

    .line 17
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 18
    :try_start_0
    iget-object v1, p0, LTj;->a:Lul;

    new-instance v2, LXk;

    invoke-direct {v2, p1, p2}, LXk;-><init>(LUj;Ljava/lang/Class;)V

    check-cast v1, Lvl;

    .line 19
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object p1

    .line 20
    invoke-static {p1, v2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    invoke-virtual {v1, v0, p1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 22
    sget-object p1, LTj;->b:LJs;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "addSessionManagerListener"

    aput-object v1, p2, v0

    const/4 v0, 0x1

    const-class v1, Lul;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 24
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 25
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "Must be called from the main thread."

    .line 5
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    :try_start_0
    iget-object v1, p0, LTj;->a:Lul;

    check-cast v1, Lvl;

    .line 7
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 8
    invoke-static {v2, v0}, Lks;->a(Landroid/os/Parcel;Z)V

    .line 9
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 10
    invoke-virtual {v1, p1, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :catch_0
    sget-object p1, LTj;->b:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "endCurrentSession"

    aput-object v3, v1, v2

    const-class v2, Lul;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 13
    invoke-virtual {p1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 14
    invoke-virtual {p1, v0, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b()LSj;
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, LTj;->a:Lul;

    check-cast v1, Lvl;

    .line 3
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v0, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7
    invoke-static {v2}, Leq;->a(Ldq;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSj;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 8
    :catch_0
    sget-object v1, LTj;->b:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedCurrentSession"

    aput-object v4, v2, v3

    const-class v3, Lul;

    .line 9
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 10
    invoke-virtual {v1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 11
    invoke-virtual {v1, v0, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
