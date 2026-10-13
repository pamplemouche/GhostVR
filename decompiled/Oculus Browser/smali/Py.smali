.class public final synthetic LPy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSy;

.field public final x:LJx;

.field public final y:LGR;


# direct methods
.method public constructor <init>(LSy;LJx;LGR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPy;->w:LSy;

    iput-object p2, p0, LPy;->x:LJx;

    iput-object p3, p0, LPy;->y:LGR;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, LPy;->w:LSy;

    iget-object v2, v0, LPy;->x:LJx;

    iget-object v3, v0, LPy;->y:LGR;

    .line 1
    iget-object v1, v1, LSy;->c:Ldx;

    check-cast v1, LCy;

    .line 2
    iget v4, v1, LCy;->d:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v1, LCy;->d:I

    .line 3
    sget-object v4, LlR;->G:LOF;

    invoke-virtual {v3, v4}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LlR;

    new-array v4, v5, [Ljava/lang/Object;

    .line 4
    iget-object v6, v3, LlR;->A:LbG;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "FeedProtocolAdapter"

    const-string v8, "createModel, operations %s"

    invoke-static {v6, v8, v4}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v4, v3, LlR;->A:LbG;

    .line 7
    invoke-virtual {v3}, LlR;->j()LnR;

    move-result-object v3

    .line 8
    iget-object v8, v1, LCy;->c:Lry;

    invoke-virtual {v8, v6}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v8

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 11
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_25

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LpQ;

    .line 12
    iget-object v14, v1, LCy;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/4 v15, 0x0

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lex;

    .line 13
    check-cast v16, LFA;

    if-eqz v16, :cond_1

    .line 14
    invoke-virtual {v12}, LpQ;->l()LnQ;

    move-result-object v15

    sget-object v13, LnQ;->z:LnQ;

    if-eq v15, v13, :cond_0

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v13

    sget-object v15, LuP;->I:LOF;

    .line 17
    invoke-virtual {v13, v15}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LuP;

    sget-object v15, LAP;->F:LOF;

    .line 18
    invoke-virtual {v13, v15}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LAP;

    .line 19
    iget-object v13, v13, LAP;->A:LbG;

    .line 20
    :goto_2
    invoke-virtual {v10, v13}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 21
    :cond_1
    throw v15

    .line 22
    :cond_2
    invoke-virtual {v12}, LpQ;->l()LnQ;

    move-result-object v13

    invoke-static {v13}, LCy;->a(LnQ;)LaJ;

    move-result-object v13

    .line 23
    sget-object v14, LaJ;->y:LaJ;

    if-ne v13, v14, :cond_3

    .line 24
    invoke-virtual {v1, v14, v15, v15}, LCy;->a(LaJ;Ljava/lang/String;Ljava/lang/String;)LyI;

    move-result-object v12

    invoke-virtual {v12}, LFF;->e()LTF;

    move-result-object v12

    check-cast v12, LzI;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_3
    sget-object v14, LaJ;->A:LaJ;

    if-ne v13, v14, :cond_8

    .line 26
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v13

    .line 27
    iget v13, v13, LsR;->z:I

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_7

    .line 28
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v13

    invoke-virtual {v13}, LsR;->j()LjQ;

    move-result-object v13

    invoke-virtual {v1, v13}, LCy;->a(LjQ;)Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v14

    .line 30
    iget v14, v14, LyQ;->A:I

    and-int/2addr v14, v5

    if-ne v14, v5, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_6

    .line 31
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v12

    invoke-virtual {v12}, LyQ;->m()LjQ;

    move-result-object v12

    invoke-virtual {v1, v12}, LCy;->a(LjQ;)Ljava/lang/String;

    move-result-object v15

    .line 32
    :cond_6
    sget-object v12, LaJ;->A:LaJ;

    .line 33
    invoke-virtual {v1, v12, v13, v15}, LCy;->a(LaJ;Ljava/lang/String;Ljava/lang/String;)LyI;

    move-result-object v12

    invoke-virtual {v12}, LFF;->e()LTF;

    move-result-object v12

    check-cast v12, LzI;

    .line 34
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "REMOVE defined without a ContentId identifying the item to remove"

    .line 35
    invoke-static {v6, v13, v12}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 36
    :cond_8
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v14

    .line 37
    iget v14, v14, LsR;->z:I

    and-int/2addr v14, v5

    if-ne v14, v5, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_23

    .line 38
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v14

    invoke-virtual {v14}, LsR;->j()LjQ;

    move-result-object v14

    invoke-virtual {v1, v14}, LCy;->a(LjQ;)Ljava/lang/String;

    move-result-object v14

    .line 39
    iget v15, v12, LpQ;->A:I

    const/4 v7, 0x3

    if-ne v15, v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_1b

    .line 40
    invoke-virtual {v12}, LpQ;->l()LnQ;

    move-result-object v7

    invoke-static {v7}, LCy;->a(LnQ;)LaJ;

    move-result-object v7

    .line 41
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v13

    .line 42
    iget v13, v13, LyQ;->A:I

    and-int/2addr v13, v5

    if-ne v13, v5, :cond_b

    const/4 v13, 0x1

    goto :goto_7

    :cond_b
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_c

    .line 43
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v13

    invoke-virtual {v13}, LyQ;->m()LjQ;

    move-result-object v13

    invoke-virtual {v1, v13}, LCy;->a(LjQ;)Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 44
    :goto_8
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v13

    invoke-virtual {v13}, LyQ;->n()LxQ;

    move-result-object v13

    sget-object v5, LxQ;->C:LxQ;

    if-ne v13, v5, :cond_17

    .line 45
    invoke-virtual {v12}, LpQ;->j()LyQ;

    move-result-object v5

    .line 46
    sget-object v7, LPR;->D:LOF;

    if-eqz v5, :cond_16

    if-eqz v7, :cond_15

    .line 47
    iget-object v13, v7, LOF;->a:LhG;

    .line 48
    invoke-virtual {v5}, LTF;->b()LTF;

    move-result-object v0

    if-ne v13, v0, :cond_14

    .line 49
    iget-object v0, v5, LLF;->z:LDF;

    iget-object v7, v7, LOF;->d:LNF;

    if-eqz v0, :cond_13

    .line 50
    iget-boolean v13, v7, LNF;->z:Z

    if-nez v13, :cond_12

    .line 51
    iget-object v0, v0, LDF;->a:LtG;

    invoke-virtual {v0, v7}, LtG;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_11

    .line 52
    sget-object v0, LPR;->D:LOF;

    invoke-virtual {v5, v0}, LLF;->a(LyF;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPR;

    .line 53
    iget-object v0, v0, LPR;->A:LrF;

    .line 54
    invoke-virtual {v0}, LrF;->size()I

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x1

    goto :goto_a

    :cond_e
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_f

    const/4 v15, 0x0

    goto :goto_b

    .line 55
    :cond_f
    sget-object v5, LeJ;->D:LeJ;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LdJ;

    if-eqz v15, :cond_10

    .line 56
    invoke-virtual {v5, v15}, LdJ;->b(Ljava/lang/String;)LdJ;

    .line 57
    :cond_10
    invoke-virtual {v5, v14}, LdJ;->a(Ljava/lang/String;)LdJ;

    .line 58
    invoke-virtual {v5}, LFF;->g()V

    .line 59
    iget-object v7, v5, LFF;->x:LTF;

    check-cast v7, LeJ;

    .line 60
    iget v13, v7, LeJ;->z:I

    const/4 v15, 0x4

    or-int/2addr v13, v15

    iput v13, v7, LeJ;->z:I

    .line 61
    iput-object v0, v7, LeJ;->C:LrF;

    .line 62
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v0

    move-object v15, v0

    check-cast v15, LeJ;

    .line 63
    :goto_b
    invoke-static {v15}, Ltx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, v15, LeJ;->B:Ljava/lang/String;

    .line 65
    sget-object v5, LaJ;->z:LaJ;

    .line 66
    invoke-virtual {v1, v5, v14, v0}, LCy;->a(LaJ;Ljava/lang/String;Ljava/lang/String;)LyI;

    move-result-object v0

    .line 67
    invoke-static {}, LNI;->n()LLI;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, LFF;->g()V

    .line 69
    iget-object v7, v5, LFF;->x:LTF;

    check-cast v7, LNI;

    .line 70
    iput-object v15, v7, LNI;->B:Ljava/lang/Object;

    const/4 v13, 0x5

    .line 71
    iput v13, v7, LNI;->A:I

    .line 72
    invoke-virtual {v0, v5}, LyI;->a(LLI;)LyI;

    .line 73
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LzI;

    .line 74
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_11
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "Extension not found for TOKEN"

    .line 75
    invoke-static {v6, v0, v5}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 76
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    .line 79
    throw v0

    :cond_16
    const/4 v0, 0x0

    .line 80
    throw v0

    .line 81
    :cond_17
    sget-object v0, LDI;->F:LDI;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LBI;

    .line 82
    invoke-virtual {v0, v14}, LBI;->a(Ljava/lang/String;)LBI;

    if-eqz v15, :cond_18

    .line 83
    invoke-virtual {v0, v15}, LBI;->b(Ljava/lang/String;)LBI;

    .line 84
    :cond_18
    invoke-static {}, LzI;->l()LyI;

    move-result-object v5

    .line 85
    invoke-static {}, LNI;->n()LLI;

    move-result-object v13

    invoke-virtual {v13, v0}, LLI;->a(LBI;)LLI;

    invoke-virtual {v5, v13}, LyI;->a(LLI;)LyI;

    .line 86
    iget-object v0, v1, LCy;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LEy;

    .line 87
    invoke-interface {v13, v12, v5, v3}, LEy;->a(LpQ;LyI;LnR;)LyI;

    move-result-object v5

    goto :goto_c

    .line 88
    :cond_19
    invoke-static {}, LbJ;->o()LZI;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v7}, LZI;->a(LaJ;)LZI;

    .line 90
    invoke-virtual {v0, v14}, LZI;->a(Ljava/lang/String;)LZI;

    if-eqz v15, :cond_1a

    .line 91
    invoke-virtual {v0, v15}, LZI;->b(Ljava/lang/String;)LZI;

    .line 92
    :cond_1a
    invoke-virtual {v5, v0}, LyI;->a(LZI;)LyI;

    .line 93
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LzI;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 94
    :cond_1b
    iget v0, v12, LpQ;->A:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1c

    const/4 v0, 0x1

    goto :goto_d

    :cond_1c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_21

    .line 95
    sget-object v0, LwR;->D:LwR;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LvR;

    .line 96
    iget v7, v12, LpQ;->A:I

    if-ne v7, v5, :cond_1d

    .line 97
    iget-object v5, v12, LpQ;->B:Ljava/lang/Object;

    check-cast v5, LpN;

    goto :goto_e

    .line 98
    :cond_1d
    sget-object v5, LpN;->C:LpN;

    .line 99
    :goto_e
    invoke-virtual {v0}, LFF;->g()V

    .line 100
    iget-object v7, v0, LFF;->x:LTF;

    check-cast v7, LwR;

    if-eqz v5, :cond_20

    .line 101
    iput-object v5, v7, LwR;->B:LpN;

    .line 102
    iget v5, v7, LwR;->z:I

    const/4 v15, 0x2

    or-int/2addr v5, v15

    iput v5, v7, LwR;->z:I

    .line 103
    invoke-virtual {v0}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LwR;

    .line 104
    sget-object v5, LXI;->E:LXI;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LVI;

    .line 105
    invoke-virtual {v5}, LFF;->g()V

    .line 106
    iget-object v7, v5, LFF;->x:LTF;

    check-cast v7, LXI;

    if-eqz v0, :cond_1f

    .line 107
    iput-object v0, v7, LXI;->B:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 108
    iput v0, v7, LXI;->A:I

    .line 109
    invoke-virtual {v5, v14}, LVI;->a(Ljava/lang/String;)LVI;

    .line 110
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LXI;

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v1, v13, v14, v5}, LCy;->a(LaJ;Ljava/lang/String;Ljava/lang/String;)LyI;

    move-result-object v7

    .line 112
    invoke-static {}, LNI;->n()LLI;

    move-result-object v5

    .line 113
    invoke-virtual {v5}, LFF;->g()V

    .line 114
    iget-object v13, v5, LFF;->x:LTF;

    check-cast v13, LNI;

    if-eqz v0, :cond_1e

    .line 115
    iput-object v0, v13, LNI;->B:Ljava/lang/Object;

    const/4 v0, 0x4

    .line 116
    iput v0, v13, LNI;->A:I

    .line 117
    invoke-virtual {v7, v5}, LyI;->a(LLI;)LyI;

    .line 118
    invoke-virtual {v7}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LzI;

    .line 119
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    const/4 v0, 0x0

    .line 120
    throw v0

    :cond_1f
    const/4 v0, 0x0

    .line 121
    throw v0

    :cond_20
    const/4 v0, 0x0

    .line 122
    throw v0

    .line 123
    :cond_21
    :goto_f
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v0

    invoke-virtual {v0}, LsR;->k()LKR;

    move-result-object v0

    invoke-virtual {v0}, LKR;->j()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 124
    invoke-virtual {v12}, LpQ;->k()LsR;

    move-result-object v0

    invoke-virtual {v0}, LsR;->k()LKR;

    move-result-object v0

    .line 125
    iget-object v0, v0, LKR;->A:LrF;

    .line 126
    invoke-static {}, LzI;->l()LyI;

    move-result-object v5

    .line 127
    invoke-static {}, LNI;->n()LLI;

    move-result-object v7

    .line 128
    invoke-virtual {v7}, LFF;->g()V

    .line 129
    iget-object v12, v7, LFF;->x:LTF;

    check-cast v12, LNI;

    if-eqz v0, :cond_22

    const/4 v13, 0x7

    .line 130
    iput v13, v12, LNI;->A:I

    .line 131
    iput-object v0, v12, LNI;->B:Ljava/lang/Object;

    .line 132
    invoke-virtual {v5, v7}, LyI;->a(LLI;)LyI;

    .line 133
    invoke-static {}, LbJ;->o()LZI;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v14}, LZI;->a(Ljava/lang/String;)LZI;

    sget-object v7, LaJ;->z:LaJ;

    .line 135
    invoke-virtual {v0, v7}, LZI;->a(LaJ;)LZI;

    .line 136
    invoke-virtual {v5, v0}, LyI;->a(LZI;)LyI;

    .line 137
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, LzI;

    .line 138
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    const/4 v0, 0x0

    .line 139
    throw v0

    :cond_23
    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const-string v0, "ContentId not defined for DataOperation"

    .line 140
    invoke-static {v6, v0, v5}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    :goto_10
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 141
    :cond_25
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LjQ;

    .line 142
    invoke-static {}, LzI;->l()LyI;

    move-result-object v5

    .line 143
    invoke-static {}, LbJ;->o()LZI;

    move-result-object v6

    sget-object v7, LaJ;->B:LaJ;

    .line 144
    invoke-virtual {v6, v7}, LZI;->a(LaJ;)LZI;

    .line 145
    invoke-virtual {v1, v3}, LCy;->a(LjQ;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, LZI;->a(Ljava/lang/String;)LZI;

    .line 146
    invoke-virtual {v5, v6}, LyI;->a(LZI;)LyI;

    .line 147
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v3

    check-cast v3, LzI;

    .line 148
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "task"

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "convertWireProtocol"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "mutations"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 149
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    invoke-virtual {v8, v0}, Lny;->a([Ljava/lang/Object;)V

    .line 150
    invoke-static {v9}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    .line 151
    iget-boolean v1, v0, Lsx;->b:Z

    if-eqz v1, :cond_27

    .line 152
    invoke-virtual {v0}, Lsx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    new-instance v1, LVw;

    invoke-direct {v1, v0, v3}, LVw;-><init>(Ljava/util/List;I)V

    .line 154
    invoke-static {v1}, Lsx;->a(Ljava/lang/Object;)Lsx;

    move-result-object v0

    goto :goto_12

    .line 155
    :cond_27
    invoke-static {}, Lsx;->b()Lsx;

    move-result-object v0

    .line 156
    :goto_12
    invoke-interface {v2, v0}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method
