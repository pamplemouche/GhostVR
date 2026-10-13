.class public final LMo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:I

.field public final synthetic b:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    iput-object p1, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LMo;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object p1, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->x:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/Handler;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->z:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 v1, 0x10

    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 2
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p2}, Lsp;->a(Landroid/os/IBinder;)Ltp;

    move-result-object p2

    .line 4
    iput-object p2, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:Ltp;

    .line 5
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget v1, p0, LMo;->a:I

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/Handler;

    new-instance v3, LPo;

    invoke-direct {v3, p1, p2, v0}, LPo;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 p2, -0x1

    invoke-virtual {v2, p1, v1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p2

    .line 7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->l:Ljava/lang/Object;

    .line 2
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->m:Ltp;

    .line 4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMo;->b:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->j:Landroid/os/Handler;

    const/4 v0, 0x6

    iget v1, p0, LMo;->a:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
