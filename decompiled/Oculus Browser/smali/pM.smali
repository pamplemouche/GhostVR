.class public final LpM;
.super LLF;
.source "PG"

# interfaces
.implements LqM;


# static fields
.field public static final F:LpM;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:LtO;

.field public E:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LpM;

    invoke-direct {v0}, LpM;-><init>()V

    sput-object v0, LpM;->F:LpM;

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
    iput v0, p0, LpM;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LpM;->E:B

    return-void
.end method

.method public static n()LkG;
    .locals 1

    .line 1
    sget-object v0, LpM;->F:LpM;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 14
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    iget v1, p0, LpM;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0}, LpM;->m()LtO;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 18
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LTK;

    .line 19
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 21
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LUO;

    .line 22
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 24
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LyK;

    .line 25
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_4
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 27
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LKO;

    .line 28
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_5
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 31
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 34
    :pswitch_0
    sget-object p1, LpM;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LpM;

    monitor-enter p1

    .line 35
    :try_start_0
    sget-object p2, LpM;->G:LkG;

    if-nez p2, :cond_0

    .line 36
    new-instance p2, LGF;

    sget-object p3, LpM;->F:LpM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LpM;->G:LkG;

    .line 37
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 38
    :cond_1
    :goto_0
    sget-object p1, LpM;->G:LkG;

    return-object p1

    .line 39
    :pswitch_1
    new-instance p1, LnM;

    invoke-direct {p1, v7}, LnM;-><init>(LeL;)V

    return-object p1

    .line 40
    :pswitch_2
    new-instance p1, LpM;

    invoke-direct {p1}, LpM;-><init>()V

    return-object p1

    :pswitch_3
    return-object v7

    .line 41
    :pswitch_4
    check-cast p2, LtF;

    .line 42
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_13

    .line 43
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_12

    const/16 v8, 0xa

    if-eq p1, v8, :cond_f

    const/16 v8, 0x12

    if-eq p1, v8, :cond_c

    const/16 v8, 0x1a

    if-eq p1, v8, :cond_9

    const/16 v8, 0x22

    if-eq p1, v8, :cond_6

    const/16 v8, 0x2a

    if-eq p1, v8, :cond_3

    .line 44
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v8

    check-cast v8, LpM;

    invoke-virtual {p0, v8, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 45
    :cond_3
    iget p1, p0, LpM;->B:I

    if-ne p1, v6, :cond_4

    .line 46
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    check-cast p1, LKO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LJO;

    goto :goto_2

    :cond_4
    move-object p1, v7

    .line 47
    :goto_2
    sget-object v8, LKO;->B:LKO;

    invoke-virtual {v8}, LTF;->g()LkG;

    move-result-object v8

    .line 48
    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    iput-object v8, p0, LpM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 49
    check-cast v8, LKO;

    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 50
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    .line 51
    :cond_5
    iput v6, p0, LpM;->B:I

    goto :goto_1

    .line 52
    :cond_6
    iget p1, p0, LpM;->B:I

    if-ne p1, v3, :cond_7

    .line 53
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    check-cast p1, LyK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LxK;

    goto :goto_3

    :cond_7
    move-object p1, v7

    .line 54
    :goto_3
    sget-object v8, LyK;->C:LyK;

    invoke-virtual {v8}, LTF;->g()LkG;

    move-result-object v8

    .line 55
    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    iput-object v8, p0, LpM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 56
    check-cast v8, LyK;

    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 57
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    .line 58
    :cond_8
    iput v3, p0, LpM;->B:I

    goto/16 :goto_1

    .line 59
    :cond_9
    iget p1, p0, LpM;->B:I

    if-ne p1, v4, :cond_a

    .line 60
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    check-cast p1, LUO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LPO;

    goto :goto_4

    :cond_a
    move-object p1, v7

    .line 61
    :goto_4
    invoke-static {}, LUO;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    iput-object v8, p0, LpM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 62
    check-cast v8, LUO;

    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 63
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    .line 64
    :cond_b
    iput v4, p0, LpM;->B:I

    goto/16 :goto_1

    .line 65
    :cond_c
    iget p1, p0, LpM;->B:I

    if-ne p1, v5, :cond_d

    .line 66
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    check-cast p1, LTK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LSK;

    goto :goto_5

    :cond_d
    move-object p1, v7

    .line 67
    :goto_5
    invoke-static {}, LTK;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    iput-object v8, p0, LpM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 68
    check-cast v8, LTK;

    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 69
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    .line 70
    :cond_e
    iput v5, p0, LpM;->B:I

    goto/16 :goto_1

    .line 71
    :cond_f
    iget p1, p0, LpM;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_10

    .line 72
    iget-object p1, p0, LpM;->D:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_6

    :cond_10
    move-object p1, v7

    .line 73
    :goto_6
    invoke-static {}, LtO;->m()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LtO;

    iput-object v8, p0, LpM;->D:LtO;

    if-eqz p1, :cond_11

    .line 74
    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 75
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LpM;->D:LtO;

    .line 76
    :cond_11
    iget p1, p0, LpM;->A:I

    or-int/2addr p1, v2

    iput p1, p0, LpM;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_12
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 78
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :goto_8
    throw p1

    .line 81
    :cond_13
    :pswitch_5
    sget-object p1, LpM;->F:LpM;

    return-object p1

    .line 82
    :pswitch_6
    check-cast p2, LSF;

    .line 83
    check-cast p3, LpM;

    .line 84
    iget-object p1, p0, LpM;->D:LtO;

    iget-object v2, p3, LpM;->D:LtO;

    invoke-interface {p2, p1, v2}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LpM;->D:LtO;

    .line 85
    iget p1, p3, LpM;->B:I

    invoke-static {p1}, LoM;->a(I)LoM;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1c

    if-eq p1, v1, :cond_1a

    if-eq p1, v5, :cond_18

    if-eq p1, v4, :cond_16

    if-eq p1, v3, :cond_14

    goto :goto_9

    .line 87
    :cond_14
    iget p1, p0, LpM;->B:I

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :cond_15
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_9

    .line 88
    :cond_16
    iget p1, p0, LpM;->B:I

    if-ne p1, v5, :cond_17

    const/4 v0, 0x1

    :cond_17
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    iget-object v1, p3, LpM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    goto :goto_9

    .line 89
    :cond_18
    iget p1, p0, LpM;->B:I

    if-ne p1, v4, :cond_19

    const/4 v0, 0x1

    :cond_19
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    iget-object v1, p3, LpM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    goto :goto_9

    .line 90
    :cond_1a
    iget p1, p0, LpM;->B:I

    if-ne p1, v3, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    iget-object v1, p3, LpM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    goto :goto_9

    .line 91
    :cond_1c
    iget p1, p0, LpM;->B:I

    if-ne p1, v6, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    iget-object p1, p0, LpM;->C:Ljava/lang/Object;

    iget-object v1, p3, LpM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpM;->C:Ljava/lang/Object;

    .line 92
    :goto_9
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1f

    .line 93
    iget p1, p3, LpM;->B:I

    if-eqz p1, :cond_1e

    .line 94
    iput p1, p0, LpM;->B:I

    .line 95
    :cond_1e
    iget p1, p0, LpM;->A:I

    iget p2, p3, LpM;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LpM;->A:I

    :cond_1f
    return-object p0

    .line 96
    :pswitch_7
    iget-byte p1, p0, LpM;->E:B

    if-ne p1, v1, :cond_20

    .line 97
    sget-object p1, LpM;->F:LpM;

    return-object p1

    :cond_20
    if-nez p1, :cond_21

    return-object v7

    .line 98
    :cond_21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 99
    iget p2, p0, LpM;->B:I

    if-ne p2, v6, :cond_22

    const/4 p2, 0x1

    goto :goto_a

    :cond_22
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_25

    .line 100
    iget p2, p0, LpM;->B:I

    if-ne p2, v6, :cond_23

    .line 101
    iget-object p2, p0, LpM;->C:Ljava/lang/Object;

    check-cast p2, LKO;

    goto :goto_b

    .line 102
    :cond_23
    sget-object p2, LKO;->B:LKO;

    .line 103
    :goto_b
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_25

    if-eqz p1, :cond_24

    .line 104
    iput-byte v0, p0, LpM;->E:B

    :cond_24
    return-object v7

    .line 105
    :cond_25
    iget p2, p0, LpM;->A:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_26

    const/4 p2, 0x1

    goto :goto_c

    :cond_26
    const/4 p2, 0x0

    :goto_c
    if-eqz p2, :cond_28

    .line 106
    invoke-virtual {p0}, LpM;->m()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_28

    if-eqz p1, :cond_27

    .line 107
    iput-byte v0, p0, LpM;->E:B

    :cond_27
    return-object v7

    .line 108
    :cond_28
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_2a

    if-eqz p1, :cond_29

    .line 109
    iput-byte v0, p0, LpM;->E:B

    :cond_29
    return-object v7

    :cond_2a
    if-eqz p1, :cond_2b

    .line 110
    iput-byte v1, p0, LpM;->E:B

    .line 111
    :cond_2b
    sget-object p1, LpM;->F:LpM;

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
    .locals 3

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LpM;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, LpM;->m()LtO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LTK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LUO;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LyK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v1, p0, LpM;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 11
    iget-object v1, p0, LpM;->C:Ljava/lang/Object;

    check-cast v1, LKO;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_4
    const/high16 v1, 0x20000000

    .line 12
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 13
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LtO;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LpM;->D:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method
