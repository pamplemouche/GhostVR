.class public final LHO;
.super LTF;
.source "PG"

# interfaces
.implements LIO;


# static fields
.field public static final F:LHO;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:I

.field public D:Ljava/lang/Object;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LHO;

    invoke-direct {v0}, LHO;-><init>()V

    sput-object v0, LHO;->F:LHO;

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
    iput v0, p0, LHO;->A:I

    .line 3
    iput v0, p0, LHO;->C:I

    const/4 v0, -0x1

    .line 4
    iput-byte v0, p0, LHO;->E:B

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
    iget v1, p0, LHO;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, LHO;->B:Ljava/lang/Object;

    check-cast v1, LcP;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LHO;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v1, p0, LHO;->B:Ljava/lang/Object;

    check-cast v1, LYO;

    .line 16
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, LHO;->C:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 18
    iget-object v1, p0, LHO;->D:Ljava/lang/Object;

    check-cast v1, LoK;

    .line 19
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_3
    iget v1, p0, LHO;->C:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 21
    iget-object v1, p0, LHO;->D:Ljava/lang/Object;

    check-cast v1, LvK;

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

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, LHO;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LHO;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, LHO;->G:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, LHO;->F:LHO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LHO;->G:LkG;

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
    sget-object p1, LHO;->G:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, LFO;

    invoke-direct {p1, v5}, LFO;-><init>(LDO;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, LHO;

    invoke-direct {p1}, LHO;-><init>()V

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
    iget p1, p0, LHO;->C:I

    if-ne p1, v2, :cond_4

    .line 39
    iget-object p1, p0, LHO;->D:Ljava/lang/Object;

    check-cast p1, LvK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LuK;

    goto :goto_2

    :cond_4
    move-object p1, v5

    .line 40
    :goto_2
    sget-object v6, LvK;->B:LvK;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 41
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LHO;->D:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 42
    check-cast v6, LvK;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LHO;->D:Ljava/lang/Object;

    .line 44
    :cond_5
    iput v2, p0, LHO;->C:I

    goto :goto_1

    .line 45
    :cond_6
    iget p1, p0, LHO;->C:I

    if-ne p1, v3, :cond_7

    .line 46
    iget-object p1, p0, LHO;->D:Ljava/lang/Object;

    check-cast p1, LoK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LnK;

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 47
    :goto_3
    invoke-static {}, LoK;->m()LkG;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LHO;->D:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 48
    check-cast v6, LoK;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 49
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LHO;->D:Ljava/lang/Object;

    .line 50
    :cond_8
    iput v3, p0, LHO;->C:I

    goto :goto_1

    .line 51
    :cond_9
    iget p1, p0, LHO;->A:I

    if-ne p1, v4, :cond_a

    .line 52
    iget-object p1, p0, LHO;->B:Ljava/lang/Object;

    check-cast p1, LYO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LWO;

    goto :goto_4

    :cond_a
    move-object p1, v5

    .line 53
    :goto_4
    sget-object v6, LYO;->F:LYO;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 54
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LHO;->B:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 55
    check-cast v6, LYO;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 56
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LHO;->B:Ljava/lang/Object;

    .line 57
    :cond_b
    iput v4, p0, LHO;->A:I

    goto/16 :goto_1

    .line 58
    :cond_c
    iget p1, p0, LHO;->A:I

    if-ne p1, v1, :cond_d

    .line 59
    iget-object p1, p0, LHO;->B:Ljava/lang/Object;

    check-cast p1, LcP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LaP;

    goto :goto_5

    :cond_d
    move-object p1, v5

    .line 60
    :goto_5
    sget-object v6, LcP;->F:LcP;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 61
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LHO;->B:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 62
    check-cast v6, LcP;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 63
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LHO;->B:Ljava/lang/Object;

    .line 64
    :cond_e
    iput v1, p0, LHO;->A:I
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
    sget-object p1, LHO;->F:LHO;

    return-object p1

    .line 70
    :pswitch_6
    check-cast p2, LSF;

    .line 71
    check-cast p3, LHO;

    .line 72
    iget p1, p3, LHO;->A:I

    invoke-static {p1}, LGO;->a(I)LGO;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_15

    if-eq p1, v1, :cond_13

    if-eq p1, v4, :cond_11

    goto :goto_b

    .line 74
    :cond_11
    iget p1, p0, LHO;->A:I

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    :goto_8
    invoke-interface {p2, p1}, LSF;->a(Z)V

    goto :goto_b

    .line 75
    :cond_13
    iget p1, p0, LHO;->A:I

    if-ne p1, v4, :cond_14

    const/4 p1, 0x1

    goto :goto_9

    :cond_14
    const/4 p1, 0x0

    :goto_9
    iget-object v5, p0, LHO;->B:Ljava/lang/Object;

    iget-object v6, p3, LHO;->B:Ljava/lang/Object;

    invoke-interface {p2, p1, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LHO;->B:Ljava/lang/Object;

    goto :goto_b

    .line 76
    :cond_15
    iget p1, p0, LHO;->A:I

    if-ne p1, v1, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    :goto_a
    iget-object v5, p0, LHO;->B:Ljava/lang/Object;

    iget-object v6, p3, LHO;->B:Ljava/lang/Object;

    invoke-interface {p2, p1, v5, v6}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LHO;->B:Ljava/lang/Object;

    .line 77
    :goto_b
    iget p1, p3, LHO;->C:I

    invoke-static {p1}, LEO;->a(I)LEO;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1b

    if-eq p1, v1, :cond_19

    if-eq p1, v4, :cond_17

    goto :goto_c

    .line 79
    :cond_17
    iget p1, p0, LHO;->C:I

    if-eqz p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_c

    .line 80
    :cond_19
    iget p1, p0, LHO;->C:I

    if-ne p1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    iget-object p1, p0, LHO;->D:Ljava/lang/Object;

    iget-object v1, p3, LHO;->D:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LHO;->D:Ljava/lang/Object;

    goto :goto_c

    .line 81
    :cond_1b
    iget p1, p0, LHO;->C:I

    if-ne p1, v3, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iget-object p1, p0, LHO;->D:Ljava/lang/Object;

    iget-object v1, p3, LHO;->D:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LHO;->D:Ljava/lang/Object;

    .line 82
    :goto_c
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1f

    .line 83
    iget p1, p3, LHO;->A:I

    if-eqz p1, :cond_1d

    .line 84
    iput p1, p0, LHO;->A:I

    .line 85
    :cond_1d
    iget p1, p3, LHO;->C:I

    if-eqz p1, :cond_1e

    .line 86
    iput p1, p0, LHO;->C:I

    .line 87
    :cond_1e
    iget p1, p0, LHO;->z:I

    iget p2, p3, LHO;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LHO;->z:I

    :cond_1f
    return-object p0

    .line 88
    :pswitch_7
    iget-byte p1, p0, LHO;->E:B

    if-ne p1, v1, :cond_20

    .line 89
    sget-object p1, LHO;->F:LHO;

    return-object p1

    :cond_20
    if-nez p1, :cond_21

    return-object v5

    .line 90
    :cond_21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 91
    iget p2, p0, LHO;->A:I

    if-ne p2, v1, :cond_22

    const/4 p2, 0x1

    goto :goto_d

    :cond_22
    const/4 p2, 0x0

    :goto_d
    if-eqz p2, :cond_25

    .line 92
    iget p2, p0, LHO;->A:I

    if-ne p2, v1, :cond_23

    .line 93
    iget-object p2, p0, LHO;->B:Ljava/lang/Object;

    check-cast p2, LcP;

    goto :goto_e

    .line 94
    :cond_23
    sget-object p2, LcP;->F:LcP;

    .line 95
    :goto_e
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_25

    if-eqz p1, :cond_24

    .line 96
    iput-byte v0, p0, LHO;->E:B

    :cond_24
    return-object v5

    .line 97
    :cond_25
    iget p2, p0, LHO;->A:I

    if-ne p2, v4, :cond_26

    const/4 p2, 0x1

    goto :goto_f

    :cond_26
    const/4 p2, 0x0

    :goto_f
    if-eqz p2, :cond_29

    .line 98
    iget p2, p0, LHO;->A:I

    if-ne p2, v4, :cond_27

    .line 99
    iget-object p2, p0, LHO;->B:Ljava/lang/Object;

    check-cast p2, LYO;

    goto :goto_10

    .line 100
    :cond_27
    sget-object p2, LYO;->F:LYO;

    .line 101
    :goto_10
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_29

    if-eqz p1, :cond_28

    .line 102
    iput-byte v0, p0, LHO;->E:B

    :cond_28
    return-object v5

    .line 103
    :cond_29
    iget p2, p0, LHO;->C:I

    if-ne p2, v3, :cond_2a

    const/4 p2, 0x1

    goto :goto_11

    :cond_2a
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_2d

    .line 104
    iget p2, p0, LHO;->C:I

    if-ne p2, v3, :cond_2b

    .line 105
    iget-object p2, p0, LHO;->D:Ljava/lang/Object;

    check-cast p2, LoK;

    goto :goto_12

    .line 106
    :cond_2b
    sget-object p2, LoK;->G:LoK;

    .line 107
    :goto_12
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2d

    if-eqz p1, :cond_2c

    .line 108
    iput-byte v0, p0, LHO;->E:B

    :cond_2c
    return-object v5

    :cond_2d
    if-eqz p1, :cond_2e

    .line 109
    iput-byte v1, p0, LHO;->E:B

    .line 110
    :cond_2e
    sget-object p1, LHO;->F:LHO;

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
    iget v0, p0, LHO;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LHO;->B:Ljava/lang/Object;

    check-cast v0, LcP;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LHO;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LHO;->B:Ljava/lang/Object;

    check-cast v0, LYO;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LHO;->C:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LHO;->D:Ljava/lang/Object;

    check-cast v0, LoK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget v0, p0, LHO;->C:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, LHO;->D:Ljava/lang/Object;

    check-cast v0, LvK;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
