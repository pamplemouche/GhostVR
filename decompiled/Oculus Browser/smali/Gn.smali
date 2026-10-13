.class public final LGn;
.super LHm;
.source "PG"

# interfaces
.implements LZn;


# instance fields
.field public final b:Ljava/util/concurrent/locks/Lock;

.field public c:Z

.field public final d:Lcp;

.field public e:LYn;

.field public final f:I

.field public final g:Landroid/content/Context;

.field public final h:Landroid/os/Looper;

.field public final i:Ljava/util/Queue;

.field public volatile j:Z

.field public k:J

.field public l:J

.field public final m:LJn;

.field public final n:Ldm;

.field public o:Lan;

.field public final p:Ljava/util/Map;

.field public q:Ljava/util/Set;

.field public final r:LVo;

.field public final s:Ljava/util/Map;

.field public final t:Lom;

.field public final u:Lhn;

.field public final v:Ljava/util/ArrayList;

.field public w:Ljava/lang/Integer;

.field public x:Ljava/util/Set;

.field public final y:Lio;

.field public final z:Lbp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LVo;Ldm;Lom;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move/from16 v2, p11

    invoke-direct {p0}, LHm;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, LGn;->e:LYn;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v0, LGn;->i:Ljava/util/Queue;

    const-wide/32 v4, 0x1d4c0

    iput-wide v4, v0, LGn;->k:J

    const-wide/16 v4, 0x1388

    iput-wide v4, v0, LGn;->l:J

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, LGn;->q:Ljava/util/Set;

    new-instance v4, Lhn;

    invoke-direct {v4}, Lhn;-><init>()V

    iput-object v4, v0, LGn;->u:Lhn;

    iput-object v3, v0, LGn;->w:Ljava/lang/Integer;

    iput-object v3, v0, LGn;->x:Ljava/util/Set;

    new-instance v3, LHn;

    invoke-direct {v3, p0}, LHn;-><init>(LGn;)V

    iput-object v3, v0, LGn;->z:Lbp;

    move-object v4, p1

    iput-object v4, v0, LGn;->g:Landroid/content/Context;

    move-object v4, p2

    iput-object v4, v0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    const/4 v4, 0x0

    iput-boolean v4, v0, LGn;->c:Z

    new-instance v4, Lcp;

    invoke-direct {v4, p3, v3}, Lcp;-><init>(Landroid/os/Looper;Lbp;)V

    iput-object v4, v0, LGn;->d:Lcp;

    iput-object v1, v0, LGn;->h:Landroid/os/Looper;

    new-instance v3, LJn;

    invoke-direct {v3, p0, p3}, LJn;-><init>(LGn;Landroid/os/Looper;)V

    iput-object v3, v0, LGn;->m:LJn;

    move-object v1, p5

    iput-object v1, v0, LGn;->n:Ldm;

    iput v2, v0, LGn;->f:I

    if-ltz v2, :cond_0

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, LGn;->w:Ljava/lang/Integer;

    :cond_0
    move-object v1, p7

    iput-object v1, v0, LGn;->s:Ljava/util/Map;

    move-object/from16 v1, p10

    iput-object v1, v0, LGn;->p:Ljava/util/Map;

    move-object/from16 v1, p13

    iput-object v1, v0, LGn;->v:Ljava/util/ArrayList;

    new-instance v1, Lio;

    iget-object v2, v0, LGn;->p:Ljava/util/Map;

    invoke-direct {v1, v2}, Lio;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, LGn;->y:Lio;

    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFm;

    iget-object v3, v0, LGn;->d:Lcp;

    invoke-virtual {v3, v2}, Lcp;->a(LFm;)V

    goto :goto_0

    :cond_1
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LGm;

    iget-object v3, v0, LGn;->d:Lcp;

    invoke-virtual {v3, v2}, Lcp;->a(LGm;)V

    goto :goto_1

    :cond_2
    move-object v2, p4

    iput-object v2, v0, LGn;->r:LVo;

    move-object v1, p6

    iput-object v1, v0, LGn;->t:Lom;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Z)I
    .locals 2

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwm;

    invoke-interface {v0}, Lwm;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static synthetic a(LGn;)V
    .locals 1

    .line 8
    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, LGn;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LGn;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_1
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_2
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 4

    .line 1
    iget-object v0, p1, LSm;->p:Lqm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    .line 2
    invoke-static {v0, v1}, Lxp;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, LGn;->p:Ljava/util/Map;

    .line 3
    iget-object v1, p1, LSm;->p:Lqm;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 5
    iget-object v1, p1, LSm;->q:Lym;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lym;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "the API"

    :goto_1
    const/16 v2, 0x41

    .line 7
    invoke-static {v1, v2}, LZi;->a(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lxp;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LGn;->e:LYn;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LGn;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSm;

    iget-object v1, p0, LGn;->y:Lio;

    invoke-virtual {v1, v0}, Lio;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->B:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, LGn;->e:LYn;

    invoke-interface {v0, p1}, LYn;->a(LSm;)LSm;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Lqm;)Lwm;
    .locals 1

    iget-object v0, p0, LGn;->p:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwm;

    const-string v0, "Appropriate Api was not requested."

    invoke-static {p1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, LGn;->f:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, LGn;->w:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lxp;->b(ZLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LGn;->w:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, LGn;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, LGn;->a(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, LGn;->w:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, LGn;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :goto_0
    iget-object v0, p0, LGn;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LGn;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x21

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lxp;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, LGn;->b(I)V

    invoke-virtual {p0}, LGn;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(IZ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-nez p2, :cond_1

    iget-boolean p2, p0, LGn;->j:Z

    if-nez p2, :cond_1

    iput-boolean v1, p0, LGn;->j:Z

    iget-object p2, p0, LGn;->o:Lan;

    if-nez p2, :cond_0

    iget-object p2, p0, LGn;->n:Ldm;

    iget-object v2, p0, LGn;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LKn;

    invoke-direct {v3, p0}, LKn;-><init>(LGn;)V

    invoke-virtual {p2, v2, v3}, Ldm;->a(Landroid/content/Context;LZm;)Lan;

    move-result-object p2

    iput-object p2, p0, LGn;->o:Lan;

    :cond_0
    iget-object p2, p0, LGn;->m:LJn;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, LGn;->k:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p2, p0, LGn;->m:LJn;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, LGn;->l:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p2, p0, LGn;->y:Lio;

    .line 9
    iget-object p2, p2, Lio;->a:Ljava/util/Set;

    sget-object v1, Lio;->e:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    sget-object v4, Lio;->d:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(Lcom/google/android/gms/common/api/Status;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, LGn;->d:Lcp;

    invoke-virtual {p2, p1}, Lcp;->a(I)V

    iget-object p2, p0, LGn;->d:Lcp;

    invoke-virtual {p2}, Lcp;->a()V

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, LGn;->e()V

    :cond_3
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    :goto_0
    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSm;

    invoke-virtual {p0, v0}, LGn;->a(LSm;)LSm;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LGn;->d:Lcp;

    invoke-virtual {v0, p1}, Lcp;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, LGn;->n:Ldm;

    iget-object v1, p0, LGn;->g:Landroid/content/Context;

    .line 11
    iget v2, p1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    if-eqz v0, :cond_2

    .line 12
    invoke-static {v1, v2}, Lkm;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-virtual {p0}, LGn;->f()Z

    :cond_0
    iget-boolean v0, p0, LGn;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LGn;->d:Lcp;

    invoke-virtual {v0, p1}, Lcp;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, LGn;->d:Lcp;

    invoke-virtual {p1}, Lcp;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 14
    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, LGn;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, LGn;->j:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    iget-object v0, p0, LGn;->y:Lio;

    const-string v1, " mUnconsumedApiCalls.size()="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lio;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, p0, LGn;->e:LYn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, LYn;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LGn;->y:Lio;

    .line 1
    iget-object v1, v0, Lio;->a:Ljava/util/Set;

    sget-object v2, Lio;->e:[Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/common/api/internal/BasePendingResult;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 2
    iget-object v6, v5, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lio;->a:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, LGn;->e:LYn;

    if-eqz v0, :cond_2

    iget-object v0, p0, LGn;->e:LYn;

    invoke-interface {v0}, LYn;->disconnect()V

    :cond_2
    iget-object v0, p0, LGn;->u:Lhn;

    .line 5
    iget-object v1, v0, Lhn;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgn;

    .line 6
    iput-object v4, v2, Lgn;->b:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, v0, Lhn;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSm;

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, LGn;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, LGn;->e:LYn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :goto_3
    iget-object v0, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0}, LGn;->f()Z

    iget-object v0, p0, LGn;->d:Lcp;

    invoke-virtual {v0}, Lcp;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, LGn;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b(I)V
    .locals 20

    move-object/from16 v15, p0

    iget-object v0, v15, LGn;->w:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v15, LGn;->w:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v1, p1

    if-ne v0, v1, :cond_13

    :goto_0
    iget-object v0, v15, LGn;->e:LYn;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v15, LGn;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwm;

    invoke-interface {v3}, Lwm;->requiresSignIn()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, v15, LGn;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    goto/16 :goto_7

    :cond_4
    if-eqz v2, :cond_10

    iget-boolean v0, v15, LGn;->c:Z

    if-eqz v0, :cond_5

    new-instance v12, Lzo;

    iget-object v1, v15, LGn;->g:Landroid/content/Context;

    iget-object v2, v15, LGn;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v3, v15, LGn;->h:Landroid/os/Looper;

    iget-object v4, v15, LGn;->n:Ldm;

    iget-object v5, v15, LGn;->p:Ljava/util/Map;

    iget-object v6, v15, LGn;->r:LVo;

    iget-object v7, v15, LGn;->s:Ljava/util/Map;

    iget-object v8, v15, LGn;->t:Lom;

    iget-object v9, v15, LGn;->v:Ljava/util/ArrayList;

    const/4 v11, 0x1

    move-object v0, v12

    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v11}, Lzo;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LGn;Z)V

    :goto_2
    iput-object v12, v15, LGn;->e:LYn;

    return-void

    :cond_5
    iget-object v2, v15, LGn;->g:Landroid/content/Context;

    iget-object v3, v15, LGn;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v5, v15, LGn;->h:Landroid/os/Looper;

    iget-object v6, v15, LGn;->n:Ldm;

    iget-object v0, v15, LGn;->p:Ljava/util/Map;

    iget-object v8, v15, LGn;->r:LVo;

    iget-object v7, v15, LGn;->s:Ljava/util/Map;

    iget-object v9, v15, LGn;->t:Lom;

    iget-object v10, v15, LGn;->v:Ljava/util/ArrayList;

    .line 11
    new-instance v11, LJ6;

    invoke-direct {v11}, LJ6;-><init>()V

    new-instance v12, LJ6;

    invoke-direct {v12}, LJ6;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lwm;

    move-object/from16 v16, v14

    check-cast v16, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v16, :cond_7

    invoke-interface {v14}, Lwm;->requiresSignIn()Z

    move-result v16

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lqm;

    if-eqz v16, :cond_6

    invoke-virtual {v11, v13, v14}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v12, v13, v14}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_8
    invoke-virtual {v11}, Ld7;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    const-string v4, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v0, v4}, Lxp;->b(ZLjava/lang/Object;)V

    new-instance v14, LJ6;

    invoke-direct {v14}, LJ6;-><init>()V

    new-instance v4, LJ6;

    invoke-direct {v4}, LJ6;-><init>()V

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Lym;

    invoke-virtual {v1}, Lym;->a()Lqm;

    move-result-object v13

    invoke-virtual {v11, v13}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v14, v1, v13}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    invoke-virtual {v12, v13}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v4, v1, v13}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_e

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v1, v1, 0x1

    move/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, Lso;

    move/from16 v17, v1

    iget-object v1, v0, Lso;->a:Lym;

    invoke-virtual {v14, v1}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lso;->a:Lym;

    invoke-virtual {v4, v1}, Ld7;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    move/from16 v0, p1

    move/from16 v1, v17

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v10, Luo;

    move-object v0, v10

    move-object v1, v2

    move-object/from16 v2, p0

    move-object/from16 v17, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v11

    move-object/from16 v18, v7

    move-object v7, v12

    move-object v12, v10

    const/4 v10, 0x0

    move-object v11, v13

    move-object v13, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v13

    move-object v13, v14

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Luo;-><init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;Ljava/util/Map;LVo;Lom;Lwm;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    move-object/from16 v0, v19

    .line 14
    iput-object v0, v15, LGn;->e:LYn;

    return-void

    :cond_f
    if-eqz v2, :cond_12

    :cond_10
    :goto_7
    iget-boolean v0, v15, LGn;->c:Z

    if-eqz v0, :cond_11

    new-instance v12, Lzo;

    iget-object v1, v15, LGn;->g:Landroid/content/Context;

    iget-object v2, v15, LGn;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v3, v15, LGn;->h:Landroid/os/Looper;

    iget-object v4, v15, LGn;->n:Ldm;

    iget-object v5, v15, LGn;->p:Ljava/util/Map;

    iget-object v6, v15, LGn;->r:LVo;

    iget-object v7, v15, LGn;->s:Ljava/util/Map;

    iget-object v8, v15, LGn;->t:Lom;

    iget-object v9, v15, LGn;->v:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v11}, Lzo;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LGn;Z)V

    goto/16 :goto_2

    :cond_11
    new-instance v12, LMn;

    iget-object v1, v15, LGn;->g:Landroid/content/Context;

    iget-object v3, v15, LGn;->b:Ljava/util/concurrent/locks/Lock;

    iget-object v4, v15, LGn;->h:Landroid/os/Looper;

    iget-object v5, v15, LGn;->n:Ldm;

    iget-object v6, v15, LGn;->p:Ljava/util/Map;

    iget-object v7, v15, LGn;->r:LVo;

    iget-object v8, v15, LGn;->s:Ljava/util/Map;

    iget-object v9, v15, LGn;->t:Lom;

    iget-object v10, v15, LGn;->v:Ljava/util/ArrayList;

    move-object v0, v12

    move-object/from16 v2, p0

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v11}, LMn;-><init>(Landroid/content/Context;LGn;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LZn;)V

    goto/16 :goto_2

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static/range {p1 .. p1}, LGn;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, LGn;->w:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, LGn;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot use sign-in mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Mode was already set to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, LGn;->h:Landroid/os/Looper;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, LGn;->e:LYn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LYn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, LGn;->d:Lcp;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcp;->e:Z

    .line 2
    iget-object v0, p0, LGn;->e:LYn;

    invoke-interface {v0}, LYn;->b()V

    return-void
.end method

.method public final f()Z
    .locals 2

    iget-boolean v0, p0, LGn;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, LGn;->j:Z

    iget-object v0, p0, LGn;->m:LJn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LGn;->m:LJn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, LGn;->o:Lan;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lan;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LGn;->o:Lan;

    :cond_1
    return v1
.end method
