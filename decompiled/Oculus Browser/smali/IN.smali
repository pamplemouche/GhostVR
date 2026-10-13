.class public final LIN;
.super LTF;
.source "PG"

# interfaces
.implements LJN;


# static fields
.field public static final G:LIN;

.field public static volatile H:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LIN;

    invoke-direct {v0}, LIN;-><init>()V

    sput-object v0, LIN;->G:LIN;

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

    .line 14
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    iget v1, p0, LIN;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 16
    iget v1, p0, LIN;->A:I

    .line 17
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_1
    iget v1, p0, LIN;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 19
    iget v1, p0, LIN;->B:I

    .line 20
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget v1, p0, LIN;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 22
    iget v3, p0, LIN;->C:I

    .line 23
    invoke-static {v1, v3}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_3
    iget v1, p0, LIN;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 25
    iget v1, p0, LIN;->D:I

    .line 26
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_4
    iget v1, p0, LIN;->z:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 28
    iget-boolean v2, p0, LIN;->E:Z

    .line 29
    invoke-static {v1, v2}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_5
    iget v1, p0, LIN;->z:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 31
    iget v2, p0, LIN;->F:I

    .line 32
    invoke-static {v1, v2}, LxF;->f(II)I

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0x8

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 37
    :pswitch_0
    sget-object p1, LIN;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LIN;

    monitor-enter p1

    .line 38
    :try_start_0
    sget-object p2, LIN;->H:LkG;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, LGF;

    sget-object p3, LIN;->G:LIN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LIN;->H:LkG;

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
    sget-object p1, LIN;->H:LkG;

    return-object p1

    .line 42
    :pswitch_1
    new-instance p1, LHN;

    invoke-direct {p1, v2}, LHN;-><init>(LGN;)V

    return-object p1

    .line 43
    :pswitch_2
    new-instance p1, LIN;

    invoke-direct {p1}, LIN;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 44
    :pswitch_4
    check-cast p2, LtF;

    .line 45
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 46
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v7, :cond_8

    if-eq p1, v6, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    if-eq p1, v5, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x35

    if-eq p1, p3, :cond_3

    .line 47
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 48
    :cond_3
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LIN;->z:I

    .line 49
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 50
    iput p1, p0, LIN;->F:I

    goto :goto_1

    .line 51
    :cond_4
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v6

    iput p1, p0, LIN;->z:I

    .line 52
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LIN;->E:Z

    goto :goto_1

    .line 53
    :cond_5
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v7

    iput p1, p0, LIN;->z:I

    .line 54
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 55
    iput p1, p0, LIN;->D:I

    goto :goto_1

    .line 56
    :cond_6
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LIN;->z:I

    .line 57
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 58
    iput p1, p0, LIN;->C:I

    goto :goto_1

    .line 59
    :cond_7
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LIN;->z:I

    .line 60
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 61
    iput p1, p0, LIN;->B:I

    goto :goto_1

    .line 62
    :cond_8
    iget p1, p0, LIN;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LIN;->z:I

    .line 63
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 64
    iput p1, p0, LIN;->A:I
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
    :goto_3
    throw p1

    .line 69
    :cond_a
    :pswitch_5
    sget-object p1, LIN;->G:LIN;

    return-object p1

    .line 70
    :pswitch_6
    check-cast p2, LSF;

    .line 71
    check-cast p3, LIN;

    .line 72
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    .line 73
    :goto_4
    iget v2, p0, LIN;->A:I

    .line 74
    iget v8, p3, LIN;->z:I

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 75
    :goto_5
    iget v9, p3, LIN;->A:I

    .line 76
    invoke-interface {p2, p1, v2, v8, v9}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LIN;->A:I

    .line 77
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_d

    const/4 p1, 0x1

    goto :goto_6

    :cond_d
    const/4 p1, 0x0

    .line 78
    :goto_6
    iget v2, p0, LIN;->B:I

    .line 79
    iget v8, p3, LIN;->z:I

    and-int/2addr v8, v4

    if-ne v8, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    .line 80
    :goto_7
    iget v8, p3, LIN;->B:I

    .line 81
    invoke-interface {p2, p1, v2, v4, v8}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LIN;->B:I

    .line 82
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_f

    const/4 p1, 0x1

    goto :goto_8

    :cond_f
    const/4 p1, 0x0

    .line 83
    :goto_8
    iget v2, p0, LIN;->C:I

    .line 84
    iget v4, p3, LIN;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    .line 85
    :goto_9
    iget v4, p3, LIN;->C:I

    .line 86
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LIN;->C:I

    .line 87
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v7

    if-ne p1, v7, :cond_11

    const/4 p1, 0x1

    goto :goto_a

    :cond_11
    const/4 p1, 0x0

    .line 88
    :goto_a
    iget v2, p0, LIN;->D:I

    .line 89
    iget v3, p3, LIN;->z:I

    and-int/2addr v3, v7

    if-ne v3, v7, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 90
    :goto_b
    iget v4, p3, LIN;->D:I

    .line 91
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LIN;->D:I

    .line 92
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_13

    const/4 p1, 0x1

    goto :goto_c

    :cond_13
    const/4 p1, 0x0

    .line 93
    :goto_c
    iget-boolean v2, p0, LIN;->E:Z

    .line 94
    iget v3, p3, LIN;->z:I

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_14

    const/4 v3, 0x1

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    .line 95
    :goto_d
    iget-boolean v4, p3, LIN;->E:Z

    .line 96
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LIN;->E:Z

    .line 97
    iget p1, p0, LIN;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_15

    const/4 p1, 0x1

    goto :goto_e

    :cond_15
    const/4 p1, 0x0

    .line 98
    :goto_e
    iget v2, p0, LIN;->F:I

    .line 99
    iget v3, p3, LIN;->z:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_16

    const/4 v0, 0x1

    .line 100
    :cond_16
    iget v1, p3, LIN;->F:I

    .line 101
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LIN;->F:I

    .line 102
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_17

    .line 103
    iget p1, p0, LIN;->z:I

    iget p2, p3, LIN;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LIN;->z:I

    :cond_17
    return-object p0

    .line 104
    :pswitch_7
    sget-object p1, LIN;->G:LIN;

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
    iget v0, p0, LIN;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LIN;->A:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 3
    :cond_0
    iget v0, p0, LIN;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, LIN;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 5
    :cond_1
    iget v0, p0, LIN;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v2, p0, LIN;->C:I

    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 7
    :cond_2
    iget v0, p0, LIN;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 8
    iget v0, p0, LIN;->D:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 9
    :cond_3
    iget v0, p0, LIN;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-boolean v1, p0, LIN;->E:Z

    invoke-virtual {p1, v0, v1}, LxF;->a(IZ)V

    .line 11
    :cond_4
    iget v0, p0, LIN;->z:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 12
    iget v1, p0, LIN;->F:I

    invoke-virtual {p1, v0, v1}, LxF;->a(II)V

    .line 13
    :cond_5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
