.class public final LfO;
.super LTF;
.source "PG"

# interfaces
.implements LgO;


# static fields
.field public static final I:LfO;

.field public static volatile J:LkG;


# instance fields
.field public A:I

.field public B:F

.field public C:I

.field public D:I

.field public E:Z

.field public F:F

.field public G:LbG;

.field public H:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LfO;

    invoke-direct {v0}, LfO;-><init>()V

    sput-object v0, LfO;->I:LfO;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/16 v0, 0xe

    .line 2
    iput v0, p0, LfO;->A:I

    const v0, 0x3f99999a    # 1.2f

    .line 3
    iput v0, p0, LfO;->B:F

    const/4 v0, 0x3

    .line 4
    iput v0, p0, LfO;->D:I

    .line 5
    sget-object v0, LlG;->y:LlG;

    .line 6
    iput-object v0, p0, LfO;->G:LbG;

    .line 7
    iput-object v0, p0, LfO;->H:LbG;

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LfO;->I:LfO;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 8

    .line 19
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 20
    :cond_0
    iget v0, p0, LfO;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 21
    iget v0, p0, LfO;->A:I

    .line 22
    invoke-static {v1, v0}, LxF;->g(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget v3, p0, LfO;->z:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 24
    iget v3, p0, LfO;->B:F

    .line 25
    invoke-static {v4, v3}, LxF;->b(IF)I

    move-result v3

    add-int/2addr v0, v3

    .line 26
    :cond_2
    iget v3, p0, LfO;->z:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x3

    .line 27
    iget v5, p0, LfO;->D:I

    .line 28
    invoke-static {v3, v5}, LxF;->e(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 29
    :cond_3
    iget v3, p0, LfO;->z:I

    const/16 v5, 0x10

    and-int/2addr v3, v5

    const/4 v6, 0x4

    if-ne v3, v5, :cond_4

    .line 30
    iget-boolean v3, p0, LfO;->E:Z

    .line 31
    invoke-static {v6, v3}, LxF;->b(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 32
    :goto_1
    iget-object v7, p0, LfO;->G:LbG;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 33
    iget-object v7, p0, LfO;->G:LbG;

    .line 34
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, LxF;->b(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v5

    .line 35
    iget-object v3, p0, LfO;->G:LbG;

    .line 36
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    .line 37
    iget v0, p0, LfO;->z:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_6

    const/4 v0, 0x7

    .line 38
    iget v1, p0, LfO;->C:I

    .line 39
    invoke-static {v0, v1}, LxF;->h(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 40
    :cond_6
    :goto_2
    iget-object v0, p0, LfO;->H:LbG;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 41
    iget-object v0, p0, LfO;->H:LbG;

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhG;

    invoke-static {v4, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 43
    :cond_7
    iget v0, p0, LfO;->z:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 44
    iget v1, p0, LfO;->F:F

    .line 45
    invoke-static {v0, v1}, LxF;->b(IF)I

    move-result v0

    add-int/2addr v3, v0

    .line 46
    :cond_8
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v3

    .line 47
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x20

    const/16 v7, 0x8

    packed-switch p1, :pswitch_data_0

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 50
    :pswitch_0
    sget-object p1, LfO;->J:LkG;

    if-nez p1, :cond_1

    const-class p1, LfO;

    monitor-enter p1

    .line 51
    :try_start_0
    sget-object p2, LfO;->J:LkG;

    if-nez p2, :cond_0

    .line 52
    new-instance p2, LGF;

    sget-object p3, LfO;->I:LfO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LfO;->J:LkG;

    .line 53
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 54
    :cond_1
    :goto_0
    sget-object p1, LfO;->J:LkG;

    return-object p1

    .line 55
    :pswitch_1
    new-instance p1, LdO;

    invoke-direct {p1, v2}, LdO;-><init>(LQN;)V

    return-object p1

    .line 56
    :pswitch_2
    new-instance p1, LfO;

    invoke-direct {p1}, LfO;-><init>()V

    return-object p1

    .line 57
    :pswitch_3
    iget-object p1, p0, LfO;->G:LbG;

    check-cast p1, LhF;

    .line 58
    iput-boolean v0, p1, LhF;->w:Z

    .line 59
    iget-object p1, p0, LfO;->H:LbG;

    check-cast p1, LhF;

    .line 60
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 61
    :pswitch_4
    check-cast p2, LtF;

    .line 62
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_f

    .line 63
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v7, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    const/16 v2, 0x18

    if-eq p1, v2, :cond_a

    if-eq p1, v6, :cond_9

    const/16 v2, 0x32

    if-eq p1, v2, :cond_7

    const/16 v2, 0x38

    if-eq p1, v2, :cond_6

    const/16 v2, 0x42

    if-eq p1, v2, :cond_4

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_3

    .line 64
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 65
    :cond_3
    iget p1, p0, LfO;->z:I

    or-int/2addr p1, v6

    iput p1, p0, LfO;->z:I

    .line 66
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LfO;->F:F

    goto :goto_1

    .line 67
    :cond_4
    iget-object p1, p0, LfO;->H:LbG;

    check-cast p1, LhF;

    .line 68
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_5

    .line 69
    iget-object p1, p0, LfO;->H:LbG;

    .line 70
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LfO;->H:LbG;

    .line 71
    :cond_5
    iget-object p1, p0, LfO;->H:LbG;

    .line 72
    sget-object v2, LBO;->C:LBO;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 73
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LBO;

    .line 74
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_6
    iget p1, p0, LfO;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LfO;->z:I

    .line 76
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 77
    iput p1, p0, LfO;->C:I

    goto :goto_1

    .line 78
    :cond_7
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v2, p0, LfO;->G:LbG;

    check-cast v2, LhF;

    .line 80
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_8

    .line 81
    iget-object v2, p0, LfO;->G:LbG;

    .line 82
    invoke-static {v2}, LTF;->a(LbG;)LbG;

    move-result-object v2

    iput-object v2, p0, LfO;->G:LbG;

    .line 83
    :cond_8
    iget-object v2, p0, LfO;->G:LbG;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_9
    iget p1, p0, LfO;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LfO;->z:I

    .line 85
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LfO;->E:Z

    goto/16 :goto_1

    .line 86
    :cond_a
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 87
    invoke-static {p1}, LeO;->a(I)LeO;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x3

    .line 88
    invoke-super {p0, v2, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 89
    :cond_b
    iget v2, p0, LfO;->z:I

    or-int/2addr v2, v7

    iput v2, p0, LfO;->z:I

    .line 90
    iput p1, p0, LfO;->D:I

    goto/16 :goto_1

    .line 91
    :cond_c
    iget p1, p0, LfO;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LfO;->z:I

    .line 92
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LfO;->B:F

    goto/16 :goto_1

    .line 93
    :cond_d
    iget p1, p0, LfO;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LfO;->z:I

    .line 94
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 95
    iput p1, p0, LfO;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 96
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 98
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :goto_3
    throw p1

    .line 100
    :cond_f
    :pswitch_5
    sget-object p1, LfO;->I:LfO;

    return-object p1

    .line 101
    :pswitch_6
    check-cast p2, LSF;

    .line 102
    check-cast p3, LfO;

    .line 103
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_10

    const/4 p1, 0x1

    goto :goto_4

    :cond_10
    const/4 p1, 0x0

    .line 104
    :goto_4
    iget v2, p0, LfO;->A:I

    .line 105
    iget v8, p3, LfO;->z:I

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_11

    const/4 v8, 0x1

    goto :goto_5

    :cond_11
    const/4 v8, 0x0

    .line 106
    :goto_5
    iget v9, p3, LfO;->A:I

    .line 107
    invoke-interface {p2, p1, v2, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LfO;->A:I

    .line 108
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_12

    const/4 p1, 0x1

    goto :goto_6

    :cond_12
    const/4 p1, 0x0

    .line 109
    :goto_6
    iget v2, p0, LfO;->B:F

    .line 110
    iget v8, p3, LfO;->z:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_13

    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    .line 111
    :goto_7
    iget v8, p3, LfO;->B:F

    .line 112
    invoke-interface {p2, p1, v2, v5, v8}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LfO;->B:F

    .line 113
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_14

    const/4 p1, 0x1

    goto :goto_8

    :cond_14
    const/4 p1, 0x0

    .line 114
    :goto_8
    iget v2, p0, LfO;->C:I

    .line 115
    iget v5, p3, LfO;->z:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    .line 116
    :goto_9
    iget v5, p3, LfO;->C:I

    .line 117
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LfO;->C:I

    .line 118
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    .line 119
    :goto_a
    iget v2, p0, LfO;->D:I

    .line 120
    iget v4, p3, LfO;->z:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_17

    const/4 v4, 0x1

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    .line 121
    :goto_b
    iget v5, p3, LfO;->D:I

    .line 122
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LfO;->D:I

    .line 123
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_18

    const/4 p1, 0x1

    goto :goto_c

    :cond_18
    const/4 p1, 0x0

    .line 124
    :goto_c
    iget-boolean v2, p0, LfO;->E:Z

    .line 125
    iget v4, p3, LfO;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    .line 126
    :goto_d
    iget-boolean v4, p3, LfO;->E:Z

    .line 127
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LfO;->E:Z

    .line 128
    iget p1, p0, LfO;->z:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_1a

    const/4 p1, 0x1

    goto :goto_e

    :cond_1a
    const/4 p1, 0x0

    .line 129
    :goto_e
    iget v2, p0, LfO;->F:F

    .line 130
    iget v3, p3, LfO;->z:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_1b

    const/4 v0, 0x1

    .line 131
    :cond_1b
    iget v1, p3, LfO;->F:F

    .line 132
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LfO;->F:F

    .line 133
    iget-object p1, p0, LfO;->G:LbG;

    iget-object v0, p3, LfO;->G:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LfO;->G:LbG;

    .line 134
    iget-object p1, p0, LfO;->H:LbG;

    iget-object v0, p3, LfO;->H:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LfO;->H:LbG;

    .line 135
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1c

    .line 136
    iget p1, p0, LfO;->z:I

    iget p2, p3, LfO;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LfO;->z:I

    :cond_1c
    return-object p0

    .line 137
    :pswitch_7
    sget-object p1, LfO;->I:LfO;

    return-object p1

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
.end method

.method public a(LxF;)V
    .locals 6

    .line 1
    iget v0, p0, LfO;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LfO;->A:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 3
    :cond_0
    iget v0, p0, LfO;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, LfO;->B:F

    invoke-virtual {p1, v1, v0}, LxF;->a(IF)V

    .line 5
    :cond_1
    iget v0, p0, LfO;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v2, p0, LfO;->D:I

    .line 7
    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 8
    :cond_2
    iget v0, p0, LfO;->z:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    const/4 v3, 0x4

    if-ne v0, v2, :cond_3

    .line 9
    iget-boolean v0, p0, LfO;->E:Z

    invoke-virtual {p1, v3, v0}, LxF;->a(IZ)V

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v4, p0, LfO;->G:LbG;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    const/4 v4, 0x6

    .line 11
    iget-object v5, p0, LfO;->G:LbG;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, LxF;->a(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget v2, p0, LfO;->z:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x7

    .line 13
    iget v3, p0, LfO;->C:I

    invoke-virtual {p1, v2, v3}, LxF;->d(II)V

    .line 14
    :cond_5
    :goto_1
    iget-object v2, p0, LfO;->H:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 15
    iget-object v2, p0, LfO;->H:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_6
    iget v0, p0, LfO;->z:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    const/16 v0, 0x9

    .line 17
    iget v1, p0, LfO;->F:F

    invoke-virtual {p1, v0, v1}, LxF;->a(IF)V

    .line 18
    :cond_7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
