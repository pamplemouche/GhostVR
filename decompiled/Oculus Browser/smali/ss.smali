.class public final Lss;
.super Lap;
.source "PG"


# static fields
.field public static final a0:LJs;

.field public static final b0:Ljava/lang/Object;

.field public static final c0:Ljava/lang/Object;


# instance fields
.field public D:Lcom/google/android/gms/cast/ApplicationMetadata;

.field public final E:Lcom/google/android/gms/cast/CastDevice;

.field public final F:LAj;

.field public final G:Ljava/util/Map;

.field public final H:J

.field public final I:Landroid/os/Bundle;

.field public J:Lus;

.field public K:Ljava/lang/String;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:D

.field public Q:Lcom/google/android/gms/cast/zzad;

.field public R:I

.field public S:I

.field public final T:Ljava/util/concurrent/atomic/AtomicLong;

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Landroid/os/Bundle;

.field public final X:Ljava/util/Map;

.field public Y:LTm;

.field public Z:LTm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lss;->a0:LJs;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lss;->b0:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lss;->c0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LVo;Lcom/google/android/gms/cast/CastDevice;JLAj;Landroid/os/Bundle;LFm;LGm;)V
    .locals 8

    move-object v7, p0

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    .line 1
    invoke-direct/range {v0 .. v6}, Lap;-><init>(Landroid/content/Context;Landroid/os/Looper;ILVo;LFm;LGm;)V

    move-object v0, p4

    .line 2
    iput-object v0, v7, Lss;->E:Lcom/google/android/gms/cast/CastDevice;

    move-object v0, p7

    .line 3
    iput-object v0, v7, Lss;->F:LAj;

    move-wide v0, p5

    .line 4
    iput-wide v0, v7, Lss;->H:J

    move-object/from16 v0, p8

    .line 5
    iput-object v0, v7, Lss;->I:Landroid/os/Bundle;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lss;->G:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v7, Lss;->T:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lss;->X:Ljava/util/Map;

    .line 9
    invoke-virtual {p0}, Lss;->m()V

    return-void
.end method

.method public static synthetic a(Lss;Lcom/google/android/gms/internal/cast/zzcd;)V
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzcd;->w:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lss;->K:Ljava/lang/String;

    invoke-static {p1, v0}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lss;->K:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    sget-object v0, Lss;->a0:LJs;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    iget-boolean v4, p0, Lss;->M:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    .line 6
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 7
    invoke-virtual {v0, v2, v3}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    :cond_1
    iget-object v0, p0, Lss;->F:LAj;

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lss;->M:Z

    if-eqz p1, :cond_3

    .line 9
    :cond_2
    iget-object p1, p0, Lss;->F:LAj;

    invoke-virtual {p1}, LAj;->a()V

    .line 10
    :cond_3
    iput-boolean v1, p0, Lss;->M:Z

    return-void

    :cond_4
    const/4 p0, 0x0

    .line 11
    throw p0
.end method

