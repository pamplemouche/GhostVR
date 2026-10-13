.class public abstract LTs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LJs;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastDynamiteModule"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LTs;->a:LJs;

    return-void
.end method

.method public static a(Landroid/content/Context;)LWs;
    .locals 2

    .line 35
    :try_start_0
    sget-object v0, Llq;->h:Liq;

    const-string v1, "com.google.android.gms.cast.framework.dynamite"

    .line 36
    invoke-static {p0, v0, v1}, Llq;->a(Landroid/content/Context;Liq;Ljava/lang/String;)Llq;

    move-result-object p0

    const-string v0, "com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"

    .line 37
    invoke-virtual {p0, v0}, Llq;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.cast.framework.internal.ICastDynamiteModule"

    .line 38
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    instance-of v1, v0, LWs;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, LWs;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, LXs;

    invoke-direct {v0, p0}, LXs;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lfq; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/os/AsyncTask;Les;IIZ)Lcs;
    .locals 6

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LTs;->a(Landroid/content/Context;)LWs;

    move-result-object p0

    .line 16
    :try_start_0
    new-instance v0, Leq;

    invoke-direct {v0, p1}, Leq;-><init>(Ljava/lang/Object;)V

    const-wide/32 v1, 0x200000

    const/4 p1, 0x5

    const/16 v3, 0x14d

    const/16 v4, 0x2710

    .line 17
    check-cast p0, LXs;

    .line 18
    invoke-virtual {p0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v5

    .line 19
    invoke-static {v5, v0}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 20
    invoke-static {v5, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    invoke-virtual {v5, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    invoke-virtual {v5, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {v5, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {v5, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 25
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {v5, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x6

    .line 28
    invoke-virtual {p0, p1, v5}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lbs;->a(Landroid/os/IBinder;)Lcs;

    move-result-object p1

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 31
    :catch_0
    sget-object p0, LTs;->a:LJs;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "newFetchBitmapTaskImpl"

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-class p3, LWs;

    .line 32
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    .line 33
    invoke-virtual {p0}, LJs;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Unable to call %s on %s."

    .line 34
    invoke-virtual {p0, p2, p1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/app/Service;Ldq;Ldq;)Lpl;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LTs;->a(Landroid/content/Context;)LWs;

    move-result-object v0

    .line 2
    new-instance v1, Leq;

    invoke-direct {v1, p0}, Leq;-><init>(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    check-cast v0, LXs;

    .line 4
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object p0

    .line 5
    invoke-static {p0, v1}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-static {p0, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 7
    invoke-static {p0, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    .line 8
    invoke-virtual {v0, p1, p0}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lol;->a(Landroid/os/IBinder;)Lpl;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :catch_0
    sget-object p0, LTs;->a:LJs;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "newReconnectionServiceImpl"

    aput-object v0, p1, p2

    const/4 p2, 0x1

    const-class v0, LWs;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    .line 13
    invoke-virtual {p0}, LJs;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Unable to call %s on %s."

    .line 14
    invoke-virtual {p0, p2, p1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
