.class public final LtQ;
.super LTF;
.source "PG"

# interfaces
.implements LuQ;


# static fields
.field public static final D:LtQ;

.field public static volatile E:LkG;


# instance fields
.field public A:F

.field public B:I

.field public C:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LtQ;

    invoke-direct {v0}, LtQ;-><init>()V

    sput-object v0, LtQ;->D:LtQ;

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
    .locals 3

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iget v1, p0, LtQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget v1, p0, LtQ;->A:F

    .line 11
    invoke-static {v2, v1}, LxF;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LtQ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13
    iget v1, p0, LtQ;->B:I

    .line 14
    invoke-static {v2, v1}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LtQ;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 16
    iget v2, p0, LtQ;->C:I

    .line 17
    invoke-static {v1, v2}, LxF;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LtQ;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LtQ;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LtQ;->E:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LtQ;->D:LtQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LtQ;->E:LkG;

    .line 25
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 26
    :cond_1
    :goto_0
    sget-object p1, LtQ;->E:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LsQ;

    invoke-direct {p1, v2}, LsQ;-><init>(LrQ;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LtQ;

    invoke-direct {p1}, LtQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0xd

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 33
    :cond_3
    iget p1, p0, LtQ;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LtQ;->z:I

    .line 34
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 35
    iput p1, p0, LtQ;->C:I

    goto :goto_1

    .line 36
    :cond_4
    iget p1, p0, LtQ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LtQ;->z:I

    .line 37
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 38
    iput p1, p0, LtQ;->B:I

    goto :goto_1

    .line 39
    :cond_5
    iget p1, p0, LtQ;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LtQ;->z:I

    .line 40
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LtQ;->A:F
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 41
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 43
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :goto_3
    throw p1

    .line 45
    :cond_7
    :pswitch_5
    sget-object p1, LtQ;->D:LtQ;

    return-object p1

    .line 46
    :pswitch_6
    check-cast p2, LSF;

    .line 47
    check-cast p3, LtQ;

    .line 48
    iget p1, p0, LtQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 49
    :goto_4
    iget v2, p0, LtQ;->A:F

    .line 50
    iget v5, p3, LtQ;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 51
    :goto_5
    iget v6, p3, LtQ;->A:F

    .line 52
    invoke-interface {p2, p1, v2, v5, v6}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LtQ;->A:F

    .line 53
    iget p1, p0, LtQ;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_a

    const/4 p1, 0x1

    goto :goto_6

    :cond_a
    const/4 p1, 0x0

    .line 54
    :goto_6
    iget v2, p0, LtQ;->B:I

    .line 55
    iget v5, p3, LtQ;->z:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    .line 56
    :goto_7
    iget v5, p3, LtQ;->B:I

    .line 57
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LtQ;->B:I

    .line 58
    iget p1, p0, LtQ;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_c

    const/4 p1, 0x1

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    .line 59
    :goto_8
    iget v2, p0, LtQ;->C:I

    .line 60
    iget v4, p3, LtQ;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d

    const/4 v0, 0x1

    .line 61
    :cond_d
    iget v1, p3, LtQ;->C:I

    .line 62
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LtQ;->C:I

    .line 63
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_e

    .line 64
    iget p1, p0, LtQ;->z:I

    iget p2, p3, LtQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LtQ;->z:I

    :cond_e
    return-object p0

    .line 65
    :pswitch_7
    sget-object p1, LtQ;->D:LtQ;

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
    .locals 2

    .line 1
    iget v0, p0, LtQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LtQ;->A:F

    invoke-virtual {p1, v1, v0}, LxF;->a(IF)V

    .line 3
    :cond_0
    iget v0, p0, LtQ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, LtQ;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->d(II)V

    .line 5
    :cond_1
    iget v0, p0, LtQ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, LtQ;->C:I

    invoke-virtual {p1, v0, v1}, LxF;->d(II)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
