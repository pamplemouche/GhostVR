.class public final Lzo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LYn;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Map;

.field public final d:LYm;

.field public final e:LGn;

.field public final f:Ljava/util/concurrent/locks/Lock;

.field public final g:Landroid/os/Looper;

.field public final h:Lem;

.field public final i:Ljava/util/concurrent/locks/Condition;

.field public final j:LVo;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Queue;

.field public n:Z

.field public o:Ljava/util/Map;

.field public p:Ljava/util/Map;

.field public q:LCo;

.field public r:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lem;Ljava/util/Map;LVo;Ljava/util/Map;Lom;Ljava/util/ArrayList;LGn;Z)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lzo;->a:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lzo;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lzo;->m:Ljava/util/Queue;

    move-object/from16 v1, p2

    iput-object v1, v0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v9, p3

    iput-object v9, v0, Lzo;->g:Landroid/os/Looper;

    invoke-interface/range {p2 .. p2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, v0, Lzo;->i:Ljava/util/concurrent/locks/Condition;

    move-object/from16 v1, p4

    iput-object v1, v0, Lzo;->h:Lem;

    move-object/from16 v1, p10

    iput-object v1, v0, Lzo;->e:LGn;

    move-object/from16 v1, p7

    iput-object v1, v0, Lzo;->c:Ljava/util/Map;

    move-object/from16 v10, p6

    iput-object v10, v0, Lzo;->j:LVo;

    move/from16 v2, p11

    iput-boolean v2, v0, Lzo;->k:Z

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    invoke-virtual {v2}, Lym;->a()Lqm;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    move-object/from16 v3, p9

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lso;

    iget-object v5, v4, Lso;->a:Lym;

    invoke-virtual {v12, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lym;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lwm;

    move-object/from16 v1, v16

    check-cast v1, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lzo;->c:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lso;

    new-instance v8, Lyo;

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, v16

    move-object/from16 v7, p6

    move-object v13, v8

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lyo;-><init>(Landroid/content/Context;Lym;Landroid/os/Looper;Lwm;Lso;LVo;Lom;)V

    iget-object v1, v0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm;

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {v16 .. v16}, Lwm;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzo;->b:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm;

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1
    throw v1

    :cond_4
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lzo;->l:Z

    invoke-static {}, LYm;->a()LYm;

    move-result-object v1

    iput-object v1, v0, Lzo;->d:LYm;

    return-void
.end method

.method public static synthetic a(Lzo;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 11

    .line 20
    iget-object v0, p0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v2, v1

    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyo;

    .line 21
    iget-object v8, v7, LDm;->b:Lym;

    .line 22
    iget-object v7, v7, LDm;->d:Loo;

    .line 23
    iget-object v9, p0, Lzo;->o:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v7}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lzo;->c:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/common/ConnectionResult;->r()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lzo;->h:Lem;

    .line 24
    iget v10, v7, Lcom/google/android/gms/common/ConnectionResult;->x:I

    .line 25
    invoke-virtual {v9, v10}, Lem;->b(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 26
    :cond_1
    iget v9, v7, Lcom/google/android/gms/common/ConnectionResult;->x:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 27
    iget-boolean v9, p0, Lzo;->k:Z

    if-eqz v9, :cond_4

    .line 28
    iget-object v8, v8, Lym;->a:Lom;

    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    if-le v6, v3, :cond_0

    :cond_2
    move-object v4, v7

    const v6, 0x7fffffff

    goto :goto_0

    .line 29
    :cond_3
    throw v1

    .line 30
    :cond_4
    iget-object v8, v8, Lym;->a:Lom;

    if-eqz v8, :cond_6

    if-eqz v2, :cond_5

    if-le v5, v3, :cond_0

    :cond_5
    move-object v2, v7

    const v5, 0x7fffffff

    goto :goto_0

    .line 31
    :cond_6
    throw v1

    :cond_7
    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    if-le v5, v6, :cond_8

    move-object v2, v4

    :cond_8
    return-object v2
.end method

.method public static synthetic b(Lzo;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lzo;->j:LVo;

    if-nez v0, :cond_0

    iget-object p0, p0, Lzo;->e:LGn;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, LGn;->q:Ljava/util/Set;

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lzo;->j:LVo;

    .line 12
    iget-object v1, v1, LVo;->b:Ljava/util/Set;

    .line 13
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lzo;->j:LVo;

    .line 14
    iget-object v1, v1, LVo;->d:Ljava/util/Map;

    .line 15
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym;

    .line 16
    invoke-virtual {v3}, Lym;->a()Lqm;

    move-result-object v4

    invoke-virtual {p0, v4}, Lzo;->a(Lqm;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->s()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LUo;

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget-object p0, p0, Lzo;->e:LGn;

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(LSm;)LSm;
    .locals 6

    .line 1
    iget-object v0, p1, LSm;->p:Lqm;

    .line 2
    iget-boolean v1, p0, Lzo;->k:Z

    if-eqz v1, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Lzo;->a(Lqm;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    iget v1, v1, Lcom/google/android/gms/common/ConnectionResult;->x:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 5
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lzo;->d:LYm;

    iget-object v4, p0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyo;

    .line 6
    iget-object v4, v4, LDm;->d:Loo;

    .line 7
    iget-object v5, p0, Lzo;->e:LGn;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 8
    iget-object v3, v3, LYm;->i:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LVm;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v3, v3, LVm;->i:Lco;

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v3, Lco;->f:LHu;

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    const/4 v3, 0x1

    .line 11
    invoke-direct {v1, v3, v2, v4, v4}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 12
    invoke-virtual {p1, v1}, LSm;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not a sign in API"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    return-object p1

    .line 14
    :cond_4
    iget-object v1, p0, Lzo;->e:LGn;

    iget-object v1, v1, LGn;->y:Lio;

    .line 15
    iget-object v2, v1, Lio;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lio;->b:Lko;

    .line 16
    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyo;

    invoke-virtual {v0, p1}, LDm;->a(LSm;)LSm;

    return-object p1
.end method

.method public final a(Lqm;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyo;

    iget-object v0, p0, Lzo;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzo;->o:Ljava/util/Map;

    .line 18
    iget-object p1, p1, LDm;->d:Loo;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    iget-object p1, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lzo;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lzo;->n:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzo;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lzo;->o:Ljava/util/Map;

    iput-object v0, p0, Lzo;->p:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lzo;->q:LCo;

    :try_start_1
    iput-object v0, p0, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lzo;->d:LYm;

    .line 1
    iget-object v1, v1, LYm;->m:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    iget-object v1, p0, Lzo;->d:LYm;

    iget-object v2, p0, Lzo;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 3
    new-instance v3, Lpo;

    invoke-direct {v3, v2}, Lpo;-><init>(Ljava/lang/Iterable;)V

    iget-object v1, v1, LYm;->m:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    iget-object v1, v3, Lpo;->c:Lcv;

    .line 5
    iget-object v1, v1, Lcv;->a:Lsv;

    .line 6
    new-instance v2, LRp;

    iget-object v3, p0, Lzo;->g:Landroid/os/Looper;

    invoke-direct {v2, v3}, LRp;-><init>(Landroid/os/Looper;)V

    new-instance v3, LBo;

    invoke-direct {v3, p0, v0}, LBo;-><init>(Lzo;LAo;)V

    .line 7
    iget-object v0, v1, Lsv;->b:Lqv;

    new-instance v4, Ljv;

    invoke-direct {v4, v2, v3}, Ljv;-><init>(Ljava/util/concurrent/Executor;LXu;)V

    invoke-virtual {v0, v4}, Lqv;->a(Lpv;)V

    invoke-virtual {v1}, Lsv;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 9
    :cond_1
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disconnect()V
    .locals 3

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lzo;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lzo;->o:Ljava/util/Map;

    iput-object v0, p0, Lzo;->p:Ljava/util/Map;

    iput-object v0, p0, Lzo;->r:Lcom/google/android/gms/common/ConnectionResult;

    :goto_0
    iget-object v1, p0, Lzo;->m:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lzo;->m:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSm;

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzo;->i:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lzo;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
