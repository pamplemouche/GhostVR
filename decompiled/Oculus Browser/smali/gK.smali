.class public final LgK;
.super LTF;
.source "PG"

# interfaces
.implements LhK;


# static fields
.field public static final F:LgK;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:I

.field public D:Ljava/lang/Object;

.field public E:LXF;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LgK;

    invoke-direct {v0}, LgK;-><init>()V

    sput-object v0, LgK;->F:LgK;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LgK;->A:I

    .line 3
    iput v0, p0, LgK;->C:I

    .line 4
    sget-object v0, LUF;->z:LUF;

    .line 5
    iput-object v0, p0, LgK;->E:LXF;

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LgK;->F:LgK;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 13
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14
    :cond_0
    iget v0, p0, LgK;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 15
    iget-object v0, p0, LgK;->B:Ljava/lang/Object;

    check-cast v0, LUO;

    .line 16
    invoke-static {v2, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 17
    :goto_1
    iget-object v4, p0, LgK;->E:LXF;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 18
    iget-object v4, p0, LgK;->E:LXF;

    .line 19
    check-cast v4, LUF;

    invoke-virtual {v4, v1}, LUF;->c(I)I

    move-result v4

    .line 20
    invoke-static {v4}, LxF;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v3

    .line 21
    iget-object v1, p0, LgK;->E:LXF;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 22
    iget v0, p0, LgK;->A:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 23
    iget-object v0, p0, LgK;->B:Ljava/lang/Object;

    check-cast v0, LTK;

    .line 24
    invoke-static {v2, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 25
    :cond_3
    iget v0, p0, LgK;->C:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 26
    iget-object v0, p0, LgK;->D:Ljava/lang/Object;

    check-cast v0, LUO;

    .line 27
    invoke-static {v2, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 28
    :cond_4
    iget v0, p0, LgK;->C:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 29
    iget-object v0, p0, LgK;->D:Ljava/lang/Object;

    check-cast v0, LTK;

    .line 30
    invoke-static {v2, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 31
    :cond_5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 32
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 35
    :pswitch_0
    sget-object p1, LgK;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LgK;

    monitor-enter p1

    .line 36
    :try_start_0
    sget-object p2, LgK;->G:LkG;

    if-nez p2, :cond_0

    .line 37
    new-instance p2, LGF;

    sget-object p3, LgK;->F:LgK;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LgK;->G:LkG;

    .line 38
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 39
    :cond_1
    :goto_0
    sget-object p1, LgK;->G:LkG;

    return-object p1

    .line 40
    :pswitch_1
    new-instance p1, LeK;

    invoke-direct {p1, v6}, LeK;-><init>(LcK;)V

    return-object p1

    .line 41
    :pswitch_2
    new-instance p1, LgK;

    invoke-direct {p1}, LgK;-><init>()V

    return-object p1

    .line 42
    :pswitch_3
    iget-object p1, p0, LgK;->E:LXF;

    check-cast p1, LhF;

    .line 43
    iput-boolean v0, p1, LhF;->w:Z

    return-object v6

    .line 44
    :pswitch_4
    check-cast p2, LtF;

    .line 45
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_17

    .line 46
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_16

    const/16 v7, 0xa

    if-eq p1, v7, :cond_13

    const/16 v7, 0x10

    if-eq p1, v7, :cond_10

    const/16 v7, 0x12

    if-eq p1, v7, :cond_c

    const/16 v7, 0x1a

    if-eq p1, v7, :cond_9

    const/16 v7, 0x22

    if-eq p1, v7, :cond_6

    const/16 v7, 0x2a

    if-eq p1, v7, :cond_3

    .line 47
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 48
    :cond_3
    iget p1, p0, LgK;->C:I

    if-ne p1, v2, :cond_4

    .line 49
    iget-object p1, p0, LgK;->D:Ljava/lang/Object;

    check-cast p1, LTK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LSK;

    goto :goto_2

    :cond_4
    move-object p1, v6

    .line 50
    :goto_2
    invoke-static {}, LTK;->j()LkG;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, p0, LgK;->D:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 51
    check-cast v7, LTK;

    invoke-virtual {p1, v7}, LFF;->a(LTF;)LFF;

    .line 52
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LgK;->D:Ljava/lang/Object;

    .line 53
    :cond_5
    iput v2, p0, LgK;->C:I

    goto :goto_1

    .line 54
    :cond_6
    iget p1, p0, LgK;->C:I

    if-ne p1, v3, :cond_7

    .line 55
    iget-object p1, p0, LgK;->D:Ljava/lang/Object;

    check-cast p1, LUO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LPO;

    goto :goto_3

    :cond_7
    move-object p1, v6

    .line 56
    :goto_3
    invoke-static {}, LUO;->j()LkG;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, p0, LgK;->D:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 57
    check-cast v7, LUO;

    invoke-virtual {p1, v7}, LFF;->a(LTF;)LFF;

    .line 58
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LgK;->D:Ljava/lang/Object;

    .line 59
    :cond_8
    iput v3, p0, LgK;->C:I

    goto :goto_1

    .line 60
    :cond_9
    iget p1, p0, LgK;->A:I

    if-ne p1, v4, :cond_a

    .line 61
    iget-object p1, p0, LgK;->B:Ljava/lang/Object;

    check-cast p1, LTK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LSK;

    goto :goto_4

    :cond_a
    move-object p1, v6

    .line 62
    :goto_4
    invoke-static {}, LTK;->j()LkG;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, p0, LgK;->B:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 63
    check-cast v7, LTK;

    invoke-virtual {p1, v7}, LFF;->a(LTF;)LFF;

    .line 64
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LgK;->B:Ljava/lang/Object;

    .line 65
    :cond_b
    iput v4, p0, LgK;->A:I

    goto/16 :goto_1

    .line 66
    :cond_c
    iget-object p1, p0, LgK;->E:LXF;

    check-cast p1, LhF;

    .line 67
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_d

    .line 68
    iget-object p1, p0, LgK;->E:LXF;

    .line 69
    invoke-static {p1}, LTF;->a(LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LgK;->E:LXF;

    .line 70
    :cond_d
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 71
    invoke-virtual {p2, p1}, LtF;->b(I)I

    move-result p1

    .line 72
    :goto_5
    invoke-virtual {p2}, LtF;->a()I

    move-result v7

    if-lez v7, :cond_f

    .line 73
    invoke-virtual {p2}, LtF;->k()I

    move-result v7

    .line 74
    invoke-static {v7}, LiK;->a(I)LiK;

    move-result-object v8

    if-nez v8, :cond_e

    .line 75
    invoke-super {p0, v5, v7}, LTF;->a(II)V

    goto :goto_5

    .line 76
    :cond_e
    iget-object v8, p0, LgK;->E:LXF;

    check-cast v8, LUF;

    .line 77
    iget v9, v8, LUF;->y:I

    invoke-virtual {v8, v9, v7}, LUF;->a(II)V

    goto :goto_5

    .line 78
    :cond_f
    iput p1, p2, LtF;->j:I

    .line 79
    invoke-virtual {p2}, LtF;->r()V

    goto/16 :goto_1

    .line 80
    :cond_10
    iget-object p1, p0, LgK;->E:LXF;

    check-cast p1, LhF;

    .line 81
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_11

    .line 82
    iget-object p1, p0, LgK;->E:LXF;

    .line 83
    invoke-static {p1}, LTF;->a(LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LgK;->E:LXF;

    .line 84
    :cond_11
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 85
    invoke-static {p1}, LiK;->a(I)LiK;

    move-result-object v7

    if-nez v7, :cond_12

    .line 86
    invoke-super {p0, v5, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 87
    :cond_12
    iget-object v7, p0, LgK;->E:LXF;

    check-cast v7, LUF;

    .line 88
    iget v8, v7, LUF;->y:I

    invoke-virtual {v7, v8, p1}, LUF;->a(II)V

    goto/16 :goto_1

    .line 89
    :cond_13
    iget p1, p0, LgK;->A:I

    if-ne p1, v1, :cond_14

    .line 90
    iget-object p1, p0, LgK;->B:Ljava/lang/Object;

    check-cast p1, LUO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LPO;

    goto :goto_6

    :cond_14
    move-object p1, v6

    .line 91
    :goto_6
    invoke-static {}, LUO;->j()LkG;

    move-result-object v7

    invoke-virtual {p2, v7, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    iput-object v7, p0, LgK;->B:Ljava/lang/Object;

    if-eqz p1, :cond_15

    .line 92
    check-cast v7, LUO;

    invoke-virtual {p1, v7}, LFF;->a(LTF;)LFF;

    .line 93
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LgK;->B:Ljava/lang/Object;

    .line 94
    :cond_15
    iput v1, p0, LgK;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_16
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 95
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :goto_8
    throw p1

    .line 99
    :cond_17
    :pswitch_5
    sget-object p1, LgK;->F:LgK;

    return-object p1

    .line 100
    :pswitch_6
    check-cast p2, LSF;

    .line 101
    check-cast p3, LgK;

    .line 102
    iget-object p1, p0, LgK;->E:LXF;

    iget-object v6, p3, LgK;->E:LXF;

    invoke-interface {p2, p1, v6}, LSF;->a(LXF;LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LgK;->E:LXF;

    .line 103
    iget p1, p3, LgK;->A:I

    invoke-static {p1}, LfK;->a(I)LfK;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1c

    if-eq p1, v1, :cond_1a

    if-eq p1, v5, :cond_18

    goto :goto_c

    .line 105
    :cond_18
    iget p1, p0, LgK;->A:I

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_9

    :cond_19
    const/4 p1, 0x0

    :goto_9
    invoke-interface {p2, p1}, LSF;->a(Z)V

    goto :goto_c

    .line 106
    :cond_1a
    iget p1, p0, LgK;->A:I

    if-ne p1, v4, :cond_1b

    const/4 p1, 0x1

    goto :goto_a

    :cond_1b
    const/4 p1, 0x0

    :goto_a
    iget-object v4, p0, LgK;->B:Ljava/lang/Object;

    iget-object v6, p3, LgK;->B:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LgK;->B:Ljava/lang/Object;

    goto :goto_c

    .line 107
    :cond_1c
    iget p1, p0, LgK;->A:I

    if-ne p1, v1, :cond_1d

    const/4 p1, 0x1

    goto :goto_b

    :cond_1d
    const/4 p1, 0x0

    :goto_b
    iget-object v4, p0, LgK;->B:Ljava/lang/Object;

    iget-object v6, p3, LgK;->B:Ljava/lang/Object;

    invoke-interface {p2, p1, v4, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LgK;->B:Ljava/lang/Object;

    .line 108
    :goto_c
    iget p1, p3, LgK;->C:I

    invoke-static {p1}, LdK;->a(I)LdK;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_22

    if-eq p1, v1, :cond_20

    if-eq p1, v5, :cond_1e

    goto :goto_d

    .line 110
    :cond_1e
    iget p1, p0, LgK;->C:I

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_d

    .line 111
    :cond_20
    iget p1, p0, LgK;->C:I

    if-ne p1, v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    iget-object p1, p0, LgK;->D:Ljava/lang/Object;

    iget-object v1, p3, LgK;->D:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LgK;->D:Ljava/lang/Object;

    goto :goto_d

    .line 112
    :cond_22
    iget p1, p0, LgK;->C:I

    if-ne p1, v3, :cond_23

    const/4 v0, 0x1

    :cond_23
    iget-object p1, p0, LgK;->D:Ljava/lang/Object;

    iget-object v1, p3, LgK;->D:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LgK;->D:Ljava/lang/Object;

    .line 113
    :goto_d
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_26

    .line 114
    iget p1, p3, LgK;->A:I

    if-eqz p1, :cond_24

    .line 115
    iput p1, p0, LgK;->A:I

    .line 116
    :cond_24
    iget p1, p3, LgK;->C:I

    if-eqz p1, :cond_25

    .line 117
    iput p1, p0, LgK;->C:I

    .line 118
    :cond_25
    iget p1, p0, LgK;->z:I

    iget p2, p3, LgK;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LgK;->z:I

    :cond_26
    return-object p0

    .line 119
    :pswitch_7
    sget-object p1, LgK;->F:LgK;

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
.end method

.method public a(LxF;)V
    .locals 3

    .line 1
    iget v0, p0, LgK;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LgK;->B:Ljava/lang/Object;

    check-cast v0, LUO;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, LgK;->E:LXF;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, LgK;->E:LXF;

    check-cast v2, LUF;

    invoke-virtual {v2, v0}, LUF;->c(I)I

    move-result v2

    .line 5
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, LgK;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, LgK;->B:Ljava/lang/Object;

    check-cast v0, LTK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v0, p0, LgK;->C:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, LgK;->D:Ljava/lang/Object;

    check-cast v0, LUO;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v0, p0, LgK;->C:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, LgK;->D:Ljava/lang/Object;

    check-cast v0, LTK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 12
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
