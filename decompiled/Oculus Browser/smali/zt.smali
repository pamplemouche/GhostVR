.class public final Lzt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LIt;

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;LIt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzt;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzt;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzt;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzt;->f:Ljava/util/Map;

    iput-object p1, p0, Lzt;->b:Landroid/content/Context;

    iput-object p2, p0, Lzt;->a:LIt;

    return-void
.end method


# virtual methods
.method public final a(Lgn;)LCt;
    .locals 3

    iget-object v0, p0, Lzt;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzt;->d:Ljava/util/Map;

    .line 5
    iget-object v2, p1, Lgn;->c:Ldn;

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LCt;

    if-nez v1, :cond_0

    new-instance v1, LCt;

    invoke-direct {v1, p1}, LCt;-><init>(Lgn;)V

    :cond_0
    iget-object v2, p0, Lzt;->d:Ljava/util/Map;

    .line 7
    iget-object p1, p1, Lgn;->c:Ldn;

    .line 8
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lzt;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzt;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCt;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lzt;->a:LIt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    check-cast v4, LLt;

    :try_start_1
    invoke-virtual {v4}, LLt;->a()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lxt;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzbf;->a(LCu;Lut;)Lcom/google/android/gms/internal/location/zzbf;

    move-result-object v2

    check-cast v4, Lyt;

    .line 1
    invoke-virtual {v4}, Lqt;->A()Landroid/os/Parcel;

    move-result-object v3

    invoke-static {v3, v2}, LJt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 v2, 0x3b

    invoke-virtual {v4, v2, v3}, Lqt;->a(ILandroid/os/Parcel;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Lzt;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lzt;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lzt;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LAt;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lzt;->a:LIt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    check-cast v0, LLt;

    :try_start_3
    invoke-virtual {v0}, LLt;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lxt;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/location/zzbf;

    throw v3

    .line 4
    :cond_3
    iget-object v0, p0, Lzt;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lzt;->e:Ljava/util/Map;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lzt;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LBt;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lzt;->a:LIt;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    check-cast v1, LLt;

    :try_start_5
    invoke-virtual {v1}, LLt;->a()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lxt;

    new-instance v1, Lcom/google/android/gms/internal/location/zzo;

    throw v3

    :cond_5
    iget-object v1, p0, Lzt;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public final a(Lcom/google/android/gms/location/LocationRequest;Lgn;Lut;)V
    .locals 10

    iget-object v0, p0, Lzt;->a:LIt;

    check-cast v0, LLt;

    .line 14
    iget-object v0, v0, LLt;->a:LKt;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 16
    invoke-virtual {p0, p2}, Lzt;->a(Lgn;)LCt;

    move-result-object p2

    iget-object v0, p0, Lzt;->a:LIt;

    check-cast v0, LLt;

    invoke-virtual {v0}, LLt;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lxt;

    .line 17
    new-instance v9, Lcom/google/android/gms/internal/location/zzbd;

    sget-object v3, Lcom/google/android/gms/internal/location/zzbd;->D:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/location/zzbd;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;)V

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/location/zzbf;

    const/4 v2, 0x1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    move-object v1, p1

    move-object v3, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/location/zzbf;-><init>(ILcom/google/android/gms/internal/location/zzbd;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    check-cast v0, Lyt;

    .line 19
    invoke-virtual {v0}, Lqt;->A()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, LJt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {v0, p1, p2}, Lqt;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a(Ldn;Lut;)V
    .locals 2

    iget-object v0, p0, Lzt;->a:LIt;

    check-cast v0, LLt;

    .line 9
    iget-object v0, v0, LLt;->a:LKt;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    const-string v0, "Invalid null listener key"

    .line 11
    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzt;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lzt;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCt;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LCt;->A()V

    iget-object v1, p0, Lzt;->a:LIt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, LLt;

    :try_start_1
    invoke-virtual {v1}, LLt;->a()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lxt;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/location/zzbf;->a(LCu;Lut;)Lcom/google/android/gms/internal/location/zzbf;

    move-result-object p1

    check-cast v1, Lyt;

    .line 12
    invoke-virtual {v1}, Lqt;->A()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, LJt;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3b

    invoke-virtual {v1, p1, p2}, Lqt;->a(ILandroid/os/Parcel;)V

    .line 13
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

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lzt;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lzt;->a:LIt;

    check-cast v1, LLt;

    .line 2
    iget-object v1, v1, LLt;->a:LKt;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 4
    iget-object v1, p0, Lzt;->a:LIt;

    check-cast v1, LLt;

    invoke-virtual {v1}, LLt;->a()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lxt;

    check-cast v1, Lyt;

    .line 5
    invoke-virtual {v1}, Lqt;->A()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {v2, v0}, LJt;->a(Landroid/os/Parcel;Z)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Lqt;->a(ILandroid/os/Parcel;)V

    .line 6
    iput-boolean v0, p0, Lzt;->c:Z

    :cond_0
    return-void
.end method
