.class public final Lxo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZn;


# instance fields
.field public final synthetic a:Luo;


# direct methods
.method public synthetic constructor <init>(Luo;Lvo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxo;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Lxo;->a:Luo;

    .line 1
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lxo;->a:Luo;

    .line 3
    iget-boolean v0, v0, Luo;->k:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lxo;->a:Luo;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Luo;->k:Z

    .line 6
    iget-object v0, p0, Lxo;->a:Luo;

    .line 7
    iget-object v1, v0, Luo;->b:LGn;

    invoke-virtual {v1, p1, p2}, LGn;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, v0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object p1, p0, Lxo;->a:Luo;

    .line 9
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 10
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    iget-object p2, p0, Lxo;->a:Luo;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p2, Luo;->k:Z

    .line 12
    iget-object p2, p0, Lxo;->a:Luo;

    .line 13
    iget-object p2, p2, Luo;->c:LMn;

    .line 14
    invoke-virtual {p2, p1}, LMn;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lxo;->a:Luo;

    .line 15
    iget-object p2, p2, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 16
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lxo;->a:Luo;

    .line 17
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 18
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lxo;->a:Luo;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    .line 19
    iput-object v0, p1, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    iget-object p1, p0, Lxo;->a:Luo;

    invoke-static {p1}, Luo;->a(Luo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lxo;->a:Luo;

    .line 21
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 22
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lxo;->a:Luo;

    .line 23
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lxo;->a:Luo;

    .line 25
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lxo;->a:Luo;

    .line 27
    iput-object p1, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 28
    iget-object p1, p0, Lxo;->a:Luo;

    invoke-static {p1}, Luo;->a(Luo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lxo;->a:Luo;

    .line 29
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 30
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lxo;->a:Luo;

    .line 31
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
