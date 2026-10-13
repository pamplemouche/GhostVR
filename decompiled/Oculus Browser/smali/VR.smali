.class public final LVR;
.super LTF;
.source "PG"

# interfaces
.implements LWR;


# static fields
.field public static final H:LVR;

.field public static volatile I:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LVR;

    invoke-direct {v0}, LVR;-><init>()V

    sput-object v0, LVR;->H:LVR;

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

    .line 18
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19
    iget v1, p0, LVR;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 20
    iget v1, p0, LVR;->A:I

    .line 21
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_1
    iget v1, p0, LVR;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 23
    iget v1, p0, LVR;->B:I

    .line 24
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    iget v1, p0, LVR;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 26
    iget v3, p0, LVR;->C:I

    .line 27
    invoke-static {v1, v3}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_3
    iget v1, p0, LVR;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 29
    iget v1, p0, LVR;->D:I

    .line 30
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_4
    iget v1, p0, LVR;->z:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 32
    iget v2, p0, LVR;->E:I

    .line 33
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_5
    iget v1, p0, LVR;->z:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 35
    iget v2, p0, LVR;->F:I

    .line 36
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_6
    iget v1, p0, LVR;->z:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 38
    iget v2, p0, LVR;->G:I

    .line 39
    invoke-static {v1, v2}, LxF;->g(II)I

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

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x20

    const/16 v7, 0x10

    const/16 v8, 0x8

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 44
    :pswitch_0
    sget-object p1, LVR;->I:LkG;

    if-nez p1, :cond_1

    const-class p1, LVR;

    monitor-enter p1

    .line 45
    :try_start_0
    sget-object p2, LVR;->I:LkG;

    if-nez p2, :cond_0

    .line 46
    new-instance p2, LGF;

    sget-object p3, LVR;->H:LVR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LVR;->I:LkG;

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
    sget-object p1, LVR;->I:LkG;

    return-object p1

    .line 49
    :pswitch_1
    new-instance p1, LUR;

    invoke-direct {p1, v2}, LUR;-><init>(LRR;)V

    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, LVR;

    invoke-direct {p1}, LVR;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 51
    :pswitch_4
    check-cast p2, LtF;

    .line 52
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 53
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v8, :cond_b

    if-eq p1, v7, :cond_a

    const/16 p3, 0x18

    if-eq p1, p3, :cond_9

    if-eq p1, v6, :cond_8

    const/16 p3, 0x28

    if-eq p1, p3, :cond_6

    const/16 p3, 0x30

    if-eq p1, p3, :cond_4

    const/16 p3, 0x38

    if-eq p1, p3, :cond_3

    .line 54
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 55
    :cond_3
    iget p1, p0, LVR;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LVR;->z:I

    .line 56
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 57
    iput p1, p0, LVR;->G:I

    goto :goto_1

    .line 58
    :cond_4
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 59
    invoke-static {p1}, LTR;->a(I)LTR;

    move-result-object p3

    if-nez p3, :cond_5

    const/4 p3, 0x6

    .line 60
    invoke-super {p0, p3, p1}, LTF;->a(II)V

    goto :goto_1

    .line 61
    :cond_5
    iget p3, p0, LVR;->z:I

    or-int/2addr p3, v6

    iput p3, p0, LVR;->z:I

    .line 62
    iput p1, p0, LVR;->F:I

    goto :goto_1

    .line 63
    :cond_6
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 64
    invoke-static {p1}, LSR;->a(I)LSR;

    move-result-object p3

    if-nez p3, :cond_7

    const/4 p3, 0x5

    .line 65
    invoke-super {p0, p3, p1}, LTF;->a(II)V

    goto :goto_1

    .line 66
    :cond_7
    iget p3, p0, LVR;->z:I

    or-int/2addr p3, v7

    iput p3, p0, LVR;->z:I

    .line 67
    iput p1, p0, LVR;->E:I

    goto :goto_1

    .line 68
    :cond_8
    iget p1, p0, LVR;->z:I

    or-int/2addr p1, v8

    iput p1, p0, LVR;->z:I

    .line 69
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 70
    iput p1, p0, LVR;->D:I

    goto :goto_1

    .line 71
    :cond_9
    iget p1, p0, LVR;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LVR;->z:I

    .line 72
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 73
    iput p1, p0, LVR;->C:I

    goto :goto_1

    .line 74
    :cond_a
    iget p1, p0, LVR;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LVR;->z:I

    .line 75
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 76
    iput p1, p0, LVR;->B:I

    goto/16 :goto_1

    .line 77
    :cond_b
    iget p1, p0, LVR;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LVR;->z:I

    .line 78
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 79
    iput p1, p0, LVR;->A:I
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

    .line 80
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 82
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :goto_3
    throw p1

    .line 84
    :cond_d
    :pswitch_5
    sget-object p1, LVR;->H:LVR;

    return-object p1

    .line 85
    :pswitch_6
    check-cast p2, LSF;

    .line 86
    check-cast p3, LVR;

    .line 87
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_e

    const/4 p1, 0x1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    .line 88
    :goto_4
    iget v2, p0, LVR;->A:I

    .line 89
    iget v9, p3, LVR;->z:I

    and-int/2addr v9, v1

    if-ne v9, v1, :cond_f

    const/4 v9, 0x1

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    .line 90
    :goto_5
    iget v10, p3, LVR;->A:I

    .line 91
    invoke-interface {p2, p1, v2, v9, v10}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->A:I

    .line 92
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_10

    const/4 p1, 0x1

    goto :goto_6

    :cond_10
    const/4 p1, 0x0

    .line 93
    :goto_6
    iget v2, p0, LVR;->B:I

    .line 94
    iget v9, p3, LVR;->z:I

    and-int/2addr v9, v5

    if-ne v9, v5, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    .line 95
    :goto_7
    iget v9, p3, LVR;->B:I

    .line 96
    invoke-interface {p2, p1, v2, v5, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->B:I

    .line 97
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_12

    const/4 p1, 0x1

    goto :goto_8

    :cond_12
    const/4 p1, 0x0

    .line 98
    :goto_8
    iget v2, p0, LVR;->C:I

    .line 99
    iget v5, p3, LVR;->z:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_13

    const/4 v4, 0x1

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    .line 100
    :goto_9
    iget v5, p3, LVR;->C:I

    .line 101
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->C:I

    .line 102
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v8

    if-ne p1, v8, :cond_14

    const/4 p1, 0x1

    goto :goto_a

    :cond_14
    const/4 p1, 0x0

    .line 103
    :goto_a
    iget v2, p0, LVR;->D:I

    .line 104
    iget v4, p3, LVR;->z:I

    and-int/2addr v4, v8

    if-ne v4, v8, :cond_15

    const/4 v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 105
    :goto_b
    iget v5, p3, LVR;->D:I

    .line 106
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->D:I

    .line 107
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_16

    const/4 p1, 0x1

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    .line 108
    :goto_c
    iget v2, p0, LVR;->E:I

    .line 109
    iget v4, p3, LVR;->z:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_17

    const/4 v4, 0x1

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    .line 110
    :goto_d
    iget v5, p3, LVR;->E:I

    .line 111
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->E:I

    .line 112
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_18

    const/4 p1, 0x1

    goto :goto_e

    :cond_18
    const/4 p1, 0x0

    .line 113
    :goto_e
    iget v2, p0, LVR;->F:I

    .line 114
    iget v4, p3, LVR;->z:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_19

    const/4 v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v4, 0x0

    .line 115
    :goto_f
    iget v5, p3, LVR;->F:I

    .line 116
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->F:I

    .line 117
    iget p1, p0, LVR;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_1a

    const/4 p1, 0x1

    goto :goto_10

    :cond_1a
    const/4 p1, 0x0

    .line 118
    :goto_10
    iget v2, p0, LVR;->G:I

    .line 119
    iget v4, p3, LVR;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1b

    const/4 v0, 0x1

    .line 120
    :cond_1b
    iget v1, p3, LVR;->G:I

    .line 121
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LVR;->G:I

    .line 122
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1c

    .line 123
    iget p1, p0, LVR;->z:I

    iget p2, p3, LVR;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LVR;->z:I

    :cond_1c
    return-object p0

    .line 124
    :pswitch_7
    sget-object p1, LVR;->H:LVR;

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
    iget v0, p0, LVR;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LVR;->A:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 3
    :cond_0
    iget v0, p0, LVR;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, LVR;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 5
    :cond_1
    iget v0, p0, LVR;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v2, p0, LVR;->C:I

    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 7
    :cond_2
    iget v0, p0, LVR;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 8
    iget v0, p0, LVR;->D:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 9
    :cond_3
    iget v0, p0, LVR;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget v1, p0, LVR;->E:I

    .line 11
    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 12
    :cond_4
    iget v0, p0, LVR;->z:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 13
    iget v1, p0, LVR;->F:I

    .line 14
    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 15
    :cond_5
    iget v0, p0, LVR;->z:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 16
    iget v1, p0, LVR;->G:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 17
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
