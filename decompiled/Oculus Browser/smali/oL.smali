.class public final LoL;
.super LTF;
.source "PG"

# interfaces
.implements LpL;


# static fields
.field public static final D:LoL;

.field public static volatile E:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LoL;

    invoke-direct {v0}, LoL;-><init>()V

    sput-object v0, LoL;->D:LoL;

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
    iput v0, p0, LoL;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LoL;->C:B

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LoL;->D:LoL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v1, p0, LoL;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, LoL;->B:Ljava/lang/Object;

    check-cast v1, LBL;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LoL;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v1, p0, LoL;->B:Ljava/lang/Object;

    check-cast v1, LEK;

    .line 16
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, LoL;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, p0, LoL;->B:Ljava/lang/Object;

    check-cast v1, LlM;

    .line 19
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_3
    iget v1, p0, LoL;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 21
    iget-object v1, p0, LoL;->B:Ljava/lang/Object;

    check-cast v1, LZK;

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
    .locals 7

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, LoL;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LoL;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, LoL;->E:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, LoL;->D:LoL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LoL;->E:LkG;

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
    sget-object p1, LoL;->E:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, LmL;

    invoke-direct {p1, v5}, LmL;-><init>(LeL;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, LoL;

    invoke-direct {p1}, LoL;-><init>()V

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
    if-nez v0, :cond_10

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v6, 0xa

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

    goto/16 :goto_6

    .line 38
    :cond_3
    iget p1, p0, LoL;->A:I

    if-ne p1, v2, :cond_4

    .line 39
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    check-cast p1, LZK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LYK;

    goto :goto_2

    :cond_4
    move-object p1, v5

    .line 40
    :goto_2
    sget-object v6, LZK;->C:LZK;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 41
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LoL;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 42
    check-cast v6, LZK;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    .line 44
    :cond_5
    iput v2, p0, LoL;->A:I

    goto :goto_1

    .line 45
    :cond_6
    iget p1, p0, LoL;->A:I

    if-ne p1, v4, :cond_7

    .line 46
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    check-cast p1, LlM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LkM;

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 47
    :goto_3
    sget-object v6, LlM;->E:LlM;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 48
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LoL;->B:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 49
    check-cast v6, LlM;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 50
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    .line 51
    :cond_8
    iput v4, p0, LoL;->A:I

    goto :goto_1

    .line 52
    :cond_9
    iget p1, p0, LoL;->A:I

    if-ne p1, v3, :cond_a

    .line 53
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    check-cast p1, LEK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LDK;

    goto :goto_4

    :cond_a
    move-object p1, v5

    .line 54
    :goto_4
    sget-object v6, LEK;->C:LEK;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 55
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LoL;->B:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 56
    check-cast v6, LEK;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 57
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    .line 58
    :cond_b
    iput v3, p0, LoL;->A:I

    goto/16 :goto_1

    .line 59
    :cond_c
    iget p1, p0, LoL;->A:I

    if-ne p1, v1, :cond_d

    .line 60
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    check-cast p1, LBL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LyL;

    goto :goto_5

    :cond_d
    move-object p1, v5

    .line 61
    :goto_5
    invoke-static {}, LBL;->N()LkG;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LoL;->B:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 62
    check-cast v6, LBL;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 63
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    .line 64
    :cond_e
    iput v1, p0, LoL;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 66
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :goto_7
    throw p1

    .line 69
    :cond_10
    :pswitch_5
    sget-object p1, LoL;->D:LoL;

    return-object p1

    .line 70
    :pswitch_6
    check-cast p2, LSF;

    .line 71
    check-cast p3, LoL;

    .line 72
    iget p1, p3, LoL;->A:I

    invoke-static {p1}, LnL;->a(I)LnL;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_19

    if-eq p1, v1, :cond_17

    if-eq p1, v3, :cond_15

    if-eq p1, v4, :cond_13

    if-eq p1, v2, :cond_11

    goto :goto_8

    .line 74
    :cond_11
    iget p1, p0, LoL;->A:I

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_8

    .line 75
    :cond_13
    iget p1, p0, LoL;->A:I

    if-ne p1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    iget-object v1, p3, LoL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    goto :goto_8

    .line 76
    :cond_15
    iget p1, p0, LoL;->A:I

    if-ne p1, v4, :cond_16

    const/4 v0, 0x1

    :cond_16
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    iget-object v1, p3, LoL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    goto :goto_8

    .line 77
    :cond_17
    iget p1, p0, LoL;->A:I

    if-ne p1, v3, :cond_18

    const/4 v0, 0x1

    :cond_18
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    iget-object v1, p3, LoL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    goto :goto_8

    .line 78
    :cond_19
    iget p1, p0, LoL;->A:I

    if-ne p1, v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iget-object p1, p0, LoL;->B:Ljava/lang/Object;

    iget-object v1, p3, LoL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LoL;->B:Ljava/lang/Object;

    .line 79
    :goto_8
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1c

    .line 80
    iget p1, p3, LoL;->A:I

    if-eqz p1, :cond_1b

    .line 81
    iput p1, p0, LoL;->A:I

    .line 82
    :cond_1b
    iget p1, p0, LoL;->z:I

    iget p2, p3, LoL;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LoL;->z:I

    :cond_1c
    return-object p0

    .line 83
    :pswitch_7
    iget-byte p1, p0, LoL;->C:B

    if-ne p1, v1, :cond_1d

    .line 84
    sget-object p1, LoL;->D:LoL;

    return-object p1

    :cond_1d
    if-nez p1, :cond_1e

    return-object v5

    .line 85
    :cond_1e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 86
    iget p2, p0, LoL;->A:I

    if-ne p2, v1, :cond_1f

    const/4 p2, 0x1

    goto :goto_9

    :cond_1f
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_22

    .line 87
    iget p2, p0, LoL;->A:I

    if-ne p2, v1, :cond_20

    .line 88
    iget-object p2, p0, LoL;->B:Ljava/lang/Object;

    check-cast p2, LBL;

    goto :goto_a

    .line 89
    :cond_20
    sget-object p2, LBL;->P:LBL;

    .line 90
    :goto_a
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_22

    if-eqz p1, :cond_21

    .line 91
    iput-byte v0, p0, LoL;->C:B

    :cond_21
    return-object v5

    .line 92
    :cond_22
    iget p2, p0, LoL;->A:I

    if-ne p2, v4, :cond_23

    const/4 p2, 0x1

    goto :goto_b

    :cond_23
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_26

    .line 93
    iget p2, p0, LoL;->A:I

    if-ne p2, v4, :cond_24

    .line 94
    iget-object p2, p0, LoL;->B:Ljava/lang/Object;

    check-cast p2, LlM;

    goto :goto_c

    .line 95
    :cond_24
    sget-object p2, LlM;->E:LlM;

    .line 96
    :goto_c
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_26

    if-eqz p1, :cond_25

    .line 97
    iput-byte v0, p0, LoL;->C:B

    :cond_25
    return-object v5

    :cond_26
    if-eqz p1, :cond_27

    .line 98
    iput-byte v1, p0, LoL;->C:B

    .line 99
    :cond_27
    sget-object p1, LoL;->D:LoL;

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
    iget v0, p0, LoL;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LoL;->B:Ljava/lang/Object;

    check-cast v0, LBL;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LoL;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LoL;->B:Ljava/lang/Object;

    check-cast v0, LEK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LoL;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LoL;->B:Ljava/lang/Object;

    check-cast v0, LlM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget v0, p0, LoL;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, LoL;->B:Ljava/lang/Object;

    check-cast v0, LZK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
