.class public final synthetic LAz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LDz;


# direct methods
.method public constructor <init>(LDz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAz;->w:LDz;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, LAz;->w:LDz;

    .line 1
    iget-object v1, v0, LDz;->k:LEz;

    .line 2
    iget-object v1, v1, LEz;->g:Lry;

    const-string v2, "SessionManagerMutation"

    .line 3
    invoke-virtual {v1, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v1

    .line 4
    iget-object v3, v0, LDz;->k:LEz;

    .line 5
    iget-object v3, v3, LEz;->f:LYw;

    .line 6
    invoke-virtual {v3}, LYw;->b()V

    .line 7
    iget-object v3, v0, LDz;->k:LEz;

    .line 8
    iget-object v3, v3, LEz;->g:Lry;

    .line 9
    invoke-virtual {v3, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v3

    .line 10
    iget-object v4, v0, LDz;->k:LEz;

    .line 11
    iget-object v4, v4, LEz;->c:Ljz;

    .line 12
    iget v5, v4, Ljz;->e:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Ljz;->e:I

    .line 13
    iget-object v4, v4, Ljz;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v4, v0, LDz;->k:LEz;

    .line 15
    iget-object v4, v4, LEz;->a:Lpx;

    .line 16
    invoke-interface {v4}, Lpx;->f()Lmx;

    move-result-object v4

    .line 17
    iget-object v5, v0, LDz;->k:LEz;

    .line 18
    iget-object v5, v5, LEz;->a:Lpx;

    .line 19
    invoke-interface {v5}, Lpx;->g()Lnx;

    move-result-object v5

    .line 20
    iget-object v7, v0, LDz;->j:LVw;

    iget-object v7, v7, LVw;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x0

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LzI;

    .line 21
    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v11

    invoke-virtual {v11}, LbJ;->m()LaJ;

    move-result-object v11

    .line 22
    sget-object v12, LaJ;->y:LaJ;

    if-ne v11, v12, :cond_0

    .line 23
    iget-object v9, v0, LDz;->f:Ljava/util/List;

    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v8, v0, LDz;->c:Llw;

    .line 25
    iget-object v8, v8, Llw;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v8}, Lxz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    sget-object v12, LaJ;->z:LaJ;

    if-ne v11, v12, :cond_9

    .line 28
    invoke-static {v8}, LEz;->a(LzI;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 29
    iget-object v8, v0, LDz;->k:LEz;

    invoke-static {v8}, LEz;->a(LEz;)I

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v11

    .line 31
    iget-object v11, v11, LbJ;->C:Ljava/lang/String;

    .line 32
    invoke-virtual {v8}, LzI;->j()LNI;

    move-result-object v12

    .line 33
    invoke-virtual {v12}, LNI;->m()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 34
    move-object v8, v4

    check-cast v8, LTz;

    invoke-virtual {v8, v11, v12}, LTz;->a(Ljava/lang/String;LNI;)Lmx;

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v12}, LNI;->l()Z

    move-result v13

    if-nez v13, :cond_8

    .line 36
    iget v13, v12, LNI;->A:I

    if-ne v13, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    goto :goto_4

    .line 37
    :cond_4
    invoke-virtual {v8}, LzI;->j()LNI;

    move-result-object v9

    .line 38
    iget v9, v9, LNI;->A:I

    const/4 v12, 0x7

    if-ne v9, v12, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_7

    .line 39
    invoke-virtual {v8}, LzI;->j()LNI;

    move-result-object v8

    .line 40
    iget v9, v8, LNI;->A:I

    if-ne v9, v12, :cond_6

    .line 41
    iget-object v8, v8, LNI;->B:Ljava/lang/Object;

    check-cast v8, LrF;

    goto :goto_3

    .line 42
    :cond_6
    sget-object v8, LrF;->x:LrF;

    .line 43
    :goto_3
    move-object v9, v5

    check-cast v9, LUz;

    .line 44
    iget-object v9, v9, LUz;->a:Ljava/util/Map;

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "Unsupported UPDATE_OR_APPEND payload"

    .line 45
    invoke-static {v2, v9, v8}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 46
    :cond_8
    :goto_4
    iget-object v9, v0, LDz;->k:LEz;

    .line 47
    iget-object v9, v9, LEz;->c:Ljz;

    .line 48
    iget-object v9, v9, Ljz;->a:Ljava/util/Map;

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LNI;

    .line 49
    move-object v9, v4

    check-cast v9, LTz;

    invoke-virtual {v9, v11, v12}, LTz;->a(Ljava/lang/String;LNI;)Lmx;

    .line 50
    iget-object v9, v0, LDz;->f:Ljava/util/List;

    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :cond_9
    sget-object v9, LaJ;->A:LaJ;

    if-ne v11, v9, :cond_a

    .line 52
    iget-object v9, v0, LDz;->f:Ljava/util/List;

    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 53
    :cond_a
    sget-object v9, LaJ;->B:LaJ;

    if-ne v11, v9, :cond_b

    .line 54
    iget-object v9, v0, LDz;->f:Ljava/util/List;

    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 55
    :cond_b
    iget-object v9, v0, LDz;->k:LEz;

    invoke-static {v9}, LEz;->a(LEz;)I

    new-array v9, v6, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v8}, LzI;->k()LbJ;

    move-result-object v8

    invoke-virtual {v8}, LbJ;->m()LaJ;

    move-result-object v8

    aput-object v8, v9, v10

    const-string v8, "Unsupported Mutation: %s"

    .line 57
    invoke-static {v2, v8, v9}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    :cond_c
    iget-object v7, v0, LDz;->k:LEz;

    .line 59
    iget-object v7, v7, LEz;->d:LFx;

    const/16 v8, 0x17

    .line 60
    new-instance v11, LBz;

    invoke-direct {v11, v0, v4, v5}, LBz;-><init>(LDz;Lmx;Lnx;)V

    invoke-virtual {v7, v8, v9, v11}, LFx;->a(IILjava/lang/Runnable;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v10

    const-string v7, "contentUpdate"

    aput-object v7, v4, v6

    const-string v7, "items"

    const/4 v8, 0x2

    aput-object v7, v4, v8

    .line 61
    iget-object v7, v0, LDz;->j:LVw;

    iget-object v7, v7, LVw;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v4, v9

    invoke-virtual {v3, v4}, Lny;->a([Ljava/lang/Object;)V

    .line 62
    iget-object v3, v0, LDz;->k:LEz;

    .line 63
    iget-object v3, v3, LEz;->f:LYw;

    .line 64
    invoke-virtual {v3}, LYw;->b()V

    .line 65
    iget-object v3, v0, LDz;->k:LEz;

    .line 66
    iget-object v3, v3, LEz;->g:Lry;

    .line 67
    invoke-virtual {v3, v2}, Lry;->a(Ljava/lang/String;)Lny;

    move-result-object v3

    .line 68
    iget-object v4, v0, LDz;->c:Llw;

    if-eqz v4, :cond_d

    .line 69
    iget-object v4, v4, Llw;->a:LeJ;

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    .line 70
    invoke-static {}, LbJ;->o()LZI;

    move-result-object v7

    .line 71
    iget-object v9, v4, LeJ;->A:Ljava/lang/String;

    .line 72
    invoke-virtual {v7, v9}, LZI;->a(Ljava/lang/String;)LZI;

    .line 73
    iget-object v4, v4, LeJ;->B:Ljava/lang/String;

    .line 74
    invoke-virtual {v7, v4}, LZI;->b(Ljava/lang/String;)LZI;

    sget-object v4, LaJ;->A:LaJ;

    .line 75
    invoke-virtual {v7, v4}, LZI;->a(LaJ;)LZI;

    .line 76
    invoke-virtual {v7}, LFF;->e()LTF;

    move-result-object v4

    check-cast v4, LbJ;

    if-eqz v4, :cond_e

    .line 77
    iget-object v7, v0, LDz;->f:Ljava/util/List;

    invoke-interface {v7, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 78
    :cond_e
    iget-object v4, v0, LDz;->k:LEz;

    .line 79
    iget-object v4, v4, LEz;->b:Lrz;

    .line 80
    invoke-virtual {v4}, Lrz;->b()Ljava/util/List;

    move-result-object v4

    .line 81
    iget-object v7, v0, LDz;->k:LEz;

    .line 82
    iget-object v7, v7, LEz;->b:Lrz;

    .line 83
    iget-object v7, v7, Lrz;->d:Lmz;

    .line 84
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Loz;

    .line 85
    invoke-interface {v11}, Loz;->c()Lcx;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 86
    invoke-interface {v12}, Lcx;->d()I

    move-result v12

    if-ne v12, v8, :cond_f

    new-array v6, v10, [Ljava/lang/Object;

    const-string v8, "Removing an invalidate session"

    .line 87
    invoke-static {v2, v8, v6}, Lhy;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v6, v0, LDz;->k:LEz;

    .line 89
    iget-object v6, v6, LEz;->b:Lrz;

    .line 90
    invoke-interface {v11}, Loz;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lrz;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    if-ne v11, v7, :cond_14

    .line 91
    iget-object v6, v0, LDz;->k:LEz;

    .line 92
    iget-object v6, v6, LEz;->h:Lky;

    .line 93
    check-cast v6, Lly;

    if-eqz v6, :cond_13

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 95
    iget-boolean v6, v0, LDz;->i:Z

    if-eqz v6, :cond_11

    .line 96
    iget-object v8, v0, LDz;->f:Ljava/util/List;

    iget-object v10, v0, LDz;->j:LVw;

    iget v10, v10, LVw;->b:I

    iget-object v14, v0, LDz;->c:Llw;

    invoke-interface {v11, v6, v8, v10, v14}, Loz;->a(ZLjava/util/List;ILlw;)V

    .line 97
    iget-object v6, v0, LDz;->k:LEz;

    .line 98
    iget-object v6, v6, LEz;->b:Lrz;

    .line 99
    iget-object v8, v0, LDz;->j:LVw;

    iget v8, v8, LVw;->b:I

    invoke-virtual {v6, v12, v13, v8}, Lrz;->a(JI)V

    .line 100
    iget-object v6, v0, LDz;->k:LEz;

    .line 101
    iget-object v6, v6, LEz;->e:Lww;

    .line 102
    invoke-interface {v6, v12, v13}, Lww;->a(J)V

    .line 103
    iget-object v6, v0, LDz;->e:Lew;

    const/4 v8, 0x1

    if-eqz v6, :cond_10

    .line 104
    invoke-interface {v6, v8, v12, v13}, Lew;->a(ZJ)V

    :cond_10
    new-array v6, v8, [Ljava/lang/Object;

    .line 105
    invoke-static {v12, v13}, Liy;->a(J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v6, v10

    const-string v8, "Cleared Head, new creation time %s"

    .line 106
    invoke-static {v2, v8, v6}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    .line 107
    iget-object v8, v0, LDz;->e:Lew;

    if-eqz v8, :cond_12

    .line 108
    invoke-interface {v8, v6, v12, v13}, Lew;->a(ZJ)V

    :cond_12
    const/4 v8, 0x1

    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    .line 109
    throw v0

    :cond_14
    :goto_7
    const/4 v8, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 110
    invoke-interface {v11}, Loz;->b()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const-string v8, "Update Session %s"

    invoke-static {v2, v8, v6}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-boolean v6, v0, LDz;->i:Z

    iget-object v8, v0, LDz;->f:Ljava/util/List;

    iget-object v10, v0, LDz;->j:LVw;

    iget v10, v10, LVw;->b:I

    iget-object v12, v0, LDz;->c:Llw;

    invoke-interface {v11, v6, v8, v10, v12}, Loz;->a(ZLjava/util/List;ILlw;)V

    :goto_8
    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    goto/16 :goto_6

    :cond_15
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "sessionUpdate"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "sessions"

    const/4 v7, 0x2

    aput-object v5, v2, v7

    .line 112
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    invoke-virtual {v3, v2}, Lny;->a([Ljava/lang/Object;)V

    .line 113
    iget-object v2, v0, LDz;->k:LEz;

    .line 114
    iget v3, v2, LEz;->l:I

    add-int/2addr v3, v6

    iput v3, v2, LEz;->l:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "task"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "sessionMutation.commitTask:"

    .line 115
    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, LDz;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "mutations"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, v0, LDz;->f:Ljava/util/List;

    .line 116
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "userInitiated"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 117
    iget-object v0, v0, LDz;->c:Llw;

    if-eqz v0, :cond_16

    .line 118
    iget-boolean v0, v0, Llw;->c:Z

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_9

    :cond_16
    const-string v0, "No MutationContext"

    :goto_9
    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 120
    invoke-virtual {v1, v2}, Lny;->a([Ljava/lang/Object;)V

    return-void
.end method
