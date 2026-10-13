.class public LeD;
.super LEC;
.source "PG"


# static fields
.field public static final X:LZB;

.field public static Y:Ljava/lang/Class;


# instance fields
.field public final W:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InvClientImpl"

    .line 1
    invoke-static {v0}, LgC;->b(Ljava/lang/String;)LgC;

    move-result-object v0

    sput-object v0, LeD;->X:LZB;

    const/4 v0, 0x0

    .line 2
    sput-object v0, LeD;->Y:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LfC;Ljava/util/Random;I[BLbE;)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v11, LdD;

    .line 3
    move-object v0, v13

    check-cast v0, LsC;

    .line 4
    iget-object v0, v0, LsC;->b:LZB;

    move-object v1, p1

    .line 5
    invoke-direct {v11, p1, v0}, LdD;-><init>(Landroid/content/Context;LZB;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 6
    invoke-direct/range {v0 .. v11}, LEC;-><init>(LfC;Ljava/util/Random;I[BLbE;Ljava/lang/String;LYD;LJE;LHE;LKE;LYB;)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, LEC;->a(LGE;)V

    .line 8
    invoke-virtual {p0, v13}, LEC;->a(LfC;)V

    .line 9
    iget-object v0, v12, LEC;->y:LZB;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    check-cast v0, LgC;

    const-string v4, "Created client: %s"

    invoke-virtual {v0, v4, v2}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    move-object v0, v13

    check-cast v0, LsC;

    .line 11
    iget-object v2, v0, LsC;->a:LdC;

    .line 12
    invoke-interface {v2}, LdC;->a()J

    move-result-wide v4

    iput-wide v4, v12, LeD;->W:J

    .line 13
    iget-object v0, v0, LsC;->b:LZB;

    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    check-cast v0, LgC;

    const-string v2, "Create new Ticl scheduling id: %s"

    invoke-virtual {v0, v2, v1}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, LeD;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LfC;Ljava/util/Random;LAD;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    .line 16
    iget-object v0, v14, LAD;->e:LzD;

    .line 17
    iget v3, v0, LzD;->c:I

    .line 18
    iget-object v1, v0, LzD;->d:LPE;

    .line 19
    iget-object v4, v1, LPE;->w:[B

    .line 20
    iget-object v5, v0, LzD;->f:LbE;

    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 22
    iget-object v15, v14, LAD;->d:LGE;

    .line 23
    new-instance v11, LdD;

    .line 24
    move-object v0, v13

    check-cast v0, LsC;

    .line 25
    iget-object v0, v0, LsC;->b:LZB;

    move-object/from16 v1, p1

    .line 26
    invoke-direct {v11, v1, v0}, LdD;-><init>(Landroid/content/Context;LZB;)V

    .line 27
    iget-object v7, v15, LGE;->d:LYD;

    .line 28
    iget-object v8, v15, LGE;->k:LJE;

    .line 29
    iget-object v9, v15, LGE;->j:LHE;

    .line 30
    iget-object v10, v15, LGE;->r:LKE;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 31
    invoke-direct/range {v0 .. v11}, LEC;-><init>(LfC;Ljava/util/Random;I[BLbE;Ljava/lang/String;LYD;LJE;LHE;LKE;LYB;)V

    .line 32
    invoke-virtual {v15}, LGE;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, v15, LGE;->e:LPE;

    .line 34
    iput-object v0, v12, LEC;->J:LPE;

    .line 35
    :cond_0
    invoke-virtual {v15}, LGE;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, v15, LGE;->f:LPE;

    .line 37
    iput-object v0, v12, LEC;->K:LPE;

    .line 38
    :cond_1
    iget-boolean v0, v15, LGE;->g:Z

    .line 39
    iput-boolean v0, v12, LEC;->L:Z

    .line 40
    iget-wide v0, v15, LGE;->h:J

    .line 41
    iput-wide v0, v12, LEC;->O:J

    .line 42
    iget-boolean v0, v15, LGE;->i:Z

    .line 43
    iput-boolean v0, v12, LEC;->M:Z

    .line 44
    invoke-virtual {v12, v15}, LEC;->a(LGE;)V

    .line 45
    invoke-virtual {v12, v13}, LEC;->a(LfC;)V

    .line 46
    iget-object v0, v12, LEC;->y:LZB;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    check-cast v0, LgC;

    const-string v2, "Created client: %s"

    invoke-virtual {v0, v2, v1}, LgC;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, v14, LAD;->e:LzD;

    .line 48
    iget-wide v0, v0, LzD;->e:J

    .line 49
    iput-wide v0, v12, LeD;->W:J

    .line 50
    invoke-virtual/range {p0 .. p0}, LeD;->c()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, LEC;->w:LfC;

    .line 2
    move-object v1, v0

    check-cast v1, LsC;

    .line 3
    iget-object v1, v1, LsC;->a:LdC;

    .line 4
    instance-of v1, v1, LcD;

    if-eqz v1, :cond_2

    .line 5
    check-cast v0, LsC;

    .line 6
    iget-object v0, v0, LsC;->a:LdC;

    .line 7
    check-cast v0, LcD;

    .line 8
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    iget-object v2, p0, LEC;->P:LwC;

    .line 10
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "AcquireToken"

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v2, p0, LEC;->Q:LCC;

    .line 13
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "RegSyncHeartbeat"

    .line 14
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v2, p0, LEC;->R:LBC;

    .line 16
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "PersistentWrite"

    .line 17
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, p0, LEC;->S:LyC;

    .line 19
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "Heartbeat"

    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v2, p0, LEC;->T:LxC;

    .line 22
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "Batching"

    .line 23
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v2, p0, LEC;->U:LzC;

    .line 25
    iget-object v2, v2, LNC;->h:LVE;

    const-string v3, "InitialPersistentHeartbeat"

    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 29
    iget-object v4, v0, LcD;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot overwrite task registered on "

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; tasks = "

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LcD;->a:Ljava/util/Map;

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scheduler must be an AndroidInternalScheduler, not "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    iget-object v2, p0, LEC;->w:LfC;

    .line 41
    check-cast v2, LsC;

    .line 42
    iget-object v2, v2, LsC;->a:LdC;

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
