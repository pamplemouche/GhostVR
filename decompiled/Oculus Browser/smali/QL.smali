.class public final LQL;
.super LTF;
.source "PG"

# interfaces
.implements LRL;


# static fields
.field public static final D:LQL;

.field public static volatile E:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LQL;

    invoke-direct {v0}, LQL;-><init>()V

    sput-object v0, LQL;->D:LQL;

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
    iput v0, p0, LQL;->A:I

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LQL;->D:LQL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 15
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 16
    iget v1, p0, LQL;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 17
    iget-object v1, p0, LQL;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_1
    iget v1, p0, LQL;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 21
    iget-object v1, p0, LQL;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_2
    iget v1, p0, LQL;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 25
    iget-object v1, p0, LQL;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget v1, p0, LQL;->z:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x4

    .line 28
    iget-boolean v2, p0, LQL;->C:Z

    .line 29
    invoke-static {v1, v2}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_4
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 31
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0x8

    packed-switch p1, :pswitch_data_0

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 34
    :pswitch_0
    sget-object p1, LQL;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LQL;

    monitor-enter p1

    .line 35
    :try_start_0
    sget-object p2, LQL;->E:LkG;

    if-nez p2, :cond_0

    .line 36
    new-instance p2, LGF;

    sget-object p3, LQL;->D:LQL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LQL;->E:LkG;

    .line 37
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 38
    :cond_1
    :goto_0
    sget-object p1, LQL;->E:LkG;

    return-object p1

    .line 39
    :pswitch_1
    new-instance p1, LNL;

    invoke-direct {p1, v2}, LNL;-><init>(LeL;)V

    return-object p1

    .line 40
    :pswitch_2
    new-instance p1, LQL;

    invoke-direct {p1}, LQL;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 41
    :pswitch_4
    check-cast p2, LtF;

    .line 42
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 43
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 44
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 45
    :cond_3
    iget p1, p0, LQL;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LQL;->z:I

    .line 46
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LQL;->C:Z

    goto :goto_1

    .line 47
    :cond_4
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 48
    invoke-static {p1}, LOL;->a(I)LOL;

    move-result-object p3

    if-nez p3, :cond_5

    .line 49
    invoke-super {p0, v4, p1}, LTF;->a(II)V

    goto :goto_1

    .line 50
    :cond_5
    iput v4, p0, LQL;->A:I

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;

    goto :goto_1

    .line 52
    :cond_6
    iput v3, p0, LQL;->A:I

    .line 53
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;

    goto :goto_1

    .line 55
    :cond_7
    iput v1, p0, LQL;->A:I

    .line 56
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 58
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :goto_3
    throw p1

    .line 62
    :cond_9
    :pswitch_5
    sget-object p1, LQL;->D:LQL;

    return-object p1

    .line 63
    :pswitch_6
    check-cast p2, LSF;

    .line 64
    check-cast p3, LQL;

    .line 65
    iget p1, p0, LQL;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 66
    :goto_4
    iget-boolean v2, p0, LQL;->C:Z

    .line 67
    iget v6, p3, LQL;->z:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 68
    :goto_5
    iget-boolean v6, p3, LQL;->C:Z

    .line 69
    invoke-interface {p2, p1, v2, v5, v6}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LQL;->C:Z

    .line 70
    iget p1, p3, LQL;->A:I

    invoke-static {p1}, LPL;->a(I)LPL;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v3, :cond_e

    if-eq p1, v4, :cond_c

    goto :goto_6

    .line 72
    :cond_c
    iget p1, p0, LQL;->A:I

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_6

    .line 73
    :cond_e
    iget p1, p0, LQL;->A:I

    if-ne p1, v4, :cond_f

    const/4 v0, 0x1

    :cond_f
    iget-object p1, p0, LQL;->B:Ljava/lang/Object;

    iget-object v1, p3, LQL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;

    goto :goto_6

    .line 74
    :cond_10
    iget p1, p0, LQL;->A:I

    if-ne p1, v3, :cond_11

    const/4 v0, 0x1

    :cond_11
    iget-object p1, p0, LQL;->B:Ljava/lang/Object;

    iget-object v1, p3, LQL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;

    goto :goto_6

    .line 75
    :cond_12
    iget p1, p0, LQL;->A:I

    if-ne p1, v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-object p1, p0, LQL;->B:Ljava/lang/Object;

    iget-object v1, p3, LQL;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LQL;->B:Ljava/lang/Object;

    .line 76
    :goto_6
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_15

    .line 77
    iget p1, p3, LQL;->A:I

    if-eqz p1, :cond_14

    .line 78
    iput p1, p0, LQL;->A:I

    .line 79
    :cond_14
    iget p1, p0, LQL;->z:I

    iget p2, p3, LQL;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LQL;->z:I

    :cond_15
    return-object p0

    .line 80
    :pswitch_7
    sget-object p1, LQL;->D:LQL;

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
    iget v0, p0, LQL;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LQL;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 5
    :cond_0
    iget v0, p0, LQL;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, LQL;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 9
    :cond_1
    iget v0, p0, LQL;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, LQL;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 11
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 12
    :cond_2
    iget v0, p0, LQL;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    .line 13
    iget-boolean v1, p0, LQL;->C:Z

    invoke-virtual {p1, v0, v1}, LxF;->a(IZ)V

    .line 14
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
