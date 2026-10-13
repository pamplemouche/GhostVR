.class public abstract Leo;
.super LIn;
.source "PG"


# instance fields
.field public final a:Lcv;


# direct methods
.method public constructor <init>(ILcv;)V
    .locals 0

    invoke-direct {p0, p1}, LIn;-><init>(I)V

    iput-object p2, p0, Leo;->a:Lcv;

    return-void
.end method


# virtual methods
.method public final a(LVm;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Leo;->b(LVm;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Leo;->a:Lcv;

    .line 3
    iget-object v0, v0, Lcv;->a:Lsv;

    invoke-virtual {v0, p1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, LIn;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 5
    iget-object v0, p0, Leo;->a:Lcv;

    new-instance v1, Lzm;

    invoke-direct {v1, p1}, Lzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 6
    iget-object p1, v0, Lcv;->a:Lsv;

    invoke-virtual {p1, v1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 7
    invoke-static {p1}, LIn;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 8
    iget-object v1, p0, Leo;->a:Lcv;

    new-instance v2, Lzm;

    invoke-direct {v2, v0}, Lzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 9
    iget-object v0, v1, Lcv;->a:Lsv;

    invoke-virtual {v0, v2}, Lsv;->b(Ljava/lang/Exception;)Z

    .line 10
    throw p1
.end method

.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Leo;->a:Lcv;

    new-instance v1, Lzm;

    invoke-direct {v1, p1}, Lzm;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 1
    iget-object p1, v0, Lcv;->a:Lsv;

    invoke-virtual {p1, v1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public a(Ljava/lang/RuntimeException;)V
    .locals 1

    iget-object v0, p0, Leo;->a:Lcv;

    .line 11
    iget-object v0, v0, Lcv;->a:Lsv;

    invoke-virtual {v0, p1}, Lsv;->b(Ljava/lang/Exception;)Z

    return-void
.end method

.method public abstract b(LVm;)V
.end method
