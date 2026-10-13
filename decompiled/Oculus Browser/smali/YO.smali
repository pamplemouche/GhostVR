.class public final LYO;
.super LLF;
.source "PG"

# interfaces
.implements LZO;


# static fields
.field public static final F:LYO;

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
    new-instance v0, LYO;

    invoke-direct {v0}, LYO;-><init>()V

    sput-object v0, LYO;->F:LYO;

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
    iput v0, p0, LYO;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LYO;->E:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, LYO;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 12
    invoke-virtual {p0}, LYO;->m()LtO;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget v1, p0, LYO;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 14
    iget-object v1, p0, LYO;->C:Ljava/lang/Object;

    check-cast v1, LKK;

    .line 15
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget v1, p0, LYO;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 17
    iget-object v1, p0, LYO;->C:Ljava/lang/Object;

    check-cast v1, LJM;

    .line 18
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_3
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    sget-object p1, LYO;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LYO;

    monitor-enter p1

    .line 25
    :try_start_0
    sget-object p2, LYO;->G:LkG;

    if-nez p2, :cond_0

    .line 26
    new-instance p2, LGF;

    sget-object p3, LYO;->F:LYO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LYO;->G:LkG;

    .line 27
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 28
    :cond_1
    :goto_0
    sget-object p1, LYO;->G:LkG;

    return-object p1

    .line 29
    :pswitch_1
    new-instance p1, LWO;

    invoke-direct {p1, v4}, LWO;-><init>(LDO;)V

    return-object p1

    .line 30
    :pswitch_2
    new-instance p1, LYO;

    invoke-direct {p1}, LYO;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 31
    :pswitch_4
    check-cast p2, LtF;

    .line 32
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 33
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v5, 0xa

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    .line 34
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v5

    check-cast v5, LYO;

    invoke-virtual {p0, v5, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 35
    :cond_3
    iget p1, p0, LYO;->B:I

    if-ne p1, v3, :cond_4

    .line 36
    iget-object p1, p0, LYO;->C:Ljava/lang/Object;

    check-cast p1, LJM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LHM;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 37
    :goto_2
    invoke-static {}, LJM;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LYO;->C:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 38
    check-cast v5, LJM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 39
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LYO;->C:Ljava/lang/Object;

    .line 40
    :cond_5
    iput v3, p0, LYO;->B:I

    goto :goto_1

    .line 41
    :cond_6
    iget p1, p0, LYO;->B:I

    if-ne p1, v2, :cond_7

    .line 42
    iget-object p1, p0, LYO;->C:Ljava/lang/Object;

    check-cast p1, LKK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LJK;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 43
    :goto_3
    sget-object v5, LKK;->C:LKK;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 44
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LYO;->C:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 45
    check-cast v5, LKK;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 46
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LYO;->C:Ljava/lang/Object;

    .line 47
    :cond_8
    iput v2, p0, LYO;->B:I

    goto :goto_1

    .line 48
    :cond_9
    iget p1, p0, LYO;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_a

    .line 49
    iget-object p1, p0, LYO;->D:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_4

    :cond_a
    move-object p1, v4

    .line 50
    :goto_4
    invoke-static {}, LtO;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LtO;

    iput-object v5, p0, LYO;->D:LtO;

    if-eqz p1, :cond_b

    .line 51
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 52
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LYO;->D:LtO;

    .line 53
    :cond_b
    iget p1, p0, LYO;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LYO;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 54
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 56
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :goto_6
    throw p1

    .line 58
    :cond_d
    :pswitch_5
    sget-object p1, LYO;->F:LYO;

    return-object p1

    .line 59
    :pswitch_6
    check-cast p2, LSF;

    .line 60
    check-cast p3, LYO;

    .line 61
    iget-object p1, p0, LYO;->D:LtO;

    iget-object v4, p3, LYO;->D:LtO;

    invoke-interface {p2, p1, v4}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LYO;->D:LtO;

    .line 62
    iget p1, p3, LYO;->B:I

    invoke-static {p1}, LXO;->a(I)LXO;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v2, :cond_e

    goto :goto_7

    .line 64
    :cond_e
    iget p1, p0, LYO;->B:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_7

    .line 65
    :cond_10
    iget p1, p0, LYO;->B:I

    if-ne p1, v3, :cond_11

    const/4 v0, 0x1

    :cond_11
    iget-object p1, p0, LYO;->C:Ljava/lang/Object;

    iget-object v1, p3, LYO;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LYO;->C:Ljava/lang/Object;

    goto :goto_7

    .line 66
    :cond_12
    iget p1, p0, LYO;->B:I

    if-ne p1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-object p1, p0, LYO;->C:Ljava/lang/Object;

    iget-object v1, p3, LYO;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LYO;->C:Ljava/lang/Object;

    .line 67
    :goto_7
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_15

    .line 68
    iget p1, p3, LYO;->B:I

    if-eqz p1, :cond_14

    .line 69
    iput p1, p0, LYO;->B:I

    .line 70
    :cond_14
    iget p1, p0, LYO;->A:I

    iget p2, p3, LYO;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LYO;->A:I

    :cond_15
    return-object p0

    .line 71
    :pswitch_7
    iget-byte p1, p0, LYO;->E:B

    if-ne p1, v1, :cond_16

    .line 72
    sget-object p1, LYO;->F:LYO;

    return-object p1

    :cond_16
    if-nez p1, :cond_17

    return-object v4

    .line 73
    :cond_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 74
    iget p2, p0, LYO;->A:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_18

    const/4 p2, 0x1

    goto :goto_8

    :cond_18
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1a

    .line 75
    invoke-virtual {p0}, LYO;->m()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    .line 76
    iput-byte v0, p0, LYO;->E:B

    :cond_19
    return-object v4

    .line 77
    :cond_1a
    iget p2, p0, LYO;->B:I

    if-ne p2, v3, :cond_1b

    const/4 p2, 0x1

    goto :goto_9

    :cond_1b
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_1e

    .line 78
    iget p2, p0, LYO;->B:I

    if-ne p2, v3, :cond_1c

    .line 79
    iget-object p2, p0, LYO;->C:Ljava/lang/Object;

    check-cast p2, LJM;

    goto :goto_a

    .line 80
    :cond_1c
    sget-object p2, LJM;->C:LJM;

    .line 81
    :goto_a
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    .line 82
    iput-byte v0, p0, LYO;->E:B

    :cond_1d
    return-object v4

    .line 83
    :cond_1e
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_20

    if-eqz p1, :cond_1f

    .line 84
    iput-byte v0, p0, LYO;->E:B

    :cond_1f
    return-object v4

    :cond_20
    if-eqz p1, :cond_21

    .line 85
    iput-byte v1, p0, LYO;->E:B

    .line 86
    :cond_21
    sget-object p1, LYO;->F:LYO;

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
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LYO;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, LYO;->m()LtO;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LYO;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, LYO;->C:Ljava/lang/Object;

    check-cast v1, LKK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v1, p0, LYO;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, LYO;->C:Ljava/lang/Object;

    check-cast v1, LJM;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_2
    const/high16 v1, 0x20000000

    .line 8
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 9
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LtO;
    .locals 1

    .line 1
    iget-object v0, p0, LYO;->D:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method
