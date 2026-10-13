.class public final LDI;
.super LTF;
.source "PG"

# interfaces
.implements LEI;


# static fields
.field public static final F:LDI;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LDI;

    invoke-direct {v0}, LDI;-><init>()V

    sput-object v0, LDI;->F:LDI;

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
    iput v0, p0, LDI;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LDI;->E:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, LDI;->C:Ljava/lang/String;

    .line 5
    iput-object v0, p0, LDI;->D:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 18
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19
    iget v1, p0, LDI;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 20
    iget-object v1, p0, LDI;->C:Ljava/lang/String;

    .line 21
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_1
    iget v1, p0, LDI;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 23
    iget-object v1, p0, LDI;->D:Ljava/lang/String;

    .line 24
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    iget v1, p0, LDI;->A:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 26
    iget-object v1, p0, LDI;->B:Ljava/lang/Object;

    check-cast v1, LGP;

    .line 27
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_3
    iget v1, p0, LDI;->A:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 29
    iget-object v1, p0, LDI;->B:Ljava/lang/Object;

    check-cast v1, LnP;

    .line 30
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_4
    iget v1, p0, LDI;->A:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 32
    iget-object v1, p0, LDI;->B:Ljava/lang/Object;

    check-cast v1, LuP;

    .line 33
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_5
    iget v1, p0, LDI;->A:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 35
    iget-object v1, p0, LDI;->B:Ljava/lang/Object;

    check-cast v1, LqP;

    .line 36
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_6
    iget v1, p0, LDI;->A:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 38
    iget-object v1, p0, LDI;->B:Ljava/lang/Object;

    check-cast v1, LGI;

    .line 39
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_7
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 41
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 44
    :pswitch_0
    sget-object p1, LDI;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LDI;

    monitor-enter p1

    .line 45
    :try_start_0
    sget-object p2, LDI;->G:LkG;

    if-nez p2, :cond_0

    .line 46
    new-instance p2, LGF;

    sget-object p3, LDI;->F:LDI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LDI;->G:LkG;

    .line 47
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 48
    :cond_1
    :goto_0
    sget-object p1, LDI;->G:LkG;

    return-object p1

    .line 49
    :pswitch_1
    new-instance p1, LBI;

    invoke-direct {p1, v8}, LBI;-><init>(LrI;)V

    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, LDI;

    invoke-direct {p1}, LDI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v8

    .line 51
    :pswitch_4
    check-cast p2, LtF;

    .line 52
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_15

    .line 53
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_14

    const/16 v9, 0xa

    if-eq p1, v9, :cond_13

    const/16 v9, 0x12

    if-eq p1, v9, :cond_12

    const/16 v9, 0x22

    if-eq p1, v9, :cond_f

    const/16 v9, 0x2a

    if-eq p1, v9, :cond_c

    const/16 v9, 0x32

    if-eq p1, v9, :cond_9

    const/16 v9, 0x3a

    if-eq p1, v9, :cond_6

    const/16 v9, 0x42

    if-eq p1, v9, :cond_3

    .line 54
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 55
    :cond_3
    iget p1, p0, LDI;->A:I

    if-ne p1, v2, :cond_4

    .line 56
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    check-cast p1, LGI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LFI;

    goto :goto_2

    :cond_4
    move-object p1, v8

    .line 57
    :goto_2
    sget-object v9, LGI;->C:LGI;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 58
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LDI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 59
    check-cast v9, LGI;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 60
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 61
    :cond_5
    iput v2, p0, LDI;->A:I

    goto :goto_1

    .line 62
    :cond_6
    iget p1, p0, LDI;->A:I

    if-ne p1, v3, :cond_7

    .line 63
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    check-cast p1, LqP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LpP;

    goto :goto_3

    :cond_7
    move-object p1, v8

    .line 64
    :goto_3
    sget-object v9, LqP;->z:LqP;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 65
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LDI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 66
    check-cast v9, LqP;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 67
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 68
    :cond_8
    iput v3, p0, LDI;->A:I

    goto/16 :goto_1

    .line 69
    :cond_9
    iget p1, p0, LDI;->A:I

    if-ne p1, v6, :cond_a

    .line 70
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    check-cast p1, LuP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsP;

    goto :goto_4

    :cond_a
    move-object p1, v8

    .line 71
    :goto_4
    sget-object v9, LuP;->G:LuP;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 72
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LDI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 73
    check-cast v9, LuP;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 74
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 75
    :cond_b
    iput v6, p0, LDI;->A:I

    goto/16 :goto_1

    .line 76
    :cond_c
    iget p1, p0, LDI;->A:I

    if-ne p1, v7, :cond_d

    .line 77
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    check-cast p1, LnP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LmP;

    goto :goto_5

    :cond_d
    move-object p1, v8

    .line 78
    :goto_5
    sget-object v9, LnP;->B:LnP;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 79
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LDI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 80
    check-cast v9, LnP;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 81
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 82
    :cond_e
    iput v7, p0, LDI;->A:I

    goto/16 :goto_1

    .line 83
    :cond_f
    iget p1, p0, LDI;->A:I

    if-ne p1, v4, :cond_10

    .line 84
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    check-cast p1, LGP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LFP;

    goto :goto_6

    :cond_10
    move-object p1, v8

    .line 85
    :goto_6
    sget-object v9, LGP;->z:LGP;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 86
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LDI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_11

    .line 87
    check-cast v9, LGP;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 88
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 89
    :cond_11
    iput v4, p0, LDI;->A:I

    goto/16 :goto_1

    .line 90
    :cond_12
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget v9, p0, LDI;->z:I

    or-int/2addr v9, v5

    iput v9, p0, LDI;->z:I

    .line 92
    iput-object p1, p0, LDI;->D:Ljava/lang/String;

    goto/16 :goto_1

    .line 93
    :cond_13
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget v9, p0, LDI;->z:I

    or-int/2addr v9, v1

    iput v9, p0, LDI;->z:I

    .line 95
    iput-object p1, p0, LDI;->C:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_14
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

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
    :goto_8
    throw p1

    .line 100
    :cond_15
    :pswitch_5
    sget-object p1, LDI;->F:LDI;

    return-object p1

    .line 101
    :pswitch_6
    check-cast p2, LSF;

    .line 102
    check-cast p3, LDI;

    .line 103
    iget p1, p0, LDI;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_16

    const/4 p1, 0x1

    goto :goto_9

    :cond_16
    const/4 p1, 0x0

    .line 104
    :goto_9
    iget-object v8, p0, LDI;->C:Ljava/lang/String;

    .line 105
    iget v9, p3, LDI;->z:I

    and-int/2addr v9, v1

    if-ne v9, v1, :cond_17

    const/4 v9, 0x1

    goto :goto_a

    :cond_17
    const/4 v9, 0x0

    .line 106
    :goto_a
    iget-object v10, p3, LDI;->C:Ljava/lang/String;

    .line 107
    invoke-interface {p2, p1, v8, v9, v10}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDI;->C:Ljava/lang/String;

    .line 108
    iget p1, p0, LDI;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_18

    const/4 p1, 0x1

    goto :goto_b

    :cond_18
    const/4 p1, 0x0

    .line 109
    :goto_b
    iget-object v8, p0, LDI;->D:Ljava/lang/String;

    .line 110
    iget v9, p3, LDI;->z:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_19

    const/4 v9, 0x1

    goto :goto_c

    :cond_19
    const/4 v9, 0x0

    .line 111
    :goto_c
    iget-object v10, p3, LDI;->D:Ljava/lang/String;

    .line 112
    invoke-interface {p2, p1, v8, v9, v10}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LDI;->D:Ljava/lang/String;

    .line 113
    iget p1, p3, LDI;->A:I

    invoke-static {p1}, LCI;->a(I)LCI;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_24

    if-eq p1, v1, :cond_22

    if-eq p1, v5, :cond_20

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1e

    if-eq p1, v4, :cond_1c

    if-eq p1, v7, :cond_1a

    goto :goto_d

    .line 115
    :cond_1a
    iget p1, p0, LDI;->A:I

    if-eqz p1, :cond_1b

    const/4 v0, 0x1

    :cond_1b
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_d

    .line 116
    :cond_1c
    iget p1, p0, LDI;->A:I

    if-ne p1, v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    iget-object v1, p3, LDI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    goto :goto_d

    .line 117
    :cond_1e
    iget p1, p0, LDI;->A:I

    if-ne p1, v3, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    iget-object v1, p3, LDI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    goto :goto_d

    .line 118
    :cond_20
    iget p1, p0, LDI;->A:I

    if-ne p1, v6, :cond_21

    const/4 v0, 0x1

    :cond_21
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    iget-object v1, p3, LDI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    goto :goto_d

    .line 119
    :cond_22
    iget p1, p0, LDI;->A:I

    if-ne p1, v7, :cond_23

    const/4 v0, 0x1

    :cond_23
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    iget-object v1, p3, LDI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    goto :goto_d

    .line 120
    :cond_24
    iget p1, p0, LDI;->A:I

    if-ne p1, v4, :cond_25

    const/4 v0, 0x1

    :cond_25
    iget-object p1, p0, LDI;->B:Ljava/lang/Object;

    iget-object v1, p3, LDI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LDI;->B:Ljava/lang/Object;

    .line 121
    :goto_d
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_27

    .line 122
    iget p1, p3, LDI;->A:I

    if-eqz p1, :cond_26

    .line 123
    iput p1, p0, LDI;->A:I

    .line 124
    :cond_26
    iget p1, p0, LDI;->z:I

    iget p2, p3, LDI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LDI;->z:I

    :cond_27
    return-object p0

    .line 125
    :pswitch_7
    iget-byte p1, p0, LDI;->E:B

    if-ne p1, v1, :cond_28

    .line 126
    sget-object p1, LDI;->F:LDI;

    return-object p1

    :cond_28
    if-nez p1, :cond_29

    return-object v8

    .line 127
    :cond_29
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 128
    iget p2, p0, LDI;->A:I

    if-ne p2, v7, :cond_2a

    const/4 p2, 0x1

    goto :goto_e

    :cond_2a
    const/4 p2, 0x0

    :goto_e
    if-eqz p2, :cond_2d

    .line 129
    iget p2, p0, LDI;->A:I

    if-ne p2, v7, :cond_2b

    .line 130
    iget-object p2, p0, LDI;->B:Ljava/lang/Object;

    check-cast p2, LnP;

    goto :goto_f

    .line 131
    :cond_2b
    sget-object p2, LnP;->B:LnP;

    .line 132
    :goto_f
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2d

    if-eqz p1, :cond_2c

    .line 133
    iput-byte v0, p0, LDI;->E:B

    :cond_2c
    return-object v8

    .line 134
    :cond_2d
    iget p2, p0, LDI;->A:I

    if-ne p2, v6, :cond_2e

    const/4 p2, 0x1

    goto :goto_10

    :cond_2e
    const/4 p2, 0x0

    :goto_10
    if-eqz p2, :cond_31

    .line 135
    iget p2, p0, LDI;->A:I

    if-ne p2, v6, :cond_2f

    .line 136
    iget-object p2, p0, LDI;->B:Ljava/lang/Object;

    check-cast p2, LuP;

    goto :goto_11

    .line 137
    :cond_2f
    sget-object p2, LuP;->G:LuP;

    .line 138
    :goto_11
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_31

    if-eqz p1, :cond_30

    .line 139
    iput-byte v0, p0, LDI;->E:B

    :cond_30
    return-object v8

    :cond_31
    if-eqz p1, :cond_32

    .line 140
    iput-byte v1, p0, LDI;->E:B

    .line 141
    :cond_32
    sget-object p1, LDI;->F:LDI;

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
    iget v0, p0, LDI;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LDI;->C:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LDI;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LDI;->D:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 7
    :cond_1
    iget v0, p0, LDI;->A:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, LDI;->B:Ljava/lang/Object;

    check-cast v0, LGP;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_2
    iget v0, p0, LDI;->A:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 10
    iget-object v0, p0, LDI;->B:Ljava/lang/Object;

    check-cast v0, LnP;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 11
    :cond_3
    iget v0, p0, LDI;->A:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 12
    iget-object v0, p0, LDI;->B:Ljava/lang/Object;

    check-cast v0, LuP;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 13
    :cond_4
    iget v0, p0, LDI;->A:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p0, LDI;->B:Ljava/lang/Object;

    check-cast v0, LqP;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 15
    :cond_5
    iget v0, p0, LDI;->A:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, LDI;->B:Ljava/lang/Object;

    check-cast v0, LGI;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 17
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
