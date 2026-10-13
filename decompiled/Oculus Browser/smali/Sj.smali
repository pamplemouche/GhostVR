.class public abstract LSj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final c:LJs;


# instance fields
.field public final a:Lsl;

.field public final b:LRj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "Session"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LSj;->c:LJs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LRj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LRj;-><init>(LSj;LWk;)V

    iput-object v0, p0, LSj;->b:LRj;

    .line 3
    invoke-static {p1}, LTs;->a(Landroid/content/Context;)LWs;

    move-result-object p1

    const/4 v2, 0x2

    .line 4
    :try_start_0
    check-cast p1, LXs;

    .line 5
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v3

    .line 6
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    invoke-static {v3, v0}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 9
    invoke-virtual {p1, v2, v3}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lrl;->a(Landroid/os/IBinder;)Lsl;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 12
    sget-object p1, LTs;->a:LJs;

    new-array p2, v2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "newSessionImpl"

    aput-object v0, p2, p3

    const/4 p3, 0x1

    const-class v0, LWs;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    .line 14
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Unable to call %s on %s."

    .line 15
    invoke-virtual {p1, p3, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    move-object p2, v1

    .line 16
    :goto_0
    iput-object p2, p0, LSj;->a:Lsl;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 11
    :try_start_0
    iget-object v0, p0, LSj;->a:Lsl;

    check-cast v0, Ltl;

    .line 12
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0xd

    .line 14
    invoke-virtual {v0, p1, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 15
    :catch_0
    sget-object p1, LSj;->c:LJs;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "notifySessionEnded"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lsl;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 17
    invoke-virtual {p1}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to call %s on %s."

    .line 18
    invoke-virtual {p1, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v0, p0, LSj;->a:Lsl;

    check-cast v0, Ltl;

    .line 3
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v2, v1}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lks;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 7
    :catch_0
    sget-object v0, LSj;->c:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "isConnected"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Lsl;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 9
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unable to call %s on %s."

    .line 10
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return v3
.end method

.method public final b()Ldq;
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, LSj;->a:Lsl;

    check-cast v1, Ltl;

    .line 2
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v0, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 6
    :catch_0
    sget-object v1, LSj;->c:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getWrappedObject"

    aput-object v4, v2, v3

    const-class v3, Lsl;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 8
    invoke-virtual {v1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 9
    invoke-virtual {v1, v0, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
