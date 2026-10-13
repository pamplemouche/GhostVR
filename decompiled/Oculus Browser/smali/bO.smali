.class public final LbO;
.super LTF;
.source "PG"

# interfaces
.implements LcO;


# static fields
.field public static final E:LbO;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LbO;

    invoke-direct {v0}, LbO;-><init>()V

    sput-object v0, LbO;->E:LbO;

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

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LbO;->E:LbO;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, LbO;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 12
    iget v1, p0, LbO;->A:I

    .line 13
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LbO;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 15
    iget v1, p0, LbO;->B:I

    .line 16
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, LbO;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 18
    iget v3, p0, LbO;->C:I

    .line 19
    invoke-static {v1, v3}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_3
    iget v1, p0, LbO;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 21
    iget v1, p0, LbO;->D:I

    .line 22
    invoke-static {v2, v1}, LxF;->h(II)I

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
    .locals 8

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, LbO;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LbO;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, LbO;->F:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, LbO;->E:LbO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LbO;->F:LkG;

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
    sget-object p1, LbO;->F:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, LaO;

    invoke-direct {p1, v2}, LaO;-><init>(LQN;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, LbO;

    invoke-direct {p1}, LbO;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    if-eq p1, v5, :cond_6

    const/16 p3, 0x10

    if-eq p1, p3, :cond_5

    const/16 p3, 0x18

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 38
    :cond_3
    iget p1, p0, LbO;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LbO;->z:I

    .line 39
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 40
    iput p1, p0, LbO;->D:I

    goto :goto_1

    .line 41
    :cond_4
    iget p1, p0, LbO;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LbO;->z:I

    .line 42
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 43
    iput p1, p0, LbO;->C:I

    goto :goto_1

    .line 44
    :cond_5
    iget p1, p0, LbO;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LbO;->z:I

    .line 45
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 46
    iput p1, p0, LbO;->B:I

    goto :goto_1

    .line 47
    :cond_6
    iget p1, p0, LbO;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LbO;->z:I

    .line 48
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 49
    iput p1, p0, LbO;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 50
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :goto_3
    throw p1

    .line 54
    :cond_8
    :pswitch_5
    sget-object p1, LbO;->E:LbO;

    return-object p1

    .line 55
    :pswitch_6
    check-cast p2, LSF;

    .line 56
    check-cast p3, LbO;

    .line 57
    iget p1, p0, LbO;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    .line 58
    :goto_4
    iget v2, p0, LbO;->A:I

    .line 59
    iget v6, p3, LbO;->z:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    .line 60
    :goto_5
    iget v7, p3, LbO;->A:I

    .line 61
    invoke-interface {p2, p1, v2, v6, v7}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbO;->A:I

    .line 62
    iget p1, p0, LbO;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 63
    :goto_6
    iget v2, p0, LbO;->B:I

    .line 64
    iget v6, p3, LbO;->z:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 65
    :goto_7
    iget v6, p3, LbO;->B:I

    .line 66
    invoke-interface {p2, p1, v2, v4, v6}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbO;->B:I

    .line 67
    iget p1, p0, LbO;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_d

    const/4 p1, 0x1

    goto :goto_8

    :cond_d
    const/4 p1, 0x0

    .line 68
    :goto_8
    iget v2, p0, LbO;->C:I

    .line 69
    iget v4, p3, LbO;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    .line 70
    :goto_9
    iget v4, p3, LbO;->C:I

    .line 71
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbO;->C:I

    .line 72
    iget p1, p0, LbO;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_f

    const/4 p1, 0x1

    goto :goto_a

    :cond_f
    const/4 p1, 0x0

    .line 73
    :goto_a
    iget v2, p0, LbO;->D:I

    .line 74
    iget v3, p3, LbO;->z:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_10

    const/4 v0, 0x1

    .line 75
    :cond_10
    iget v1, p3, LbO;->D:I

    .line 76
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbO;->D:I

    .line 77
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_11

    .line 78
    iget p1, p0, LbO;->z:I

    iget p2, p3, LbO;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LbO;->z:I

    :cond_11
    return-object p0

    .line 79
    :pswitch_7
    sget-object p1, LbO;->E:LbO;

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
    iget v0, p0, LbO;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LbO;->A:I

    invoke-virtual {p1, v1, v0}, LxF;->d(II)V

    .line 3
    :cond_0
    iget v0, p0, LbO;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, LbO;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->d(II)V

    .line 5
    :cond_1
    iget v0, p0, LbO;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v2, p0, LbO;->C:I

    invoke-virtual {p1, v0, v2}, LxF;->d(II)V

    .line 7
    :cond_2
    iget v0, p0, LbO;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 8
    iget v0, p0, LbO;->D:I

    invoke-virtual {p1, v1, v0}, LxF;->d(II)V

    .line 9
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
