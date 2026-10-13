.class public final Lmq0;
.super LTF;
.source "PG"

# interfaces
.implements Lnq0;


# static fields
.field public static final I:Lmq0;

.field public static volatile J:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmq0;

    invoke-direct {v0}, Lmq0;-><init>()V

    sput-object v0, Lmq0;->I:Lmq0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 19
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 20
    iget v1, p0, Lmq0;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 21
    iget v1, p0, Lmq0;->A:I

    .line 22
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_1
    iget v1, p0, Lmq0;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 24
    iget v1, p0, Lmq0;->B:I

    .line 25
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_2
    iget v1, p0, Lmq0;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 27
    iget v3, p0, Lmq0;->C:I

    .line 28
    invoke-static {v1, v3}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_3
    iget v1, p0, Lmq0;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 30
    iget v1, p0, Lmq0;->D:I

    .line 31
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_4
    iget v1, p0, Lmq0;->z:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 33
    iget v2, p0, Lmq0;->E:I

    .line 34
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_5
    iget v1, p0, Lmq0;->z:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 36
    iget v2, p0, Lmq0;->F:I

    .line 37
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_6
    iget v1, p0, Lmq0;->z:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 39
    iget v2, p0, Lmq0;->G:I

    .line 40
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_7
    iget v1, p0, Lmq0;->z:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 42
    iget v1, p0, Lmq0;->H:I

    .line 43
    invoke-static {v3, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_8
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x40

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/16 v9, 0x8

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 48
    :pswitch_0
    sget-object p1, Lmq0;->J:LkG;

    if-nez p1, :cond_1

    const-class p1, Lmq0;

    monitor-enter p1

    .line 49
    :try_start_0
    sget-object p2, Lmq0;->J:LkG;

    if-nez p2, :cond_0

    .line 50
    new-instance p2, LGF;

    sget-object p3, Lmq0;->I:Lmq0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, Lmq0;->J:LkG;

    .line 51
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 52
    :cond_1
    :goto_0
    sget-object p1, Lmq0;->J:LkG;

    return-object p1

    .line 53
    :pswitch_1
    new-instance p1, Lkq0;

    invoke-direct {p1, v2}, Lkq0;-><init>(Laq0;)V

    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, Lmq0;

    invoke-direct {p1}, Lmq0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 55
    :pswitch_4
    check-cast p2, LtF;

    .line 56
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 57
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v9, :cond_a

    if-eq p1, v8, :cond_9

    const/16 p3, 0x18

    if-eq p1, p3, :cond_8

    if-eq p1, v7, :cond_7

    const/16 p3, 0x28

    if-eq p1, p3, :cond_6

    const/16 p3, 0x30

    if-eq p1, p3, :cond_5

    const/16 p3, 0x38

    if-eq p1, p3, :cond_4

    if-eq p1, v6, :cond_3

    .line 58
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 59
    :cond_3
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v3

    iput p1, p0, Lmq0;->z:I

    .line 60
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 61
    iput p1, p0, Lmq0;->H:I

    goto :goto_1

    .line 62
    :cond_4
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v6

    iput p1, p0, Lmq0;->z:I

    .line 63
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 64
    iput p1, p0, Lmq0;->G:I

    goto :goto_1

    .line 65
    :cond_5
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v7

    iput p1, p0, Lmq0;->z:I

    .line 66
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 67
    iput p1, p0, Lmq0;->F:I

    goto :goto_1

    .line 68
    :cond_6
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v8

    iput p1, p0, Lmq0;->z:I

    .line 69
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 70
    iput p1, p0, Lmq0;->E:I

    goto :goto_1

    .line 71
    :cond_7
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v9

    iput p1, p0, Lmq0;->z:I

    .line 72
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 73
    iput p1, p0, Lmq0;->D:I

    goto :goto_1

    .line 74
    :cond_8
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v4

    iput p1, p0, Lmq0;->z:I

    .line 75
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 76
    iput p1, p0, Lmq0;->C:I

    goto :goto_1

    .line 77
    :cond_9
    iget p1, p0, Lmq0;->z:I

    or-int/2addr p1, v5

    iput p1, p0, Lmq0;->z:I

    .line 78
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 79
    iput p1, p0, Lmq0;->B:I

    goto :goto_1

    .line 80
    :cond_a
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 81
    invoke-static {p1}, Llq0;->a(I)Llq0;

    move-result-object p3

    if-nez p3, :cond_b

    .line 82
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 83
    :cond_b
    iget p3, p0, Lmq0;->z:I

    or-int/2addr p3, v1

    iput p3, p0, Lmq0;->z:I

    .line 84
    iput p1, p0, Lmq0;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

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
    :goto_3
    throw p1

    .line 89
    :cond_d
    :pswitch_5
    sget-object p1, Lmq0;->I:Lmq0;

    return-object p1

    .line 90
    :pswitch_6
    check-cast p2, LSF;

    .line 91
    check-cast p3, Lmq0;

    .line 92
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    .line 93
    :goto_4
    iget v2, p0, Lmq0;->A:I

    .line 94
    iget v10, p3, Lmq0;->z:I

    and-int/2addr v10, v1

    if-ne v10, v1, :cond_f

    const/4 v10, 0x1

    goto :goto_5

    :cond_f
    const/4 v10, 0x0

    .line 95
    :goto_5
    iget v11, p3, Lmq0;->A:I

    .line 96
    invoke-interface {p2, p1, v2, v10, v11}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->A:I

    .line 97
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_10

    const/4 p1, 0x1

    goto :goto_6

    :cond_10
    const/4 p1, 0x0

    .line 98
    :goto_6
    iget v2, p0, Lmq0;->B:I

    .line 99
    iget v10, p3, Lmq0;->z:I

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    .line 100
    :goto_7
    iget v10, p3, Lmq0;->B:I

    .line 101
    invoke-interface {p2, p1, v2, v5, v10}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->B:I

    .line 102
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_12

    const/4 p1, 0x1

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    .line 103
    :goto_8
    iget v2, p0, Lmq0;->C:I

    .line 104
    iget v5, p3, Lmq0;->z:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    .line 105
    :goto_9
    iget v5, p3, Lmq0;->C:I

    .line 106
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->C:I

    .line 107
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v9

    if-ne p1, v9, :cond_14

    const/4 p1, 0x1

    goto :goto_a

    :cond_14
    const/4 p1, 0x0

    .line 108
    :goto_a
    iget v2, p0, Lmq0;->D:I

    .line 109
    iget v4, p3, Lmq0;->z:I

    and-int/2addr v4, v9

    if-ne v4, v9, :cond_15

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 110
    :goto_b
    iget v5, p3, Lmq0;->D:I

    .line 111
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->D:I

    .line 112
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_16

    const/4 p1, 0x1

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    .line 113
    :goto_c
    iget v2, p0, Lmq0;->E:I

    .line 114
    iget v4, p3, Lmq0;->z:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_17

    const/4 v4, 0x1

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    .line 115
    :goto_d
    iget v5, p3, Lmq0;->E:I

    .line 116
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->E:I

    .line 117
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_18

    const/4 p1, 0x1

    goto :goto_e

    :cond_18
    const/4 p1, 0x0

    .line 118
    :goto_e
    iget v2, p0, Lmq0;->F:I

    .line 119
    iget v4, p3, Lmq0;->z:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_19

    const/4 v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    .line 120
    :goto_f
    iget v5, p3, Lmq0;->F:I

    .line 121
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->F:I

    .line 122
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_1a

    const/4 p1, 0x1

    goto :goto_10

    :cond_1a
    const/4 p1, 0x0

    .line 123
    :goto_10
    iget v2, p0, Lmq0;->G:I

    .line 124
    iget v4, p3, Lmq0;->z:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    .line 125
    :goto_11
    iget v5, p3, Lmq0;->G:I

    .line 126
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->G:I

    .line 127
    iget p1, p0, Lmq0;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1c

    const/4 p1, 0x1

    goto :goto_12

    :cond_1c
    const/4 p1, 0x0

    .line 128
    :goto_12
    iget v2, p0, Lmq0;->H:I

    .line 129
    iget v4, p3, Lmq0;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1d

    const/4 v0, 0x1

    .line 130
    :cond_1d
    iget v1, p3, Lmq0;->H:I

    .line 131
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lmq0;->H:I

    .line 132
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1e

    .line 133
    iget p1, p0, Lmq0;->z:I

    iget p2, p3, Lmq0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, Lmq0;->z:I

    :cond_1e
    return-object p0

    .line 134
    :pswitch_7
    sget-object p1, Lmq0;->I:Lmq0;

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
    iget v0, p0, Lmq0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lmq0;->A:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, Lmq0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lmq0;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 6
    :cond_1
    iget v0, p0, Lmq0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget v2, p0, Lmq0;->C:I

    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 8
    :cond_2
    iget v0, p0, Lmq0;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 9
    iget v0, p0, Lmq0;->D:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 10
    :cond_3
    iget v0, p0, Lmq0;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 11
    iget v1, p0, Lmq0;->E:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 12
    :cond_4
    iget v0, p0, Lmq0;->z:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 13
    iget v1, p0, Lmq0;->F:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 14
    :cond_5
    iget v0, p0, Lmq0;->z:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 15
    iget v1, p0, Lmq0;->G:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 16
    :cond_6
    iget v0, p0, Lmq0;->z:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 17
    iget v0, p0, Lmq0;->H:I

    invoke-virtual {p1, v2, v0}, LxF;->b(II)V

    .line 18
    :cond_7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
