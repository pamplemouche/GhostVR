.class public final LMn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYn;
.implements Lto;


# instance fields
.field public final a:Ljava/util/concurrent/locks/Lock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public final c:Landroid/content/Context;

.field public final d:Lem;

.field public final e:LOn;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public final h:LVo;

.field public final i:Ljava/util/Map;

.field public final j:Lom;

.field public volatile k:LLn;

.field public l:I

.field public final m:LGn;

.field public final n:LZn;


# direct methods
.method public constructor <init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LZn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LMn;->g:Ljava/util/Map;

    iput-object p1, p0, LMn;->c:Landroid/content/Context;

    iput-object p3, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, LMn;->d:Lem;

    iput-object p6, p0, LMn;->f:Ljava/util/Map;

    iput-object p7, p0, LMn;->h:LVo;

    iput-object p8, p0, LMn;->i:Ljava/util/Map;

    iput-object p9, p0, LMn;->j:Lom;

    iput-object p2, p0, LMn;->m:LGn;

    iput-object p11, p0, LMn;->n:LZn;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-virtual {p10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Lso;

    .line 1
    iput-object p0, p5, Lso;->c:Lto;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, LOn;

    invoke-direct {p1, p0, p4}, LOn;-><init>(LMn;Landroid/os/Looper;)V

    iput-object p1, p0, LMn;->e:LOn;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, LMn;->b:Ljava/util/concurrent/locks/Condition;

    new-instance p1, LFn;

    invoke-direct {p1, p0}, LFn;-><init>(LMn;)V

    iput-object p1, p0, LMn;->k:LLn;

    return-void
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0, p1}, LLn;->a(LSm;)LSm;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0, p1}, LLn;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0, p1}, LLn;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object p1, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance p1, LFn;

    invoke-direct {p1, p0}, LFn;-><init>(LMn;)V

    iput-object p1, p0, LMn;->k:LLn;

    iget-object p1, p0, LMn;->k:LLn;

    invoke-interface {p1}, LLn;->c()V

    iget-object p1, p0, LMn;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    .locals 1

    iget-object v0, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0, p1, p2, p3}, LLn;->a(Lcom/google/android/gms/common/ConnectionResult;Lym;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, LMn;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, LMn;->k:LLn;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v1, p0, LMn;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lym;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 1
    iget-object v4, v2, Lym;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, LMn;->f:Ljava/util/Map;

    invoke-virtual {v2}, Lym;->a()Lqm;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwm;

    check-cast v2, Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, LMn;->k:LLn;

    instance-of v0, v0, Lrn;

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0}, LLn;->b()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, LMn;->k:LLn;

    invoke-interface {v0}, LLn;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMn;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method
