.class public final LEm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/Map;

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Map;

.field public h:I

.field public i:Landroid/os/Looper;

.field public j:Ldm;

.field public k:Lom;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LEm;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LEm;->b:Ljava/util/Set;

    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, LEm;->e:Ljava/util/Map;

    new-instance v0, LJ6;

    invoke-direct {v0}, LJ6;-><init>()V

    iput-object v0, p0, LEm;->g:Ljava/util/Map;

    const/4 v0, -0x1

    iput v0, p0, LEm;->h:I

    .line 1
    sget-object v0, Ldm;->d:Ldm;

    .line 2
    iput-object v0, p0, LEm;->j:Ldm;

    sget-object v0, LGu;->c:Lom;

    iput-object v0, p0, LEm;->k:Lom;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEm;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEm;->m:Ljava/util/ArrayList;

    iput-object p1, p0, LEm;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, LEm;->i:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LEm;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LEm;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()LHm;
    .locals 27

    move-object/from16 v1, p0

    iget-object v0, v1, LEm;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "must call addApi() to add at least one API"

    invoke-static {v0, v3}, Lxp;->a(ZLjava/lang/Object;)V

    .line 1
    sget-object v0, LIu;->i:LIu;

    iget-object v3, v1, LEm;->g:Ljava/util/Map;

    sget-object v4, LGu;->e:Lym;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v1, LEm;->g:Ljava/util/Map;

    sget-object v3, LGu;->e:Lym;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIu;

    :cond_0
    move-object v11, v0

    new-instance v0, LVo;

    const/4 v4, 0x0

    iget-object v5, v1, LEm;->a:Ljava/util/Set;

    iget-object v6, v1, LEm;->e:Ljava/util/Map;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v1, LEm;->c:Ljava/lang/String;

    iget-object v10, v1, LEm;->d:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, LVo;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;LIu;)V

    .line 2
    iget-object v10, v0, LVo;->d:Ljava/util/Map;

    .line 3
    new-instance v11, LJ6;

    invoke-direct {v11}, LJ6;-><init>()V

    new-instance v15, LJ6;

    invoke-direct {v15}, LJ6;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, LEm;->g:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v26, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lym;

    iget-object v3, v1, LEm;->g:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v13, v5}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lso;

    invoke-direct {v9, v13, v3}, Lso;-><init>(Lym;Z)V

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v3, v13, Lym;->a:Lom;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string v3, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v4, v3}, Lxp;->b(ZLjava/lang/Object;)V

    iget-object v3, v13, Lym;->a:Lom;

    .line 5
    iget-object v4, v1, LEm;->f:Landroid/content/Context;

    iget-object v5, v1, LEm;->i:Landroid/os/Looper;

    move-object v6, v0

    move-object v8, v9

    invoke-virtual/range {v3 .. v9}, Lom;->a(Landroid/content/Context;Landroid/os/Looper;LVo;Ljava/lang/Object;LFm;LGm;)Lwm;

    move-result-object v3

    invoke-virtual {v13}, Lym;->a()Lqm;

    move-result-object v4

    invoke-virtual {v15, v4, v3}, Ld7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/common/internal/BaseGmsClient;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    throw v26

    .line 7
    :cond_4
    invoke-virtual {v15}, LJ6;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v2}, LGn;->a(Ljava/lang/Iterable;Z)I

    move-result v24

    new-instance v2, LGn;

    iget-object v13, v1, LEm;->f:Landroid/content/Context;

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v4, v1, LEm;->i:Landroid/os/Looper;

    iget-object v5, v1, LEm;->j:Ldm;

    iget-object v6, v1, LEm;->k:Lom;

    iget-object v7, v1, LEm;->l:Ljava/util/ArrayList;

    iget-object v8, v1, LEm;->m:Ljava/util/ArrayList;

    iget v9, v1, LEm;->h:I

    move-object v12, v2

    move-object v10, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v3

    move/from16 v23, v9

    move-object/from16 v25, v10

    invoke-direct/range {v12 .. v25}, LGn;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LVo;Ldm;Lom;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 8
    sget-object v3, LHm;->a:Ljava/util/Set;

    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    sget-object v0, LHm;->a:Ljava/util/Set;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v1, LEm;->h:I

    if-gez v0, :cond_5

    return-object v2

    .line 12
    :cond_5
    throw v26

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
