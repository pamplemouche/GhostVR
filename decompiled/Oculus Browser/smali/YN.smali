.class public final LYN;
.super LTF;
.source "PG"

# interfaces
.implements LZN;


# static fields
.field public static final F:LYN;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:LBM;

.field public C:LlO;

.field public D:I

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LYN;

    invoke-direct {v0}, LYN;-><init>()V

    sput-object v0, LYN;->F:LYN;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LYN;->E:B

    return-void
.end method

.method public static k()LkG;
    .locals 1

    .line 1
    sget-object v0, LYN;->F:LYN;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 13
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14
    iget v1, p0, LYN;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 15
    iget v1, p0, LYN;->A:I

    .line 16
    invoke-static {v2, v1}, LxF;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget v1, p0, LYN;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, p0, LYN;->B:LBM;

    if-nez v1, :cond_2

    .line 19
    sget-object v1, LBM;->C:LBM;

    .line 20
    :cond_2
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget v1, p0, LYN;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 22
    invoke-virtual {p0}, LYN;->j()LlO;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
    iget v1, p0, LYN;->z:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 24
    iget v2, p0, LYN;->D:I

    .line 25
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_5
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 27
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 28
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 30
    :pswitch_0
    sget-object p1, LYN;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LYN;

    monitor-enter p1

    .line 31
    :try_start_0
    sget-object p2, LYN;->G:LkG;

    if-nez p2, :cond_0

    .line 32
    new-instance p2, LGF;

    sget-object p3, LYN;->F:LYN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LYN;->G:LkG;

    .line 33
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 34
    :cond_1
    :goto_0
    sget-object p1, LYN;->G:LkG;

    return-object p1

    .line 35
    :pswitch_1
    new-instance p1, LXN;

    invoke-direct {p1, v4}, LXN;-><init>(LQN;)V

    return-object p1

    .line 36
    :pswitch_2
    new-instance p1, LYN;

    invoke-direct {p1}, LYN;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 37
    :pswitch_4
    check-cast p2, LtF;

    .line 38
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 39
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v5, 0xd

    if-eq p1, v5, :cond_b

    const/16 v5, 0x12

    if-eq p1, v5, :cond_8

    const/16 v5, 0x22

    if-eq p1, v5, :cond_5

    const/16 v5, 0x28

    if-eq p1, v5, :cond_3

    .line 40
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 41
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 42
    invoke-static {p1}, LIM;->a(I)LIM;

    move-result-object v5

    if-nez v5, :cond_4

    const/4 v5, 0x5

    .line 43
    invoke-super {p0, v5, p1}, LTF;->a(II)V

    goto :goto_1

    .line 44
    :cond_4
    iget v5, p0, LYN;->z:I

    or-int/2addr v5, v2

    iput v5, p0, LYN;->z:I

    .line 45
    iput p1, p0, LYN;->D:I

    goto :goto_1

    .line 46
    :cond_5
    iget p1, p0, LYN;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_6

    .line 47
    iget-object p1, p0, LYN;->C:LlO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LjO;

    goto :goto_2

    :cond_6
    move-object p1, v4

    .line 48
    :goto_2
    sget-object v5, LlO;->E:LlO;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 49
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LlO;

    iput-object v5, p0, LYN;->C:LlO;

    if-eqz p1, :cond_7

    .line 50
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 51
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LlO;

    iput-object p1, p0, LYN;->C:LlO;

    .line 52
    :cond_7
    iget p1, p0, LYN;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LYN;->z:I

    goto :goto_1

    .line 53
    :cond_8
    iget p1, p0, LYN;->z:I

    const/4 v5, 0x2

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_9

    .line 54
    iget-object p1, p0, LYN;->B:LBM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LzM;

    goto :goto_3

    :cond_9
    move-object p1, v4

    .line 55
    :goto_3
    invoke-static {}, LBM;->j()LkG;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LBM;

    iput-object v6, p0, LYN;->B:LBM;

    if-eqz p1, :cond_a

    .line 56
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 57
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LBM;

    iput-object p1, p0, LYN;->B:LBM;

    .line 58
    :cond_a
    iget p1, p0, LYN;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LYN;->z:I

    goto/16 :goto_1

    .line 59
    :cond_b
    iget p1, p0, LYN;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LYN;->z:I

    .line 60
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 61
    iput p1, p0, LYN;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 62
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :goto_5
    throw p1

    .line 66
    :cond_d
    :pswitch_5
    sget-object p1, LYN;->F:LYN;

    return-object p1

    .line 67
    :pswitch_6
    check-cast p2, LSF;

    .line 68
    check-cast p3, LYN;

    .line 69
    iget p1, p0, LYN;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_6

    :cond_e
    const/4 p1, 0x0

    .line 70
    :goto_6
    iget v3, p0, LYN;->A:I

    .line 71
    iget v4, p3, LYN;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_f

    const/4 v4, 0x1

    goto :goto_7

    :cond_f
    const/4 v4, 0x0

    .line 72
    :goto_7
    iget v5, p3, LYN;->A:I

    .line 73
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LYN;->A:I

    .line 74
    iget-object p1, p0, LYN;->B:LBM;

    iget-object v3, p3, LYN;->B:LBM;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LBM;

    iput-object p1, p0, LYN;->B:LBM;

    .line 75
    iget-object p1, p0, LYN;->C:LlO;

    iget-object v3, p3, LYN;->C:LlO;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlO;

    iput-object p1, p0, LYN;->C:LlO;

    .line 76
    iget p1, p0, LYN;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_10

    const/4 p1, 0x1

    goto :goto_8

    :cond_10
    const/4 p1, 0x0

    .line 77
    :goto_8
    iget v3, p0, LYN;->D:I

    .line 78
    iget v4, p3, LYN;->z:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_11

    const/4 v0, 0x1

    .line 79
    :cond_11
    iget v1, p3, LYN;->D:I

    .line 80
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LYN;->D:I

    .line 81
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_12

    .line 82
    iget p1, p0, LYN;->z:I

    iget p2, p3, LYN;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LYN;->z:I

    :cond_12
    return-object p0

    .line 83
    :pswitch_7
    iget-byte p1, p0, LYN;->E:B

    if-ne p1, v1, :cond_13

    .line 84
    sget-object p1, LYN;->F:LYN;

    return-object p1

    :cond_13
    if-nez p1, :cond_14

    return-object v4

    .line 85
    :cond_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 86
    iget p2, p0, LYN;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_15

    const/4 p2, 0x1

    goto :goto_9

    :cond_15
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_17

    .line 87
    invoke-virtual {p0}, LYN;->j()LlO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    .line 88
    iput-byte v0, p0, LYN;->E:B

    :cond_16
    return-object v4

    :cond_17
    if-eqz p1, :cond_18

    .line 89
    iput-byte v1, p0, LYN;->E:B

    .line 90
    :cond_18
    sget-object p1, LYN;->F:LYN;

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
    iget v0, p0, LYN;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LYN;->A:I

    invoke-virtual {p1, v1, v0}, LxF;->a(II)V

    .line 3
    :cond_0
    iget v0, p0, LYN;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, LYN;->B:LBM;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, LBM;->C:LBM;

    .line 6
    :cond_1
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget v0, p0, LYN;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, LYN;->j()LlO;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_3
    iget v0, p0, LYN;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, LYN;->D:I

    .line 11
    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 12
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LlO;
    .locals 1

    .line 1
    iget-object v0, p0, LYN;->C:LlO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlO;->E:LlO;

    :cond_0
    return-object v0
.end method
