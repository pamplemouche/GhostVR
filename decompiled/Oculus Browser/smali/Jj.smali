.class public LJj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:LJs;

.field public static j:LJj;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhl;

.field public final c:LTj;

.field public final d:Lbl;

.field public final e:Lcom/google/android/gms/cast/framework/CastOptions;

.field public f:Ldt;

.field public g:LUs;

.field public final h:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastContext"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LJj;->i:LJs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V
    .locals 8

    const-string v0, "Unable to call %s on %s."

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LJj;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 4
    new-instance p1, Ldt;

    iget-object v1, p0, LJj;->a:Landroid/content/Context;

    invoke-static {v1}, Lrb;->a(Landroid/content/Context;)Lrb;

    move-result-object v1

    invoke-direct {p1, v1}, Ldt;-><init>(Lrb;)V

    iput-object p1, p0, LJj;->f:Ldt;

    .line 5
    iput-object p3, p0, LJj;->h:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, LJj;->d()V

    .line 7
    invoke-virtual {p0}, LJj;->c()Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object p3, p0, LJj;->a:Landroid/content/Context;

    iget-object v1, p0, LJj;->f:Ldt;

    .line 9
    invoke-static {p3}, LTs;->a(Landroid/content/Context;)LWs;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 11
    new-instance v7, Leq;

    invoke-direct {v7, p3}, Leq;-><init>(Ljava/lang/Object;)V

    .line 12
    check-cast v2, LXs;

    .line 13
    invoke-virtual {v2}, LXr;->A()Landroid/os/Parcel;

    move-result-object p3

    .line 14
    invoke-static {p3, v7}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 15
    invoke-static {p3, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 16
    invoke-static {p3, v1}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 18
    invoke-virtual {v2, v5, p3}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lgl;->a(Landroid/os/IBinder;)Lhl;

    move-result-object p2

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 21
    sget-object p1, LTs;->a:LJs;

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "newCastContextImpl"

    aput-object p3, p2, v3

    const-class p3, LWs;

    .line 22
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    .line 23
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    move-object p2, v6

    .line 25
    :goto_0
    iput-object p2, p0, LJj;->b:Lhl;

    .line 26
    :try_start_1
    check-cast p2, Lil;

    .line 27
    invoke-virtual {p2}, LXr;->A()Landroid/os/Parcel;

    move-result-object p1

    const/4 p3, 0x6

    .line 28
    invoke-virtual {p2, p3, p1}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1

    move-object p3, v6

    goto :goto_1

    :cond_1
    const-string p3, "com.google.android.gms.cast.framework.IDiscoveryManager"

    .line 30
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 31
    instance-of v1, p3, Lml;

    if-eqz v1, :cond_2

    .line 32
    check-cast p3, Lml;

    goto :goto_1

    .line 33
    :cond_2
    new-instance p3, Lnl;

    invoke-direct {p3, p2}, Lnl;-><init>(Landroid/os/IBinder;)V

    .line 34
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 35
    :catch_1
    sget-object p1, LJj;->i:LJs;

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "getDiscoveryManagerImpl"

    aput-object p3, p2, v3

    const-class p3, Lhl;

    .line 36
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    .line 37
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 38
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    move-object p3, v6

    :goto_2
    if-nez p3, :cond_4

    move-object p1, v6

    goto :goto_3

    .line 39
    :cond_4
    new-instance p1, Lbl;

    invoke-direct {p1, p3}, Lbl;-><init>(Lml;)V

    :goto_3
    iput-object p1, p0, LJj;->d:Lbl;

    .line 40
    :try_start_2
    iget-object p1, p0, LJj;->b:Lhl;

    check-cast p1, Lil;

    .line 41
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object p2

    const/4 p3, 0x5

    .line 42
    invoke-virtual {p1, p3, p2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_5

    move-object p3, v6

    goto :goto_4

    :cond_5
    const-string p3, "com.google.android.gms.cast.framework.ISessionManager"

    .line 44
    invoke-interface {p2, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 45
    instance-of v1, p3, Lul;

    if-eqz v1, :cond_6

    .line 46
    check-cast p3, Lul;

    goto :goto_4

    .line 47
    :cond_6
    new-instance p3, Lvl;

    invoke-direct {p3, p2}, Lvl;-><init>(Landroid/os/IBinder;)V

    .line 48
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 49
    :catch_2
    sget-object p1, LJj;->i:LJs;

    new-array p2, v4, [Ljava/lang/Object;

    const-string p3, "getSessionManagerImpl"

    aput-object p3, p2, v3

    const-class p3, Lhl;

    .line 50
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v5

    .line 51
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 52
    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    move-object p3, v6

    :goto_5
    if-nez p3, :cond_8

    goto :goto_6

    .line 53
    :cond_8
    new-instance v6, LTj;

    iget-object p1, p0, LJj;->a:Landroid/content/Context;

    invoke-direct {v6, p3, p1}, LTj;-><init>(Lul;Landroid/content/Context;)V

    :goto_6
    iput-object v6, p0, LJj;->c:LTj;

    .line 54
    iget-object p1, p0, LJj;->c:LTj;

    if-nez p1, :cond_9

    goto :goto_7

    .line 55
    :cond_9
    iget-object p1, p0, LJj;->a:Landroid/content/Context;

    .line 56
    new-instance p2, Los;

    invoke-direct {p2, p1}, Los;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, LJs;

    const-string p2, "PrecacheManager"

    invoke-direct {p1, p2}, LJs;-><init>(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public static a(Landroid/content/Context;)LJj;
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, LJj;->j:LJj;

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {v0}, LVp;->b(Landroid/content/Context;)LUp;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, LUp;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7
    sget-object v2, LJj;->i:LJs;

    const-string v3, "Bundle is null"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, LJs;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-string v2, "com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME"

    .line 8
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPj;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    new-instance v1, LJj;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, LPj;->b(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3}, LPj;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, LJj;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ljava/util/List;)V

    sput-object v1, LJj;->j:LJj;

    goto :goto_1

    .line 13
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to initialize CastContext."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 15
    :cond_2
    :goto_1
    sget-object p0, LJj;->j:LJj;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)LJj;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0}, LJj;->a(Landroid/content/Context;)LJj;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    sget-object v0, LJj;->i:LJs;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 4
    iget-object p0, v0, LJs;->a:Ljava/lang/String;

    const-string v2, "Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently."

    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e()LJj;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    sget-object v0, LJj;->j:LJj;

    return-object v0
.end method


# virtual methods
.method public a()Lbb;
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 16
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    :try_start_0
    iget-object v1, p0, LJj;->b:Lhl;

    check-cast v1, Lil;

    .line 18
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 19
    invoke-virtual {v1, v0, v2}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 20
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 21
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 22
    invoke-static {v2}, Lbb;->a(Landroid/os/Bundle;)Lbb;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 23
    :catch_0
    sget-object v1, LJj;->i:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getMergedSelectorAsBundle"

    aput-object v4, v2, v3

    const-class v3, Lhl;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 25
    invoke-virtual {v1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to call %s on %s."

    .line 26
    invoke-virtual {v1, v0, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    const-string v0, "Must be called from the main thread."

    .line 27
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    .line 30
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v1, p0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 32
    iput-object p1, v1, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, LJj;->d()V

    .line 34
    invoke-virtual {p0}, LJj;->c()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 35
    :try_start_0
    iget-object v4, p0, LJj;->b:Lhl;

    check-cast v4, Lil;

    .line 36
    invoke-virtual {v4}, LXr;->A()Landroid/os/Parcel;

    move-result-object v5

    .line 37
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/16 p1, 0xb

    .line 39
    invoke-virtual {v4, p1, v5}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    sget-object p1, LJj;->i:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "setReceiverApplicationId"

    aput-object v4, v1, v3

    const-class v4, Lhl;

    .line 41
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 42
    invoke-virtual {p1}, LJs;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Unable to call %s on %s."

    .line 43
    invoke-virtual {p1, v4, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    :cond_1
    :goto_0
    iget-object p1, p0, LJj;->a:Landroid/content/Context;

    .line 45
    sget-object v1, LIj;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 46
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 47
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-static {p1, v4}, LIj;->a(Landroid/content/Context;Landroid/view/MenuItem;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 48
    sget-object v5, LIj;->a:LJs;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    .line 49
    iget-object v4, v5, LJs;->a:Ljava/lang/String;

    const-string v7, "Unexpected exception when refreshing MediaRouteSelectors for Cast buttons"

    invoke-virtual {v5, v7, v6}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 50
    :cond_3
    sget-object v1, LIj;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 51
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 52
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/MediaRouteButton;

    .line 53
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, LJj;->b(Landroid/content/Context;)LJj;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 55
    invoke-virtual {v4}, LJj;->a()Lbb;

    move-result-object v4

    if-eqz v2, :cond_8

    if-eqz v4, :cond_7

    .line 56
    iget-object v5, v2, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v5, v4}, Lbb;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 57
    iget-boolean v5, v2, Landroid/support/v7/app/MediaRouteButton;->A:Z

    if-eqz v5, :cond_6

    .line 58
    iget-object v5, v2, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    invoke-virtual {v5}, Lbb;->b()Z

    move-result v5

    if-nez v5, :cond_5

    .line 59
    iget-object v5, v2, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    iget-object v6, v2, Landroid/support/v7/app/MediaRouteButton;->x:Lp9;

    invoke-virtual {v5, v6}, Lrb;->b(Lcb;)V

    .line 60
    :cond_5
    invoke-virtual {v4}, Lbb;->b()Z

    move-result v5

    if-nez v5, :cond_6

    .line 61
    iget-object v5, v2, Landroid/support/v7/app/MediaRouteButton;->w:Lrb;

    iget-object v6, v2, Landroid/support/v7/app/MediaRouteButton;->x:Lp9;

    .line 62
    invoke-virtual {v5, v4, v6, v3}, Lrb;->a(Lbb;Lcb;I)V

    .line 63
    :cond_6
    iput-object v4, v2, Landroid/support/v7/app/MediaRouteButton;->y:Lbb;

    .line 64
    invoke-virtual {v2}, Landroid/support/v7/app/MediaRouteButton;->a()V

    goto :goto_2

    .line 65
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 66
    throw p1

    :cond_9
    return-void
.end method

.method public b()LTj;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 5
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, LJj;->c:LTj;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, LJj;->g:LUs;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, LWj;->b:Ljava/lang/String;

    .line 4
    iget-object v1, v1, LWj;->c:LVj;

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, LJj;->h:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWj;

    const-string v3, "Additional SessionProvider must not be null."

    .line 8
    invoke-static {v2, v3}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, v2, LWj;->b:Ljava/lang/String;

    const-string v4, "Category for SessionProvider must not be null or empty string."

    .line 10
    invoke-static {v3, v4}, Lxp;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v6, "SessionProvider for category %s already added"

    .line 12
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {v4, v5}, Lxp;->a(ZLjava/lang/Object;)V

    .line 14
    iget-object v2, v2, LWj;->c:LVj;

    .line 15
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->w:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, LUs;

    iget-object v1, p0, LJj;->a:Landroid/content/Context;

    iget-object v2, p0, LJj;->e:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v3, p0, LJj;->f:Ldt;

    invoke-direct {v0, v1, v2, v3}, LUs;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Ldt;)V

    iput-object v0, p0, LJj;->g:LUs;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LJj;->g:LUs;

    return-void
.end method
