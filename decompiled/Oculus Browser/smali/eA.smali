.class public final synthetic LeA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LIx;


# instance fields
.field public final a:LjA;


# direct methods
.method public constructor <init>(LjA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LeA;->a:LjA;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, LeA;->a:LjA;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Map;

    .line 1
    iget-object v3, v1, LjA;->b:Lry;

    const-string v4, "PersistentFeedStore"

    invoke-virtual {v3, v4}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v3

    .line 2
    sget-object v5, Lxw;->b:Lxw;

    .line 3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v10, 0x1

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v10, v14, :cond_4

    const-string v5, "action-dismiss"

    .line 6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 8
    sget-object v16, LJI;->D:LJI;

    invoke-virtual/range {v16 .. v16}, LTF;->c()LFF;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, LII;

    .line 9
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 10
    invoke-virtual {v12}, LFF;->g()V

    .line 11
    iget-object v8, v12, LFF;->x:LTF;

    check-cast v8, LJI;

    .line 12
    iget v9, v8, LJI;->z:I

    or-int/2addr v9, v10

    iput v9, v8, LJI;->z:I

    .line 13
    iput v11, v8, LJI;->A:I

    .line 14
    invoke-virtual {v12}, LFF;->g()V

    .line 15
    iget-object v8, v12, LFF;->x:LTF;

    check-cast v8, LJI;

    if-eqz v15, :cond_2

    .line 16
    iget v9, v8, LJI;->z:I

    const/4 v11, 0x2

    or-int/2addr v9, v11

    iput v9, v8, LJI;->z:I

    .line 17
    iput-object v15, v8, LJI;->B:Ljava/lang/String;

    .line 18
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v1, LjA;->h:Lky;

    .line 19
    check-cast v9, Lly;

    if-eqz v9, :cond_1

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 21
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    .line 22
    invoke-virtual {v12}, LFF;->g()V

    .line 23
    iget-object v8, v12, LFF;->x:LTF;

    check-cast v8, LJI;

    .line 24
    iget v15, v8, LJI;->z:I

    const/16 v17, 0x4

    or-int/lit8 v15, v15, 0x4

    iput v15, v8, LJI;->z:I

    .line 25
    iput-wide v10, v8, LJI;->C:J

    .line 26
    invoke-virtual {v12}, LFF;->e()LTF;

    move-result-object v8

    check-cast v8, LJI;

    .line 27
    invoke-virtual {v8}, LfF;->e()[B

    move-result-object v8

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 28
    invoke-static {v8, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    array-length v10, v8

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v9, 0x1

    aput-object v10, v11, v9

    const/4 v10, 0x2

    aput-object v5, v11, v10

    const-string v10, "Adding StreamLocalAction bytes %s (length %d) to journal %s"

    .line 30
    invoke-static {v4, v10, v11}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v10, LLw;

    invoke-direct {v10, v8}, LLw;-><init>([B)V

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 32
    throw v8

    :cond_2
    const/4 v8, 0x0

    .line 33
    throw v8

    :cond_3
    const/4 v8, 0x0

    .line 34
    iget-object v7, v1, LjA;->e:LQw;

    .line 35
    new-instance v10, LJw;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v10, v5, v11, v8}, LJw;-><init>(Ljava/lang/String;Ljava/util/List;LIw;)V

    .line 36
    invoke-interface {v7, v10}, LQw;->a(LJw;)Lxw;

    move-result-object v5

    .line 37
    sget-object v7, Lxw;->c:Lxw;

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v1, v8

    const-string v6, "Error committing action for type %s"

    .line 38
    invoke-static {v4, v6, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    const/4 v8, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v13, v7, v8

    const-string v8, "Unknown journal name for action type %s"

    .line 39
    invoke-static {v4, v8, v7}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "task"

    aput-object v4, v1, v8

    const-string v4, "commitLocalActionMutation"

    aput-object v4, v1, v7

    const-string v4, "actions"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    .line 40
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-virtual {v3, v1}, Lny;->a([Ljava/lang/Object;)V

    return-object v5
.end method