.method public static synthetic a(Lss;Lcom/google/android/gms/internal/cast/zzcv;)V
    .locals 9

    if-eqz p0, :cond_f

    .line 12
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/zzcv;->z:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 13
    iget-object v1, p0, Lss;->D:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-static {v0, v1}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iput-object v0, p0, Lss;->D:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 15
    iget-object v1, p0, Lss;->F:LAj;

    invoke-virtual {v1, v0}, LAj;->a(Lcom/google/android/gms/cast/ApplicationMetadata;)V

    .line 16
    :cond_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/cast/zzcv;->w:D

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-wide v5, p0, Lss;->P:D

    sub-double v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, v5, v7

    if-lez v2, :cond_1

    .line 18
    iput-wide v0, p0, Lss;->P:D

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/cast/zzcv;->x:Z

    .line 20
    iget-boolean v2, p0, Lss;->L:Z

    if-eq v1, v2, :cond_2

    .line 21
    iput-boolean v1, p0, Lss;->L:Z

    const/4 v0, 0x1

    .line 22
    :cond_2
    sget-object v1, Lss;->a0:LJs;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    iget-boolean v6, p0, Lss;->N:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 24
    invoke-virtual {v1}, LJs;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 25
    invoke-virtual {v1, v6, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    :cond_3
    iget-object v1, p0, Lss;->F:LAj;

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lss;->N:Z

    if-eqz v0, :cond_5

    .line 27
    :cond_4
    iget-object v0, p0, Lss;->F:LAj;

    invoke-virtual {v0}, LAj;->b()V

    .line 28
    :cond_5
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzcv;->y:I

    .line 29
    iget v1, p0, Lss;->R:I

    if-eq v0, v1, :cond_6

    .line 30
    iput v0, p0, Lss;->R:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 31
    :goto_1
    sget-object v1, Lss;->a0:LJs;

    new-array v5, v2, [Ljava/lang/Object;

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    iget-boolean v6, p0, Lss;->N:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v4

    .line 33
    invoke-virtual {v1}, LJs;->a()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 34
    invoke-virtual {v1, v6, v5}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    :cond_7
    iget-object v1, p0, Lss;->F:LAj;

    if-eqz v1, :cond_9

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lss;->N:Z

    if-eqz v0, :cond_9

    .line 36
    :cond_8
    iget-object v0, p0, Lss;->F:LAj;

    iget v1, p0, Lss;->R:I

    invoke-virtual {v0, v1}, LAj;->a(I)V

    .line 37
    :cond_9
    iget v0, p1, Lcom/google/android/gms/internal/cast/zzcv;->A:I

    .line 38
    iget v1, p0, Lss;->S:I

    if-eq v0, v1, :cond_a

    .line 39
    iput v0, p0, Lss;->S:I

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    .line 40
    :goto_2
    sget-object v1, Lss;->a0:LJs;

    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    iget-boolean v5, p0, Lss;->N:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 42
    invoke-virtual {v1}, LJs;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 43
    invoke-virtual {v1, v4, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    :cond_b
    iget-object v1, p0, Lss;->F:LAj;

    if-eqz v1, :cond_d

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lss;->N:Z

    if-eqz v0, :cond_d

    .line 45
    :cond_c
    iget-object v0, p0, Lss;->F:LAj;

    iget v1, p0, Lss;->S:I

    invoke-virtual {v0, v1}, LAj;->c(I)V

    .line 46
    :cond_d
    iget-object v0, p0, Lss;->Q:Lcom/google/android/gms/cast/zzad;

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    .line 48
    invoke-static {v0, v1}, Lzs;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 49
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzcv;->B:Lcom/google/android/gms/cast/zzad;

    .line 50
    iput-object p1, p0, Lss;->Q:Lcom/google/android/gms/cast/zzad;

    .line 51
    :cond_e
    iput-boolean v3, p0, Lss;->N:Z

    return-void

    :cond_f
    const/4 p0, 0x0

    .line 52
    throw p0
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    .line 139
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    instance-of v1, v0, LCs;

    if-eqz v1, :cond_1

    .line 141
    check-cast v0, LCs;

    return-object v0

    .line 142
    :cond_1
    new-instance v0, LDs;

    invoke-direct {v0, p1}, LDs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final a(D)V
    .locals 5

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LCs;

    .line 90
    invoke-virtual {p0}, Lss;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-wide v1, p0, Lss;->P:D

    iget-boolean v3, p0, Lss;->L:Z

    check-cast v0, LDs;

    .line 92
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v4

    .line 93
    invoke-virtual {v4, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    invoke-virtual {v4, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    invoke-static {v4, v3}, Lks;->a(Landroid/os/Parcel;Z)V

    const/4 p1, 0x7

    .line 96
    invoke-virtual {v0, p1, v4}, LXr;->c(ILandroid/os/Parcel;)V

    :cond_0
    return-void

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Volume cannot be "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 6

    .line 132
    sget-object v0, Lss;->b0:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lss;->Y:LTm;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lss;->Y:LTm;

    new-instance v2, Lts;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-direct {v3, v4, p1, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 136
    invoke-direct {v2, v3}, Lts;-><init>(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, LSm;

    :try_start_1
    invoke-virtual {v1, v2}, LSm;->a(Ljava/lang/Object;)V

    .line 137
    iput-object v5, p0, Lss;->Y:LTm;

    .line 138
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    .line 53
    sget-object v0, Lss;->a0:LJs;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    invoke-virtual {v0}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "in onPostInitHandler; statusCode=%d"

    .line 55
    invoke-virtual {v0, v3, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    const/16 v0, 0x3e9

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iput-boolean v4, p0, Lss;->O:Z

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lss;->O:Z

    .line 58
    iput-boolean v1, p0, Lss;->M:Z

    .line 59
    iput-boolean v1, p0, Lss;->N:Z

    :goto_1
    if-ne p1, v0, :cond_3

    .line 60
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lss;->W:Landroid/os/Bundle;

    const-string v0, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 62
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final a(JI)V
    .locals 2

    .line 125
    iget-object v0, p0, Lss;->X:Ljava/util/Map;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lss;->X:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LTm;

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 128
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p2, v0, p3, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 130
    check-cast p1, LSm;

    invoke-virtual {p1, p2}, LSm;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(LTm;)V
    .locals 5

    .line 83
    sget-object v0, Lss;->b0:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lss;->Y:LTm;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lss;->Y:LTm;

    new-instance v2, Lts;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lts;-><init>(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, LSm;

    :try_start_1
    invoke-virtual {v1, v2}, LSm;->a(Ljava/lang/Object;)V

    .line 86
    :cond_0
    iput-object p1, p0, Lss;->Y:LTm;

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 124
    invoke-virtual {p0}, Lss;->n()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lss;->G:Ljava/util/Map;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lss;->G:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LBj;

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 114
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LCs;

    check-cast v0, LDs;

    .line 115
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 116
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v2, 0xc

    .line 117
    invoke-virtual {v0, v2, v1}, LXr;->c(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lss;->a0:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 119
    invoke-virtual {v1}, LJs;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Error unregistering namespace (%s): %s"

    .line 120
    invoke-virtual {v1, p1, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 122
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Channel namespace cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;LBj;)V
    .locals 2

    .line 98
    invoke-static {p1}, Lzs;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lss;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 100
    iget-object v0, p0, Lss;->G:Ljava/util/Map;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lss;->G:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, LCs;

    .line 104
    invoke-virtual {p0}, Lss;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    check-cast p2, LDs;

    .line 106
    invoke-virtual {p2}, LXr;->A()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0xb

    .line 108
    invoke-virtual {p2, p1, v0}, LXr;->c(ILandroid/os/Parcel;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;LTm;)V
    .locals 4

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-gt v0, v1, :cond_1

    .line 65
    invoke-static {p1}, Lzs;->a(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lss;->T:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 67
    :try_start_0
    iget-object v2, p0, Lss;->X:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, LCs;

    .line 69
    invoke-virtual {p0}, Lss;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    check-cast p3, LDs;

    .line 71
    invoke-virtual {p3}, LXr;->A()Landroid/os/Parcel;

    move-result-object v2

    .line 72
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x9

    .line 75
    invoke-virtual {p3, p1, v2}, LXr;->c(ILandroid/os/Parcel;)V

    return-void

    :cond_0
    const/16 p1, 0x7e0

    .line 76
    invoke-virtual {p0, v0, v1, p1}, Lss;->a(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 77
    iget-object p2, p0, Lss;->X:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    throw p1

    .line 79
    :cond_1
    sget-object p1, Lss;->a0:LJs;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 80
    iget-object p3, p1, LJs;->a:Ljava/lang/String;

    const-string v0, "Message send failed. Message exceeds maximum size"

    invoke-virtual {p1, v0, p2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message exceeds maximum size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message payload cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lss;->W:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lss;->W:Landroid/os/Bundle;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final b(I)V
    .locals 5

    .line 9
    sget-object v0, Lss;->c0:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lss;->Z:LTm;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lss;->Z:LTm;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 12
    invoke-direct {v2, v3, p1, v4, v4}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    check-cast v1, LSm;

    :try_start_1
    invoke-virtual {v1, v2}, LSm;->a(Ljava/lang/Object;)V

    .line 14
    iput-object v4, p0, Lss;->Z:LTm;

    .line 15
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(LTm;)V
    .locals 3

    .line 3
    sget-object v0, Lss;->c0:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lss;->Z:LTm;

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, LSm;

    :try_start_1
    invoke-virtual {p1, v1}, LSm;->a(Ljava/lang/Object;)V

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iput-object p1, p0, Lss;->Z:LTm;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final disconnect()V
    .locals 5

    .line 1
    sget-object v0, Lss;->a0:LJs;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lss;->J:Lus;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 2
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "disconnect(); ServiceListener=%s, isConnected=%b"

    .line 3
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lss;->J:Lus;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lss;->J:Lus;

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, v0, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lss;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lss;->m()V

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    invoke-virtual {p0}, Lss;->n()V

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, LCs;

    .line 10
    check-cast v0, LDs;

    .line 11
    invoke-virtual {v0}, LXr;->A()Landroid/os/Parcel;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v4, v1}, LXr;->c(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    :goto_1
    :try_start_1
    sget-object v1, Lss;->a0:LJs;

    const-string v2, "Error while disconnecting the controller interface: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 15
    invoke-virtual {v1}, LJs;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v1, v2, v4}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void

    .line 18
    :goto_2
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    throw v0

    .line 19
    :cond_4
    :goto_3
    sget-object v0, Lss;->a0:LJs;

    new-array v1, v3, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "already disposed, so short-circuiting"

    .line 21
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public final f()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lss;->a0:LJs;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lss;->U:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lss;->V:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3
    invoke-virtual {v1}, LJs;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s"

    .line 4
    invoke-virtual {v1, v3, v2}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v1, p0, Lss;->E:Lcom/google/android/gms/cast/CastDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v3, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 6
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    iget-wide v3, p0, Lss;->H:J

    const-string v1, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    iget-object v1, p0, Lss;->I:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    :cond_1
    new-instance v1, Lus;

    invoke-direct {v1, p0}, Lus;-><init>(Lss;)V

    iput-object v1, p0, Lss;->J:Lus;

    .line 11
    new-instance v1, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v3, p0, Lss;->J:Lus;

    if-eqz v3, :cond_3

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v2, "listener"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 12
    iget-object v1, p0, Lss;->U:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "last_application_id"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lss;->V:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "last_session_id"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 16
    :cond_3
    throw v2

    .line 17
    :cond_4
    throw v2
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method public final m()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lss;->O:Z

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lss;->R:I

    .line 3
    iput v1, p0, Lss;->S:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lss;->D:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 5
    iput-object v1, p0, Lss;->K:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lss;->P:D

    .line 7
    iput-boolean v0, p0, Lss;->L:Z

    .line 8
    iput-object v1, p0, Lss;->Q:Lcom/google/android/gms/cast/zzad;

    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    sget-object v0, Lss;->a0:LJs;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "removing all MessageReceivedCallbacks"

    .line 3
    invoke-virtual {v0, v2, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lss;->G:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lss;->G:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lss;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lss;->J:Lus;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lus;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method
