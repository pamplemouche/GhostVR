.class public LOj;
.super LSj;
.source "PG"


# static fields
.field public static final n:LJs;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/Set;

.field public final f:Lkl;

.field public final g:Lcom/google/android/gms/cast/framework/CastOptions;

.field public final h:Lxj;

.field public final i:Lgs;

.field public j:LHm;

.field public k:Lok;

.field public l:Lcom/google/android/gms/cast/CastDevice;

.field public m:Lvj;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastSession"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LOj;->n:LJs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lxj;LVs;Lgs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LSj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, LOj;->e:Ljava/util/Set;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LOj;->d:Landroid/content/Context;

    .line 4
    iput-object p4, p0, LOj;->g:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    iput-object p5, p0, LOj;->h:Lxj;

    .line 6
    iput-object p7, p0, LOj;->i:Lgs;

    .line 7
    invoke-virtual {p0}, LSj;->b()Ldq;

    move-result-object p2

    new-instance p3, LLj;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p5}, LLj;-><init>(LOj;Lal;)V

    .line 8
    invoke-static {p1}, LTs;->a(Landroid/content/Context;)LWs;

    move-result-object p1

    .line 9
    :try_start_0
    check-cast p1, LXs;

    .line 10
    invoke-virtual {p1}, LXr;->A()Landroid/os/Parcel;

    move-result-object p6

    .line 11
    invoke-static {p6, p4}, Lks;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 12
    invoke-static {p6, p2}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 13
    invoke-static {p6, p3}, Lks;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p2, 0x3

    .line 14
    invoke-virtual {p1, p2, p6}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljl;->a(Landroid/os/IBinder;)Lkl;

    move-result-object p2

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 17
    sget-object p1, LTs;->a:LJs;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "newCastSessionImpl"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    const-class p4, LWs;

    .line 18
    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    .line 19
    invoke-virtual {p1}, LJs;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Unable to call %s on %s."

    .line 20
    invoke-virtual {p1, p3, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    move-object p2, p5

    .line 21
    :goto_0
    iput-object p2, p0, LOj;->f:Lkl;

    return-void
.end method

.method public static synthetic a(LOj;I)V
    .locals 4

    .line 91
    iget-object p1, p0, LOj;->i:Lgs;

    .line 92
    iget-boolean v0, p1, Lgs;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 93
    iget-object p1, p0, LOj;->j:LHm;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, LHm;->b()V

    .line 95
    iput-object v1, p0, LOj;->j:LHm;

    .line 96
    :cond_0
    iput-object v1, p0, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    .line 97
    iget-object p1, p0, LOj;->k:Lok;

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1, v1}, Lok;->a(LHm;)V

    .line 99
    iput-object v1, p0, LOj;->k:Lok;

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 100
    iput-boolean p0, p1, Lgs;->k:Z

    .line 101
    iget-object v0, p1, Lgs;->g:Lok;

    if-eqz v0, :cond_3

    const-string v2, "Must be called from the main thread."

    .line 102
    invoke-static {v2}, Lxp;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, v0, Lok;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    iget-object v0, p1, Lgs;->c:Ldt;

    .line 105
    iget-object v0, v0, Ldt;->a:Lrb;

    invoke-virtual {v0, v1}, Lrb;->a(LS5;)V

    .line 106
    iget-object v0, p1, Lgs;->e:Let;

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {v0}, Let;->a()V

    .line 108
    :cond_4
    iget-object v0, p1, Lgs;->f:Let;

    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Let;->a()V

    .line 110
    :cond_5
    iget-object v0, p1, Lgs;->i:LS5;

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0, v1}, LI5;->a(Landroid/app/PendingIntent;)V

    .line 112
    iget-object v0, p1, Lgs;->i:LS5;

    invoke-virtual {v0, v1}, LS5;->a(LH5;)V

    .line 113
    iget-object v0, p1, Lgs;->i:LS5;

    .line 114
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 115
    new-instance v3, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {v3, v2}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, v0, LS5;->a:LI5;

    invoke-interface {v0, v3}, LI5;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 117
    invoke-virtual {p1, p0, v1}, Lgs;->a(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 118
    iget-object v0, p1, Lgs;->i:LS5;

    invoke-virtual {v0, p0}, LS5;->a(Z)V

    .line 119
    iget-object p0, p1, Lgs;->i:LS5;

    .line 120
    iget-object p0, p0, LS5;->a:LI5;

    invoke-interface {p0}, LI5;->b()V

    .line 121
    iput-object v1, p1, Lgs;->i:LS5;

    .line 122
    :cond_6
    iput-object v1, p1, Lgs;->g:Lok;

    .line 123
    iput-object v1, p1, Lgs;->h:Lcom/google/android/gms/cast/CastDevice;

    .line 124
    iput-object v1, p1, Lgs;->j:LH5;

    .line 125
    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)LJm;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 37
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, LOj;->j:LHm;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, LOj;->h:Lxj;

    check-cast v2, Lwj;

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, LSl;

    invoke-direct {v1, v0, p1, p2}, LSl;-><init>(LHm;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LHm;->a(LSm;)LSm;

    move-result-object p1

    return-object p1

    :cond_0
    throw v1

    :cond_1
    return-object v1
.end method

.method public a(D)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    sget-object v1, LIs;->a:Lxm;

    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    invoke-virtual {v0, p1, p2}, Lss;->a(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "Unable to call %s on %s."

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p1

    iput-object p1, p0, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_4

    const-string p1, "Must be called from the main thread."

    .line 41
    invoke-static {p1}, Lxp;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 42
    :try_start_0
    iget-object v3, p0, LSj;->a:Lsl;

    check-cast v3, Ltl;

    .line 43
    invoke-virtual {v3}, LXr;->A()Landroid/os/Parcel;

    move-result-object v4

    const/16 v5, 0x9

    .line 44
    invoke-virtual {v3, v5, v4}, LXr;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v3

    .line 45
    invoke-static {v3}, Lks;->a(Landroid/os/Parcel;)Z

    move-result v4

    .line 46
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 47
    sget-object v3, LSj;->c:LJs;

    new-array v4, p1, [Ljava/lang/Object;

    const-string v5, "isResuming"

    aput-object v5, v4, v1

    const-class v5, Lsl;

    .line 48
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 49
    invoke-virtual {v3}, LJs;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v3, v0, v4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v3, 0x8

    if-eqz v4, :cond_2

    .line 51
    :try_start_1
    iget-object v4, p0, LSj;->a:Lsl;

    check-cast v4, Ltl;

    .line 52
    invoke-virtual {v4}, LXr;->A()Landroid/os/Parcel;

    move-result-object v5

    .line 53
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0xf

    .line 54
    invoke-virtual {v4, v3, v5}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 55
    sget-object v3, LSj;->c:LJs;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "notifyFailedToResumeSession"

    aput-object v4, p1, v1

    const-class v1, Lsl;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 57
    invoke-virtual {v3}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v3, v0, p1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    .line 59
    :cond_2
    :try_start_2
    iget-object v4, p0, LSj;->a:Lsl;

    check-cast v4, Ltl;

    .line 60
    invoke-virtual {v4}, LXr;->A()Landroid/os/Parcel;

    move-result-object v5

    .line 61
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0xc

    .line 62
    invoke-virtual {v4, v3, v5}, LXr;->b(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 63
    sget-object v3, LSj;->c:LJs;

    new-array p1, p1, [Ljava/lang/Object;

    const-string v4, "notifyFailedToStartSession"

    aput-object v4, p1, v1

    const-class v1, Lsl;

    .line 64
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v2

    .line 65
    invoke-virtual {v3}, LJs;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-virtual {v3, v0, p1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    :goto_2
    return-void

    .line 67
    :cond_4
    iget-object p1, p0, LOj;->j:LHm;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p1}, LHm;->b()V

    .line 69
    iput-object v0, p0, LOj;->j:LHm;

    .line 70
    :cond_5
    sget-object p1, LOj;->n:LJs;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    aput-object v3, v2, v1

    .line 71
    invoke-virtual {p1}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Acquiring a connection to Google Play Services for %s"

    .line 72
    invoke-virtual {p1, v3, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    :cond_6
    new-instance p1, LNj;

    invoke-direct {p1, p0, v0}, LNj;-><init>(LOj;Lal;)V

    .line 74
    iget-object v2, p0, LOj;->d:Landroid/content/Context;

    iget-object v3, p0, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    new-instance v4, LMj;

    invoke-direct {v4, p0, v0}, LMj;-><init>(LOj;Lal;)V

    .line 75
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 76
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 77
    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    new-instance v1, LEm;

    invoke-direct {v1, v2}, LEm;-><init>(Landroid/content/Context;)V

    sget-object v2, LDj;->b:Lym;

    new-instance v6, Lyj;

    invoke-direct {v6, v3, v4}, Lyj;-><init>(Lcom/google/android/gms/cast/CastDevice;LAj;)V

    .line 79
    iput-object v5, v6, Lyj;->d:Landroid/os/Bundle;

    .line 80
    new-instance v3, Lzj;

    invoke-direct {v3, v6, v0}, Lzj;-><init>(Lyj;LRl;)V

    const-string v4, "Api must not be null"

    .line 81
    invoke-static {v2, v4}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Null options are not permitted for this Api"

    invoke-static {v3, v4}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, LEm;->g:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v2, v2, Lym;->a:Lom;

    if-eqz v2, :cond_7

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 84
    iget-object v2, v1, LEm;->b:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, LEm;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, "Listener must not be null"

    .line 85
    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, LEm;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, LEm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v1}, LEm;->a()LHm;

    move-result-object p1

    .line 88
    iput-object p1, p0, LOj;->j:LHm;

    .line 89
    invoke-virtual {p1}, LHm;->a()V

    return-void

    .line 90
    :cond_7
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 29
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    .line 31
    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 32
    :try_start_0
    sget-object v1, LIs;->a:Lxm;

    .line 33
    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 34
    invoke-virtual {v0, p1}, Lss;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "service error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 36
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;LBj;)V
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 21
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    .line 23
    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 24
    :try_start_0
    sget-object v1, LIs;->a:Lxm;

    .line 25
    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 26
    invoke-virtual {v0, p1, p2}, Lss;->a(Ljava/lang/String;LBj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "service error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 28
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    const-string v0, "Must be called from the main thread."

    .line 7
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 10
    :try_start_0
    sget-object v1, LIs;->a:Lxm;

    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, LCs;

    .line 12
    invoke-virtual {v0}, Lss;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iget-wide v2, v0, Lss;->P:D

    iget-boolean v0, v0, Lss;->L:Z

    check-cast v1, LDs;

    .line 14
    invoke-virtual {v1}, LXr;->A()Landroid/os/Parcel;

    move-result-object v4

    .line 15
    invoke-static {v4, p1}, Lks;->a(Landroid/os/Parcel;Z)V

    .line 16
    invoke-virtual {v4, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 17
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x8

    .line 18
    invoke-virtual {v1, p1, v4}, LXr;->c(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "service error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const/4 p1, 0x0

    .line 20
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 3

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->j:LHm;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, LOj;->h:Lxj;

    check-cast v2, Lwj;

    if-eqz v2, :cond_0

    .line 3
    sget-object v1, LIs;->a:Lxm;

    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 5
    iget-object v0, v0, Lss;->D:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0

    .line 6
    :cond_0
    throw v1

    :cond_1
    return-object v1
.end method

.method public d()Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->l:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method public e()Lok;
    .locals 1

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->k:Lok;

    return-object v0
.end method

.method public f()D
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, LIs;->a:Lxm;

    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 5
    iget-wide v0, v0, Lss;->P:D

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public g()Z
    .locals 2

    const-string v0, "Must be called from the main thread."

    .line 1
    invoke-static {v0}, Lxp;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, LOj;->j:LHm;

    if-eqz v0, :cond_1

    iget-object v1, p0, LOj;->h:Lxj;

    check-cast v1, Lwj;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, LIs;->a:Lxm;

    invoke-virtual {v0, v1}, LHm;->a(Lqm;)Lwm;

    move-result-object v0

    check-cast v0, Lss;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 5
    iget-boolean v0, v0, Lss;->L:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
