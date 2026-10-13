.class public final Lmo;
.super LIn;
.source "PG"


# instance fields
.field public final a:Lkn;

.field public final b:Lcv;

.field public final c:Ljn;


# direct methods
.method public constructor <init>(ILkn;Lcv;Ljn;)V
    .locals 0

    invoke-direct {p0, p1}, LIn;-><init>(I)V

    iput-object p3, p0, Lmo;->b:Lcv;

    iput-object p2, p0, Lmo;->a:Lkn;

    iput-object p4, p0, Lmo;->c:Ljn;

    return-void
.end method


# virtual methods
.method public final a(LVm;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lmo;->a:Lkn;

    .line 5
    iget-object p1, p1, LVm;->b:Lwm;

    .line 6
    iget-object v1, p0, Lmo;->b:Lcv;

    invoke-virtual {v0, p1, v1}, Lkn;->a(Lpm;Lcv;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lmo;->b:Lcv;

    .line 8
    iget-object v0, v0, Lcv;->a:Lsv;

    invoke-virtual {v0, p1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 9
    invoke-static {p1}, LIn;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmo;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lmo;->b:Lcv;

    iget-object v1, p0, Lmo;->c:Ljn;

    check-cast v1, LPm;

    if-eqz v1, :cond_2

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/common/api/Status;->z:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    new-instance v1, LKm;

    invoke-direct {v1, p1}, LKm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lzm;

    invoke-direct {v1, p1}, Lzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    :goto_1
    iget-object p1, v0, Lcv;->a:Lsv;

    invoke-virtual {p1, v1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final a(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Lmo;->b:Lcv;

    .line 16
    iget-object v0, v0, Lcv;->a:Lsv;

    invoke-virtual {v0, p1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final a(Lln;Z)V
    .locals 3

    iget-object v0, p0, Lmo;->b:Lcv;

    .line 10
    iget-object v1, p1, Lln;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p2, v0, Lcv;->a:Lsv;

    .line 12
    new-instance v1, Lnn;

    invoke-direct {v1, p1, v0}, Lnn;-><init>(Lln;Lcv;)V

    if-eqz p2, :cond_0

    .line 13
    sget-object p1, Lev;->a:Ljava/util/concurrent/Executor;

    .line 14
    iget-object v0, p2, Lsv;->b:Lqv;

    new-instance v2, Ljv;

    invoke-direct {v2, p1, v1}, Ljv;-><init>(Ljava/util/concurrent/Executor;LXu;)V

    invoke-virtual {v0, v2}, Lqv;->a(Lpv;)V

    invoke-virtual {p2}, Lsv;->e()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 15
    throw p1
.end method
