.class public final LKy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfx;


# instance fields
.field public final a:Lpw;

.field public final b:Ltw;

.field public final c:Ldx;

.field public final d:Ljy;

.field public final e:LFx;

.field public final f:LYw;

.field public final g:Lpx;

.field public final h:Lky;

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J


# direct methods
.method public constructor <init>(Lpw;Ltw;Ldx;Ljy;LFx;LYw;Lpx;Lky;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LKy;->a:Lpw;

    .line 3
    iput-object p2, p0, LKy;->b:Ltw;

    .line 4
    iput-object p3, p0, LKy;->c:Ldx;

    .line 5
    iput-object p4, p0, LKy;->d:Ljy;

    .line 6
    iput-object p5, p0, LKy;->e:LFx;

    .line 7
    iput-object p6, p0, LKy;->f:LYw;

    .line 8
    iput-object p7, p0, LKy;->g:Lpx;

    .line 9
    iput-object p8, p0, LKy;->h:Lky;

    const-string p2, "feed_action_server_max_size_per_request"

    const-wide/16 p3, 0xfa0

    .line 10
    invoke-virtual {p1, p2, p3, p4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, LKy;->k:J

    const-string p2, "feed_action_server_max_actions_per_request"

    const-wide/16 p3, 0xa

    .line 11
    invoke-virtual {p1, p2, p3, p4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, LKy;->j:J

    const-string p2, "feed_action_max_upload_attempts"

    const-wide/16 p3, 0x1

    .line 12
    invoke-virtual {p1, p2, p3, p4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p2

    iput-wide p2, p0, LKy;->i:J

    const-string p2, "feed_action_ttl_seconds"

    const-wide/16 p3, 0x0

    .line 13
    invoke-virtual {p1, p2, p3, p4}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, LKy;->l:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 11

    .line 95
    iget-object v0, p0, LKy;->g:Lpx;

    invoke-interface {v0}, Lpx;->h()Lrx;

    move-result-object v0

    .line 96
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhJ;

    .line 97
    iget v2, v1, LhJ;->B:I

    .line 98
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, LKy;->h:Lky;

    check-cast v4, Lly;

    if-eqz v4, :cond_3

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 100
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 101
    iget-wide v5, v1, LhJ;->C:J

    sub-long/2addr v3, v5

    int-to-long v5, v2

    .line 102
    iget-wide v7, p0, LKy;->i:J

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-gez v10, :cond_2

    iget-wide v5, p0, LKy;->l:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 103
    invoke-virtual {v1}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LgJ;

    add-int/lit8 v2, v2, 0x1

    .line 104
    invoke-virtual {v3}, LFF;->g()V

    .line 105
    iget-object v4, v3, LFF;->x:LTF;

    check-cast v4, LhJ;

    .line 106
    iget v5, v4, LhJ;->z:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, LhJ;->z:I

    .line 107
    iput v2, v4, LhJ;->B:I

    .line 108
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v2

    check-cast v2, LhJ;

    .line 109
    iget-object v1, v1, LhJ;->A:Ljava/lang/String;

    .line 110
    move-object v3, v0

    check-cast v3, LYz;

    .line 111
    iget-object v4, v3, LYz;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LXz;

    if-nez v4, :cond_1

    .line 112
    new-instance v4, LXz;

    invoke-direct {v4}, LXz;-><init>()V

    .line 113
    :cond_1
    iget-object v5, v4, LXz;->a:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v5, v4, LXz;->b:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, v3, LYz;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    const-string v2, "FeedUploadableActionMutation"

    const-string v3, "Added action %d"

    .line 116
    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, v1, LhJ;->A:Ljava/lang/String;

    .line 118
    move-object v3, v0

    check-cast v3, LYz;

    invoke-virtual {v3, v1, v2}, LYz;->a(LhJ;Ljava/lang/String;)Lrx;

    .line 119
    :goto_1
    move-object v1, v0

    check-cast v1, LYz;

    .line 120
    iget-object v2, v1, LYz;->b:LIx;

    iget-object v1, v1, LYz;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, LIx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxw;

    .line 121
    sget-object v2, Lxw;->b:Lxw;

    if-eq v1, v2, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "ActionUploadRequest"

    const-string v3, "Upserting actions on failure failed"

    .line 122
    invoke-static {v2, v3, v1}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 123
    throw p1

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Set;LfQ;LJx;I)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    .line 1
    iget-object v0, v7, LKy;->f:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    move/from16 v5, p4

    int-to-long v0, v5

    iget-wide v2, v7, LKy;->j:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v9, v7, LKy;->c:Ldx;

    .line 4
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhJ;

    .line 8
    invoke-virtual {v3}, LfF;->e()[B

    move-result-object v4

    array-length v4, v4

    .line 9
    iget-wide v13, v7, LKy;->k:J

    add-int/2addr v2, v4

    int-to-long v4, v2

    cmp-long v6, v13, v4

    if-lez v6, :cond_1

    .line 10
    invoke-virtual {v11, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v3, v3, LhJ;->A:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, p4

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v7, LKy;->g:Lpx;

    .line 14
    invoke-interface {v1, v0}, Lpx;->a(Ljava/util/List;)Lsx;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-boolean v2, v0, Lsx;->b:Z

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_2
    move-object v13, v1

    .line 19
    new-instance v14, LGy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, LGy;-><init>(LKy;Ljava/util/Set;Ljava/util/Set;LJx;ILfQ;)V

    .line 20
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LXw;

    .line 21
    iget-object v2, v1, LXw;->a:Ljava/lang/String;

    iget-object v1, v1, LXw;->b:[B

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, v7, LKy;->f:LYw;

    invoke-virtual {v0}, LYw;->b()V

    .line 23
    iget-object v0, v7, LKy;->a:Lpw;

    const-string v1, ""

    const-string v2, "feed_action_server_endpoint"

    .line 24
    invoke-virtual {v0, v2, v1}, Lpw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    iget-object v2, v7, LKy;->a:Lpw;

    const-string v3, "feed_action_server_method"

    const-string v4, "POST"

    .line 26
    invoke-virtual {v2, v3, v4}, Lpw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    sget-object v3, LTP;->D:LTP;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LRP;

    .line 28
    sget-object v4, LSP;->y:LSP;

    .line 29
    invoke-virtual {v3}, LJF;->g()V

    .line 30
    iget-object v5, v3, LFF;->x:LTF;

    check-cast v5, LTP;

    if-eqz v4, :cond_f

    .line 31
    iget v13, v5, LTP;->A:I

    const/4 v15, 0x1

    or-int/2addr v13, v15

    iput v13, v5, LTP;->A:I

    .line 32
    iget v4, v4, LSP;->w:I

    .line 33
    iput v4, v5, LTP;->B:I

    .line 34
    sget-object v4, LTQ;->D:LTQ;

    invoke-virtual {v4}, LTF;->c()LFF;

    move-result-object v4

    check-cast v4, LSQ;

    .line 35
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LhJ;

    .line 36
    iget-object v12, v13, LhJ;->A:Ljava/lang/String;

    .line 37
    invoke-virtual {v13}, LhJ;->j()LOP;

    move-result-object v6

    .line 38
    sget-object v16, LFQ;->F:LFQ;

    invoke-virtual/range {v16 .. v16}, LTF;->c()LFF;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, LBQ;

    .line 39
    invoke-virtual {v15}, LFF;->g()V

    move-object/from16 p4, v5

    .line 40
    iget-object v5, v15, LFF;->x:LTF;

    check-cast v5, LFQ;

    if-eqz v6, :cond_a

    .line 41
    iput-object v6, v5, LFQ;->B:LOP;

    .line 42
    iget v6, v5, LFQ;->z:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v5, LFQ;->z:I

    .line 43
    sget-object v5, LDQ;->B:LDQ;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LCQ;

    move-object v6, v14

    .line 44
    iget-wide v13, v13, LhJ;->C:J

    .line 45
    invoke-virtual {v5}, LFF;->g()V

    move-object/from16 v16, v6

    .line 46
    iget-object v6, v5, LFF;->x:LTF;

    check-cast v6, LDQ;

    move-object/from16 v17, v11

    .line 47
    iget v11, v6, LDQ;->z:I

    const/16 v18, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v6, LDQ;->z:I

    .line 48
    iput-wide v13, v6, LDQ;->A:J

    .line 49
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v5

    check-cast v5, LDQ;

    .line 50
    invoke-virtual {v15}, LFF;->g()V

    .line 51
    iget-object v6, v15, LFF;->x:LTF;

    check-cast v6, LFQ;

    if-eqz v5, :cond_9

    .line 52
    iput-object v5, v6, LFQ;->C:LDQ;

    .line 53
    iget v5, v6, LFQ;->z:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v6, LFQ;->z:I

    .line 54
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    sget-object v5, LKR;->B:LKR;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LJR;

    .line 56
    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-static {v6}, LrF;->a([B)LrF;

    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, LJR;->a(LrF;)LJR;

    .line 58
    invoke-virtual {v15}, LFF;->g()V

    .line 59
    iget-object v6, v15, LFF;->x:LTF;

    check-cast v6, LFQ;

    if-eqz v6, :cond_4

    .line 60
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v5

    check-cast v5, LKR;

    iput-object v5, v6, LFQ;->D:LKR;

    .line 61
    iget v5, v6, LFQ;->z:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v6, LFQ;->z:I

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 62
    throw v5

    .line 63
    :cond_5
    :goto_3
    move-object v5, v9

    check-cast v5, LCy;

    invoke-virtual {v5, v12}, LCy;->a(Ljava/lang/String;)Lsx;

    move-result-object v5

    .line 64
    iget-boolean v6, v5, Lsx;->b:Z

    if-eqz v6, :cond_7

    .line 65
    invoke-virtual {v5}, Lsx;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LjQ;

    .line 66
    invoke-virtual {v15}, LFF;->g()V

    .line 67
    iget-object v6, v15, LFF;->x:LTF;

    check-cast v6, LFQ;

    if-eqz v5, :cond_6

    .line 68
    iput-object v5, v6, LFQ;->A:LjQ;

    .line 69
    iget v5, v6, LFQ;->z:I

    const/4 v11, 0x1

    or-int/2addr v5, v11

    iput v5, v6, LFQ;->z:I

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 70
    throw v5

    .line 71
    :cond_7
    :goto_4
    invoke-virtual {v4}, LFF;->g()V

    .line 72
    iget-object v5, v4, LFF;->x:LTF;

    check-cast v5, LTQ;

    .line 73
    iget-object v6, v5, LTQ;->A:LbG;

    move-object v11, v6

    check-cast v11, LhF;

    .line 74
    iget-boolean v11, v11, LhF;->w:Z

    if-nez v11, :cond_8

    .line 75
    invoke-static {v6}, LTF;->a(LbG;)LbG;

    move-result-object v6

    iput-object v6, v5, LTQ;->A:LbG;

    .line 76
    :cond_8
    iget-object v5, v5, LTQ;->A:LbG;

    invoke-virtual {v15}, LFF;->e()LTF;

    move-result-object v6

    check-cast v6, LFQ;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p4

    move-object/from16 v14, v16

    move-object/from16 v11, v17

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x0

    .line 77
    throw v5

    :cond_a
    const/4 v5, 0x0

    .line 78
    throw v5

    :cond_b
    move-object/from16 v17, v11

    move-object/from16 v16, v14

    if-eqz v8, :cond_c

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_e

    .line 79
    invoke-virtual {v4}, LFF;->g()V

    .line 80
    iget-object v5, v4, LFF;->x:LTF;

    check-cast v5, LTQ;

    if-eqz v8, :cond_d

    .line 81
    iput-object v8, v5, LTQ;->B:LfQ;

    .line 82
    iget v6, v5, LTQ;->z:I

    const/4 v8, 0x1

    or-int/2addr v6, v8

    iput v6, v5, LTQ;->z:I

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 83
    throw v5

    .line 84
    :cond_e
    :goto_6
    sget-object v5, LTQ;->F:LOF;

    .line 85
    invoke-virtual {v4}, LFF;->e()LTF;

    move-result-object v4

    check-cast v4, LTQ;

    .line 86
    invoke-virtual {v3, v5, v4}, LJF;->a(LyF;Ljava/lang/Object;)LJF;

    .line 87
    invoke-virtual {v3}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LTP;

    .line 88
    invoke-virtual {v3}, LfF;->e()[B

    move-result-object v3

    .line 89
    invoke-static {v2, v3, v0, v1}, LTy;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lsw;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    iget-object v2, v0, Lsw;->a:Landroid/net/Uri;

    .line 91
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ActionUploadRequest"

    const-string v3, "Making Request: %s"

    invoke-static {v2, v3, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, v7, LKy;->b:Ltw;

    new-instance v2, LHy;

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    invoke-direct {v2, v7, v0, v4, v3}, LHy;-><init>(LKy;Lsw;LJx;Ljava/util/Set;)V

    invoke-interface {v1, v0, v2}, Ltw;->a(Lsw;LJx;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 93
    throw v0

    .line 94
    :cond_10
    :goto_7
    invoke-static/range {p2 .. p2}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method
