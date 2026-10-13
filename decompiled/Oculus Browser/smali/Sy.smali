.class public final LSy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgx;


# instance fields
.field public final a:Lpw;

.field public final b:Ltw;

.field public final c:Ldx;

.field public final d:Ljy;

.field public final e:Lww;

.field public final f:LFx;

.field public final g:LYw;

.field public final h:LTw;

.field public final i:Landroid/content/Context;

.field public final j:Lxx;

.field public final k:Lrw;

.field public final l:LRw;

.field public final m:Lnw;


# direct methods
.method public constructor <init>(Lpw;Ltw;Ldx;Ljy;Lww;LFx;Lry;LYw;LTw;Landroid/content/Context;Lnw;Lxx;Lrw;LRw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LSy;->a:Lpw;

    .line 3
    iput-object p2, p0, LSy;->b:Ltw;

    .line 4
    iput-object p3, p0, LSy;->c:Ldx;

    .line 5
    iput-object p4, p0, LSy;->d:Ljy;

    .line 6
    iput-object p5, p0, LSy;->e:Lww;

    .line 7
    iput-object p6, p0, LSy;->f:LFx;

    .line 8
    iput-object p8, p0, LSy;->g:LYw;

    .line 9
    iput-object p9, p0, LSy;->h:LTw;

    .line 10
    iput-object p10, p0, LSy;->i:Landroid/content/Context;

    .line 11
    iput-object p11, p0, LSy;->m:Lnw;

    .line 12
    iput-object p12, p0, LSy;->j:Lxx;

    .line 13
    iput-object p13, p0, LSy;->k:Lrw;

    .line 14
    iput-object p14, p0, LSy;->l:LRw;

    return-void
.end method


# virtual methods
.method public a(ILfQ;LJx;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "FeedRequestManagerImpl"

    const-string v2, "trigger refresh %s"

    invoke-static {v1, v2, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, LRy;

    iget-object v1, p0, LSy;->i:Landroid/content/Context;

    iget-object v2, p0, LSy;->m:Lnw;

    iget-object v3, p0, LSy;->a:Lpw;

    invoke-direct {v0, v1, v2, v3, p1}, LRy;-><init>(Landroid/content/Context;Lnw;Lpw;I)V

    .line 3
    iput-object p2, v0, LRy;->a:LfQ;

    .line 4
    iget-object p1, p0, LSy;->g:LYw;

    invoke-virtual {p1}, LYw;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, LSy;->f:LFx;

    const/16 p2, 0x1a

    const/4 v1, 0x2

    new-instance v2, LLy;

    invoke-direct {v2, p0, v0, p3}, LLy;-><init>(LSy;LRy;LJx;)V

    invoke-virtual {p1, p2, v1, v2}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p3}, LSy;->a(LRy;LJx;)V

    :goto_0
    return-void
.end method

.method public final a(LRy;LJx;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7
    iget-object v2, v0, LSy;->g:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 8
    iget-object v2, v0, LSy;->h:LTw;

    .line 9
    check-cast v2, Lty;

    .line 10
    iget-object v3, v2, Lty;->a:Lpx;

    invoke-interface {v3}, Lpx;->l()Lsx;

    move-result-object v3

    .line 11
    iget-boolean v4, v3, Lsx;->b:Z

    const-string v5, "FeedActionReader"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_0

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "Error fetching dismiss actions from store"

    .line 12
    invoke-static {v5, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v2

    goto/16 :goto_3

    .line 14
    :cond_0
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 15
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 16
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, v2, Lty;->b:Lky;

    .line 17
    check-cast v9, Lly;

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 19
    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    iget-wide v11, v2, Lty;->e:J

    sub-long/2addr v8, v11

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LJI;

    .line 21
    iget-wide v13, v12, LJI;->C:J

    cmp-long v15, v13, v8

    if-lez v15, :cond_1

    .line 22
    iget-object v12, v12, LJI;->B:Ljava/lang/String;

    .line 23
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    int-to-double v8, v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v8, v11

    iget-wide v11, v2, Lty;->f:D

    cmpg-double v13, v8, v11

    if-gez v13, :cond_3

    .line 25
    iget-object v8, v2, Lty;->d:LFx;

    const/16 v9, 0x15

    const/4 v11, 0x5

    iget-object v12, v2, Lty;->a:Lpx;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    invoke-interface {v12, v3, v13}, Lpx;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object v3

    .line 27
    invoke-virtual {v8, v9, v11, v3}, LFx;->a(IILjava/lang/Runnable;)V

    .line 28
    :cond_3
    iget-object v3, v2, Lty;->a:Lpx;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-interface {v3, v8}, Lpx;->a(Ljava/util/List;)Lsx;

    move-result-object v3

    .line 30
    iget-boolean v8, v3, Lsx;->b:Z

    if-nez v8, :cond_4

    .line 31
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v2

    goto/16 :goto_3

    .line 32
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-virtual {v3}, Lsx;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v11, "Error converting to wire result for contentId: %s"

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LXw;

    .line 35
    iget-object v12, v2, Lty;->c:Ldx;

    iget-object v13, v9, LXw;->a:Ljava/lang/String;

    .line 36
    check-cast v12, LCy;

    invoke-virtual {v12, v13}, LCy;->a(Ljava/lang/String;)Lsx;

    move-result-object v12

    .line 37
    iget-boolean v13, v12, Lsx;->b:Z

    if-nez v13, :cond_5

    new-array v12, v6, [Ljava/lang/Object;

    .line 38
    iget-object v9, v9, LXw;->a:Ljava/lang/String;

    aput-object v9, v12, v7

    invoke-static {v5, v11, v12}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_5
    new-instance v11, LUw;

    .line 40
    invoke-virtual {v12}, Lsx;->a()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LjQ;

    iget-object v13, v9, LXw;->b:[B

    invoke-direct {v11, v12, v13}, LUw;-><init>(LjQ;[B)V

    .line 41
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v9, v9, LXw;->a:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_6
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    iget-object v9, v2, Lty;->c:Ldx;

    check-cast v9, LCy;

    invoke-virtual {v9, v4}, LCy;->a(Ljava/lang/String;)Lsx;

    move-result-object v9

    .line 45
    iget-boolean v12, v9, Lsx;->b:Z

    if-nez v12, :cond_7

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    .line 46
    invoke-static {v5, v11, v9}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 47
    :cond_7
    new-instance v4, LUw;

    .line 48
    invoke-virtual {v9}, Lsx;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LjQ;

    invoke-direct {v4, v9, v10}, LUw;-><init>(LjQ;[B)V

    .line 49
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_8
    invoke-static {v8}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v2

    .line 51
    :goto_3
    iget-boolean v3, v2, Lsx;->b:Z

    const-string v4, "FeedRequestManagerImpl"

    if-eqz v3, :cond_9

    .line 52
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 53
    iput-object v3, v1, LRy;->b:Ljava/util/List;

    .line 54
    invoke-virtual {v2}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LUw;

    new-array v5, v6, [Ljava/lang/Object;

    .line 55
    iget-object v3, v3, LUw;->a:LjQ;

    aput-object v3, v5, v7

    const-string v3, "Dismiss action: %s"

    .line 56
    invoke-static {v4, v3, v5}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "Error fetching dismiss actions"

    .line 57
    invoke-static {v4, v3, v2}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :cond_a
    iget-object v2, v0, LSy;->a:Lpw;

    const-string v3, "card_menu_tooltip_eligible"

    invoke-virtual {v2, v3, v7}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 59
    iget-object v2, v0, LSy;->j:Lxx;

    new-instance v3, LMy;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, LMy;-><init>(LSy;LRy;LJx;)V

    const-string v1, "Check Tooltips"

    invoke-virtual {v2, v1, v3}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_b
    move-object/from16 v4, p2

    .line 60
    invoke-virtual/range {p0 .. p2}, LSy;->b(LRy;LJx;)V

    :goto_5
    return-void

    .line 61
    :cond_c
    throw v10
.end method

.method public final b(LRy;LJx;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, LSy;->g:LYw;

    invoke-virtual {v2}, LYw;->b()V

    .line 2
    iget-object v2, v0, LSy;->a:Lpw;

    const-string v3, "feed_server_endpoint"

    const-string v4, ""

    .line 3
    invoke-virtual {v2, v3, v4}, Lpw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, v0, LSy;->a:Lpw;

    const-string v4, "feed_server_method"

    const-string v5, "GET"

    .line 5
    invoke-virtual {v3, v4, v5}, Lpw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v1, :cond_2c

    .line 6
    sget-object v5, LBR;->D:LBR;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LzR;

    .line 7
    sget-object v6, LAR;->y:LAR;

    .line 8
    invoke-virtual {v5}, LJF;->g()V

    .line 9
    iget-object v7, v5, LFF;->x:LTF;

    check-cast v7, LBR;

    if-eqz v6, :cond_2b

    .line 10
    iget v8, v7, LBR;->A:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v7, LBR;->A:I

    .line 11
    iget v6, v6, LAR;->w:I

    .line 12
    iput v6, v7, LBR;->B:I

    .line 13
    sget-object v6, LcR;->C:LcR;

    invoke-virtual {v6}, LTF;->c()LFF;

    move-result-object v6

    check-cast v6, LaR;

    .line 14
    iget-object v7, v1, LRy;->f:LbR;

    .line 15
    invoke-virtual {v6}, LFF;->g()V

    .line 16
    iget-object v8, v6, LFF;->x:LTF;

    check-cast v8, LcR;

    if-eqz v7, :cond_2a

    .line 17
    iget v10, v8, LcR;->z:I

    or-int/2addr v10, v9

    iput v10, v8, LcR;->z:I

    .line 18
    iget v7, v7, LbR;->w:I

    .line 19
    iput v7, v8, LcR;->A:I

    .line 20
    sget-object v7, LhR;->G:LhR;

    invoke-virtual {v7}, LTF;->c()LFF;

    move-result-object v7

    check-cast v7, LgR;

    .line 21
    invoke-virtual {v7}, LFF;->g()V

    .line 22
    iget-object v8, v7, LFF;->x:LTF;

    check-cast v8, LhR;

    if-eqz v8, :cond_29

    .line 23
    invoke-virtual {v6}, LFF;->e()LTF;

    move-result-object v6

    check-cast v6, LcR;

    iput-object v6, v8, LhR;->B:LcR;

    .line 24
    iget v6, v8, LhR;->z:I

    const/4 v10, 0x2

    or-int/2addr v6, v10

    iput v6, v8, LhR;->z:I

    .line 25
    iget-object v6, v1, LRy;->a:LfQ;

    const-string v8, "FeedRequestManagerImpl"

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    .line 26
    invoke-virtual {v7}, LFF;->g()V

    .line 27
    iget-object v13, v7, LFF;->x:LTF;

    check-cast v13, LhR;

    .line 28
    iput-object v6, v13, LhR;->E:LfQ;

    .line 29
    iget v6, v13, LhR;->z:I

    or-int/2addr v6, v11

    iput v6, v13, LhR;->z:I

    new-array v6, v9, [Ljava/lang/Object;

    .line 30
    iget-object v13, v1, LRy;->a:LfQ;

    aput-object v13, v6, v12

    const-string v13, "Consistency Token: %s"

    invoke-static {v8, v13, v6}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    iget-object v6, v1, LRy;->b:Ljava/util/List;

    if-eqz v6, :cond_d

    .line 32
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    .line 33
    new-instance v6, Ljava/util/LinkedHashMap;

    iget-object v13, v1, LRy;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 34
    new-instance v13, Ljava/util/LinkedHashMap;

    iget-object v14, v1, LRy;->b:Ljava/util/List;

    .line 35
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 36
    new-instance v14, Ljava/util/LinkedHashMap;

    iget-object v15, v1, LRy;->b:Ljava/util/List;

    .line 37
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 38
    new-instance v15, Ljava/util/LinkedHashMap;

    iget-object v12, v1, LRy;->b:Ljava/util/List;

    .line 39
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v15, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 40
    new-instance v12, Ljava/util/ArrayList;

    iget-object v4, v1, LRy;->b:Ljava/util/List;

    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    iget-object v4, v1, LRy;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, LUw;

    .line 43
    iget-object v11, v10, LUw;->a:LjQ;

    .line 44
    iget-object v10, v10, LUw;->b:[B

    .line 45
    sget-object v17, LOQ;->E:LOQ;

    invoke-virtual/range {v17 .. v17}, LTF;->c()LFF;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, LNQ;

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .line 46
    iget-wide v2, v11, LjQ;->B:J

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v2}, LRy;->a(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v2

    .line 48
    invoke-virtual {v9}, LFF;->g()V

    .line 49
    iget-object v3, v9, LFF;->x:LTF;

    check-cast v3, LOQ;

    move-object/from16 v20, v4

    .line 50
    iget v4, v3, LOQ;->z:I

    const/16 v18, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, LOQ;->z:I

    .line 51
    iput v2, v3, LOQ;->A:I

    .line 52
    iget-object v2, v11, LjQ;->C:Ljava/lang/String;

    .line 53
    invoke-static {v13, v2}, LRy;->a(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v2

    .line 54
    invoke-virtual {v9}, LFF;->g()V

    .line 55
    iget-object v3, v9, LFF;->x:LTF;

    check-cast v3, LOQ;

    .line 56
    iget v4, v3, LOQ;->z:I

    const/16 v16, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, LOQ;->z:I

    .line 57
    iput v2, v3, LOQ;->C:I

    .line 58
    iget-object v2, v11, LjQ;->A:Ljava/lang/String;

    .line 59
    invoke-static {v14, v2}, LRy;->a(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v2

    .line 60
    invoke-virtual {v9}, LFF;->g()V

    .line 61
    iget-object v3, v9, LFF;->x:LTF;

    check-cast v3, LOQ;

    .line 62
    iget v4, v3, LOQ;->z:I

    const/4 v11, 0x2

    or-int/2addr v4, v11

    iput v4, v3, LOQ;->z:I

    .line 63
    iput v2, v3, LOQ;->B:I

    if-eqz v10, :cond_1

    .line 64
    sget-object v2, LKR;->B:LKR;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LJR;

    .line 65
    invoke-static {v10}, LrF;->a([B)LrF;

    move-result-object v3

    invoke-virtual {v2, v3}, LJR;->a(LrF;)LJR;

    .line 66
    invoke-virtual {v2}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LKR;

    .line 67
    invoke-static {v15, v2}, LRy;->a(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v2

    .line 68
    invoke-virtual {v9}, LFF;->g()V

    .line 69
    iget-object v3, v9, LFF;->x:LTF;

    check-cast v3, LOQ;

    .line 70
    iget v4, v3, LOQ;->z:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, LOQ;->z:I

    .line 71
    iput v2, v3, LOQ;->D:I

    .line 72
    :cond_1
    invoke-virtual {v9}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LOQ;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x4

    goto/16 :goto_0

    :cond_2
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .line 73
    sget-object v2, LMQ;->G:LMQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LLQ;

    .line 74
    sget-object v3, LJQ;->B:LJQ;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LIQ;

    const/4 v4, 0x1

    .line 75
    invoke-static {v4}, LVP;->a(I)LVP;

    move-result-object v9

    .line 76
    invoke-virtual {v3}, LFF;->g()V

    .line 77
    iget-object v10, v3, LFF;->x:LTF;

    check-cast v10, LJQ;

    if-eqz v9, :cond_c

    .line 78
    iget v11, v10, LJQ;->z:I

    or-int/2addr v11, v4

    iput v11, v10, LJQ;->z:I

    .line 79
    iget v4, v9, LVP;->w:I

    .line 80
    iput v4, v10, LJQ;->A:I

    .line 81
    invoke-virtual {v2}, LFF;->g()V

    .line 82
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LMQ;

    if-eqz v4, :cond_b

    .line 83
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LJQ;

    iput-object v3, v4, LMQ;->A:LJQ;

    .line 84
    iget v3, v4, LMQ;->z:I

    const/4 v9, 0x1

    or-int/2addr v3, v9

    iput v3, v4, LMQ;->z:I

    .line 85
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 86
    invoke-virtual {v2}, LFF;->g()V

    .line 87
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LMQ;

    .line 88
    iget-object v6, v4, LMQ;->B:LaG;

    move-object v9, v6

    check-cast v9, LhF;

    .line 89
    iget-boolean v9, v9, LhF;->w:Z

    if-nez v9, :cond_4

    .line 90
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0xa

    goto :goto_1

    :cond_3
    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    .line 91
    :goto_1
    check-cast v6, LfG;

    invoke-virtual {v6, v9}, LfG;->a(I)LaG;

    move-result-object v6

    .line 92
    iput-object v6, v4, LMQ;->B:LaG;

    .line 93
    :cond_4
    iget-object v4, v4, LMQ;->B:LaG;

    invoke-static {v3, v4}, LfF;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 94
    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 95
    invoke-virtual {v2}, LFF;->g()V

    .line 96
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LMQ;

    .line 97
    iget-object v6, v4, LMQ;->D:LbG;

    move-object v9, v6

    check-cast v9, LhF;

    .line 98
    iget-boolean v9, v9, LhF;->w:Z

    if-nez v9, :cond_5

    .line 99
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v4, LMQ;->D:LbG;

    .line 100
    :cond_5
    iget-object v4, v4, LMQ;->D:LbG;

    invoke-static {v3, v4}, LfF;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 101
    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 102
    invoke-virtual {v2}, LFF;->g()V

    .line 103
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LMQ;

    .line 104
    iget-object v6, v4, LMQ;->C:LbG;

    move-object v9, v6

    check-cast v9, LhF;

    .line 105
    iget-boolean v9, v9, LhF;->w:Z

    if-nez v9, :cond_6

    .line 106
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v4, LMQ;->C:LbG;

    .line 107
    :cond_6
    iget-object v4, v4, LMQ;->C:LbG;

    invoke-static {v3, v4}, LfF;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 108
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 109
    invoke-virtual {v2}, LFF;->g()V

    .line 110
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LMQ;

    .line 111
    iget-object v6, v4, LMQ;->E:LbG;

    move-object v9, v6

    check-cast v9, LhF;

    .line 112
    iget-boolean v9, v9, LhF;->w:Z

    if-nez v9, :cond_7

    .line 113
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v4, LMQ;->E:LbG;

    .line 114
    :cond_7
    iget-object v4, v4, LMQ;->E:LbG;

    invoke-static {v3, v4}, LfF;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 115
    invoke-virtual {v2}, LFF;->g()V

    .line 116
    iget-object v3, v2, LFF;->x:LTF;

    check-cast v3, LMQ;

    .line 117
    iget-object v4, v3, LMQ;->F:LbG;

    move-object v6, v4

    check-cast v6, LhF;

    .line 118
    iget-boolean v6, v6, LhF;->w:Z

    if-nez v6, :cond_8

    .line 119
    invoke-static {v4}, LTF;->a(LbG;)LbG;

    move-result-object v4

    iput-object v4, v3, LMQ;->F:LbG;

    .line 120
    :cond_8
    iget-object v3, v3, LMQ;->F:LbG;

    invoke-static {v12, v3}, LfF;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 121
    invoke-virtual {v2}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LMQ;

    .line 122
    invoke-virtual {v7}, LFF;->g()V

    .line 123
    iget-object v3, v7, LFF;->x:LTF;

    check-cast v3, LhR;

    if-eqz v2, :cond_a

    .line 124
    iget-object v4, v3, LhR;->C:LbG;

    move-object v6, v4

    check-cast v6, LhF;

    .line 125
    iget-boolean v6, v6, LhF;->w:Z

    if-nez v6, :cond_9

    .line 126
    invoke-static {v4}, LTF;->a(LbG;)LbG;

    move-result-object v4

    iput-object v4, v3, LhR;->C:LbG;

    .line 127
    :cond_9
    iget-object v3, v3, LhR;->C:LbG;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 128
    throw v2

    :cond_b
    const/4 v2, 0x0

    .line 129
    throw v2

    :cond_c
    const/4 v2, 0x0

    .line 130
    throw v2

    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .line 131
    :goto_2
    sget-object v2, LbQ;->G:LbQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LZP;

    .line 132
    sget-object v3, LaQ;->y:LaQ;

    .line 133
    invoke-virtual {v2}, LFF;->g()V

    .line 134
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LbQ;

    if-eqz v3, :cond_28

    .line 135
    iget v6, v4, LbQ;->z:I

    const/4 v9, 0x1

    or-int/2addr v6, v9

    iput v6, v4, LbQ;->z:I

    .line 136
    iget v3, v3, LaQ;->w:I

    .line 137
    iput v3, v4, LbQ;->A:I

    .line 138
    sget-object v3, LVR;->H:LVR;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LUR;

    .line 139
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3, v4}, LVy;->a(LUR;Ljava/lang/String;)V

    .line 140
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v6, "arm64-v8a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x2

    goto :goto_4

    :sswitch_1
    const-string v6, "armeabi-v7a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_4

    :sswitch_2
    const-string v6, "mips"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x3

    goto :goto_4

    :sswitch_3
    const-string v6, "x86"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x5

    goto :goto_4

    :sswitch_4
    const-string v6, "armeabi"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_5
    const-string v6, "x86_64"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x6

    goto :goto_4

    :sswitch_6
    const-string v6, "mips64"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x4

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_0

    .line 142
    sget-object v4, LSR;->x:LSR;

    goto :goto_5

    .line 143
    :pswitch_0
    sget-object v4, LSR;->D:LSR;

    goto :goto_5

    .line 144
    :pswitch_1
    sget-object v4, LSR;->C:LSR;

    goto :goto_5

    .line 145
    :pswitch_2
    sget-object v4, LSR;->B:LSR;

    goto :goto_5

    .line 146
    :pswitch_3
    sget-object v4, LSR;->A:LSR;

    goto :goto_5

    .line 147
    :pswitch_4
    sget-object v4, LSR;->z:LSR;

    goto :goto_5

    .line 148
    :pswitch_5
    sget-object v4, LSR;->y:LSR;

    .line 149
    :goto_5
    invoke-virtual {v3, v4}, LUR;->a(LSR;)LUR;

    .line 150
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v4, :cond_11

    const-string v6, "dev-keys"

    .line 151
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "test-keys"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_6

    .line 152
    :cond_f
    sget-object v4, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v6, "release-keys"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 153
    sget-object v4, LTR;->B:LTR;

    goto :goto_7

    .line 154
    :cond_10
    :goto_6
    sget-object v4, LTR;->y:LTR;

    goto :goto_7

    .line 155
    :cond_11
    sget-object v4, LTR;->x:LTR;

    .line 156
    :goto_7
    invoke-virtual {v3, v4}, LUR;->a(LTR;)LUR;

    .line 157
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    invoke-virtual {v3}, LFF;->g()V

    .line 159
    iget-object v6, v3, LFF;->x:LTF;

    check-cast v6, LVR;

    .line 160
    iget v10, v6, LVR;->z:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v6, LVR;->z:I

    .line 161
    iput v4, v6, LVR;->G:I

    .line 162
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LVR;

    .line 163
    invoke-virtual {v2}, LFF;->g()V

    .line 164
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LbQ;

    if-eqz v3, :cond_27

    .line 165
    iput-object v3, v4, LbQ;->B:LVR;

    .line 166
    iget v3, v4, LbQ;->z:I

    const/4 v6, 0x2

    or-int/2addr v3, v6

    iput v3, v4, LbQ;->z:I

    .line 167
    iget-object v3, v1, LRy;->c:Landroid/content/Context;

    invoke-static {v3}, Lcy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2}, LFF;->g()V

    .line 169
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LbQ;

    if-eqz v3, :cond_26

    .line 170
    iget v6, v4, LbQ;->z:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, LbQ;->z:I

    .line 171
    iput-object v3, v4, LbQ;->E:Ljava/lang/String;

    .line 172
    iget-object v3, v1, LRy;->d:Lnw;

    .line 173
    iget v3, v3, Lnw;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_14

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    if-eq v3, v9, :cond_12

    .line 174
    sget-object v3, LYP;->x:LYP;

    goto :goto_8

    .line 175
    :cond_12
    sget-object v3, LYP;->A:LYP;

    goto :goto_8

    .line 176
    :cond_13
    sget-object v3, LYP;->z:LYP;

    goto :goto_8

    .line 177
    :cond_14
    sget-object v3, LYP;->y:LYP;

    .line 178
    :goto_8
    invoke-virtual {v2}, LFF;->g()V

    .line 179
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LbQ;

    if-eqz v3, :cond_25

    .line 180
    iget v6, v4, LbQ;->z:I

    const/4 v10, 0x4

    or-int/2addr v6, v10

    iput v6, v4, LbQ;->z:I

    .line 181
    iget v3, v3, LYP;->w:I

    .line 182
    iput v3, v4, LbQ;->C:I

    .line 183
    sget-object v3, LVR;->H:LVR;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LUR;

    .line 184
    iget-object v4, v1, LRy;->d:Lnw;

    .line 185
    iget-object v4, v4, Lnw;->d:Ljava/lang/String;

    .line 186
    invoke-static {v3, v4}, LVy;->a(LUR;Ljava/lang/String;)V

    .line 187
    iget-object v4, v1, LRy;->d:Lnw;

    .line 188
    iget v4, v4, Lnw;->b:I

    packed-switch v4, :pswitch_data_1

    .line 189
    sget-object v4, LSR;->x:LSR;

    goto :goto_9

    .line 190
    :pswitch_6
    sget-object v4, LSR;->D:LSR;

    goto :goto_9

    .line 191
    :pswitch_7
    sget-object v4, LSR;->C:LSR;

    goto :goto_9

    .line 192
    :pswitch_8
    sget-object v4, LSR;->B:LSR;

    goto :goto_9

    .line 193
    :pswitch_9
    sget-object v4, LSR;->A:LSR;

    goto :goto_9

    .line 194
    :pswitch_a
    sget-object v4, LSR;->z:LSR;

    goto :goto_9

    .line 195
    :pswitch_b
    sget-object v4, LSR;->y:LSR;

    .line 196
    :goto_9
    invoke-virtual {v3, v4}, LUR;->a(LSR;)LUR;

    .line 197
    iget-object v4, v1, LRy;->d:Lnw;

    .line 198
    iget v4, v4, Lnw;->c:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_18

    const/4 v6, 0x2

    if-eq v4, v6, :cond_17

    if-eq v4, v9, :cond_16

    const/4 v6, 0x4

    if-eq v4, v6, :cond_15

    .line 199
    sget-object v4, LTR;->x:LTR;

    goto :goto_a

    .line 200
    :cond_15
    sget-object v4, LTR;->B:LTR;

    goto :goto_a

    .line 201
    :cond_16
    sget-object v4, LTR;->A:LTR;

    goto :goto_a

    .line 202
    :cond_17
    sget-object v4, LTR;->z:LTR;

    goto :goto_a

    .line 203
    :cond_18
    sget-object v4, LTR;->y:LTR;

    .line 204
    :goto_a
    invoke-virtual {v3, v4}, LUR;->a(LTR;)LUR;

    .line 205
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LVR;

    .line 206
    invoke-virtual {v2}, LFF;->g()V

    .line 207
    iget-object v4, v2, LFF;->x:LTF;

    check-cast v4, LbQ;

    if-eqz v3, :cond_24

    .line 208
    iput-object v3, v4, LbQ;->D:LVR;

    .line 209
    iget v3, v4, LbQ;->z:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v4, LbQ;->z:I

    .line 210
    iget-object v3, v1, LRy;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 211
    sget-object v4, LtQ;->D:LtQ;

    invoke-virtual {v4}, LTF;->c()LFF;

    move-result-object v4

    check-cast v4, LsQ;

    .line 212
    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    .line 213
    invoke-virtual {v4}, LFF;->g()V

    .line 214
    iget-object v9, v4, LFF;->x:LTF;

    check-cast v9, LtQ;

    .line 215
    iget v10, v9, LtQ;->z:I

    const/4 v11, 0x1

    or-int/2addr v10, v11

    iput v10, v9, LtQ;->z:I

    .line 216
    iput v6, v9, LtQ;->A:F

    .line 217
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    invoke-virtual {v4}, LFF;->g()V

    .line 219
    iget-object v9, v4, LFF;->x:LTF;

    check-cast v9, LtQ;

    .line 220
    iget v10, v9, LtQ;->z:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v9, LtQ;->z:I

    .line 221
    iput v6, v9, LtQ;->B:I

    .line 222
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 223
    invoke-virtual {v4}, LFF;->g()V

    .line 224
    iget-object v6, v4, LFF;->x:LTF;

    check-cast v6, LtQ;

    .line 225
    iget v9, v6, LtQ;->z:I

    const/4 v10, 0x4

    or-int/2addr v9, v10

    iput v9, v6, LtQ;->z:I

    .line 226
    iput v3, v6, LtQ;->C:I

    .line 227
    invoke-virtual {v2}, LFF;->g()V

    .line 228
    iget-object v3, v2, LFF;->x:LTF;

    check-cast v3, LbQ;

    .line 229
    iget-object v6, v3, LbQ;->F:LbG;

    move-object v9, v6

    check-cast v9, LhF;

    .line 230
    iget-boolean v9, v9, LhF;->w:Z

    if-nez v9, :cond_19

    .line 231
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v3, LbQ;->F:LbG;

    .line 232
    :cond_19
    iget-object v3, v3, LbQ;->F:LbG;

    invoke-virtual {v4}, LFF;->e()LTF;

    move-result-object v4

    check-cast v4, LtQ;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v2}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LbQ;

    .line 234
    invoke-virtual {v7}, LFF;->g()V

    .line 235
    iget-object v3, v7, LFF;->x:LTF;

    check-cast v3, LhR;

    if-eqz v2, :cond_23

    .line 236
    iput-object v2, v3, LhR;->A:LbQ;

    .line 237
    iget v2, v3, LhR;->z:I

    const/4 v4, 0x1

    or-int/2addr v2, v4

    iput v2, v3, LhR;->z:I

    .line 238
    sget-object v2, LWP;->z:LWP;

    .line 239
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "feed_ui_enabled"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 240
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 241
    :cond_1a
    sget-object v2, LWP;->A:LWP;

    .line 242
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "undoable_actions_enabled"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 243
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 244
    :cond_1b
    sget-object v2, LWP;->B:LWP;

    .line 245
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "manage_interests_enabled"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 246
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 247
    :cond_1c
    sget-object v2, LWP;->F:LWP;

    .line 248
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "enable_carousels"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 249
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 250
    :cond_1d
    iget-boolean v2, v1, LRy;->h:Z

    if-eqz v2, :cond_1e

    .line 251
    sget-object v2, LWP;->C:LWP;

    .line 252
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "card_menu_tooltip_eligible"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 253
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 254
    :cond_1e
    sget-object v2, LWP;->E:LWP;

    .line 255
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "snippets_enabled"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 256
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 257
    :cond_1f
    sget-object v2, LWP;->D:LWP;

    .line 258
    iget-object v3, v1, LRy;->e:Lpw;

    const-string v4, "use_secondary_page_request"

    invoke-virtual {v3, v4, v6}, Lpw;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 259
    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 260
    :cond_20
    sget-object v2, LWP;->y:LWP;

    invoke-virtual {v7, v2}, LgR;->a(LWP;)LgR;

    .line 261
    iget-object v2, v7, LFF;->x:LTF;

    check-cast v2, LhR;

    if-eqz v2, :cond_22

    .line 262
    new-instance v3, LZF;

    iget-object v2, v2, LhR;->D:LXF;

    sget-object v4, LhR;->F:LYF;

    invoke-direct {v3, v2, v4}, LZF;-><init>(Ljava/util/List;LYF;)V

    .line 263
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LWP;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    .line 264
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    const-string v3, "Capability: %s"

    invoke-static {v8, v3, v6}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 265
    :cond_21
    sget-object v2, LhR;->I:LOF;

    invoke-virtual {v7}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LhR;

    invoke-virtual {v5, v2, v3}, LJF;->a(LyF;Ljava/lang/Object;)LJF;

    .line 266
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LBR;

    .line 267
    invoke-virtual {v2}, LfF;->e()[B

    move-result-object v2

    iget-object v3, v0, LSy;->i:Landroid/content/Context;

    .line 268
    invoke-static {v3}, Lcy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    .line 269
    invoke-static {v5, v2, v4, v3}, LTy;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lsw;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 270
    iget-object v4, v2, Lsw;->a:Landroid/net/Uri;

    .line 271
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Making Request: %s"

    invoke-static {v8, v4, v3}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v3, v0, LSy;->b:Ltw;

    new-instance v4, LNy;

    move-object/from16 v5, p2

    invoke-direct {v4, v0, v1, v2, v5}, LNy;-><init>(LSy;LRy;Lsw;LJx;)V

    invoke-interface {v3, v2, v4}, Ltw;->a(Lsw;LJx;)V

    return-void

    :cond_22
    const/4 v1, 0x0

    .line 273
    throw v1

    :cond_23
    const/4 v1, 0x0

    .line 274
    throw v1

    :cond_24
    const/4 v1, 0x0

    .line 275
    throw v1

    :cond_25
    const/4 v1, 0x0

    .line 276
    throw v1

    :cond_26
    const/4 v1, 0x0

    .line 277
    throw v1

    :cond_27
    const/4 v1, 0x0

    .line 278
    throw v1

    :cond_28
    const/4 v1, 0x0

    .line 279
    throw v1

    :cond_29
    const/4 v1, 0x0

    .line 280
    throw v1

    :cond_2a
    const/4 v1, 0x0

    .line 281
    throw v1

    :cond_2b
    const/4 v1, 0x0

    .line 282
    throw v1

    :cond_2c
    const/4 v1, 0x0

    .line 283
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x40038063 -> :sswitch_6
        -0x300b59d9 -> :sswitch_5
        -0x2c0bb1c1 -> :sswitch_4
        0x1c976 -> :sswitch_3
        0x33249f -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
