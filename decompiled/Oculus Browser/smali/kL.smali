.class public final LkL;
.super LLF;
.source "PG"

# interfaces
.implements LlL;


# static fields
.field public static final G:LkL;

.field public static volatile H:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/String;

.field public E:LWL;

.field public F:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LkL;

    invoke-direct {v0}, LkL;-><init>()V

    sput-object v0, LkL;->G:LkL;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LkL;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LkL;->F:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, LkL;->D:Ljava/lang/String;

    return-void
.end method

.method public static G()LkG;
    .locals 1

    .line 1
    sget-object v0, LkL;->G:LkL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->A:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()I
    .locals 4

    .line 38
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 39
    iget v1, p0, LkL;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 40
    iget-object v1, p0, LkL;->D:Ljava/lang/String;

    .line 41
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_1
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 43
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LuL;

    .line 44
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_2
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 46
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LUO;

    .line 47
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_3
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 49
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LKO;

    .line 50
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_4
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 52
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LJM;

    .line 53
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    :cond_5
    iget v1, p0, LkL;->B:I

    const-string v2, ""

    const/4 v3, 0x7

    if-ne v1, v3, :cond_7

    if-ne v1, v3, :cond_6

    .line 55
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v1, v2

    .line 56
    :goto_0
    invoke-static {v3, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_7
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_8

    .line 58
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LlM;

    .line 59
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_8
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_9

    .line 61
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LQL;

    .line 62
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_9
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_a

    .line 64
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LoK;

    .line 65
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_a
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_b

    .line 67
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LYN;

    .line 68
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    :cond_b
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    .line 70
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_c
    iget v1, p0, LkL;->A:I

    const/16 v3, 0x4000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_d

    const/16 v1, 0xe

    .line 73
    invoke-virtual {p0}, LkL;->r()LWL;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_d
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_e

    .line 75
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LBL;

    .line 76
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_e
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_10

    if-ne v1, v3, :cond_f

    .line 78
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 79
    :cond_f
    invoke-static {v3, v2}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_10
    iget v1, p0, LkL;->B:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    .line 81
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LQM;

    .line 82
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_11
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 84
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 85
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xa

    const/4 v9, 0x0

    const/4 v11, 0x7

    const/16 v12, 0x11

    const/16 v13, 0x8

    const/4 v14, 0x5

    const/16 v15, 0xf

    const/16 v10, 0x9

    const/16 v8, 0xb

    const/16 v6, 0xd

    packed-switch v2, :pswitch_data_0

    .line 87
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 88
    :pswitch_0
    sget-object v2, LkL;->H:LkG;

    if-nez v2, :cond_1

    const-class v2, LkL;

    monitor-enter v2

    .line 89
    :try_start_0
    sget-object v3, LkL;->H:LkG;

    if-nez v3, :cond_0

    .line 90
    new-instance v3, LGF;

    sget-object v4, LkL;->G:LkL;

    invoke-direct {v3, v4}, LGF;-><init>(LTF;)V

    sput-object v3, LkL;->H:LkG;

    .line 91
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 92
    :cond_1
    :goto_0
    sget-object v2, LkL;->H:LkG;

    return-object v2

    .line 93
    :pswitch_1
    new-instance v2, LiL;

    invoke-direct {v2, v9}, LiL;-><init>(LeL;)V

    return-object v2

    .line 94
    :pswitch_2
    new-instance v2, LkL;

    invoke-direct {v2}, LkL;-><init>()V

    return-object v2

    :pswitch_3
    return-object v9

    .line 95
    :pswitch_4
    move-object/from16 v2, p2

    check-cast v2, LtF;

    .line 96
    move-object/from16 v9, p3

    check-cast v9, LBF;

    const/16 v16, 0x0

    :goto_1
    if-nez v16, :cond_1a

    .line 97
    :try_start_1
    invoke-virtual {v2}, LtF;->p()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 98
    invoke-virtual/range {p0 .. p0}, LTF;->b()LTF;

    move-result-object v3

    goto/16 :goto_d

    .line 99
    :sswitch_0
    iget v5, v1, LkL;->B:I

    if-ne v5, v12, :cond_2

    .line 100
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    check-cast v5, LQM;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LPM;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 101
    :goto_2
    invoke-static {}, LQM;->m()LkG;

    move-result-object v7

    invoke-virtual {v2, v7, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 102
    check-cast v7, LQM;

    invoke-virtual {v5, v7}, LFF;->a(LTF;)LFF;

    .line 103
    invoke-virtual {v5}, LJF;->f()LLF;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    .line 104
    :cond_3
    iput v12, v1, LkL;->B:I

    goto/16 :goto_e

    .line 105
    :sswitch_1
    invoke-virtual {v2}, LtF;->n()Ljava/lang/String;

    move-result-object v5

    .line 106
    iput v3, v1, LkL;->B:I

    .line 107
    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_e

    .line 108
    :sswitch_2
    iget v5, v1, LkL;->B:I

    if-ne v5, v15, :cond_4

    .line 109
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    check-cast v5, LBL;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LyL;

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 110
    :goto_3
    invoke-static {}, LBL;->N()LkG;

    move-result-object v7

    invoke-virtual {v2, v7, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 111
    check-cast v7, LBL;

    invoke-virtual {v5, v7}, LFF;->a(LTF;)LFF;

    .line 112
    invoke-virtual {v5}, LJF;->f()LLF;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    .line 113
    :cond_5
    iput v15, v1, LkL;->B:I

    goto/16 :goto_e

    .line 114
    :sswitch_3
    iget v5, v1, LkL;->A:I

    const/16 v7, 0x4000

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_6

    .line 115
    iget-object v5, v1, LkL;->E:LWL;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, LVL;

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 116
    :goto_4
    invoke-static {}, LWL;->m()LkG;

    move-result-object v3

    invoke-virtual {v2, v3, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LWL;

    iput-object v3, v1, LkL;->E:LWL;

    if-eqz v5, :cond_7

    .line 117
    invoke-virtual {v5, v3}, LFF;->a(LTF;)LFF;

    .line 118
    invoke-virtual {v5}, LJF;->f()LLF;

    move-result-object v3

    check-cast v3, LWL;

    iput-object v3, v1, LkL;->E:LWL;

    .line 119
    :cond_7
    iget v3, v1, LkL;->A:I

    or-int/2addr v3, v7

    iput v3, v1, LkL;->A:I

    goto/16 :goto_e

    .line 120
    :sswitch_4
    invoke-virtual {v2}, LtF;->e()I

    move-result v3

    .line 121
    invoke-static {v3}, LrM;->a(I)LrM;

    move-result-object v5

    if-nez v5, :cond_8

    .line 122
    invoke-super {v1, v6, v3}, LTF;->a(II)V

    goto/16 :goto_e

    .line 123
    :cond_8
    iput v6, v1, LkL;->B:I

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_e

    .line 125
    :sswitch_5
    iget v3, v1, LkL;->B:I

    if-ne v3, v8, :cond_9

    .line 126
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LYN;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LXN;

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    .line 127
    :goto_5
    invoke-static {}, LYN;->k()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 128
    check-cast v5, LYN;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 129
    invoke-virtual {v3}, LFF;->f()LTF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    .line 130
    :cond_a
    iput v8, v1, LkL;->B:I

    goto/16 :goto_e

    .line 131
    :sswitch_6
    iget v3, v1, LkL;->B:I

    if-ne v3, v4, :cond_b

    .line 132
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LoK;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LnK;

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    .line 133
    :goto_6
    invoke-static {}, LoK;->m()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_c

    .line 134
    check-cast v5, LoK;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 135
    invoke-virtual {v3}, LFF;->f()LTF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    .line 136
    :cond_c
    iput v4, v1, LkL;->B:I

    goto/16 :goto_e

    .line 137
    :sswitch_7
    iget v3, v1, LkL;->B:I

    if-ne v3, v10, :cond_d

    .line 138
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LQL;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LNL;

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    .line 139
    :goto_7
    invoke-static {}, LQL;->j()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_e

    .line 140
    check-cast v5, LQL;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 141
    invoke-virtual {v3}, LFF;->f()LTF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    .line 142
    :cond_e
    iput v10, v1, LkL;->B:I

    goto/16 :goto_e

    .line 143
    :sswitch_8
    iget v3, v1, LkL;->B:I

    if-ne v3, v13, :cond_f

    .line 144
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LlM;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LkM;

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 145
    :goto_8
    invoke-static {}, LlM;->m()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_10

    .line 146
    check-cast v5, LlM;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 147
    invoke-virtual {v3}, LJF;->f()LLF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    .line 148
    :cond_10
    iput v13, v1, LkL;->B:I

    goto/16 :goto_e

    .line 149
    :sswitch_9
    invoke-virtual {v2}, LtF;->n()Ljava/lang/String;

    move-result-object v3

    .line 150
    iput v11, v1, LkL;->B:I

    .line 151
    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_e

    .line 152
    :sswitch_a
    iget v3, v1, LkL;->B:I

    if-ne v3, v14, :cond_11

    .line 153
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LJM;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LHM;

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    .line 154
    :goto_9
    invoke-static {}, LJM;->m()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_12

    .line 155
    check-cast v5, LJM;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 156
    invoke-virtual {v3}, LJF;->f()LLF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    .line 157
    :cond_12
    iput v14, v1, LkL;->B:I

    goto/16 :goto_e

    .line 158
    :sswitch_b
    iget v3, v1, LkL;->B:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_13

    .line 159
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LKO;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LJO;

    goto :goto_a

    :cond_13
    const/4 v3, 0x0

    .line 160
    :goto_a
    invoke-static {}, LKO;->j()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_14

    .line 161
    check-cast v5, LKO;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 162
    invoke-virtual {v3}, LFF;->f()LTF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    :cond_14
    const/4 v3, 0x4

    .line 163
    iput v3, v1, LkL;->B:I

    goto/16 :goto_e

    .line 164
    :sswitch_c
    iget v3, v1, LkL;->B:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_15

    .line 165
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LUO;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LPO;

    goto :goto_b

    :cond_15
    const/4 v3, 0x0

    .line 166
    :goto_b
    invoke-static {}, LUO;->j()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_16

    .line 167
    check-cast v5, LUO;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 168
    invoke-virtual {v3}, LFF;->f()LTF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    :cond_16
    const/4 v3, 0x3

    .line 169
    iput v3, v1, LkL;->B:I

    goto :goto_e

    .line 170
    :sswitch_d
    iget v3, v1, LkL;->B:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_17

    .line 171
    iget-object v3, v1, LkL;->C:Ljava/lang/Object;

    check-cast v3, LuL;

    invoke-virtual {v3}, LTF;->c()LFF;

    move-result-object v3

    check-cast v3, LtL;

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    .line 172
    :goto_c
    invoke-static {}, LuL;->m()LkG;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, v1, LkL;->C:Ljava/lang/Object;

    if-eqz v3, :cond_18

    .line 173
    check-cast v5, LuL;

    invoke-virtual {v3, v5}, LFF;->a(LTF;)LFF;

    .line 174
    invoke-virtual {v3}, LJF;->f()LLF;

    move-result-object v3

    iput-object v3, v1, LkL;->C:Ljava/lang/Object;

    :cond_18
    const/4 v3, 0x2

    .line 175
    iput v3, v1, LkL;->B:I

    goto :goto_e

    .line 176
    :sswitch_e
    invoke-virtual {v2}, LtF;->n()Ljava/lang/String;

    move-result-object v3

    .line 177
    iget v5, v1, LkL;->A:I

    const/4 v7, 0x1

    or-int/2addr v5, v7

    iput v5, v1, LkL;->A:I

    .line 178
    iput-object v3, v1, LkL;->D:Ljava/lang/String;

    goto :goto_e

    .line 179
    :goto_d
    check-cast v3, LkL;

    invoke-virtual {v1, v3, v2, v9, v5}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result v3
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_19

    :sswitch_f
    const/16 v16, 0x1

    :cond_19
    :goto_e
    const/16 v3, 0x10

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 180
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, LdG;

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 182
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    :goto_f
    throw v2

    .line 184
    :cond_1a
    :pswitch_5
    sget-object v2, LkL;->G:LkL;

    return-object v2

    .line 185
    :pswitch_6
    move-object/from16 v2, p2

    check-cast v2, LSF;

    .line 186
    move-object/from16 v3, p3

    check-cast v3, LkL;

    .line 187
    invoke-virtual/range {p0 .. p0}, LkL;->x()Z

    move-result v5

    iget-object v7, v1, LkL;->D:Ljava/lang/String;

    .line 188
    invoke-virtual {v3}, LkL;->x()Z

    move-result v9

    iget-object v4, v3, LkL;->D:Ljava/lang/String;

    .line 189
    invoke-interface {v2, v5, v7, v9, v4}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, LkL;->D:Ljava/lang/String;

    .line 190
    iget-object v4, v1, LkL;->E:LWL;

    iget-object v5, v3, LkL;->E:LWL;

    invoke-interface {v2, v4, v5}, LSF;->a(LhG;LhG;)LhG;

    move-result-object v4

    check-cast v4, LWL;

    iput-object v4, v1, LkL;->E:LWL;

    .line 191
    invoke-virtual {v3}, LkL;->v()LjL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1e

    .line 192
    :pswitch_7
    iget v4, v1, LkL;->B:I

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_10

    :cond_1b
    const/4 v4, 0x0

    :goto_10
    invoke-interface {v2, v4}, LSF;->a(Z)V

    goto/16 :goto_1e

    .line 193
    :pswitch_8
    iget v4, v1, LkL;->B:I

    if-ne v4, v12, :cond_1c

    const/4 v4, 0x1

    goto :goto_11

    :cond_1c
    const/4 v4, 0x0

    :goto_11
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 194
    :pswitch_9
    iget v4, v1, LkL;->B:I

    if-ne v4, v11, :cond_1d

    const/4 v4, 0x1

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 195
    :pswitch_a
    iget v4, v1, LkL;->B:I

    if-ne v4, v13, :cond_1e

    const/4 v4, 0x1

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    :goto_13
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 196
    :pswitch_b
    iget v4, v1, LkL;->B:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1f

    const/4 v4, 0x1

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 197
    :pswitch_c
    iget v4, v1, LkL;->B:I

    if-ne v4, v14, :cond_20

    const/4 v4, 0x1

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    :goto_15
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 198
    :pswitch_d
    iget v4, v1, LkL;->B:I

    if-ne v4, v15, :cond_21

    const/4 v4, 0x1

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    :goto_16
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 199
    :pswitch_e
    iget v4, v1, LkL;->B:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    const/4 v4, 0x1

    goto :goto_17

    :cond_22
    const/4 v4, 0x0

    :goto_17
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto/16 :goto_1e

    .line 200
    :pswitch_f
    iget v4, v1, LkL;->B:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_23

    const/4 v4, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    :goto_18
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto :goto_1e

    .line 201
    :pswitch_10
    iget v4, v1, LkL;->B:I

    if-ne v4, v10, :cond_24

    const/4 v4, 0x1

    goto :goto_19

    :cond_24
    const/4 v4, 0x0

    :goto_19
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto :goto_1e

    .line 202
    :pswitch_11
    iget v4, v1, LkL;->B:I

    if-ne v4, v8, :cond_25

    const/4 v4, 0x1

    goto :goto_1a

    :cond_25
    const/4 v4, 0x0

    :goto_1a
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto :goto_1e

    .line 203
    :pswitch_12
    iget v4, v1, LkL;->B:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_26

    const/4 v4, 0x1

    goto :goto_1b

    :cond_26
    const/4 v4, 0x0

    :goto_1b
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto :goto_1e

    .line 204
    :pswitch_13
    iget v4, v1, LkL;->B:I

    if-ne v4, v6, :cond_27

    const/4 v4, 0x1

    goto :goto_1c

    :cond_27
    const/4 v4, 0x0

    :goto_1c
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    goto :goto_1e

    .line 205
    :pswitch_14
    iget v4, v1, LkL;->B:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_28

    const/4 v4, 0x1

    goto :goto_1d

    :cond_28
    const/4 v4, 0x0

    :goto_1d
    iget-object v5, v1, LkL;->C:Ljava/lang/Object;

    iget-object v6, v3, LkL;->C:Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, LkL;->C:Ljava/lang/Object;

    .line 206
    :goto_1e
    sget-object v4, LQF;->a:LQF;

    if-ne v2, v4, :cond_2a

    .line 207
    iget v2, v3, LkL;->B:I

    if-eqz v2, :cond_29

    .line 208
    iput v2, v1, LkL;->B:I

    .line 209
    :cond_29
    iget v2, v1, LkL;->A:I

    iget v3, v3, LkL;->A:I

    or-int/2addr v2, v3

    iput v2, v1, LkL;->A:I

    :cond_2a
    return-object v1

    .line 210
    :pswitch_15
    iget-byte v2, v1, LkL;->F:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 211
    sget-object v2, LkL;->G:LkL;

    return-object v2

    :cond_2b
    if-nez v2, :cond_2c

    const/4 v2, 0x0

    return-object v2

    .line 212
    :cond_2c
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 213
    invoke-virtual/range {p0 .. p0}, LkL;->w()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 214
    invoke-virtual/range {p0 .. p0}, LkL;->m()LoK;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_2e

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    .line 215
    iput-byte v2, v1, LkL;->F:B

    :cond_2d
    const/4 v2, 0x0

    return-object v2

    .line 216
    :cond_2e
    invoke-virtual/range {p0 .. p0}, LkL;->y()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 217
    invoke-virtual/range {p0 .. p0}, LkL;->n()LYN;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_30

    if-eqz v2, :cond_2f

    const/4 v2, 0x0

    .line 218
    iput-byte v2, v1, LkL;->F:B

    :cond_2f
    const/4 v2, 0x0

    return-object v2

    .line 219
    :cond_30
    invoke-virtual/range {p0 .. p0}, LkL;->z()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 220
    invoke-virtual/range {p0 .. p0}, LkL;->o()LKO;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_32

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    .line 221
    iput-byte v2, v1, LkL;->F:B

    :cond_31
    const/4 v2, 0x0

    return-object v2

    .line 222
    :cond_32
    invoke-virtual/range {p0 .. p0}, LkL;->A()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 223
    invoke-virtual/range {p0 .. p0}, LkL;->p()LuL;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    .line 224
    iput-byte v2, v1, LkL;->F:B

    :cond_33
    const/4 v2, 0x0

    return-object v2

    .line 225
    :cond_34
    invoke-virtual/range {p0 .. p0}, LkL;->B()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 226
    invoke-virtual/range {p0 .. p0}, LkL;->q()LBL;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_36

    if-eqz v2, :cond_35

    const/4 v2, 0x0

    .line 227
    iput-byte v2, v1, LkL;->F:B

    :cond_35
    const/4 v2, 0x0

    return-object v2

    .line 228
    :cond_36
    invoke-virtual/range {p0 .. p0}, LkL;->D()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 229
    invoke-virtual/range {p0 .. p0}, LkL;->s()LJM;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_38

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    .line 230
    iput-byte v2, v1, LkL;->F:B

    :cond_37
    const/4 v2, 0x0

    return-object v2

    .line 231
    :cond_38
    invoke-virtual/range {p0 .. p0}, LkL;->F()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 232
    invoke-virtual/range {p0 .. p0}, LkL;->u()LlM;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_3a

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    .line 233
    iput-byte v2, v1, LkL;->F:B

    :cond_39
    const/4 v2, 0x0

    return-object v2

    .line 234
    :cond_3a
    invoke-virtual/range {p0 .. p0}, LkL;->E()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 235
    invoke-virtual/range {p0 .. p0}, LkL;->t()LQM;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_3c

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    .line 236
    iput-byte v2, v1, LkL;->F:B

    :cond_3b
    const/4 v2, 0x0

    return-object v2

    .line 237
    :cond_3c
    invoke-virtual/range {p0 .. p0}, LkL;->C()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 238
    invoke-virtual/range {p0 .. p0}, LkL;->r()LWL;

    move-result-object v3

    invoke-virtual {v3}, LTF;->h()Z

    move-result v3

    if-nez v3, :cond_3e

    if-eqz v2, :cond_3d

    const/4 v3, 0x0

    .line 239
    iput-byte v3, v1, LkL;->F:B

    :cond_3d
    const/4 v4, 0x0

    return-object v4

    :cond_3e
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 240
    invoke-virtual/range {p0 .. p0}, LLF;->j()Z

    move-result v5

    if-nez v5, :cond_40

    if-eqz v2, :cond_3f

    .line 241
    iput-byte v3, v1, LkL;->F:B

    :cond_3f
    return-object v4

    :cond_40
    if-eqz v2, :cond_41

    const/4 v2, 0x1

    .line 242
    iput-byte v2, v1, LkL;->F:B

    .line 243
    :cond_41
    sget-object v2, LkL;->G:LkL;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x3a -> :sswitch_9
        0x42 -> :sswitch_8
        0x4a -> :sswitch_7
        0x52 -> :sswitch_6
        0x5a -> :sswitch_5
        0x68 -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public a(LxF;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LkL;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LkL;->D:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 5
    :cond_0
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LuL;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 7
    :cond_1
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 8
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LUO;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 9
    :cond_2
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 10
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LKO;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 11
    :cond_3
    iget v1, p0, LkL;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LJM;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 13
    :cond_4
    iget v1, p0, LkL;->B:I

    const-string v2, ""

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    if-ne v1, v3, :cond_5

    .line 14
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v1, v2

    .line 15
    :goto_0
    invoke-virtual {p1, v3, v1}, LxF;->a(ILjava/lang/String;)V

    .line 16
    :cond_6
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    .line 17
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LlM;

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 18
    :cond_7
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    .line 19
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LQL;

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 20
    :cond_8
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    .line 21
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LoK;

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 22
    :cond_9
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_a

    .line 23
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LYN;

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 24
    :cond_a
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_b

    .line 25
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 26
    invoke-virtual {p1, v3, v1}, LxF;->b(II)V

    .line 27
    :cond_b
    iget v1, p0, LkL;->A:I

    const/16 v3, 0x4000

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_c

    const/16 v1, 0xe

    .line 28
    invoke-virtual {p0}, LkL;->r()LWL;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, LxF;->a(ILhG;)V

    .line 29
    :cond_c
    iget v1, p0, LkL;->B:I

    const/16 v3, 0xf

    if-ne v1, v3, :cond_d

    .line 30
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LBL;

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 31
    :cond_d
    iget v1, p0, LkL;->B:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_f

    if-ne v1, v3, :cond_e

    .line 32
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 33
    :cond_e
    invoke-virtual {p1, v3, v2}, LxF;->a(ILjava/lang/String;)V

    .line 34
    :cond_f
    iget v1, p0, LkL;->B:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_10

    .line 35
    iget-object v1, p0, LkL;->C:Ljava/lang/Object;

    check-cast v1, LQM;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_10
    const/high16 v1, 0x20000000

    .line 36
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 37
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LoK;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LoK;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LoK;->G:LoK;

    return-object v0
.end method

.method public n()LYN;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LYN;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LYN;->F:LYN;

    return-object v0
.end method

.method public o()LKO;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LKO;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LKO;->B:LKO;

    return-object v0
.end method

.method public p()LuL;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LuL;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LuL;->B:LuL;

    return-object v0
.end method

.method public q()LBL;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LBL;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LBL;->P:LBL;

    return-object v0
.end method

.method public r()LWL;
    .locals 1

    .line 1
    iget-object v0, p0, LkL;->E:LWL;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LWL;->B:LWL;

    :cond_0
    return-object v0
.end method

.method public s()LJM;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LJM;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LJM;->C:LJM;

    return-object v0
.end method

.method public t()LQM;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LQM;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LQM;->B:LQM;

    return-object v0
.end method

.method public u()LlM;
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LkL;->C:Ljava/lang/Object;

    check-cast v0, LlM;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LlM;->E:LlM;

    return-object v0
.end method

.method public v()LjL;
    .locals 1

    .line 1
    iget v0, p0, LkL;->B:I

    invoke-static {v0}, LjL;->a(I)LjL;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public y()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 2

    .line 1
    iget v0, p0, LkL;->B:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
