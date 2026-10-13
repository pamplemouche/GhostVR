.class public final LVN;
.super LLF;
.source "PG"

# interfaces
.implements LWN;


# static fields
.field public static final J:LVN;

.field public static volatile K:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:LSN;

.field public F:LSN;

.field public G:LSN;

.field public H:LSN;

.field public I:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LVN;

    invoke-direct {v0}, LVN;-><init>()V

    sput-object v0, LVN;->J:LVN;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LVN;->I:B

    return-void
.end method

.method public static q()LkG;
    .locals 1

    .line 1
    sget-object v0, LVN;->J:LVN;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 18
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 20
    invoke-virtual {p0}, LVN;->p()LSN;

    move-result-object v1

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_1
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    const/4 v4, 0x2

    if-ne v1, v2, :cond_2

    .line 22
    invoke-virtual {p0}, LVN;->m()LSN;

    move-result-object v1

    invoke-static {v4, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_2
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 24
    invoke-virtual {p0}, LVN;->o()LSN;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_3
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    const/4 v5, 0x4

    if-ne v1, v2, :cond_4

    .line 26
    invoke-virtual {p0}, LVN;->n()LSN;

    move-result-object v1

    invoke-static {v5, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_4
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 28
    iget v2, p0, LVN;->B:I

    .line 29
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_5
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    const/4 v1, 0x6

    .line 31
    iget v2, p0, LVN;->C:I

    .line 32
    invoke-static {v1, v2}, LxF;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_6
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x7

    .line 34
    iget v2, p0, LVN;->D:I

    .line 35
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_7
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 37
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 38
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0x40

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 41
    :pswitch_0
    sget-object p1, LVN;->K:LkG;

    if-nez p1, :cond_1

    const-class p1, LVN;

    monitor-enter p1

    .line 42
    :try_start_0
    sget-object p2, LVN;->K:LkG;

    if-nez p2, :cond_0

    .line 43
    new-instance p2, LGF;

    sget-object p3, LVN;->J:LVN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LVN;->K:LkG;

    .line 44
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 45
    :cond_1
    :goto_0
    sget-object p1, LVN;->K:LkG;

    return-object p1

    .line 46
    :pswitch_1
    new-instance p1, LUN;

    invoke-direct {p1, v8}, LUN;-><init>(LQN;)V

    return-object p1

    .line 47
    :pswitch_2
    new-instance p1, LVN;

    invoke-direct {p1}, LVN;-><init>()V

    return-object p1

    :pswitch_3
    return-object v8

    .line 48
    :pswitch_4
    check-cast p2, LtF;

    .line 49
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_13

    .line 50
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_12

    const/16 v9, 0xa

    if-eq p1, v9, :cond_f

    const/16 v9, 0x12

    if-eq p1, v9, :cond_c

    const/16 v9, 0x1a

    if-eq p1, v9, :cond_9

    const/16 v9, 0x22

    if-eq p1, v9, :cond_6

    const/16 v9, 0x28

    if-eq p1, v9, :cond_5

    const/16 v9, 0x35

    if-eq p1, v9, :cond_4

    const/16 v9, 0x38

    if-eq p1, v9, :cond_3

    .line 51
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v9

    check-cast v9, LVN;

    invoke-virtual {p0, v9, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 52
    :cond_3
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v2

    iput p1, p0, LVN;->A:I

    .line 53
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 54
    iput p1, p0, LVN;->D:I

    goto :goto_1

    .line 55
    :cond_4
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v3

    iput p1, p0, LVN;->A:I

    .line 56
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 57
    iput p1, p0, LVN;->C:I

    goto :goto_1

    .line 58
    :cond_5
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LVN;->A:I

    .line 59
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 60
    iput p1, p0, LVN;->B:I

    goto :goto_1

    .line 61
    :cond_6
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_7

    .line 62
    iget-object p1, p0, LVN;->H:LSN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LRN;

    goto :goto_2

    :cond_7
    move-object p1, v8

    .line 63
    :goto_2
    invoke-static {}, LSN;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LSN;

    iput-object v9, p0, LVN;->H:LSN;

    if-eqz p1, :cond_8

    .line 64
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 65
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->H:LSN;

    .line 66
    :cond_8
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v4

    iput p1, p0, LVN;->A:I

    goto/16 :goto_1

    .line 67
    :cond_9
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    .line 68
    iget-object p1, p0, LVN;->G:LSN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LRN;

    goto :goto_3

    :cond_a
    move-object p1, v8

    .line 69
    :goto_3
    invoke-static {}, LSN;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LSN;

    iput-object v9, p0, LVN;->G:LSN;

    if-eqz p1, :cond_b

    .line 70
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 71
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->G:LSN;

    .line 72
    :cond_b
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v5

    iput p1, p0, LVN;->A:I

    goto/16 :goto_1

    .line 73
    :cond_c
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_d

    .line 74
    iget-object p1, p0, LVN;->F:LSN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LRN;

    goto :goto_4

    :cond_d
    move-object p1, v8

    .line 75
    :goto_4
    invoke-static {}, LSN;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LSN;

    iput-object v9, p0, LVN;->F:LSN;

    if-eqz p1, :cond_e

    .line 76
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 77
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->F:LSN;

    .line 78
    :cond_e
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v6

    iput p1, p0, LVN;->A:I

    goto/16 :goto_1

    .line 79
    :cond_f
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_10

    .line 80
    iget-object p1, p0, LVN;->E:LSN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LRN;

    goto :goto_5

    :cond_10
    move-object p1, v8

    .line 81
    :goto_5
    invoke-static {}, LSN;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LSN;

    iput-object v9, p0, LVN;->E:LSN;

    if-eqz p1, :cond_11

    .line 82
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 83
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->E:LSN;

    .line 84
    :cond_11
    iget p1, p0, LVN;->A:I

    or-int/2addr p1, v7

    iput p1, p0, LVN;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_12
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :goto_7
    throw p1

    .line 89
    :cond_13
    :pswitch_5
    sget-object p1, LVN;->J:LVN;

    return-object p1

    .line 90
    :pswitch_6
    check-cast p2, LSF;

    .line 91
    check-cast p3, LVN;

    .line 92
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_14

    const/4 p1, 0x1

    goto :goto_8

    :cond_14
    const/4 p1, 0x0

    .line 93
    :goto_8
    iget v4, p0, LVN;->B:I

    .line 94
    iget v5, p3, LVN;->A:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_15

    const/4 v5, 0x1

    goto :goto_9

    :cond_15
    const/4 v5, 0x0

    .line 95
    :goto_9
    iget v6, p3, LVN;->B:I

    .line 96
    invoke-interface {p2, p1, v4, v5, v6}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVN;->B:I

    .line 97
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    .line 98
    :goto_a
    iget v4, p0, LVN;->C:I

    .line 99
    iget v5, p3, LVN;->A:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    .line 100
    :goto_b
    iget v5, p3, LVN;->C:I

    .line 101
    invoke-interface {p2, p1, v4, v3, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVN;->C:I

    .line 102
    iget p1, p0, LVN;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_18

    const/4 p1, 0x1

    goto :goto_c

    :cond_18
    const/4 p1, 0x0

    .line 103
    :goto_c
    iget v3, p0, LVN;->D:I

    .line 104
    iget v4, p3, LVN;->A:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_19

    const/4 v0, 0x1

    .line 105
    :cond_19
    iget v1, p3, LVN;->D:I

    .line 106
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVN;->D:I

    .line 107
    iget-object p1, p0, LVN;->E:LSN;

    iget-object v0, p3, LVN;->E:LSN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->E:LSN;

    .line 108
    iget-object p1, p0, LVN;->F:LSN;

    iget-object v0, p3, LVN;->F:LSN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->F:LSN;

    .line 109
    iget-object p1, p0, LVN;->G:LSN;

    iget-object v0, p3, LVN;->G:LSN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->G:LSN;

    .line 110
    iget-object p1, p0, LVN;->H:LSN;

    iget-object v0, p3, LVN;->H:LSN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LSN;

    iput-object p1, p0, LVN;->H:LSN;

    .line 111
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1a

    .line 112
    iget p1, p0, LVN;->A:I

    iget p2, p3, LVN;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LVN;->A:I

    :cond_1a
    return-object p0

    .line 113
    :pswitch_7
    iget-byte p1, p0, LVN;->I:B

    if-ne p1, v1, :cond_1b

    .line 114
    sget-object p1, LVN;->J:LVN;

    return-object p1

    :cond_1b
    if-nez p1, :cond_1c

    return-object v8

    .line 115
    :cond_1c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 116
    iget p2, p0, LVN;->A:I

    and-int/2addr p2, v7

    if-ne p2, v7, :cond_1d

    const/4 p2, 0x1

    goto :goto_d

    :cond_1d
    const/4 p2, 0x0

    :goto_d
    if-eqz p2, :cond_1f

    .line 117
    invoke-virtual {p0}, LVN;->p()LSN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1f

    if-eqz p1, :cond_1e

    .line 118
    iput-byte v0, p0, LVN;->I:B

    :cond_1e
    return-object v8

    .line 119
    :cond_1f
    iget p2, p0, LVN;->A:I

    and-int/2addr p2, v6

    if-ne p2, v6, :cond_20

    const/4 p2, 0x1

    goto :goto_e

    :cond_20
    const/4 p2, 0x0

    :goto_e
    if-eqz p2, :cond_22

    .line 120
    invoke-virtual {p0}, LVN;->m()LSN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_22

    if-eqz p1, :cond_21

    .line 121
    iput-byte v0, p0, LVN;->I:B

    :cond_21
    return-object v8

    .line 122
    :cond_22
    iget p2, p0, LVN;->A:I

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_23

    const/4 p2, 0x1

    goto :goto_f

    :cond_23
    const/4 p2, 0x0

    :goto_f
    if-eqz p2, :cond_25

    .line 123
    invoke-virtual {p0}, LVN;->o()LSN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_25

    if-eqz p1, :cond_24

    .line 124
    iput-byte v0, p0, LVN;->I:B

    :cond_24
    return-object v8

    .line 125
    :cond_25
    iget p2, p0, LVN;->A:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_26

    const/4 p2, 0x1

    goto :goto_10

    :cond_26
    const/4 p2, 0x0

    :goto_10
    if-eqz p2, :cond_28

    .line 126
    invoke-virtual {p0}, LVN;->n()LSN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_28

    if-eqz p1, :cond_27

    .line 127
    iput-byte v0, p0, LVN;->I:B

    :cond_27
    return-object v8

    .line 128
    :cond_28
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_2a

    if-eqz p1, :cond_29

    .line 129
    iput-byte v0, p0, LVN;->I:B

    :cond_29
    return-object v8

    :cond_2a
    if-eqz p1, :cond_2b

    .line 130
    iput-byte v1, p0, LVN;->I:B

    .line 131
    :cond_2b
    sget-object p1, LVN;->J:LVN;

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
    .locals 6

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, LVN;->p()LSN;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, LVN;->m()LSN;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, LVN;->o()LSN;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v1, p0, LVN;->A:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    const/4 v5, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    invoke-virtual {p0}, LVN;->n()LSN;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x5

    .line 11
    iget v2, p0, LVN;->B:I

    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    .line 12
    :cond_4
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    const/4 v1, 0x6

    .line 13
    iget v2, p0, LVN;->C:I

    invoke-virtual {p1, v1, v2}, LxF;->a(II)V

    .line 14
    :cond_5
    iget v1, p0, LVN;->A:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_6

    const/4 v1, 0x7

    .line 15
    iget v2, p0, LVN;->D:I

    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    :cond_6
    const/high16 v1, 0x20000000

    .line 16
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 17
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LSN;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LVN;->F:LSN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LSN;->E:LSN;

    :cond_0
    return-object v0
.end method

.method public n()LSN;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LVN;->H:LSN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LSN;->E:LSN;

    :cond_0
    return-object v0
.end method

.method public o()LSN;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LVN;->G:LSN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LSN;->E:LSN;

    :cond_0
    return-object v0
.end method

.method public p()LSN;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LVN;->E:LSN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LSN;->E:LSN;

    :cond_0
    return-object v0
.end method
