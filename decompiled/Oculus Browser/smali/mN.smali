.class public final LmN;
.super LLF;
.source "PG"

# interfaces
.implements LnN;


# static fields
.field public static final L:LmN;

.field public static volatile M:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/String;

.field public E:LvN;

.field public F:LtO;

.field public G:LbG;

.field public H:LbG;

.field public I:LoK;

.field public J:LQM;

.field public K:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LmN;

    invoke-direct {v0}, LmN;-><init>()V

    sput-object v0, LmN;->L:LmN;

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
    iput v0, p0, LmN;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LmN;->K:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, LmN;->D:Ljava/lang/String;

    .line 5
    sget-object v0, LlG;->y:LlG;

    .line 6
    iput-object v0, p0, LmN;->G:LbG;

    .line 7
    iput-object v0, p0, LmN;->H:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 24
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25
    :cond_0
    iget v0, p0, LmN;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 26
    iget-object v0, p0, LmN;->D:Ljava/lang/String;

    .line 27
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget v1, p0, LmN;->B:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    if-ne v1, v3, :cond_2

    .line 29
    iget-object v1, p0, LmN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 30
    :goto_1
    invoke-static {v3, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_3
    iget v1, p0, LmN;->B:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 32
    iget-object v1, p0, LmN;->C:Ljava/lang/Object;

    check-cast v1, LsN;

    .line 33
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_4
    iget v1, p0, LmN;->A:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x4

    .line 35
    invoke-virtual {p0}, LmN;->o()LtO;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    move v1, v0

    const/4 v0, 0x0

    .line 36
    :goto_2
    iget-object v3, p0, LmN;->G:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    const/4 v3, 0x5

    .line 37
    iget-object v4, p0, LmN;->G:LbG;

    .line 38
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-static {v3, v4}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 39
    :cond_6
    iget v0, p0, LmN;->A:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    const/4 v0, 0x7

    .line 40
    invoke-virtual {p0}, LmN;->m()LoK;

    move-result-object v3

    invoke-static {v0, v3}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 41
    :cond_7
    :goto_3
    iget-object v0, p0, LmN;->H:LbG;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    const/16 v0, 0xa

    .line 42
    iget-object v3, p0, LmN;->H:LbG;

    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v0, v3}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 44
    :cond_8
    iget v0, p0, LmN;->A:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_9

    const/16 v0, 0xb

    .line 45
    invoke-virtual {p0}, LmN;->p()LvN;

    move-result-object v2

    invoke-static {v0, v2}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 46
    :cond_9
    iget v0, p0, LmN;->A:I

    const/16 v2, 0x40

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a

    const/16 v0, 0xc

    .line 47
    invoke-virtual {p0}, LmN;->n()LQM;

    move-result-object v2

    invoke-static {v0, v2}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 48
    :cond_a
    invoke-virtual {p0}, LLF;->k()I

    move-result v0

    add-int/2addr v0, v1

    .line 49
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 50
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x40

    const/16 v4, 0x20

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x3

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 53
    :pswitch_0
    sget-object p1, LmN;->M:LkG;

    if-nez p1, :cond_1

    const-class p1, LmN;

    monitor-enter p1

    .line 54
    :try_start_0
    sget-object p2, LmN;->M:LkG;

    if-nez p2, :cond_0

    .line 55
    new-instance p2, LGF;

    sget-object p3, LmN;->L:LmN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LmN;->M:LkG;

    .line 56
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 57
    :cond_1
    :goto_0
    sget-object p1, LmN;->M:LkG;

    return-object p1

    .line 58
    :pswitch_1
    new-instance p1, LkN;

    invoke-direct {p1, v8}, LkN;-><init>(LjN;)V

    return-object p1

    .line 59
    :pswitch_2
    new-instance p1, LmN;

    invoke-direct {p1}, LmN;-><init>()V

    return-object p1

    .line 60
    :pswitch_3
    iget-object p1, p0, LmN;->G:LbG;

    check-cast p1, LhF;

    .line 61
    iput-boolean v1, p1, LhF;->w:Z

    .line 62
    iget-object p1, p0, LmN;->H:LbG;

    check-cast p1, LhF;

    .line 63
    iput-boolean v1, p1, LhF;->w:Z

    return-object v8

    .line 64
    :pswitch_4
    check-cast p2, LtF;

    .line 65
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_19

    .line 66
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_18

    const/16 v9, 0xa

    if-eq p1, v9, :cond_17

    const/16 v9, 0x12

    if-eq p1, v9, :cond_16

    const/16 v9, 0x1a

    if-eq p1, v9, :cond_13

    const/16 v9, 0x22

    if-eq p1, v9, :cond_10

    const/16 v9, 0x2a

    if-eq p1, v9, :cond_e

    const/16 v9, 0x3a

    if-eq p1, v9, :cond_b

    const/16 v9, 0x52

    if-eq p1, v9, :cond_9

    const/16 v9, 0x5a

    if-eq p1, v9, :cond_6

    const/16 v9, 0x62

    if-eq p1, v9, :cond_3

    .line 67
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v9

    check-cast v9, LmN;

    invoke-virtual {p0, v9, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_7

    .line 68
    :cond_3
    iget p1, p0, LmN;->A:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_4

    .line 69
    iget-object p1, p0, LmN;->J:LQM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LPM;

    goto :goto_2

    :cond_4
    move-object p1, v8

    .line 70
    :goto_2
    invoke-static {}, LQM;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LQM;

    iput-object v9, p0, LmN;->J:LQM;

    if-eqz p1, :cond_5

    .line 71
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 72
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LQM;

    iput-object p1, p0, LmN;->J:LQM;

    .line 73
    :cond_5
    iget p1, p0, LmN;->A:I

    or-int/2addr p1, v3

    iput p1, p0, LmN;->A:I

    goto :goto_1

    .line 74
    :cond_6
    iget p1, p0, LmN;->A:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_7

    .line 75
    iget-object p1, p0, LmN;->E:LvN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LuN;

    goto :goto_3

    :cond_7
    move-object p1, v8

    .line 76
    :goto_3
    sget-object v9, LvN;->C:LvN;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 77
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LvN;

    iput-object v9, p0, LmN;->E:LvN;

    if-eqz p1, :cond_8

    .line 78
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 79
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LvN;

    iput-object p1, p0, LmN;->E:LvN;

    .line 80
    :cond_8
    iget p1, p0, LmN;->A:I

    or-int/2addr p1, v6

    iput p1, p0, LmN;->A:I

    goto/16 :goto_1

    .line 81
    :cond_9
    iget-object p1, p0, LmN;->H:LbG;

    check-cast p1, LhF;

    .line 82
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_a

    .line 83
    iget-object p1, p0, LmN;->H:LbG;

    .line 84
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LmN;->H:LbG;

    .line 85
    :cond_a
    iget-object p1, p0, LmN;->H:LbG;

    .line 86
    invoke-static {}, LoL;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LoL;

    .line 87
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 88
    :cond_b
    iget p1, p0, LmN;->A:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_c

    .line 89
    iget-object p1, p0, LmN;->I:LoK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LnK;

    goto :goto_4

    :cond_c
    move-object p1, v8

    .line 90
    :goto_4
    invoke-static {}, LoK;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LoK;

    iput-object v9, p0, LmN;->I:LoK;

    if-eqz p1, :cond_d

    .line 91
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 92
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LoK;

    iput-object p1, p0, LmN;->I:LoK;

    .line 93
    :cond_d
    iget p1, p0, LmN;->A:I

    or-int/2addr p1, v4

    iput p1, p0, LmN;->A:I

    goto/16 :goto_1

    .line 94
    :cond_e
    iget-object p1, p0, LmN;->G:LbG;

    check-cast p1, LhF;

    .line 95
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_f

    .line 96
    iget-object p1, p0, LmN;->G:LbG;

    .line 97
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LmN;->G:LbG;

    .line 98
    :cond_f
    iget-object p1, p0, LmN;->G:LbG;

    .line 99
    sget-object v9, LzN;->J:LzN;

    invoke-virtual {v9}, LTF;->g()LkG;

    move-result-object v9

    .line 100
    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LzN;

    .line 101
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 102
    :cond_10
    iget p1, p0, LmN;->A:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_11

    .line 103
    iget-object p1, p0, LmN;->F:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_5

    :cond_11
    move-object p1, v8

    .line 104
    :goto_5
    invoke-static {}, LtO;->m()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    check-cast v9, LtO;

    iput-object v9, p0, LmN;->F:LtO;

    if-eqz p1, :cond_12

    .line 105
    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 106
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LmN;->F:LtO;

    .line 107
    :cond_12
    iget p1, p0, LmN;->A:I

    or-int/2addr p1, v5

    iput p1, p0, LmN;->A:I

    goto/16 :goto_1

    .line 108
    :cond_13
    iget p1, p0, LmN;->B:I

    if-ne p1, v7, :cond_14

    .line 109
    iget-object p1, p0, LmN;->C:Ljava/lang/Object;

    check-cast p1, LsN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LrN;

    goto :goto_6

    :cond_14
    move-object p1, v8

    .line 110
    :goto_6
    invoke-static {}, LsN;->j()LkG;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v9

    iput-object v9, p0, LmN;->C:Ljava/lang/Object;

    if-eqz p1, :cond_15

    .line 111
    check-cast v9, LsN;

    invoke-virtual {p1, v9}, LFF;->a(LTF;)LFF;

    .line 112
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LmN;->C:Ljava/lang/Object;

    .line 113
    :cond_15
    iput v7, p0, LmN;->B:I

    goto/16 :goto_1

    .line 114
    :cond_16
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 115
    iput v2, p0, LmN;->B:I

    .line 116
    iput-object p1, p0, LmN;->C:Ljava/lang/Object;

    goto/16 :goto_1

    .line 117
    :cond_17
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 118
    iget v9, p0, LmN;->A:I

    or-int/2addr v9, v0

    iput v9, p0, LmN;->A:I

    .line 119
    iput-object p1, p0, LmN;->D:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_18
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 120
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    :goto_8
    throw p1

    .line 124
    :cond_19
    :pswitch_5
    sget-object p1, LmN;->L:LmN;

    return-object p1

    .line 125
    :pswitch_6
    check-cast p2, LSF;

    .line 126
    check-cast p3, LmN;

    .line 127
    iget p1, p0, LmN;->A:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_9

    :cond_1a
    const/4 p1, 0x0

    .line 128
    :goto_9
    iget-object v3, p0, LmN;->D:Ljava/lang/String;

    .line 129
    iget v4, p3, LmN;->A:I

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_1b

    const/4 v4, 0x1

    goto :goto_a

    :cond_1b
    const/4 v4, 0x0

    .line 130
    :goto_a
    iget-object v5, p3, LmN;->D:Ljava/lang/String;

    .line 131
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LmN;->D:Ljava/lang/String;

    .line 132
    iget-object p1, p0, LmN;->E:LvN;

    iget-object v3, p3, LmN;->E:LvN;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LvN;

    iput-object p1, p0, LmN;->E:LvN;

    .line 133
    iget-object p1, p0, LmN;->F:LtO;

    iget-object v3, p3, LmN;->F:LtO;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LmN;->F:LtO;

    .line 134
    iget-object p1, p0, LmN;->G:LbG;

    iget-object v3, p3, LmN;->G:LbG;

    invoke-interface {p2, p1, v3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LmN;->G:LbG;

    .line 135
    iget-object p1, p0, LmN;->H:LbG;

    iget-object v3, p3, LmN;->H:LbG;

    invoke-interface {p2, p1, v3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LmN;->H:LbG;

    .line 136
    iget-object p1, p0, LmN;->I:LoK;

    iget-object v3, p3, LmN;->I:LoK;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LoK;

    iput-object p1, p0, LmN;->I:LoK;

    .line 137
    iget-object p1, p0, LmN;->J:LQM;

    iget-object v3, p3, LmN;->J:LQM;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LQM;

    iput-object p1, p0, LmN;->J:LQM;

    .line 138
    iget p1, p3, LmN;->B:I

    invoke-static {p1}, LlN;->a(I)LlN;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_20

    if-eq p1, v0, :cond_1e

    if-eq p1, v2, :cond_1c

    goto :goto_e

    .line 140
    :cond_1c
    iget p1, p0, LmN;->B:I

    if-eqz p1, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v0, 0x0

    :goto_b
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_e

    .line 141
    :cond_1e
    iget p1, p0, LmN;->B:I

    if-ne p1, v7, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    :goto_c
    iget-object p1, p0, LmN;->C:Ljava/lang/Object;

    iget-object v1, p3, LmN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LmN;->C:Ljava/lang/Object;

    goto :goto_e

    .line 142
    :cond_20
    iget p1, p0, LmN;->B:I

    if-ne p1, v2, :cond_21

    goto :goto_d

    :cond_21
    const/4 v0, 0x0

    :goto_d
    iget-object p1, p0, LmN;->C:Ljava/lang/Object;

    iget-object v1, p3, LmN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LmN;->C:Ljava/lang/Object;

    .line 143
    :goto_e
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_23

    .line 144
    iget p1, p3, LmN;->B:I

    if-eqz p1, :cond_22

    .line 145
    iput p1, p0, LmN;->B:I

    .line 146
    :cond_22
    iget p1, p0, LmN;->A:I

    iget p2, p3, LmN;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LmN;->A:I

    :cond_23
    return-object p0

    .line 147
    :pswitch_7
    iget-byte p1, p0, LmN;->K:B

    if-ne p1, v0, :cond_24

    .line 148
    sget-object p1, LmN;->L:LmN;

    return-object p1

    :cond_24
    if-nez p1, :cond_25

    return-object v8

    .line 149
    :cond_25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 150
    iget p2, p0, LmN;->B:I

    if-ne p2, v7, :cond_26

    const/4 p2, 0x1

    goto :goto_f

    :cond_26
    const/4 p2, 0x0

    :goto_f
    if-eqz p2, :cond_29

    .line 151
    iget p2, p0, LmN;->B:I

    if-ne p2, v7, :cond_27

    .line 152
    iget-object p2, p0, LmN;->C:Ljava/lang/Object;

    check-cast p2, LsN;

    goto :goto_10

    .line 153
    :cond_27
    sget-object p2, LsN;->E:LsN;

    .line 154
    :goto_10
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_29

    if-eqz p1, :cond_28

    .line 155
    iput-byte v1, p0, LmN;->K:B

    :cond_28
    return-object v8

    .line 156
    :cond_29
    iget p2, p0, LmN;->A:I

    and-int/2addr p2, v6

    if-ne p2, v6, :cond_2a

    const/4 p2, 0x1

    goto :goto_11

    :cond_2a
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_2c

    .line 157
    invoke-virtual {p0}, LmN;->p()LvN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2c

    if-eqz p1, :cond_2b

    .line 158
    iput-byte v1, p0, LmN;->K:B

    :cond_2b
    return-object v8

    .line 159
    :cond_2c
    iget p2, p0, LmN;->A:I

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_2d

    const/4 p2, 0x1

    goto :goto_12

    :cond_2d
    const/4 p2, 0x0

    :goto_12
    if-eqz p2, :cond_2f

    .line 160
    invoke-virtual {p0}, LmN;->o()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2f

    if-eqz p1, :cond_2e

    .line 161
    iput-byte v1, p0, LmN;->K:B

    :cond_2e
    return-object v8

    :cond_2f
    const/4 p2, 0x0

    .line 162
    :goto_13
    iget-object p3, p0, LmN;->G:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_32

    .line 163
    iget-object p3, p0, LmN;->G:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LzN;

    .line 164
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_31

    if-eqz p1, :cond_30

    .line 165
    iput-byte v1, p0, LmN;->K:B

    :cond_30
    return-object v8

    :cond_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_32
    const/4 p2, 0x0

    .line 166
    :goto_14
    iget-object p3, p0, LmN;->H:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_35

    .line 167
    iget-object p3, p0, LmN;->H:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LoL;

    .line 168
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_34

    if-eqz p1, :cond_33

    .line 169
    iput-byte v1, p0, LmN;->K:B

    :cond_33
    return-object v8

    :cond_34
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 170
    :cond_35
    iget p2, p0, LmN;->A:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_36

    const/4 p2, 0x1

    goto :goto_15

    :cond_36
    const/4 p2, 0x0

    :goto_15
    if-eqz p2, :cond_38

    .line 171
    invoke-virtual {p0}, LmN;->m()LoK;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_38

    if-eqz p1, :cond_37

    .line 172
    iput-byte v1, p0, LmN;->K:B

    :cond_37
    return-object v8

    .line 173
    :cond_38
    iget p2, p0, LmN;->A:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_39

    const/4 p2, 0x1

    goto :goto_16

    :cond_39
    const/4 p2, 0x0

    :goto_16
    if-eqz p2, :cond_3b

    .line 174
    invoke-virtual {p0}, LmN;->n()LQM;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_3b

    if-eqz p1, :cond_3a

    .line 175
    iput-byte v1, p0, LmN;->K:B

    :cond_3a
    return-object v8

    .line 176
    :cond_3b
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_3d

    if-eqz p1, :cond_3c

    .line 177
    iput-byte v1, p0, LmN;->K:B

    :cond_3c
    return-object v8

    :cond_3d
    if-eqz p1, :cond_3e

    .line 178
    iput-byte v0, p0, LmN;->K:B

    .line 179
    :cond_3e
    sget-object p1, LmN;->L:LmN;

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
    .locals 5

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LmN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LmN;->D:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 5
    :cond_0
    iget v1, p0, LmN;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, LmN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 7
    :goto_0
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 8
    :cond_2
    iget v1, p0, LmN;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, LmN;->C:Ljava/lang/Object;

    check-cast v1, LsN;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v1, p0, LmN;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, LmN;->o()LtO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v3, p0, LmN;->G:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 13
    iget-object v4, p0, LmN;->G:LbG;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-virtual {p1, v3, v4}, LxF;->a(ILhG;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 14
    :cond_5
    iget v2, p0, LmN;->A:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_6

    const/4 v2, 0x7

    .line 15
    invoke-virtual {p0}, LmN;->m()LoK;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    .line 16
    :cond_6
    :goto_2
    iget-object v2, p0, LmN;->H:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0xa

    .line 17
    iget-object v3, p0, LmN;->H:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_7
    iget v1, p0, LmN;->A:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/16 v1, 0xb

    .line 19
    invoke-virtual {p0}, LmN;->p()LvN;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 20
    :cond_8
    iget v1, p0, LmN;->A:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0xc

    .line 21
    invoke-virtual {p0}, LmN;->n()LQM;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_9
    const/high16 v1, 0x20000000

    .line 22
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 23
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LoK;
    .locals 1

    .line 1
    iget-object v0, p0, LmN;->I:LoK;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LoK;->G:LoK;

    :cond_0
    return-object v0
.end method

.method public n()LQM;
    .locals 1

    .line 1
    iget-object v0, p0, LmN;->J:LQM;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LQM;->B:LQM;

    :cond_0
    return-object v0
.end method

.method public o()LtO;
    .locals 1

    .line 1
    iget-object v0, p0, LmN;->F:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method

.method public p()LvN;
    .locals 1

    .line 1
    iget-object v0, p0, LmN;->E:LvN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LvN;->C:LvN;

    :cond_0
    return-object v0
.end method
