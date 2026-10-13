.class public final Lsq0;
.super LTF;
.source "PG"

# interfaces
.implements Ltq0;


# static fields
.field public static final E:Lsq0;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:Z

.field public D:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsq0;

    invoke-direct {v0}, Lsq0;-><init>()V

    sput-object v0, Lsq0;->E:Lsq0;

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
    iput v0, p0, Lsq0;->A:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, Lsq0;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast v1, Lqq0;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, Lsq0;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v1, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast v1, Lmq0;

    .line 16
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, Lsq0;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 18
    iget-boolean v3, p0, Lsq0;->C:Z

    .line 19
    invoke-static {v1, v3}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_3
    iget v1, p0, Lsq0;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 21
    iget-wide v3, p0, Lsq0;->D:J

    .line 22
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

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
    .locals 12

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, Lsq0;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, Lsq0;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, Lsq0;->F:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, Lsq0;->E:Lsq0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, Lsq0;->F:LkG;

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
    sget-object p1, Lsq0;->F:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, Ljq0;

    invoke-direct {p1, v5}, Ljq0;-><init>(Laq0;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, Lsq0;

    invoke-direct {p1}, Lsq0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v5

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_c

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_b

    const/16 v6, 0xa

    if-eq p1, v6, :cond_8

    const/16 v6, 0x12

    if-eq p1, v6, :cond_5

    const/16 v6, 0x18

    if-eq p1, v6, :cond_4

    const/16 v6, 0x20

    if-eq p1, v6, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 38
    :cond_3
    iget p1, p0, Lsq0;->z:I

    or-int/2addr p1, v2

    iput p1, p0, Lsq0;->z:I

    .line 39
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v6

    .line 40
    iput-wide v6, p0, Lsq0;->D:J

    goto :goto_1

    .line 41
    :cond_4
    iget p1, p0, Lsq0;->z:I

    or-int/2addr p1, v3

    iput p1, p0, Lsq0;->z:I

    .line 42
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, Lsq0;->C:Z

    goto :goto_1

    .line 43
    :cond_5
    iget p1, p0, Lsq0;->A:I

    if-ne p1, v4, :cond_6

    .line 44
    iget-object p1, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast p1, Lmq0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, Lkq0;

    goto :goto_2

    :cond_6
    move-object p1, v5

    .line 45
    :goto_2
    sget-object v6, Lmq0;->I:Lmq0;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 46
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, Lsq0;->B:Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 47
    check-cast v6, Lmq0;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 48
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, Lsq0;->B:Ljava/lang/Object;

    .line 49
    :cond_7
    iput v4, p0, Lsq0;->A:I

    goto :goto_1

    .line 50
    :cond_8
    iget p1, p0, Lsq0;->A:I

    if-ne p1, v1, :cond_9

    .line 51
    iget-object p1, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast p1, Lqq0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, Lpq0;

    goto :goto_3

    :cond_9
    move-object p1, v5

    .line 52
    :goto_3
    sget-object v6, Lqq0;->C:Lqq0;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 53
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, Lsq0;->B:Ljava/lang/Object;

    if-eqz p1, :cond_a

    .line 54
    check-cast v6, Lqq0;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 55
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, Lsq0;->B:Ljava/lang/Object;

    .line 56
    :cond_a
    iput v1, p0, Lsq0;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_b
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    :goto_5
    throw p1

    .line 61
    :cond_c
    :pswitch_5
    sget-object p1, Lsq0;->E:Lsq0;

    return-object p1

    .line 62
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 63
    check-cast p3, Lsq0;

    .line 64
    iget p2, p0, Lsq0;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_d

    const/4 p2, 0x1

    goto :goto_6

    :cond_d
    const/4 p2, 0x0

    .line 65
    :goto_6
    iget-boolean v5, p0, Lsq0;->C:Z

    .line 66
    iget v6, p3, Lsq0;->z:I

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_e

    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    .line 67
    :goto_7
    iget-boolean v6, p3, Lsq0;->C:Z

    .line 68
    invoke-interface {p1, p2, v5, v3, v6}, LSF;->a(ZZZZ)Z

    move-result p2

    iput-boolean p2, p0, Lsq0;->C:Z

    .line 69
    iget p2, p0, Lsq0;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_f

    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    .line 70
    :goto_8
    iget-wide v7, p0, Lsq0;->D:J

    .line 71
    iget p2, p3, Lsq0;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_10

    const/4 v9, 0x1

    goto :goto_9

    :cond_10
    const/4 v9, 0x0

    .line 72
    :goto_9
    iget-wide v10, p3, Lsq0;->D:J

    move-object v5, p1

    .line 73
    invoke-interface/range {v5 .. v11}, LSF;->a(ZJZJ)J

    move-result-wide v2

    iput-wide v2, p0, Lsq0;->D:J

    .line 74
    iget p2, p3, Lsq0;->A:I

    invoke-static {p2}, Loq0;->a(I)Loq0;

    move-result-object p2

    .line 75
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_15

    if-eq p2, v1, :cond_13

    if-eq p2, v4, :cond_11

    goto :goto_a

    .line 76
    :cond_11
    iget p2, p0, Lsq0;->A:I

    if-eqz p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-interface {p1, v0}, LSF;->a(Z)V

    goto :goto_a

    .line 77
    :cond_13
    iget p2, p0, Lsq0;->A:I

    if-ne p2, v4, :cond_14

    const/4 v0, 0x1

    :cond_14
    iget-object p2, p0, Lsq0;->B:Ljava/lang/Object;

    iget-object v1, p3, Lsq0;->B:Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lsq0;->B:Ljava/lang/Object;

    goto :goto_a

    .line 78
    :cond_15
    iget p2, p0, Lsq0;->A:I

    if-ne p2, v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    iget-object p2, p0, Lsq0;->B:Ljava/lang/Object;

    iget-object v1, p3, Lsq0;->B:Ljava/lang/Object;

    invoke-interface {p1, v0, p2, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lsq0;->B:Ljava/lang/Object;

    .line 79
    :goto_a
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_18

    .line 80
    iget p1, p3, Lsq0;->A:I

    if-eqz p1, :cond_17

    .line 81
    iput p1, p0, Lsq0;->A:I

    .line 82
    :cond_17
    iget p1, p0, Lsq0;->z:I

    iget p2, p3, Lsq0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, Lsq0;->z:I

    :cond_18
    return-object p0

    .line 83
    :pswitch_7
    sget-object p1, Lsq0;->E:Lsq0;

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
    iget v0, p0, Lsq0;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast v0, Lqq0;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, Lsq0;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lsq0;->B:Ljava/lang/Object;

    check-cast v0, Lmq0;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, Lsq0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-boolean v2, p0, Lsq0;->C:Z

    invoke-virtual {p1, v0, v2}, LxF;->a(IZ)V

    .line 7
    :cond_2
    iget v0, p0, Lsq0;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 8
    iget-wide v2, p0, Lsq0;->D:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 9
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
