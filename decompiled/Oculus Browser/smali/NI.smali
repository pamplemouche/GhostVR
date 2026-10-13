.class public final LNI;
.super LTF;
.source "PG"

# interfaces
.implements LOI;


# static fields
.field public static final D:LNI;

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
    new-instance v0, LNI;

    invoke-direct {v0}, LNI;-><init>()V

    sput-object v0, LNI;->D:LNI;

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
    iput v0, p0, LNI;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LNI;->C:B

    return-void
.end method

.method public static n()LLI;
    .locals 1

    .line 1
    sget-object v0, LNI;->D:LNI;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LLI;

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
    iget v1, p0, LNI;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 16
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LDI;

    .line 17
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_1
    iget v1, p0, LNI;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 19
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LXI;

    .line 20
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget v1, p0, LNI;->A:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 22
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LeJ;

    .line 23
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_3
    iget v1, p0, LNI;->A:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 25
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LTI;

    .line 26
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_4
    iget v1, p0, LNI;->A:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 28
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LrF;

    .line 29
    invoke-static {v2, v1}, LxF;->b(ILrF;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_5
    iget v1, p0, LNI;->A:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 31
    iget-object v1, p0, LNI;->B:Ljava/lang/Object;

    check-cast v1, LfQ;

    .line 32
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_6
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 34
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 37
    :pswitch_0
    sget-object p1, LNI;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LNI;

    monitor-enter p1

    .line 38
    :try_start_0
    sget-object p2, LNI;->E:LkG;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, LGF;

    sget-object p3, LNI;->D:LNI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LNI;->E:LkG;

    .line 40
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 41
    :cond_1
    :goto_0
    sget-object p1, LNI;->E:LkG;

    return-object p1

    .line 42
    :pswitch_1
    new-instance p1, LLI;

    invoke-direct {p1, v8}, LLI;-><init>(LrI;)V

    return-object p1

    .line 43
    :pswitch_2
    new-instance p1, LNI;

    invoke-direct {p1}, LNI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v8

    .line 44
    :pswitch_4
    check-cast p2, LtF;

    .line 45
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v7, :cond_14

    .line 46
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_13

    const/16 v9, 0x1a

    if-eq p1, v9, :cond_10

    const/16 v9, 0x22

    if-eq p1, v9, :cond_d

    const/16 v9, 0x2a

    if-eq p1, v9, :cond_a

    const/16 v9, 0x32

    if-eq p1, v9, :cond_7

    const/16 v9, 0x3a

    if-eq p1, v9, :cond_6

    const/16 v9, 0x4a

    if-eq p1, v9, :cond_3

    .line 47
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 48
    :cond_3
    iget p1, p0, LNI;->A:I

    if-ne p1, v2, :cond_4

    .line 49
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    check-cast p1, LfQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LeQ;

    goto :goto_2

    :cond_4
    move-object p1, v8

    .line 50
    :goto_2
    invoke-static {}, LfQ;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LNI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 51
    check-cast v9, LfQ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 52
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 53
    :cond_5
    iput v2, p0, LNI;->A:I

    goto :goto_1

    .line 54
    :cond_6
    iput v1, p0, LNI;->A:I

    .line 55
    invoke-virtual {p2}, LtF;->c()LrF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_7
    iget p1, p0, LNI;->A:I

    if-ne p1, v3, :cond_8

    .line 57
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    check-cast p1, LTI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LSI;

    goto :goto_3

    :cond_8
    move-object p1, v8

    .line 58
    :goto_3
    sget-object v9, LTI;->A:LTI;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 59
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LNI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 60
    check-cast v9, LTI;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 61
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 62
    :cond_9
    iput v3, p0, LNI;->A:I

    goto/16 :goto_1

    .line 63
    :cond_a
    iget p1, p0, LNI;->A:I

    if-ne p1, v4, :cond_b

    .line 64
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    check-cast p1, LeJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LdJ;

    goto :goto_4

    :cond_b
    move-object p1, v8

    .line 65
    :goto_4
    sget-object v9, LeJ;->D:LeJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 66
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LNI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 67
    check-cast v9, LeJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 68
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 69
    :cond_c
    iput v4, p0, LNI;->A:I

    goto/16 :goto_1

    .line 70
    :cond_d
    iget p1, p0, LNI;->A:I

    if-ne p1, v5, :cond_e

    .line 71
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    check-cast p1, LXI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LVI;

    goto :goto_5

    :cond_e
    move-object p1, v8

    .line 72
    :goto_5
    sget-object v9, LXI;->E:LXI;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 73
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LNI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_f

    .line 74
    check-cast v9, LXI;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 75
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 76
    :cond_f
    iput v5, p0, LNI;->A:I

    goto/16 :goto_1

    .line 77
    :cond_10
    iget p1, p0, LNI;->A:I

    if-ne p1, v6, :cond_11

    .line 78
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    check-cast p1, LDI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LBI;

    goto :goto_6

    :cond_11
    move-object p1, v8

    .line 79
    :goto_6
    sget-object v9, LDI;->F:LDI;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 80
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LNI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_12

    .line 81
    check-cast v9, LDI;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 82
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 83
    :cond_12
    iput v6, p0, LNI;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_13
    :goto_7
    const/4 v7, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 84
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 86
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :goto_8
    throw p1

    .line 88
    :cond_14
    :pswitch_5
    sget-object p1, LNI;->D:LNI;

    return-object p1

    .line 89
    :pswitch_6
    check-cast p2, LSF;

    .line 90
    check-cast p3, LNI;

    .line 91
    iget p1, p3, LNI;->A:I

    invoke-static {p1}, LMI;->a(I)LMI;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_10

    .line 93
    :pswitch_7
    iget p1, p0, LNI;->A:I

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    :goto_9
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto/16 :goto_10

    .line 94
    :pswitch_8
    iget p1, p0, LNI;->A:I

    if-ne p1, v2, :cond_16

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    :goto_a
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_10

    .line 95
    :pswitch_9
    iget p1, p0, LNI;->A:I

    if-ne p1, v1, :cond_17

    goto :goto_b

    :cond_17
    const/4 v0, 0x0

    :goto_b
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->e(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_10

    .line 96
    :pswitch_a
    iget p1, p0, LNI;->A:I

    if-ne p1, v3, :cond_18

    goto :goto_c

    :cond_18
    const/4 v0, 0x0

    :goto_c
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_10

    .line 97
    :pswitch_b
    iget p1, p0, LNI;->A:I

    if-ne p1, v4, :cond_19

    goto :goto_d

    :cond_19
    const/4 v0, 0x0

    :goto_d
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_10

    .line 98
    :pswitch_c
    iget p1, p0, LNI;->A:I

    if-ne p1, v5, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v0, 0x0

    :goto_e
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    goto :goto_10

    .line 99
    :pswitch_d
    iget p1, p0, LNI;->A:I

    if-ne p1, v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v0, 0x0

    :goto_f
    iget-object p1, p0, LNI;->B:Ljava/lang/Object;

    iget-object v1, p3, LNI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LNI;->B:Ljava/lang/Object;

    .line 100
    :goto_10
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1d

    .line 101
    iget p1, p3, LNI;->A:I

    if-eqz p1, :cond_1c

    .line 102
    iput p1, p0, LNI;->A:I

    .line 103
    :cond_1c
    iget p1, p0, LNI;->z:I

    iget p2, p3, LNI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LNI;->z:I

    :cond_1d
    return-object p0

    .line 104
    :pswitch_e
    iget-byte p1, p0, LNI;->C:B

    if-ne p1, v0, :cond_1e

    .line 105
    sget-object p1, LNI;->D:LNI;

    return-object p1

    :cond_1e
    if-nez p1, :cond_1f

    return-object v8

    .line 106
    :cond_1f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 107
    invoke-virtual {p0}, LNI;->l()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 108
    invoke-virtual {p0}, LNI;->j()LDI;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_21

    if-eqz p1, :cond_20

    .line 109
    iput-byte v7, p0, LNI;->C:B

    :cond_20
    return-object v8

    .line 110
    :cond_21
    invoke-virtual {p0}, LNI;->m()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 111
    invoke-virtual {p0}, LNI;->k()LXI;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_23

    if-eqz p1, :cond_22

    .line 112
    iput-byte v7, p0, LNI;->C:B

    :cond_22
    return-object v8

    :cond_23
    if-eqz p1, :cond_24

    .line 113
    iput-byte v0, p0, LNI;->C:B

    .line 114
    :cond_24
    sget-object p1, LNI;->D:LNI;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .locals 2

    .line 1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LDI;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LXI;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LeJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LTI;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_3
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LrF;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILrF;)V

    .line 11
    :cond_4
    iget v0, p0, LNI;->A:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LfQ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 13
    :cond_5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LDI;
    .locals 2

    .line 1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LDI;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LDI;->F:LDI;

    return-object v0
.end method

.method public k()LXI;
    .locals 2

    .line 1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LNI;->B:Ljava/lang/Object;

    check-cast v0, LXI;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, LXI;->E:LXI;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, LNI;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
