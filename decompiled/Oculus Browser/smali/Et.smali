.class public final LEt;
.super LKt;
.source "PG"


# instance fields
.field public final F:Lzt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;LFm;LGm;Ljava/lang/String;LVo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, LKt;-><init>(Landroid/content/Context;Landroid/os/Looper;LFm;LGm;Ljava/lang/String;LVo;)V

    new-instance p2, Lzt;

    iget-object p3, p0, LKt;->E:LIt;

    invoke-direct {p2, p1, p3}, Lzt;-><init>(Landroid/content/Context;LIt;)V

    iput-object p2, p0, LEt;->F:Lzt;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/LocationRequest;Lgn;Lut;)V
    .locals 2

    iget-object v0, p0, LEt;->F:Lzt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LEt;->F:Lzt;

    invoke-virtual {v1, p1, p2, p3}, Lzt;->a(Lcom/google/android/gms/location/LocationRequest;Lgn;Lut;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final disconnect()V
    .locals 4

    iget-object v0, p0, LEt;->F:Lzt;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, LEt;->F:Lzt;

    invoke-virtual {v1}, Lzt;->a()V

    iget-object v1, p0, LEt;->F:Lzt;

    invoke-virtual {v1}, Lzt;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final m()Landroid/location/Location;
    .locals 5

    iget-object v0, p0, LEt;->F:Lzt;

    .line 1
    iget-object v1, v0, Lzt;->a:LIt;

    check-cast v1, LLt;

    .line 2
    iget-object v1, v1, LLt;->a:LKt;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->c()V

    .line 4
    iget-object v1, v0, Lzt;->a:LIt;

    check-cast v1, LLt;

    invoke-virtual {v1}, LLt;->a()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lxt;

    iget-object v0, v0, Lzt;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Lyt;

    .line 5
    invoke-virtual {v1}, Lqt;->A()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v1, v1, Lqt;->a:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/16 v4, 0x15

    invoke-interface {v1, v4, v2, v0, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 7
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, LJt;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
