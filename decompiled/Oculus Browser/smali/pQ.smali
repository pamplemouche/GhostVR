.class public final LpQ;
.super LTF;
.source "PG"

# interfaces
.implements LqQ;


# static fields
.field public static final F:LpQ;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:I

.field public D:LsR;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LpQ;

    invoke-direct {v0}, LpQ;-><init>()V

    sput-object v0, LpQ;->F:LpQ;

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
    iput v0, p0, LpQ;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LpQ;->E:B

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LpQ;->F:LpQ;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 11
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 12
    iget v1, p0, LpQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 13
    iget v1, p0, LpQ;->C:I

    .line 14
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget v1, p0, LpQ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 16
    invoke-virtual {p0}, LpQ;->k()LsR;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, LpQ;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, p0, LpQ;->B:Ljava/lang/Object;

    check-cast v1, LyQ;

    .line 19
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_3
    iget v1, p0, LpQ;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 21
    iget-object v1, p0, LpQ;->B:Ljava/lang/Object;

    check-cast v1, LpN;

    .line 22
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 24
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, LpQ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LpQ;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, LpQ;->G:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, LpQ;->F:LpQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LpQ;->G:LkG;

    .line 30
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 31
    :cond_1
    :goto_0
    sget-object p1, LpQ;->G:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, LmQ;

    invoke-direct {p1, v5}, LmQ;-><init>(LlQ;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, LpQ;

    invoke-direct {p1}, LpQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v5

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_f

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 v6, 0x8

    if-eq p1, v6, :cond_c

    const/16 v6, 0x12

    if-eq p1, v6, :cond_9

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_6

    const/16 v6, 0x22

    if-eq p1, v6, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 38
    :cond_3
    iget p1, p0, LpQ;->A:I

    if-ne p1, v4, :cond_4

    .line 39
    iget-object p1, p0, LpQ;->B:Ljava/lang/Object;

    check-cast p1, LpN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LoN;

    goto :goto_2

    :cond_4
    move-object p1, v5

    .line 40
    :goto_2
    sget-object v6, LpN;->C:LpN;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 41
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LpQ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 42
    check-cast v6, LpN;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LpQ;->B:Ljava/lang/Object;

    .line 44
    :cond_5
    iput v4, p0, LpQ;->A:I

    goto :goto_1

    .line 45
    :cond_6
    iget p1, p0, LpQ;->A:I

    if-ne p1, v2, :cond_7

    .line 46
    iget-object p1, p0, LpQ;->B:Ljava/lang/Object;

    check-cast p1, LyQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LwQ;

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 47
    :goto_3
    sget-object v6, LyQ;->E:LyQ;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 48
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LpQ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 49
    check-cast v6, LyQ;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 50
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LpQ;->B:Ljava/lang/Object;

    .line 51
    :cond_8
    iput v2, p0, LpQ;->A:I

    goto :goto_1

    .line 52
    :cond_9
    iget p1, p0, LpQ;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_a

    .line 53
    iget-object p1, p0, LpQ;->D:LsR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LrR;

    goto :goto_4

    :cond_a
    move-object p1, v5

    .line 54
    :goto_4
    sget-object v6, LsR;->C:LsR;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 55
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LsR;

    iput-object v6, p0, LpQ;->D:LsR;

    if-eqz p1, :cond_b

    .line 56
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 57
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LsR;

    iput-object p1, p0, LpQ;->D:LsR;

    .line 58
    :cond_b
    iget p1, p0, LpQ;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LpQ;->z:I

    goto/16 :goto_1

    .line 59
    :cond_c
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 60
    invoke-static {p1}, LnQ;->a(I)LnQ;

    move-result-object v6

    if-nez v6, :cond_d

    .line 61
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 62
    :cond_d
    iget v6, p0, LpQ;->z:I

    or-int/2addr v6, v1

    iput v6, p0, LpQ;->z:I

    .line 63
    iput p1, p0, LpQ;->C:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 64
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 66
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :goto_6
    throw p1

    .line 68
    :cond_f
    :pswitch_5
    sget-object p1, LpQ;->F:LpQ;

    return-object p1

    .line 69
    :pswitch_6
    check-cast p2, LSF;

    .line 70
    check-cast p3, LpQ;

    .line 71
    iget p1, p0, LpQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_10

    const/4 p1, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    .line 72
    :goto_7
    iget v5, p0, LpQ;->C:I

    .line 73
    iget v6, p3, LpQ;->z:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_11

    const/4 v6, 0x1

    goto :goto_8

    :cond_11
    const/4 v6, 0x0

    .line 74
    :goto_8
    iget v7, p3, LpQ;->C:I

    .line 75
    invoke-interface {p2, p1, v5, v6, v7}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LpQ;->C:I

    .line 76
    iget-object p1, p0, LpQ;->D:LsR;

    iget-object v5, p3, LpQ;->D:LsR;

    invoke-interface {p2, p1, v5}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LsR;

    iput-object p1, p0, LpQ;->D:LsR;

    .line 77
    iget p1, p3, LpQ;->A:I

    invoke-static {p1}, LoQ;->a(I)LoQ;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_16

    if-eq p1, v1, :cond_14

    if-eq p1, v3, :cond_12

    goto :goto_9

    .line 79
    :cond_12
    iget p1, p0, LpQ;->A:I

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_9

    .line 80
    :cond_14
    iget p1, p0, LpQ;->A:I

    if-ne p1, v4, :cond_15

    const/4 v0, 0x1

    :cond_15
    iget-object p1, p0, LpQ;->B:Ljava/lang/Object;

    iget-object v1, p3, LpQ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpQ;->B:Ljava/lang/Object;

    goto :goto_9

    .line 81
    :cond_16
    iget p1, p0, LpQ;->A:I

    if-ne p1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    iget-object p1, p0, LpQ;->B:Ljava/lang/Object;

    iget-object v1, p3, LpQ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LpQ;->B:Ljava/lang/Object;

    .line 82
    :goto_9
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_19

    .line 83
    iget p1, p3, LpQ;->A:I

    if-eqz p1, :cond_18

    .line 84
    iput p1, p0, LpQ;->A:I

    .line 85
    :cond_18
    iget p1, p0, LpQ;->z:I

    iget p2, p3, LpQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LpQ;->z:I

    :cond_19
    return-object p0

    .line 86
    :pswitch_7
    iget-byte p1, p0, LpQ;->E:B

    if-ne p1, v1, :cond_1a

    .line 87
    sget-object p1, LpQ;->F:LpQ;

    return-object p1

    :cond_1a
    if-nez p1, :cond_1b

    return-object v5

    .line 88
    :cond_1b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 89
    iget p2, p0, LpQ;->A:I

    if-ne p2, v2, :cond_1c

    const/4 p2, 0x1

    goto :goto_a

    :cond_1c
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_1e

    .line 90
    invoke-virtual {p0}, LpQ;->j()LyQ;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    .line 91
    iput-byte v0, p0, LpQ;->E:B

    :cond_1d
    return-object v5

    .line 92
    :cond_1e
    iget p2, p0, LpQ;->A:I

    if-ne p2, v4, :cond_1f

    const/4 p2, 0x1

    goto :goto_b

    :cond_1f
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_22

    .line 93
    iget p2, p0, LpQ;->A:I

    if-ne p2, v4, :cond_20

    .line 94
    iget-object p2, p0, LpQ;->B:Ljava/lang/Object;

    check-cast p2, LpN;

    goto :goto_c

    .line 95
    :cond_20
    sget-object p2, LpN;->C:LpN;

    .line 96
    :goto_c
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_22

    if-eqz p1, :cond_21

    .line 97
    iput-byte v0, p0, LpQ;->E:B

    :cond_21
    return-object v5

    :cond_22
    if-eqz p1, :cond_23

    .line 98
    iput-byte v1, p0, LpQ;->E:B

    .line 99
    :cond_23
    sget-object p1, LpQ;->F:LpQ;

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
    .locals 2

    .line 1
    iget v0, p0, LpQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LpQ;->C:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, LpQ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, LpQ;->k()LsR;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v0, p0, LpQ;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, LpQ;->B:Ljava/lang/Object;

    check-cast v0, LyQ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v0, p0, LpQ;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, LpQ;->B:Ljava/lang/Object;

    check-cast v0, LpN;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LyQ;
    .locals 2

    .line 1
    iget v0, p0, LpQ;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LpQ;->B:Ljava/lang/Object;

    check-cast v0, LyQ;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LyQ;->E:LyQ;

    return-object v0
.end method

.method public k()LsR;
    .locals 1

    .line 1
    iget-object v0, p0, LpQ;->D:LsR;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LsR;->C:LsR;

    :cond_0
    return-object v0
.end method

.method public l()LnQ;
    .locals 1

    .line 1
    iget v0, p0, LpQ;->C:I

    invoke-static {v0}, LnQ;->a(I)LnQ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LnQ;->x:LnQ;

    :cond_0
    return-object v0
.end method
