.class public final LrO;
.super LLF;
.source "PG"

# interfaces
.implements LvO;


# static fields
.field public static final Z:LrO;

.field public static volatile a0:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:I

.field public E:Ljava/lang/Object;

.field public F:Ljava/lang/String;

.field public G:LbG;

.field public H:I

.field public I:LBM;

.field public J:LlO;

.field public K:LfO;

.field public L:I

.field public M:I

.field public N:LbO;

.field public O:LVN;

.field public P:LbO;

.field public Q:I

.field public R:I

.field public S:LEN;

.field public T:F

.field public U:LON;

.field public V:I

.field public W:I

.field public X:I

.field public Y:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LrO;

    invoke-direct {v0}, LrO;-><init>()V

    sput-object v0, LrO;->Z:LrO;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LrO;->B:I

    .line 3
    iput v0, p0, LrO;->D:I

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, LrO;->Y:B

    const-string v0, ""

    .line 5
    iput-object v0, p0, LrO;->F:Ljava/lang/String;

    .line 6
    sget-object v0, LlG;->y:LlG;

    .line 7
    iput-object v0, p0, LrO;->G:LbG;

    const/high16 v0, -0x22000000

    .line 8
    iput v0, p0, LrO;->H:I

    const/4 v0, 0x1

    .line 9
    iput v0, p0, LrO;->L:I

    .line 10
    iput v0, p0, LrO;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    iput v1, p0, LrO;->T:F

    .line 12
    iput v0, p0, LrO;->V:I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

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
    iget v0, p0, LrO;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public C()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/16 v1, 0x20

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
    iget v0, p0, LrO;->A:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a()I
    .locals 6

    .line 72
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 73
    :cond_0
    iget v0, p0, LrO;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, LrO;->F:Ljava/lang/String;

    .line 75
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 76
    :goto_0
    iget v1, p0, LrO;->A:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 77
    iget v1, p0, LrO;->H:I

    .line 78
    invoke-static {v3, v1}, LxF;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    :cond_2
    iget v1, p0, LrO;->A:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    .line 80
    iget-object v4, p0, LrO;->I:LBM;

    if-nez v4, :cond_3

    .line 81
    sget-object v4, LBM;->C:LBM;

    .line 82
    :cond_3
    invoke-static {v1, v4}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    :cond_4
    iget v1, p0, LrO;->A:I

    const/16 v4, 0x10

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    .line 84
    iget-object v1, p0, LrO;->K:LfO;

    if-nez v1, :cond_5

    .line 85
    sget-object v1, LfO;->I:LfO;

    .line 86
    :cond_5
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    :cond_6
    iget v1, p0, LrO;->A:I

    const/16 v3, 0x80

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    const/4 v1, 0x5

    .line 88
    iget-object v3, p0, LrO;->N:LbO;

    if-nez v3, :cond_7

    .line 89
    sget-object v3, LbO;->E:LbO;

    .line 90
    :cond_7
    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 91
    :cond_8
    iget v1, p0, LrO;->A:I

    const/16 v3, 0x100

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x6

    .line 92
    invoke-virtual {p0}, LrO;->m()LVN;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_9
    iget v1, p0, LrO;->A:I

    const/16 v3, 0x200

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/4 v1, 0x7

    .line 94
    iget-object v3, p0, LrO;->P:LbO;

    if-nez v3, :cond_a

    .line 95
    sget-object v3, LbO;->E:LbO;

    .line 96
    :cond_a
    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_b
    iget v1, p0, LrO;->B:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_c

    .line 98
    iget-object v1, p0, LrO;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    invoke-static {v3, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_c
    iget v1, p0, LrO;->D:I

    const/16 v5, 0x9

    if-ne v1, v5, :cond_d

    .line 102
    iget-object v1, p0, LrO;->E:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 104
    invoke-static {v5, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_d
    iget v1, p0, LrO;->A:I

    const/16 v5, 0x4000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_e

    const/16 v1, 0xa

    .line 106
    iget v5, p0, LrO;->Q:I

    .line 107
    invoke-static {v1, v5}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_e
    iget v1, p0, LrO;->A:I

    const v5, 0x8000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_f

    const/16 v1, 0xb

    .line 109
    iget v5, p0, LrO;->R:I

    .line 110
    invoke-static {v1, v5}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_f
    iget v1, p0, LrO;->A:I

    const/high16 v5, 0x10000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_10

    const/16 v1, 0xc

    .line 112
    invoke-virtual {p0}, LrO;->p()LEN;

    move-result-object v5

    invoke-static {v1, v5}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_10
    iget v1, p0, LrO;->A:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_11

    const/16 v1, 0xd

    .line 114
    iget v5, p0, LrO;->T:F

    .line 115
    invoke-static {v1, v5}, LxF;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_11
    iget v1, p0, LrO;->A:I

    const/high16 v5, 0x40000

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_13

    const/16 v1, 0xe

    .line 117
    iget-object v5, p0, LrO;->U:LON;

    if-nez v5, :cond_12

    .line 118
    sget-object v5, LON;->C:LON;

    .line 119
    :cond_12
    invoke-static {v1, v5}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    :cond_13
    :goto_1
    iget-object v1, p0, LrO;->G:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_14

    .line 121
    iget-object v1, p0, LrO;->G:LbG;

    .line 122
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-static {v4, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_14
    iget v1, p0, LrO;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_15

    const/16 v1, 0x11

    .line 124
    invoke-virtual {p0}, LrO;->o()LlO;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_15
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    const/16 v1, 0x12

    .line 126
    iget v2, p0, LrO;->V:I

    .line 127
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    :cond_16
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    const/16 v1, 0x13

    .line 129
    iget v2, p0, LrO;->W:I

    .line 130
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_17
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    const/16 v1, 0x14

    .line 132
    iget v2, p0, LrO;->X:I

    .line 133
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_18
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    const/16 v1, 0x15

    .line 135
    iget v2, p0, LrO;->L:I

    .line 136
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_19
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a

    const/16 v1, 0x16

    .line 138
    iget v2, p0, LrO;->M:I

    .line 139
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_1a
    iget v1, p0, LrO;->B:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1b

    .line 141
    iget-object v1, p0, LrO;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_1b
    iget v1, p0, LrO;->D:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1c

    .line 144
    iget-object v1, p0, LrO;->E:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 145
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_1c
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 147
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 148
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 149
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/16 v3, 0x18

    const/16 v4, 0x17

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 150
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 151
    :pswitch_0
    sget-object p1, LrO;->a0:LkG;

    if-nez p1, :cond_1

    const-class p1, LrO;

    monitor-enter p1

    .line 152
    :try_start_0
    sget-object p2, LrO;->a0:LkG;

    if-nez p2, :cond_0

    .line 153
    new-instance p2, LGF;

    sget-object p3, LrO;->Z:LrO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LrO;->a0:LkG;

    .line 154
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 155
    :cond_1
    :goto_0
    sget-object p1, LrO;->a0:LkG;

    return-object p1

    .line 156
    :pswitch_1
    new-instance p1, LoO;

    invoke-direct {p1, v7}, LoO;-><init>(LQN;)V

    return-object p1

    .line 157
    :pswitch_2
    new-instance p1, LrO;

    invoke-direct {p1}, LrO;-><init>()V

    return-object p1

    .line 158
    :pswitch_3
    iget-object p1, p0, LrO;->G:LbG;

    check-cast p1, LhF;

    invoke-virtual {p1}, LhF;->c()V

    return-object v7

    .line 159
    :pswitch_4
    check-cast p2, LtF;

    .line 160
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_1b

    .line 161
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 162
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v8

    goto/16 :goto_a

    .line 163
    :sswitch_0
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 164
    invoke-static {p1}, LnO;->a(I)LnO;

    move-result-object v8

    if-nez v8, :cond_3

    .line 165
    invoke-super {p0, v3, p1}, LTF;->a(II)V

    goto :goto_1

    .line 166
    :cond_3
    iput v3, p0, LrO;->D:I

    .line 167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LrO;->E:Ljava/lang/Object;

    goto :goto_1

    .line 168
    :sswitch_1
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 169
    invoke-static {p1}, LnO;->a(I)LnO;

    move-result-object v8

    if-nez v8, :cond_4

    .line 170
    invoke-super {p0, v4, p1}, LTF;->a(II)V

    goto :goto_1

    .line 171
    :cond_4
    iput v4, p0, LrO;->B:I

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LrO;->C:Ljava/lang/Object;

    goto :goto_1

    .line 173
    :sswitch_2
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 174
    invoke-static {p1}, LxO;->a(I)LxO;

    move-result-object v8

    if-nez v8, :cond_5

    const/16 v8, 0x16

    .line 175
    invoke-super {p0, v8, p1}, LTF;->a(II)V

    goto :goto_1

    .line 176
    :cond_5
    iget v8, p0, LrO;->A:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, LrO;->A:I

    .line 177
    iput p1, p0, LrO;->M:I

    goto :goto_1

    .line 178
    :sswitch_3
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 179
    invoke-static {p1}, LwO;->a(I)LwO;

    move-result-object v8

    if-nez v8, :cond_6

    const/16 v8, 0x15

    .line 180
    invoke-super {p0, v8, p1}, LTF;->a(II)V

    goto :goto_1

    .line 181
    :cond_6
    iget v8, p0, LrO;->A:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, LrO;->A:I

    .line 182
    iput p1, p0, LrO;->L:I

    goto :goto_1

    .line 183
    :sswitch_4
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 184
    invoke-static {p1}, LiO;->a(I)LiO;

    move-result-object v8

    if-nez v8, :cond_7

    const/16 v8, 0x14

    .line 185
    invoke-super {p0, v8, p1}, LTF;->a(II)V

    goto :goto_1

    .line 186
    :cond_7
    iget v8, p0, LrO;->A:I

    const/high16 v9, 0x200000

    or-int/2addr v8, v9

    iput v8, p0, LrO;->A:I

    .line 187
    iput p1, p0, LrO;->X:I

    goto/16 :goto_1

    .line 188
    :sswitch_5
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 189
    invoke-static {p1}, LhO;->a(I)LhO;

    move-result-object v8

    if-nez v8, :cond_8

    const/16 v8, 0x13

    .line 190
    invoke-super {p0, v8, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 191
    :cond_8
    iget v8, p0, LrO;->A:I

    const/high16 v9, 0x100000

    or-int/2addr v8, v9

    iput v8, p0, LrO;->A:I

    .line 192
    iput p1, p0, LrO;->W:I

    goto/16 :goto_1

    .line 193
    :sswitch_6
    invoke-virtual {p2}, LtF;->e()I

    move-result p1

    .line 194
    invoke-static {p1}, LIM;->a(I)LIM;

    move-result-object v8

    if-nez v8, :cond_9

    const/16 v8, 0x12

    .line 195
    invoke-super {p0, v8, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 196
    :cond_9
    iget v8, p0, LrO;->A:I

    const/high16 v9, 0x80000

    or-int/2addr v8, v9

    iput v8, p0, LrO;->A:I

    .line 197
    iput p1, p0, LrO;->V:I

    goto/16 :goto_1

    .line 198
    :sswitch_7
    iget p1, p0, LrO;->A:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_a

    .line 199
    iget-object p1, p0, LrO;->J:LlO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LjO;

    goto :goto_2

    :cond_a
    move-object p1, v7

    .line 200
    :goto_2
    invoke-static {}, LlO;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LlO;

    iput-object v8, p0, LrO;->J:LlO;

    if-eqz p1, :cond_b

    .line 201
    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 202
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LlO;

    iput-object p1, p0, LrO;->J:LlO;

    .line 203
    :cond_b
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v6

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 204
    :sswitch_8
    iget-object p1, p0, LrO;->G:LbG;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    check-cast p1, LhF;

    :try_start_2
    invoke-virtual {p1}, LhF;->b()Z

    move-result p1

    if-nez p1, :cond_c

    .line 205
    iget-object p1, p0, LrO;->G:LbG;

    .line 206
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LrO;->G:LbG;

    .line 207
    :cond_c
    iget-object p1, p0, LrO;->G:LbG;

    .line 208
    invoke-static {}, LdN;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LdN;

    .line 209
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 210
    :sswitch_9
    iget p1, p0, LrO;->A:I

    const/high16 v8, 0x40000

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_d

    .line 211
    iget-object p1, p0, LrO;->U:LON;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LNN;

    goto :goto_3

    :cond_d
    move-object p1, v7

    .line 212
    :goto_3
    invoke-static {}, LON;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LON;

    iput-object v9, p0, LrO;->U:LON;

    if-eqz p1, :cond_e

    .line 213
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 214
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LON;

    iput-object p1, p0, LrO;->U:LON;

    .line 215
    :cond_e
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 216
    :sswitch_a
    iget p1, p0, LrO;->A:I

    const/high16 v8, 0x20000

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    .line 217
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LrO;->T:F

    goto/16 :goto_1

    .line 218
    :sswitch_b
    iget p1, p0, LrO;->A:I

    const/high16 v8, 0x10000

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_f

    .line 219
    iget-object p1, p0, LrO;->S:LEN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LCN;

    goto :goto_4

    :cond_f
    move-object p1, v7

    .line 220
    :goto_4
    invoke-static {}, LEN;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LEN;

    iput-object v9, p0, LrO;->S:LEN;

    if-eqz p1, :cond_10

    .line 221
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 222
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LEN;

    iput-object p1, p0, LrO;->S:LEN;

    .line 223
    :cond_10
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 224
    :sswitch_c
    iget p1, p0, LrO;->A:I

    const v8, 0x8000

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    .line 225
    invoke-virtual {p2}, LtF;->q()I

    move-result p1

    iput p1, p0, LrO;->R:I

    goto/16 :goto_1

    .line 226
    :sswitch_d
    iget p1, p0, LrO;->A:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, LrO;->A:I

    .line 227
    invoke-virtual {p2}, LtF;->q()I

    move-result p1

    iput p1, p0, LrO;->Q:I

    goto/16 :goto_1

    .line 228
    :sswitch_e
    iput v2, p0, LrO;->D:I

    .line 229
    invoke-virtual {p2}, LtF;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LrO;->E:Ljava/lang/Object;

    goto/16 :goto_1

    .line 230
    :sswitch_f
    iput v6, p0, LrO;->B:I

    .line 231
    invoke-virtual {p2}, LtF;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LrO;->C:Ljava/lang/Object;

    goto/16 :goto_1

    .line 232
    :sswitch_10
    iget p1, p0, LrO;->A:I

    const/16 v8, 0x200

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_11

    .line 233
    iget-object p1, p0, LrO;->P:LbO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LaO;

    goto :goto_5

    :cond_11
    move-object p1, v7

    .line 234
    :goto_5
    invoke-static {}, LbO;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LbO;

    iput-object v9, p0, LrO;->P:LbO;

    if-eqz p1, :cond_12

    .line 235
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 236
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LbO;

    iput-object p1, p0, LrO;->P:LbO;

    .line 237
    :cond_12
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 238
    :sswitch_11
    iget p1, p0, LrO;->A:I

    const/16 v8, 0x100

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_13

    .line 239
    iget-object p1, p0, LrO;->O:LVN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LUN;

    goto :goto_6

    :cond_13
    move-object p1, v7

    .line 240
    :goto_6
    invoke-static {}, LVN;->q()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LVN;

    iput-object v9, p0, LrO;->O:LVN;

    if-eqz p1, :cond_14

    .line 241
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 242
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LVN;

    iput-object p1, p0, LrO;->O:LVN;

    .line 243
    :cond_14
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 244
    :sswitch_12
    iget p1, p0, LrO;->A:I

    const/16 v8, 0x80

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_15

    .line 245
    iget-object p1, p0, LrO;->N:LbO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LaO;

    goto :goto_7

    :cond_15
    move-object p1, v7

    .line 246
    :goto_7
    invoke-static {}, LbO;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LbO;

    iput-object v9, p0, LrO;->N:LbO;

    if-eqz p1, :cond_16

    .line 247
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 248
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LbO;

    iput-object p1, p0, LrO;->N:LbO;

    .line 249
    :cond_16
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 250
    :sswitch_13
    iget p1, p0, LrO;->A:I

    const/16 v8, 0x10

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_17

    .line 251
    iget-object p1, p0, LrO;->K:LfO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LdO;

    goto :goto_8

    :cond_17
    move-object p1, v7

    .line 252
    :goto_8
    invoke-static {}, LfO;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LfO;

    iput-object v9, p0, LrO;->K:LfO;

    if-eqz p1, :cond_18

    .line 253
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 254
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LfO;

    iput-object p1, p0, LrO;->K:LfO;

    .line 255
    :cond_18
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 256
    :sswitch_14
    iget p1, p0, LrO;->A:I

    const/4 v8, 0x4

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_19

    .line 257
    iget-object p1, p0, LrO;->I:LBM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LzM;

    goto :goto_9

    :cond_19
    move-object p1, v7

    .line 258
    :goto_9
    invoke-static {}, LBM;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LBM;

    iput-object v9, p0, LrO;->I:LBM;

    if-eqz p1, :cond_1a

    .line 259
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 260
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LBM;

    iput-object p1, p0, LrO;->I:LBM;

    .line 261
    :cond_1a
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v8

    iput p1, p0, LrO;->A:I

    goto/16 :goto_1

    .line 262
    :sswitch_15
    iget p1, p0, LrO;->A:I

    or-int/2addr p1, v5

    iput p1, p0, LrO;->A:I

    .line 263
    invoke-virtual {p2}, LtF;->f()I

    move-result p1

    iput p1, p0, LrO;->H:I

    goto/16 :goto_1

    .line 264
    :sswitch_16
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget v8, p0, LrO;->A:I

    or-int/2addr v8, v1

    iput v8, p0, LrO;->A:I

    .line 266
    iput-object p1, p0, LrO;->F:Ljava/lang/String;

    goto/16 :goto_1

    .line 267
    :goto_a
    check-cast v8, LrO;

    invoke-virtual {p0, v8, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1
    :try_end_2
    .catch LdG; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_2

    :sswitch_17
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_b

    :catch_0
    move-exception p1

    .line 268
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 269
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 270
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 271
    :goto_b
    throw p1

    .line 272
    :cond_1b
    :pswitch_5
    sget-object p1, LrO;->Z:LrO;

    return-object p1

    .line 273
    :pswitch_6
    check-cast p2, LSF;

    .line 274
    check-cast p3, LrO;

    .line 275
    invoke-virtual {p0}, LrO;->B()Z

    move-result p1

    iget-object v7, p0, LrO;->F:Ljava/lang/String;

    .line 276
    invoke-virtual {p3}, LrO;->B()Z

    move-result v8

    iget-object v9, p3, LrO;->F:Ljava/lang/String;

    .line 277
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LrO;->F:Ljava/lang/String;

    .line 278
    iget-object p1, p0, LrO;->G:LbG;

    iget-object v7, p3, LrO;->G:LbG;

    invoke-interface {p2, p1, v7}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LrO;->G:LbG;

    .line 279
    invoke-virtual {p0}, LrO;->s()Z

    move-result p1

    iget v7, p0, LrO;->H:I

    .line 280
    invoke-virtual {p3}, LrO;->s()Z

    move-result v8

    iget v9, p3, LrO;->H:I

    .line 281
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->H:I

    .line 282
    iget-object p1, p0, LrO;->I:LBM;

    iget-object v7, p3, LrO;->I:LBM;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LBM;

    iput-object p1, p0, LrO;->I:LBM;

    .line 283
    iget-object p1, p0, LrO;->J:LlO;

    iget-object v7, p3, LrO;->J:LlO;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlO;

    iput-object p1, p0, LrO;->J:LlO;

    .line 284
    iget-object p1, p0, LrO;->K:LfO;

    iget-object v7, p3, LrO;->K:LfO;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LfO;

    iput-object p1, p0, LrO;->K:LfO;

    .line 285
    invoke-virtual {p0}, LrO;->C()Z

    move-result p1

    iget v7, p0, LrO;->L:I

    .line 286
    invoke-virtual {p3}, LrO;->C()Z

    move-result v8

    iget v9, p3, LrO;->L:I

    .line 287
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->L:I

    .line 288
    invoke-virtual {p0}, LrO;->D()Z

    move-result p1

    iget v7, p0, LrO;->M:I

    .line 289
    invoke-virtual {p3}, LrO;->D()Z

    move-result v8

    iget v9, p3, LrO;->M:I

    .line 290
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->M:I

    .line 291
    iget-object p1, p0, LrO;->N:LbO;

    iget-object v7, p3, LrO;->N:LbO;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LbO;

    iput-object p1, p0, LrO;->N:LbO;

    .line 292
    iget-object p1, p0, LrO;->O:LVN;

    iget-object v7, p3, LrO;->O:LVN;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LVN;

    iput-object p1, p0, LrO;->O:LVN;

    .line 293
    iget-object p1, p0, LrO;->P:LbO;

    iget-object v7, p3, LrO;->P:LbO;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LbO;

    iput-object p1, p0, LrO;->P:LbO;

    .line 294
    invoke-virtual {p0}, LrO;->x()Z

    move-result p1

    iget v7, p0, LrO;->Q:I

    .line 295
    invoke-virtual {p3}, LrO;->x()Z

    move-result v8

    iget v9, p3, LrO;->Q:I

    .line 296
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->Q:I

    .line 297
    invoke-virtual {p0}, LrO;->w()Z

    move-result p1

    iget v7, p0, LrO;->R:I

    .line 298
    invoke-virtual {p3}, LrO;->w()Z

    move-result v8

    iget v9, p3, LrO;->R:I

    .line 299
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->R:I

    .line 300
    iget-object p1, p0, LrO;->S:LEN;

    iget-object v7, p3, LrO;->S:LEN;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LEN;

    iput-object p1, p0, LrO;->S:LEN;

    .line 301
    invoke-virtual {p0}, LrO;->y()Z

    move-result p1

    iget v7, p0, LrO;->T:F

    .line 302
    invoke-virtual {p3}, LrO;->y()Z

    move-result v8

    iget v9, p3, LrO;->T:F

    .line 303
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LrO;->T:F

    .line 304
    iget-object p1, p0, LrO;->U:LON;

    iget-object v7, p3, LrO;->U:LON;

    invoke-interface {p2, p1, v7}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LON;

    iput-object p1, p0, LrO;->U:LON;

    .line 305
    invoke-virtual {p0}, LrO;->A()Z

    move-result p1

    iget v7, p0, LrO;->V:I

    .line 306
    invoke-virtual {p3}, LrO;->A()Z

    move-result v8

    iget v9, p3, LrO;->V:I

    .line 307
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->V:I

    .line 308
    invoke-virtual {p0}, LrO;->t()Z

    move-result p1

    iget v7, p0, LrO;->W:I

    .line 309
    invoke-virtual {p3}, LrO;->t()Z

    move-result v8

    iget v9, p3, LrO;->W:I

    .line 310
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->W:I

    .line 311
    invoke-virtual {p0}, LrO;->u()Z

    move-result p1

    iget v7, p0, LrO;->X:I

    .line 312
    invoke-virtual {p3}, LrO;->u()Z

    move-result v8

    iget v9, p3, LrO;->X:I

    .line 313
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO;->X:I

    .line 314
    invoke-virtual {p3}, LrO;->q()LqO;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_20

    if-eq p1, v1, :cond_1e

    if-eq p1, v5, :cond_1c

    goto :goto_f

    .line 315
    :cond_1c
    iget p1, p0, LrO;->B:I

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_c

    :cond_1d
    const/4 p1, 0x0

    :goto_c
    invoke-interface {p2, p1}, LSF;->a(Z)V

    goto :goto_f

    .line 316
    :cond_1e
    iget p1, p0, LrO;->B:I

    if-ne p1, v4, :cond_1f

    const/4 p1, 0x1

    goto :goto_d

    :cond_1f
    const/4 p1, 0x0

    :goto_d
    iget-object v4, p0, LrO;->C:Ljava/lang/Object;

    iget-object v6, p3, LrO;->C:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v6}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LrO;->C:Ljava/lang/Object;

    goto :goto_f

    .line 317
    :cond_20
    iget p1, p0, LrO;->B:I

    if-ne p1, v6, :cond_21

    const/4 p1, 0x1

    goto :goto_e

    :cond_21
    const/4 p1, 0x0

    :goto_e
    iget-object v4, p0, LrO;->C:Ljava/lang/Object;

    iget-object v6, p3, LrO;->C:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v6}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LrO;->C:Ljava/lang/Object;

    .line 318
    :goto_f
    invoke-virtual {p3}, LrO;->n()LpO;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_26

    if-eq p1, v1, :cond_24

    if-eq p1, v5, :cond_22

    goto :goto_10

    .line 319
    :cond_22
    iget p1, p0, LrO;->D:I

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    :cond_23
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_10

    .line 320
    :cond_24
    iget p1, p0, LrO;->D:I

    if-ne p1, v3, :cond_25

    const/4 v0, 0x1

    :cond_25
    iget-object p1, p0, LrO;->E:Ljava/lang/Object;

    iget-object v1, p3, LrO;->E:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LrO;->E:Ljava/lang/Object;

    goto :goto_10

    .line 321
    :cond_26
    iget p1, p0, LrO;->D:I

    if-ne p1, v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    iget-object p1, p0, LrO;->E:Ljava/lang/Object;

    iget-object v1, p3, LrO;->E:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LrO;->E:Ljava/lang/Object;

    .line 322
    :goto_10
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_2a

    .line 323
    iget p1, p3, LrO;->B:I

    if-eqz p1, :cond_28

    .line 324
    iput p1, p0, LrO;->B:I

    .line 325
    :cond_28
    iget p1, p3, LrO;->D:I

    if-eqz p1, :cond_29

    .line 326
    iput p1, p0, LrO;->D:I

    .line 327
    :cond_29
    iget p1, p0, LrO;->A:I

    iget p2, p3, LrO;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LrO;->A:I

    :cond_2a
    return-object p0

    .line 328
    :pswitch_7
    iget-byte p1, p0, LrO;->Y:B

    if-ne p1, v1, :cond_2b

    .line 329
    sget-object p1, LrO;->Z:LrO;

    return-object p1

    :cond_2b
    if-nez p1, :cond_2c

    return-object v7

    .line 330
    :cond_2c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 331
    invoke-virtual {p0}, LrO;->v()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 332
    invoke-virtual {p0}, LrO;->o()LlO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2e

    if-eqz p1, :cond_2d

    .line 333
    iput-byte v0, p0, LrO;->Y:B

    :cond_2d
    return-object v7

    .line 334
    :cond_2e
    invoke-virtual {p0}, LrO;->r()Z

    move-result p2

    if-eqz p2, :cond_30

    .line 335
    invoke-virtual {p0}, LrO;->m()LVN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_30

    if-eqz p1, :cond_2f

    .line 336
    iput-byte v0, p0, LrO;->Y:B

    :cond_2f
    return-object v7

    .line 337
    :cond_30
    invoke-virtual {p0}, LrO;->z()Z

    move-result p2

    if-eqz p2, :cond_32

    .line 338
    invoke-virtual {p0}, LrO;->p()LEN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_32

    if-eqz p1, :cond_31

    .line 339
    iput-byte v0, p0, LrO;->Y:B

    :cond_31
    return-object v7

    .line 340
    :cond_32
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_34

    if-eqz p1, :cond_33

    .line 341
    iput-byte v0, p0, LrO;->Y:B

    :cond_33
    return-object v7

    :cond_34
    if-eqz p1, :cond_35

    .line 342
    iput-byte v1, p0, LrO;->Y:B

    .line 343
    :cond_35
    sget-object p1, LrO;->Z:LrO;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
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
        0x0 -> :sswitch_17
        0xa -> :sswitch_16
        0x15 -> :sswitch_15
        0x1a -> :sswitch_14
        0x22 -> :sswitch_13
        0x2a -> :sswitch_12
        0x32 -> :sswitch_11
        0x3a -> :sswitch_10
        0x40 -> :sswitch_f
        0x48 -> :sswitch_e
        0x50 -> :sswitch_d
        0x58 -> :sswitch_c
        0x62 -> :sswitch_b
        0x6d -> :sswitch_a
        0x72 -> :sswitch_9
        0x82 -> :sswitch_8
        0x8a -> :sswitch_7
        0x90 -> :sswitch_6
        0x98 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xb8 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(LxF;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LrO;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LrO;->F:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 5
    :cond_0
    iget v1, p0, LrO;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget v1, p0, LrO;->H:I

    invoke-virtual {p1, v2, v1}, LxF;->a(II)V

    .line 7
    :cond_1
    iget v1, p0, LrO;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 8
    iget-object v3, p0, LrO;->I:LBM;

    if-nez v3, :cond_2

    .line 9
    sget-object v3, LBM;->C:LBM;

    .line 10
    :cond_2
    invoke-virtual {p1, v1, v3}, LxF;->a(ILhG;)V

    .line 11
    :cond_3
    iget v1, p0, LrO;->A:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 12
    iget-object v1, p0, LrO;->K:LfO;

    if-nez v1, :cond_4

    .line 13
    sget-object v1, LfO;->I:LfO;

    .line 14
    :cond_4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 15
    :cond_5
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x5

    .line 16
    iget-object v2, p0, LrO;->N:LbO;

    if-nez v2, :cond_6

    .line 17
    sget-object v2, LbO;->E:LbO;

    .line 18
    :cond_6
    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 19
    :cond_7
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x6

    .line 20
    invoke-virtual {p0}, LrO;->m()LVN;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 21
    :cond_8
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x7

    .line 22
    iget-object v2, p0, LrO;->P:LbO;

    if-nez v2, :cond_9

    .line 23
    sget-object v2, LbO;->E:LbO;

    .line 24
    :cond_9
    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 25
    :cond_a
    iget v1, p0, LrO;->B:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 26
    iget-object v1, p0, LrO;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28
    invoke-virtual {p1, v2, v1}, LxF;->d(II)V

    .line 29
    :cond_b
    iget v1, p0, LrO;->D:I

    const/16 v4, 0x9

    if-ne v1, v4, :cond_c

    .line 30
    iget-object v1, p0, LrO;->E:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 32
    invoke-virtual {p1, v4, v1}, LxF;->d(II)V

    .line 33
    :cond_c
    iget v1, p0, LrO;->A:I

    const/16 v4, 0x4000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_d

    const/16 v1, 0xa

    .line 34
    iget v4, p0, LrO;->Q:I

    invoke-virtual {p1, v1, v4}, LxF;->d(II)V

    .line 35
    :cond_d
    iget v1, p0, LrO;->A:I

    const v4, 0x8000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_e

    const/16 v1, 0xb

    .line 36
    iget v4, p0, LrO;->R:I

    invoke-virtual {p1, v1, v4}, LxF;->d(II)V

    .line 37
    :cond_e
    iget v1, p0, LrO;->A:I

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_f

    const/16 v1, 0xc

    .line 38
    invoke-virtual {p0}, LrO;->p()LEN;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, LxF;->a(ILhG;)V

    .line 39
    :cond_f
    iget v1, p0, LrO;->A:I

    const/high16 v4, 0x20000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_10

    const/16 v1, 0xd

    .line 40
    iget v4, p0, LrO;->T:F

    invoke-virtual {p1, v1, v4}, LxF;->a(IF)V

    .line 41
    :cond_10
    iget v1, p0, LrO;->A:I

    const/high16 v4, 0x40000

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_12

    const/16 v1, 0xe

    .line 42
    iget-object v4, p0, LrO;->U:LON;

    if-nez v4, :cond_11

    .line 43
    sget-object v4, LON;->C:LON;

    .line 44
    :cond_11
    invoke-virtual {p1, v1, v4}, LxF;->a(ILhG;)V

    :cond_12
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v4, p0, LrO;->G:LbG;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 46
    iget-object v4, p0, LrO;->G:LbG;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-virtual {p1, v3, v4}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_13
    iget v1, p0, LrO;->A:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14

    const/16 v1, 0x11

    .line 48
    invoke-virtual {p0}, LrO;->o()LlO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 49
    :cond_14
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    const/16 v1, 0x12

    .line 50
    iget v2, p0, LrO;->V:I

    .line 51
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 52
    :cond_15
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16

    const/16 v1, 0x13

    .line 53
    iget v2, p0, LrO;->W:I

    .line 54
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 55
    :cond_16
    iget v1, p0, LrO;->A:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    const/16 v1, 0x14

    .line 56
    iget v2, p0, LrO;->X:I

    .line 57
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 58
    :cond_17
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_18

    const/16 v1, 0x15

    .line 59
    iget v2, p0, LrO;->L:I

    .line 60
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 61
    :cond_18
    iget v1, p0, LrO;->A:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_19

    const/16 v1, 0x16

    .line 62
    iget v2, p0, LrO;->M:I

    .line 63
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 64
    :cond_19
    iget v1, p0, LrO;->B:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1a

    .line 65
    iget-object v1, p0, LrO;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 66
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    .line 67
    :cond_1a
    iget v1, p0, LrO;->D:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1b

    .line 68
    iget-object v1, p0, LrO;->E:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    :cond_1b
    const/high16 v1, 0x20000000

    .line 70
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 71
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LVN;
    .locals 1

    .line 1
    iget-object v0, p0, LrO;->O:LVN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LVN;->J:LVN;

    :cond_0
    return-object v0
.end method

.method public n()LpO;
    .locals 1

    .line 1
    iget v0, p0, LrO;->D:I

    invoke-static {v0}, LpO;->a(I)LpO;

    move-result-object v0

    return-object v0
.end method

.method public o()LlO;
    .locals 1

    .line 1
    iget-object v0, p0, LrO;->J:LlO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlO;->E:LlO;

    :cond_0
    return-object v0
.end method

.method public p()LEN;
    .locals 1

    .line 1
    iget-object v0, p0, LrO;->S:LEN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LEN;->H:LEN;

    :cond_0
    return-object v0
.end method

.method public q()LqO;
    .locals 1

    .line 1
    iget v0, p0, LrO;->B:I

    invoke-static {v0}, LqO;->a(I)LqO;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const v1, 0x8000

    and-int/2addr v0, v1

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
    iget v0, p0, LrO;->A:I

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

.method public y()Z
    .locals 2

    .line 1
    iget v0, p0, LrO;->A:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

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
    iget v0, p0, LrO;->A:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
