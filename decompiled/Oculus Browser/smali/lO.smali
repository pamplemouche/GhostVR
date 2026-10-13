.class public final LlO;
.super LTF;
.source "PG"

# interfaces
.implements LmO;


# static fields
.field public static final E:LlO;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:Z

.field public D:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LlO;

    invoke-direct {v0}, LlO;-><init>()V

    sput-object v0, LlO;->E:LlO;

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
    iput v0, p0, LlO;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LlO;->D:B

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LlO;->E:LlO;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v1, p0, LlO;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget-boolean v1, p0, LlO;->C:Z

    .line 11
    invoke-static {v2, v1}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LlO;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, LlO;->B:Ljava/lang/Object;

    check-cast v1, LBM;

    .line 14
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LlO;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 16
    iget-object v1, p0, LlO;->B:Ljava/lang/Object;

    check-cast v1, LJM;

    .line 17
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

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

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LlO;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LlO;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LlO;->F:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LlO;->E:LlO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LlO;->F:LkG;

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
    sget-object p1, LlO;->F:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LjO;

    invoke-direct {p1, v4}, LjO;-><init>(LQN;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LlO;

    invoke-direct {p1}, LlO;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0x8

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 33
    :cond_3
    iget p1, p0, LlO;->A:I

    if-ne p1, v3, :cond_4

    .line 34
    iget-object p1, p0, LlO;->B:Ljava/lang/Object;

    check-cast p1, LJM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LHM;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 35
    :goto_2
    invoke-static {}, LJM;->m()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LlO;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 36
    check-cast v5, LJM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 37
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LlO;->B:Ljava/lang/Object;

    .line 38
    :cond_5
    iput v3, p0, LlO;->A:I

    goto :goto_1

    .line 39
    :cond_6
    iget p1, p0, LlO;->A:I

    if-ne p1, v2, :cond_7

    .line 40
    iget-object p1, p0, LlO;->B:Ljava/lang/Object;

    check-cast p1, LBM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LzM;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 41
    :goto_3
    invoke-static {}, LBM;->j()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LlO;->B:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 42
    check-cast v5, LBM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LlO;->B:Ljava/lang/Object;

    .line 44
    :cond_8
    iput v2, p0, LlO;->A:I

    goto :goto_1

    .line 45
    :cond_9
    iget p1, p0, LlO;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LlO;->z:I

    .line 46
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LlO;->C:Z
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_4
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 47
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :goto_5
    throw p1

    .line 51
    :cond_b
    :pswitch_5
    sget-object p1, LlO;->E:LlO;

    return-object p1

    .line 52
    :pswitch_6
    check-cast p2, LSF;

    .line 53
    check-cast p3, LlO;

    .line 54
    iget p1, p0, LlO;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 55
    :goto_6
    iget-boolean v4, p0, LlO;->C:Z

    .line 56
    iget v5, p3, LlO;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_d

    const/4 v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v5, 0x0

    .line 57
    :goto_7
    iget-boolean v6, p3, LlO;->C:Z

    .line 58
    invoke-interface {p2, p1, v4, v5, v6}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LlO;->C:Z

    .line 59
    iget p1, p3, LlO;->A:I

    invoke-static {p1}, LkO;->a(I)LkO;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v2, :cond_e

    goto :goto_8

    .line 61
    :cond_e
    iget p1, p0, LlO;->A:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_8

    .line 62
    :cond_10
    iget p1, p0, LlO;->A:I

    if-ne p1, v3, :cond_11

    const/4 v0, 0x1

    :cond_11
    iget-object p1, p0, LlO;->B:Ljava/lang/Object;

    iget-object v1, p3, LlO;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LlO;->B:Ljava/lang/Object;

    goto :goto_8

    .line 63
    :cond_12
    iget p1, p0, LlO;->A:I

    if-ne p1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-object p1, p0, LlO;->B:Ljava/lang/Object;

    iget-object v1, p3, LlO;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LlO;->B:Ljava/lang/Object;

    .line 64
    :goto_8
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_15

    .line 65
    iget p1, p3, LlO;->A:I

    if-eqz p1, :cond_14

    .line 66
    iput p1, p0, LlO;->A:I

    .line 67
    :cond_14
    iget p1, p0, LlO;->z:I

    iget p2, p3, LlO;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LlO;->z:I

    :cond_15
    return-object p0

    .line 68
    :pswitch_7
    iget-byte p1, p0, LlO;->D:B

    if-ne p1, v1, :cond_16

    .line 69
    sget-object p1, LlO;->E:LlO;

    return-object p1

    :cond_16
    if-nez p1, :cond_17

    return-object v4

    .line 70
    :cond_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 71
    iget p2, p0, LlO;->A:I

    if-ne p2, v3, :cond_18

    const/4 p2, 0x1

    goto :goto_9

    :cond_18
    const/4 p2, 0x0

    :goto_9
    if-eqz p2, :cond_1b

    .line 72
    iget p2, p0, LlO;->A:I

    if-ne p2, v3, :cond_19

    .line 73
    iget-object p2, p0, LlO;->B:Ljava/lang/Object;

    check-cast p2, LJM;

    goto :goto_a

    .line 74
    :cond_19
    sget-object p2, LJM;->C:LJM;

    .line 75
    :goto_a
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1b

    if-eqz p1, :cond_1a

    .line 76
    iput-byte v0, p0, LlO;->D:B

    :cond_1a
    return-object v4

    :cond_1b
    if-eqz p1, :cond_1c

    .line 77
    iput-byte v1, p0, LlO;->D:B

    .line 78
    :cond_1c
    sget-object p1, LlO;->E:LlO;

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
    iget v0, p0, LlO;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-boolean v0, p0, LlO;->C:Z

    invoke-virtual {p1, v1, v0}, LxF;->a(IZ)V

    .line 3
    :cond_0
    iget v0, p0, LlO;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LlO;->B:Ljava/lang/Object;

    check-cast v0, LBM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LlO;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LlO;->B:Ljava/lang/Object;

    check-cast v0, LJM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
