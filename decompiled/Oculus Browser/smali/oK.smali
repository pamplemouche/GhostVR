.class public final LoK;
.super LTF;
.source "PG"

# interfaces
.implements LpK;


# static fields
.field public static final G:LoK;

.field public static volatile H:LkG;


# instance fields
.field public A:LlK;

.field public B:LlK;

.field public C:LbG;

.field public D:LbG;

.field public E:LlK;

.field public F:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LoK;

    invoke-direct {v0}, LoK;-><init>()V

    sput-object v0, LoK;->G:LoK;

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
    iput-byte v0, p0, LoK;->F:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LoK;->C:LbG;

    .line 5
    iput-object v0, p0, LoK;->D:LbG;

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LoK;->G:LoK;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 12
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 13
    :cond_0
    iget v0, p0, LoK;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 14
    invoke-virtual {p0}, LoK;->j()LlK;

    move-result-object v0

    invoke-static {v1, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget v1, p0, LoK;->z:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 16
    invoke-virtual {p0}, LoK;->l()LlK;

    move-result-object v1

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    move v1, v0

    const/4 v0, 0x0

    .line 17
    :goto_1
    iget-object v3, p0, LoK;->C:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/4 v3, 0x3

    .line 18
    iget-object v4, p0, LoK;->C:LbG;

    .line 19
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-static {v3, v4}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_3
    :goto_2
    iget-object v0, p0, LoK;->D:LbG;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v2, v0, :cond_4

    .line 21
    iget-object v0, p0, LoK;->D:LbG;

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhG;

    invoke-static {v3, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_4
    iget v0, p0, LoK;->z:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_5

    const/4 v0, 0x5

    .line 24
    invoke-virtual {p0}, LoK;->k()LlK;

    move-result-object v2

    invoke-static {v0, v2}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 25
    :cond_5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 29
    :pswitch_0
    sget-object p1, LoK;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LoK;

    monitor-enter p1

    .line 30
    :try_start_0
    sget-object p2, LoK;->H:LkG;

    if-nez p2, :cond_0

    .line 31
    new-instance p2, LGF;

    sget-object p3, LoK;->G:LoK;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LoK;->H:LkG;

    .line 32
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 33
    :cond_1
    :goto_0
    sget-object p1, LoK;->H:LkG;

    return-object p1

    .line 34
    :pswitch_1
    new-instance p1, LnK;

    invoke-direct {p1, v4}, LnK;-><init>(LjK;)V

    return-object p1

    .line 35
    :pswitch_2
    new-instance p1, LoK;

    invoke-direct {p1}, LoK;-><init>()V

    return-object p1

    .line 36
    :pswitch_3
    iget-object p1, p0, LoK;->C:LbG;

    check-cast p1, LhF;

    .line 37
    iput-boolean v0, p1, LhF;->w:Z

    .line 38
    iget-object p1, p0, LoK;->D:LbG;

    check-cast p1, LhF;

    .line 39
    iput-boolean v0, p1, LhF;->w:Z

    return-object v4

    .line 40
    :pswitch_4
    check-cast p2, LtF;

    .line 41
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_11

    .line 42
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_10

    const/16 v5, 0xa

    if-eq p1, v5, :cond_d

    const/16 v5, 0x12

    if-eq p1, v5, :cond_a

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_8

    const/16 v5, 0x22

    if-eq p1, v5, :cond_6

    const/16 v5, 0x2a

    if-eq p1, v5, :cond_3

    .line 43
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 44
    :cond_3
    iget p1, p0, LoK;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 45
    iget-object p1, p0, LoK;->E:LlK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LkK;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 46
    :goto_2
    invoke-static {}, LlK;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LlK;

    iput-object v5, p0, LoK;->E:LlK;

    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 48
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->E:LlK;

    .line 49
    :cond_5
    iget p1, p0, LoK;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LoK;->z:I

    goto :goto_1

    .line 50
    :cond_6
    iget-object p1, p0, LoK;->D:LbG;

    check-cast p1, LhF;

    .line 51
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_7

    .line 52
    iget-object p1, p0, LoK;->D:LbG;

    .line 53
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LoK;->D:LbG;

    .line 54
    :cond_7
    iget-object p1, p0, LoK;->D:LbG;

    .line 55
    sget-object v5, LrK;->D:LrK;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 56
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LrK;

    .line 57
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_8
    iget-object p1, p0, LoK;->C:LbG;

    check-cast p1, LhF;

    .line 59
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_9

    .line 60
    iget-object p1, p0, LoK;->C:LbG;

    .line 61
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LoK;->C:LbG;

    .line 62
    :cond_9
    iget-object p1, p0, LoK;->C:LbG;

    .line 63
    sget-object v5, LrK;->D:LrK;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 64
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LrK;

    .line 65
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 66
    :cond_a
    iget p1, p0, LoK;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_b

    .line 67
    iget-object p1, p0, LoK;->B:LlK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LkK;

    goto :goto_3

    :cond_b
    move-object p1, v4

    .line 68
    :goto_3
    invoke-static {}, LlK;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LlK;

    iput-object v5, p0, LoK;->B:LlK;

    if-eqz p1, :cond_c

    .line 69
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 70
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->B:LlK;

    .line 71
    :cond_c
    iget p1, p0, LoK;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LoK;->z:I

    goto/16 :goto_1

    .line 72
    :cond_d
    iget p1, p0, LoK;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_e

    .line 73
    iget-object p1, p0, LoK;->A:LlK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LkK;

    goto :goto_4

    :cond_e
    move-object p1, v4

    .line 74
    :goto_4
    invoke-static {}, LlK;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LlK;

    iput-object v5, p0, LoK;->A:LlK;

    if-eqz p1, :cond_f

    .line 75
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 76
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->A:LlK;

    .line 77
    :cond_f
    iget p1, p0, LoK;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LoK;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_10
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 78
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 79
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 80
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :goto_6
    throw p1

    .line 82
    :cond_11
    :pswitch_5
    sget-object p1, LoK;->G:LoK;

    return-object p1

    .line 83
    :pswitch_6
    check-cast p2, LSF;

    .line 84
    check-cast p3, LoK;

    .line 85
    iget-object p1, p0, LoK;->A:LlK;

    iget-object v0, p3, LoK;->A:LlK;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->A:LlK;

    .line 86
    iget-object p1, p0, LoK;->B:LlK;

    iget-object v0, p3, LoK;->B:LlK;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->B:LlK;

    .line 87
    iget-object p1, p0, LoK;->C:LbG;

    iget-object v0, p3, LoK;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LoK;->C:LbG;

    .line 88
    iget-object p1, p0, LoK;->D:LbG;

    iget-object v0, p3, LoK;->D:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LoK;->D:LbG;

    .line 89
    iget-object p1, p0, LoK;->E:LlK;

    iget-object v0, p3, LoK;->E:LlK;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LoK;->E:LlK;

    .line 90
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_12

    .line 91
    iget p1, p0, LoK;->z:I

    iget p2, p3, LoK;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LoK;->z:I

    :cond_12
    return-object p0

    .line 92
    :pswitch_7
    iget-byte p1, p0, LoK;->F:B

    if-ne p1, v1, :cond_13

    .line 93
    sget-object p1, LoK;->G:LoK;

    return-object p1

    :cond_13
    if-nez p1, :cond_14

    return-object v4

    .line 94
    :cond_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 95
    iget p2, p0, LoK;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_15

    const/4 p2, 0x1

    goto :goto_7

    :cond_15
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_17

    .line 96
    invoke-virtual {p0}, LoK;->j()LlK;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    .line 97
    iput-byte v0, p0, LoK;->F:B

    :cond_16
    return-object v4

    .line 98
    :cond_17
    iget p2, p0, LoK;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_18

    const/4 p2, 0x1

    goto :goto_8

    :cond_18
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1a

    .line 99
    invoke-virtual {p0}, LoK;->l()LlK;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    .line 100
    iput-byte v0, p0, LoK;->F:B

    :cond_19
    return-object v4

    :cond_1a
    const/4 p2, 0x0

    .line 101
    :goto_9
    iget-object p3, p0, LoK;->C:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1d

    .line 102
    iget-object p3, p0, LoK;->C:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LrK;

    .line 103
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_1c

    if-eqz p1, :cond_1b

    .line 104
    iput-byte v0, p0, LoK;->F:B

    :cond_1b
    return-object v4

    :cond_1c
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1d
    const/4 p2, 0x0

    .line 105
    :goto_a
    iget-object p3, p0, LoK;->D:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_20

    .line 106
    iget-object p3, p0, LoK;->D:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LrK;

    .line 107
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_1f

    if-eqz p1, :cond_1e

    .line 108
    iput-byte v0, p0, LoK;->F:B

    :cond_1e
    return-object v4

    :cond_1f
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 109
    :cond_20
    iget p2, p0, LoK;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_21

    const/4 p2, 0x1

    goto :goto_b

    :cond_21
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_23

    .line 110
    invoke-virtual {p0}, LoK;->k()LlK;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_23

    if-eqz p1, :cond_22

    .line 111
    iput-byte v0, p0, LoK;->F:B

    :cond_22
    return-object v4

    :cond_23
    if-eqz p1, :cond_24

    .line 112
    iput-byte v1, p0, LoK;->F:B

    .line 113
    :cond_24
    sget-object p1, LoK;->G:LoK;

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
    .locals 4

    .line 1
    iget v0, p0, LoK;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, LoK;->j()LlK;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LoK;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, LoK;->l()LlK;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, LoK;->C:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, LoK;->C:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object v1, p0, LoK;->D:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_3

    .line 8
    iget-object v1, p0, LoK;->D:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget v0, p0, LoK;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, LoK;->k()LlK;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 11
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LlK;
    .locals 1

    .line 1
    iget-object v0, p0, LoK;->A:LlK;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlK;->B:LlK;

    :cond_0
    return-object v0
.end method

.method public k()LlK;
    .locals 1

    .line 1
    iget-object v0, p0, LoK;->E:LlK;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlK;->B:LlK;

    :cond_0
    return-object v0
.end method

.method public l()LlK;
    .locals 1

    .line 1
    iget-object v0, p0, LoK;->B:LlK;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlK;->B:LlK;

    :cond_0
    return-object v0
.end method
