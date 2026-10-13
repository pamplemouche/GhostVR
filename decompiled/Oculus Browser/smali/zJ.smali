.class public final LzJ;
.super LTF;
.source "PG"

# interfaces
.implements LAJ;


# static fields
.field public static final F:LzJ;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:I

.field public D:I

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LzJ;

    invoke-direct {v0}, LzJ;-><init>()V

    sput-object v0, LzJ;->F:LzJ;

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
    iput v0, p0, LzJ;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LzJ;->E:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 17
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 18
    iget v1, p0, LzJ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 19
    iget v1, p0, LzJ;->C:I

    .line 20
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_1
    iget v1, p0, LzJ;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 22
    iget-object v1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v1, LPJ;

    .line 23
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_2
    iget v1, p0, LzJ;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 25
    iget-object v1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v1, LMJ;

    .line 26
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget v1, p0, LzJ;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 28
    iget-object v1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v1, LsJ;

    .line 29
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_4
    iget v1, p0, LzJ;->A:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 31
    iget-object v1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v1, LJJ;

    .line 32
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_5
    iget v1, p0, LzJ;->A:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    .line 34
    iget-object v1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v1, LTJ;

    .line 35
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_6
    iget v1, p0, LzJ;->z:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/16 v1, 0x9

    .line 37
    iget v2, p0, LzJ;->D:I

    .line 38
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_7
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 40
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x40

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 43
    :pswitch_0
    sget-object p1, LzJ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LzJ;

    monitor-enter p1

    .line 44
    :try_start_0
    sget-object p2, LzJ;->G:LkG;

    if-nez p2, :cond_0

    .line 45
    new-instance p2, LGF;

    sget-object p3, LzJ;->F:LzJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LzJ;->G:LkG;

    .line 46
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 47
    :cond_1
    :goto_0
    sget-object p1, LzJ;->G:LkG;

    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, LwJ;

    invoke-direct {p1, v8}, LwJ;-><init>(LqJ;)V

    return-object p1

    .line 49
    :pswitch_2
    new-instance p1, LzJ;

    invoke-direct {p1}, LzJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v8

    .line 50
    :pswitch_4
    check-cast p2, LtF;

    .line 51
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_16

    .line 52
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_15

    if-eq p1, v3, :cond_13

    const/16 v9, 0x12

    if-eq p1, v9, :cond_10

    const/16 v9, 0x1a

    if-eq p1, v9, :cond_d

    const/16 v9, 0x22

    if-eq p1, v9, :cond_a

    const/16 v9, 0x32

    if-eq p1, v9, :cond_7

    const/16 v9, 0x42

    if-eq p1, v9, :cond_4

    const/16 v9, 0x48

    if-eq p1, v9, :cond_3

    .line 53
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 54
    :cond_3
    iget p1, p0, LzJ;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LzJ;->z:I

    .line 55
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 56
    iput p1, p0, LzJ;->D:I

    goto :goto_1

    .line 57
    :cond_4
    iget p1, p0, LzJ;->A:I

    if-ne p1, v3, :cond_5

    .line 58
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p1, LTJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LRJ;

    goto :goto_2

    :cond_5
    move-object p1, v8

    .line 59
    :goto_2
    sget-object v9, LTJ;->E:LTJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 60
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LzJ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 61
    check-cast v9, LTJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 62
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 63
    :cond_6
    iput v3, p0, LzJ;->A:I

    goto :goto_1

    .line 64
    :cond_7
    iget p1, p0, LzJ;->A:I

    if-ne p1, v5, :cond_8

    .line 65
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p1, LJJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LIJ;

    goto :goto_3

    :cond_8
    move-object p1, v8

    .line 66
    :goto_3
    sget-object v9, LJJ;->F:LJJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 67
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LzJ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_9

    .line 68
    check-cast v9, LJJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 69
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 70
    :cond_9
    iput v5, p0, LzJ;->A:I

    goto/16 :goto_1

    .line 71
    :cond_a
    iget p1, p0, LzJ;->A:I

    if-ne p1, v6, :cond_b

    .line 72
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p1, LsJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LrJ;

    goto :goto_4

    :cond_b
    move-object p1, v8

    .line 73
    :goto_4
    sget-object v9, LsJ;->F:LsJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 74
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LzJ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 75
    check-cast v9, LsJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 76
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 77
    :cond_c
    iput v6, p0, LzJ;->A:I

    goto/16 :goto_1

    .line 78
    :cond_d
    iget p1, p0, LzJ;->A:I

    if-ne p1, v7, :cond_e

    .line 79
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p1, LMJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLJ;

    goto :goto_5

    :cond_e
    move-object p1, v8

    .line 80
    :goto_5
    sget-object v9, LMJ;->B:LMJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 81
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LzJ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_f

    .line 82
    check-cast v9, LMJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 83
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 84
    :cond_f
    iput v7, p0, LzJ;->A:I

    goto/16 :goto_1

    .line 85
    :cond_10
    iget p1, p0, LzJ;->A:I

    if-ne p1, v4, :cond_11

    .line 86
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p1, LPJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LOJ;

    goto :goto_6

    :cond_11
    move-object p1, v8

    .line 87
    :goto_6
    sget-object v9, LPJ;->C:LPJ;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 88
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LzJ;->B:Ljava/lang/Object;

    if-eqz p1, :cond_12

    .line 89
    check-cast v9, LPJ;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 90
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 91
    :cond_12
    iput v4, p0, LzJ;->A:I

    goto/16 :goto_1

    .line 92
    :cond_13
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 93
    invoke-static {p1}, LyJ;->a(I)LyJ;

    move-result-object v9

    if-nez v9, :cond_14

    .line 94
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 95
    :cond_14
    iget v9, p0, LzJ;->z:I

    or-int/2addr v9, v1

    iput v9, p0, LzJ;->z:I

    .line 96
    iput p1, p0, LzJ;->C:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_15
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 97
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 98
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 100
    :goto_8
    throw p1

    .line 101
    :cond_16
    :pswitch_5
    sget-object p1, LzJ;->F:LzJ;

    return-object p1

    .line 102
    :pswitch_6
    check-cast p2, LSF;

    .line 103
    check-cast p3, LzJ;

    .line 104
    iget p1, p0, LzJ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_17

    const/4 p1, 0x1

    goto :goto_9

    :cond_17
    const/4 p1, 0x0

    .line 105
    :goto_9
    iget v8, p0, LzJ;->C:I

    .line 106
    iget v9, p3, LzJ;->z:I

    and-int/2addr v9, v1

    if-ne v9, v1, :cond_18

    const/4 v9, 0x1

    goto :goto_a

    :cond_18
    const/4 v9, 0x0

    .line 107
    :goto_a
    iget v10, p3, LzJ;->C:I

    .line 108
    invoke-interface {p2, p1, v8, v9, v10}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LzJ;->C:I

    .line 109
    iget p1, p0, LzJ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_19

    const/4 p1, 0x1

    goto :goto_b

    :cond_19
    const/4 p1, 0x0

    .line 110
    :goto_b
    iget v8, p0, LzJ;->D:I

    .line 111
    iget v9, p3, LzJ;->z:I

    and-int/2addr v9, v2

    if-ne v9, v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    .line 112
    :goto_c
    iget v9, p3, LzJ;->D:I

    .line 113
    invoke-interface {p2, p1, v8, v2, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LzJ;->D:I

    .line 114
    iget p1, p3, LzJ;->A:I

    invoke-static {p1}, LxJ;->a(I)LxJ;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_25

    if-eq p1, v1, :cond_23

    if-eq p1, v4, :cond_21

    if-eq p1, v7, :cond_1f

    if-eq p1, v6, :cond_1d

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1b

    goto :goto_d

    .line 116
    :cond_1b
    iget p1, p0, LzJ;->A:I

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_d

    .line 117
    :cond_1d
    iget p1, p0, LzJ;->A:I

    if-ne p1, v3, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    iget-object v1, p3, LzJ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    goto :goto_d

    .line 118
    :cond_1f
    iget p1, p0, LzJ;->A:I

    if-ne p1, v5, :cond_20

    const/4 v0, 0x1

    :cond_20
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    iget-object v1, p3, LzJ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    goto :goto_d

    .line 119
    :cond_21
    iget p1, p0, LzJ;->A:I

    if-ne p1, v6, :cond_22

    const/4 v0, 0x1

    :cond_22
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    iget-object v1, p3, LzJ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    goto :goto_d

    .line 120
    :cond_23
    iget p1, p0, LzJ;->A:I

    if-ne p1, v7, :cond_24

    const/4 v0, 0x1

    :cond_24
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    iget-object v1, p3, LzJ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    goto :goto_d

    .line 121
    :cond_25
    iget p1, p0, LzJ;->A:I

    if-ne p1, v4, :cond_26

    const/4 v0, 0x1

    :cond_26
    iget-object p1, p0, LzJ;->B:Ljava/lang/Object;

    iget-object v1, p3, LzJ;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzJ;->B:Ljava/lang/Object;

    .line 122
    :goto_d
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_28

    .line 123
    iget p1, p3, LzJ;->A:I

    if-eqz p1, :cond_27

    .line 124
    iput p1, p0, LzJ;->A:I

    .line 125
    :cond_27
    iget p1, p0, LzJ;->z:I

    iget p2, p3, LzJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LzJ;->z:I

    :cond_28
    return-object p0

    .line 126
    :pswitch_7
    iget-byte p1, p0, LzJ;->E:B

    if-ne p1, v1, :cond_29

    .line 127
    sget-object p1, LzJ;->F:LzJ;

    return-object p1

    :cond_29
    if-nez p1, :cond_2a

    return-object v8

    .line 128
    :cond_2a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 129
    iget p2, p0, LzJ;->A:I

    if-ne p2, v7, :cond_2b

    const/4 p2, 0x1

    goto :goto_e

    :cond_2b
    const/4 p2, 0x0

    :goto_e
    if-eqz p2, :cond_2e

    .line 130
    iget p2, p0, LzJ;->A:I

    if-ne p2, v7, :cond_2c

    .line 131
    iget-object p2, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p2, LMJ;

    goto :goto_f

    .line 132
    :cond_2c
    sget-object p2, LMJ;->B:LMJ;

    .line 133
    :goto_f
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2e

    if-eqz p1, :cond_2d

    .line 134
    iput-byte v0, p0, LzJ;->E:B

    :cond_2d
    return-object v8

    .line 135
    :cond_2e
    iget p2, p0, LzJ;->A:I

    if-ne p2, v6, :cond_2f

    const/4 p2, 0x1

    goto :goto_10

    :cond_2f
    const/4 p2, 0x0

    :goto_10
    if-eqz p2, :cond_32

    .line 136
    iget p2, p0, LzJ;->A:I

    if-ne p2, v6, :cond_30

    .line 137
    iget-object p2, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p2, LsJ;

    goto :goto_11

    .line 138
    :cond_30
    sget-object p2, LsJ;->F:LsJ;

    .line 139
    :goto_11
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_32

    if-eqz p1, :cond_31

    .line 140
    iput-byte v0, p0, LzJ;->E:B

    :cond_31
    return-object v8

    .line 141
    :cond_32
    iget p2, p0, LzJ;->A:I

    if-ne p2, v5, :cond_33

    const/4 p2, 0x1

    goto :goto_12

    :cond_33
    const/4 p2, 0x0

    :goto_12
    if-eqz p2, :cond_36

    .line 142
    iget p2, p0, LzJ;->A:I

    if-ne p2, v5, :cond_34

    .line 143
    iget-object p2, p0, LzJ;->B:Ljava/lang/Object;

    check-cast p2, LJJ;

    goto :goto_13

    .line 144
    :cond_34
    sget-object p2, LJJ;->F:LJJ;

    .line 145
    :goto_13
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_36

    if-eqz p1, :cond_35

    .line 146
    iput-byte v0, p0, LzJ;->E:B

    :cond_35
    return-object v8

    :cond_36
    if-eqz p1, :cond_37

    .line 147
    iput-byte v1, p0, LzJ;->E:B

    .line 148
    :cond_37
    sget-object p1, LzJ;->F:LzJ;

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
    .locals 2

    .line 1
    iget v0, p0, LzJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LzJ;->C:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, LzJ;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v0, LPJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v0, p0, LzJ;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v0, LMJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v0, p0, LzJ;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v0, LsJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v0, p0, LzJ;->A:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 11
    iget-object v0, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v0, LJJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 12
    :cond_4
    iget v0, p0, LzJ;->A:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 13
    iget-object v0, p0, LzJ;->B:Ljava/lang/Object;

    check-cast v0, LTJ;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 14
    :cond_5
    iget v0, p0, LzJ;->z:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/16 v0, 0x9

    .line 15
    iget v1, p0, LzJ;->D:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 16
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
