.class public final Lwo;
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
    iput-object p1, p0, Lwo;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, Lwo;->a:Luo;

    .line 1
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lwo;->a:Luo;

    .line 3
    iget-boolean v0, v0, Luo;->k:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lwo;->a:Luo;

    .line 5
    iget-object v0, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lwo;->a:Luo;

    .line 7
    iget-object v0, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lwo;->a:Luo;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p2, Luo;->k:Z

    .line 10
    iget-object p2, p0, Lwo;->a:Luo;

    .line 11
    iget-object p2, p2, Luo;->d:LMn;

    .line 12
    invoke-virtual {p2, p1}, LMn;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lwo;->a:Luo;

    .line 13
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 14
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lwo;->a:Luo;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Luo;->k:Z

    .line 16
    iget-object v0, p0, Lwo;->a:Luo;

    .line 17
    iget-object v1, v0, Luo;->b:LGn;

    invoke-virtual {v1, p1, p2}, LGn;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, v0, Luo;->j:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, v0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    iget-object p2, p0, Lwo;->a:Luo;

    .line 19
    iget-object p2, p2, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lwo;->a:Luo;

    .line 21
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lwo;->a:Luo;

    .line 23
    iget-object v1, v0, Luo;->h:Landroid/os/Bundle;

    if-nez v1, :cond_0

    iput-object p1, v0, Luo;->h:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 24
    :cond_1
    :goto_0
    iget-object p1, p0, Lwo;->a:Luo;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->A:Lcom/google/android/gms/common/ConnectionResult;

    .line 25
    iput-object v0, p1, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    .line 26
    iget-object p1, p0, Lwo;->a:Luo;

    invoke-static {p1}, Luo;->a(Luo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lwo;->a:Luo;

    .line 27
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 28
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lwo;->a:Luo;

    .line 29
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lwo;->a:Luo;

    .line 31
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 32
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lwo;->a:Luo;

    .line 33
    iput-object p1, v0, Luo;->i:Lcom/google/android/gms/common/ConnectionResult;

    .line 34
    iget-object p1, p0, Lwo;->a:Luo;

    invoke-static {p1}, Luo;->a(Luo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lwo;->a:Luo;

    .line 35
    iget-object p1, p1, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 36
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lwo;->a:Luo;

    .line 37
    iget-object v0, v0, Luo;->l:Ljava/util/concurrent/locks/Lock;

    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
