.class public final LEN;
.super LLF;
.source "PG"

# interfaces
.implements LFN;


# static fields
.field public static final H:LEN;

.field public static volatile I:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:I

.field public E:I

.field public F:Z

.field public G:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LEN;

    invoke-direct {v0}, LEN;-><init>()V

    sput-object v0, LEN;->H:LEN;

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
    iput v0, p0, LEN;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LEN;->G:B

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LEN;->H:LEN;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 22
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23
    iget v1, p0, LEN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 24
    iget v1, p0, LEN;->D:I

    .line 25
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_1
    iget v1, p0, LEN;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 27
    iget v1, p0, LEN;->E:I

    .line 28
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_2
    iget v1, p0, LEN;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 30
    iget-boolean v2, p0, LEN;->F:Z

    .line 31
    invoke-static {v1, v2}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_3
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 33
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 35
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_4
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 37
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_5
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 41
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 43
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_6
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 46
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 47
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 49
    :pswitch_0
    sget-object p1, LEN;->I:LkG;

    if-nez p1, :cond_1

    const-class p1, LEN;

    monitor-enter p1

    .line 50
    :try_start_0
    sget-object p2, LEN;->I:LkG;

    if-nez p2, :cond_0

    .line 51
    new-instance p2, LGF;

    sget-object p3, LEN;->H:LEN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LEN;->I:LkG;

    .line 52
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 53
    :cond_1
    :goto_0
    sget-object p1, LEN;->I:LkG;

    return-object p1

    .line 54
    :pswitch_1
    new-instance p1, LCN;

    invoke-direct {p1, v7}, LCN;-><init>(LBN;)V

    return-object p1

    .line 55
    :pswitch_2
    new-instance p1, LEN;

    invoke-direct {p1}, LEN;-><init>()V

    return-object p1

    :pswitch_3
    return-object v7

    .line 56
    :pswitch_4
    check-cast p2, LtF;

    .line 57
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 58
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v7, 0x8

    if-eq p1, v7, :cond_8

    const/16 v7, 0x10

    if-eq p1, v7, :cond_7

    const/16 v7, 0x18

    if-eq p1, v7, :cond_6

    if-eq p1, v5, :cond_5

    const/16 v7, 0x28

    if-eq p1, v7, :cond_4

    const/16 v7, 0x30

    if-eq p1, v7, :cond_3

    .line 59
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v7

    check-cast v7, LEN;

    invoke-virtual {p0, v7, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 60
    :cond_3
    iput v2, p0, LEN;->B:I

    .line 61
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_4
    iput v3, p0, LEN;->B:I

    .line 64
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    goto :goto_1

    .line 66
    :cond_5
    iput v4, p0, LEN;->B:I

    .line 67
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    goto :goto_1

    .line 69
    :cond_6
    iget p1, p0, LEN;->A:I

    or-int/2addr p1, v5

    iput p1, p0, LEN;->A:I

    .line 70
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LEN;->F:Z

    goto :goto_1

    .line 71
    :cond_7
    iget p1, p0, LEN;->A:I

    or-int/2addr p1, v6

    iput p1, p0, LEN;->A:I

    .line 72
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 73
    iput p1, p0, LEN;->E:I

    goto :goto_1

    .line 74
    :cond_8
    iget p1, p0, LEN;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LEN;->A:I

    .line 75
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 76
    iput p1, p0, LEN;->D:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 77
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 78
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 79
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    :goto_3
    throw p1

    .line 81
    :cond_a
    :pswitch_5
    sget-object p1, LEN;->H:LEN;

    return-object p1

    .line 82
    :pswitch_6
    check-cast p2, LSF;

    .line 83
    check-cast p3, LEN;

    .line 84
    iget p1, p0, LEN;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    .line 85
    :goto_4
    iget v7, p0, LEN;->D:I

    .line 86
    iget v8, p3, LEN;->A:I

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 87
    :goto_5
    iget v9, p3, LEN;->D:I

    .line 88
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LEN;->D:I

    .line 89
    iget p1, p0, LEN;->A:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_d

    const/4 p1, 0x1

    goto :goto_6

    :cond_d
    const/4 p1, 0x0

    .line 90
    :goto_6
    iget v7, p0, LEN;->E:I

    .line 91
    iget v8, p3, LEN;->A:I

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_e

    const/4 v8, 0x1

    goto :goto_7

    :cond_e
    const/4 v8, 0x0

    .line 92
    :goto_7
    iget v9, p3, LEN;->E:I

    .line 93
    invoke-interface {p2, p1, v7, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LEN;->E:I

    .line 94
    iget p1, p0, LEN;->A:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_f

    const/4 p1, 0x1

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    .line 95
    :goto_8
    iget-boolean v7, p0, LEN;->F:Z

    .line 96
    iget v8, p3, LEN;->A:I

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    .line 97
    :goto_9
    iget-boolean v8, p3, LEN;->F:Z

    .line 98
    invoke-interface {p2, p1, v7, v5, v8}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LEN;->F:Z

    .line 99
    iget p1, p3, LEN;->B:I

    invoke-static {p1}, LDN;->a(I)LDN;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_17

    if-eq p1, v1, :cond_15

    if-eq p1, v6, :cond_13

    const/4 v2, 0x3

    if-eq p1, v2, :cond_11

    goto :goto_a

    .line 101
    :cond_11
    iget p1, p0, LEN;->B:I

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_a

    .line 102
    :cond_13
    iget p1, p0, LEN;->B:I

    if-ne p1, v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    iget-object p1, p0, LEN;->C:Ljava/lang/Object;

    iget-object v1, p3, LEN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    goto :goto_a

    .line 103
    :cond_15
    iget p1, p0, LEN;->B:I

    if-ne p1, v3, :cond_16

    const/4 v0, 0x1

    :cond_16
    iget-object p1, p0, LEN;->C:Ljava/lang/Object;

    iget-object v1, p3, LEN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    goto :goto_a

    .line 104
    :cond_17
    iget p1, p0, LEN;->B:I

    if-ne p1, v4, :cond_18

    const/4 v0, 0x1

    :cond_18
    iget-object p1, p0, LEN;->C:Ljava/lang/Object;

    iget-object v1, p3, LEN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LEN;->C:Ljava/lang/Object;

    .line 105
    :goto_a
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1a

    .line 106
    iget p1, p3, LEN;->B:I

    if-eqz p1, :cond_19

    .line 107
    iput p1, p0, LEN;->B:I

    .line 108
    :cond_19
    iget p1, p0, LEN;->A:I

    iget p2, p3, LEN;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LEN;->A:I

    :cond_1a
    return-object p0

    .line 109
    :pswitch_7
    iget-byte p1, p0, LEN;->G:B

    if-ne p1, v1, :cond_1b

    .line 110
    sget-object p1, LEN;->H:LEN;

    return-object p1

    :cond_1b
    if-nez p1, :cond_1c

    return-object v7

    .line 111
    :cond_1c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 112
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    .line 113
    iput-byte v0, p0, LEN;->G:B

    :cond_1d
    return-object v7

    :cond_1e
    if-eqz p1, :cond_1f

    .line 114
    iput-byte v1, p0, LEN;->G:B

    .line 115
    :cond_1f
    sget-object p1, LEN;->H:LEN;

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
    .locals 3

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LEN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, LEN;->D:I

    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v1, p0, LEN;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5
    iget v1, p0, LEN;->E:I

    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    .line 6
    :cond_1
    iget v1, p0, LEN;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 7
    iget-boolean v2, p0, LEN;->F:Z

    invoke-virtual {p1, v1, v2}, LxF;->a(IZ)V

    .line 8
    :cond_2
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11
    invoke-virtual {p1, v2, v1}, LxF;->d(II)V

    .line 12
    :cond_3
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 13
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 15
    invoke-virtual {p1, v2, v1}, LxF;->d(II)V

    .line 16
    :cond_4
    iget v1, p0, LEN;->B:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 17
    iget-object v1, p0, LEN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    invoke-virtual {p1, v2, v1}, LxF;->d(II)V

    :cond_5
    const/high16 v1, 0x20000000

    .line 20
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 21
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
