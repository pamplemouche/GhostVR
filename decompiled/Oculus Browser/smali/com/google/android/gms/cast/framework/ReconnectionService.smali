.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final x:LJs;


# instance fields
.field public w:Lpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "ReconnectionService"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->x:LJs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->w:Lpl;

    check-cast v0, Lql;

    .line 2
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 3
    invoke-static {v1, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x3

    .line 4
    invoke-virtual {v0, p1, v1}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 7
    :catch_0
    sget-object p1, Lcom/google/android/gms/cast/framework/ReconnectionService;->x:LJs;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onBind"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lpl;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 9
    invoke-virtual {p1}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unable to call %s on %s."

    .line 10
    invoke-virtual {p1, v1, v0}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 10

    const-string v0, "getWrappedThis"

    const-string v1, "Unable to call %s on %s."

    .line 1
    invoke-static {p0}, LJj;->a(Landroid/content/Context;)LJj;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, LJj;->b()LTj;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 3
    :try_start_0
    iget-object v3, v3, LTj;->a:Lul;

    check-cast v3, Lvl;

    .line 4
    invoke-virtual {v3}, LXr;->A()Landroid/os/Parcel;

    move-result-object v8

    const/4 v9, 0x7

    .line 5
    invoke-virtual {v3, v9, v8}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object v8

    .line 7
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 8
    sget-object v3, LTj;->b:LJs;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v5

    const-class v9, Lul;

    .line 9
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 10
    invoke-virtual {v3}, LJs;->a()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 11
    invoke-virtual {v3, v1, v8}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    move-object v8, v4

    :goto_0
    const-string v3, "Must be called from the main thread."

    .line 12
    invoke-static {v3}, Lxp;->a(Ljava/lang/String;)V

    .line 13
    iget-object v2, v2, LJj;->d:Lbl;

    if-eqz v2, :cond_3

    .line 14
    :try_start_1
    iget-object v2, v2, Lbl;->a:Lml;

    check-cast v2, Lnl;

    .line 15
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object v3

    const/4 v9, 0x5

    .line 16
    invoke-virtual {v2, v9, v3}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcq;->a(Landroid/os/IBinder;)Ldq;

    move-result-object v3

    .line 18
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 19
    sget-object v2, Lbl;->b:LJs;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-class v0, Lml;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 21
    invoke-virtual {v2}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v2, v1, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    move-object v3, v4

    .line 23
    :goto_1
    invoke-static {p0, v8, v3}, LTs;->a(Landroid/app/Service;Ldq;Ldq;)Lpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->w:Lpl;

    .line 24
    :try_start_2
    check-cast v0, Lql;

    .line 25
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v7, v2}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 27
    :catch_2
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->x:LJs;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "onCreate"

    aput-object v3, v2, v5

    const-class v3, Lpl;

    .line 28
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 29
    invoke-virtual {v0}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v0, v1, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    :cond_2
    :goto_2
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    .line 32
    :cond_3
    throw v4

    .line 33
    :cond_4
    throw v4
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->w:Lpl;

    check-cast v0, Lql;

    .line 2
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v2, v1}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->x:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onDestroy"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lpl;

    .line 5
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 6
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Unable to call %s on %s."

    .line 7
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->w:Lpl;

    check-cast v1, Lql;

    .line 2
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 3
    invoke-static {v2, p1}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v1, v0, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 9
    :catch_0
    sget-object p1, Lcom/google/android/gms/cast/framework/ReconnectionService;->x:LJs;

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "onStartCommand"

    aput-object v0, p2, p3

    const-class p3, Lpl;

    .line 10
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p2, v0

    .line 11
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Unable to call %s on %s."

    .line 12
    invoke-virtual {p1, p3, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
