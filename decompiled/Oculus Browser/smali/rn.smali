.class public final Lrn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LLn;


# instance fields
.field public final a:LMn;

.field public b:Z


# direct methods
.method public constructor <init>(LMn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrn;->b:Z

    iput-object p1, p0, Lrn;->a:LMn;

    return-void
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lrn;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    iget-object v0, v0, LGn;->y:Lio;

    .line 1
    iget-object v1, v0, Lio;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lio;->b:Lko;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lrn;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    .line 4
    iget-object v1, p1, LSm;->p:Lqm;

    .line 5
    iget-object v0, v0, LGn;->p:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwm;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lrn;->a:LMn;

    iget-object v1, v1, LMn;->g:Ljava/util/Map;

    .line 6
    iget-object v2, p1, LSm;->p:Lqm;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, LSm;->b(Lpm;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lrn;->a:LMn;

    new-instance v1, Lsn;

    invoke-direct {v1, p0, p0}, Lsn;-><init>(Lrn;LLn;)V

    .line 8
    iget-object v2, v0, LMn;->e:LOn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, LMn;->e:LOn;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-object p1
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lrn;->a:LMn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LMn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lrn;->a:LMn;

    iget-object v0, v0, LMn;->n:LZn;

    iget-boolean v1, p0, Lrn;->b:Z

    invoke-interface {v0, p1, v1}, LZn;->a(IZ)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 4

    iget-boolean v0, p0, Lrn;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrn;->b:Z

    iget-object v0, p0, Lrn;->a:LMn;

    new-instance v1, Ltn;

    invoke-direct {v1, p0, p0}, Ltn;-><init>(Lrn;LLn;)V

    .line 1
    iget-object v2, v0, LMn;->e:LOn;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, LMn;->e:LOn;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final disconnect()Z
    .locals 4

    iget-boolean v0, p0, Lrn;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lrn;->a:LMn;

    iget-object v0, v0, LMn;->m:LGn;

    .line 1
    iget-object v2, v0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v2, v0, LGn;->x:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v0, v0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v0, LGn;->x:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v2, v3

    iget-object v0, v0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_3

    .line 2
    iput-boolean v3, p0, Lrn;->b:Z

    iget-object v2, p0, Lrn;->a:LMn;

    iget-object v2, v2, LMn;->m:LGn;

    iget-object v2, v2, LGn;->x:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lho;

    throw v0

    :cond_3
    iget-object v1, p0, Lrn;->a:LMn;

    invoke-virtual {v1, v0}, LMn;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return v3

    :catchall_0
    move-exception v1

    .line 3
    iget-object v0, v0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
