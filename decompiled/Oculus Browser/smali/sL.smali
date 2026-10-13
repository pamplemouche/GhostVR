.class public final LsL;
.super LLF;
.source "PG"

# interfaces
.implements LwL;


# static fields
.field public static final F:LsL;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:LtO;

.field public E:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LsL;

    invoke-direct {v0}, LsL;-><init>()V

    sput-object v0, LsL;->F:LsL;

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
    iput v0, p0, LsL;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LsL;->E:B

    return-void
.end method

.method public static n()LkG;
    .locals 1

    .line 1
    sget-object v0, LsL;->F:LsL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, LsL;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p0}, LsL;->m()LtO;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget v1, p0, LsL;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 14
    iget-object v1, p0, LsL;->C:Ljava/lang/Object;

    check-cast v1, LBK;

    .line 15
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget v1, p0, LsL;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 17
    iget-object v1, p0, LsL;->C:Ljava/lang/Object;

    check-cast v1, LuL;

    .line 18
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_3
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    sget-object p1, LsL;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LsL;

    monitor-enter p1

    .line 25
    :try_start_0
    sget-object p2, LsL;->G:LkG;

    if-nez p2, :cond_0

    .line 26
    new-instance p2, LGF;

    sget-object p3, LsL;->F:LsL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LsL;->G:LkG;

    .line 27
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 28
    :cond_1
    :goto_0
    sget-object p1, LsL;->G:LkG;

    return-object p1

    .line 29
    :pswitch_1
    new-instance p1, LqL;

    invoke-direct {p1, v5}, LqL;-><init>(LeL;)V

    return-object p1

    .line 30
    :pswitch_2
    new-instance p1, LsL;

    invoke-direct {p1}, LsL;-><init>()V

    return-object p1

    :pswitch_3
    return-object v5

    .line 31
    :pswitch_4
    check-cast p2, LtF;

    .line 32
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_d

    .line 33
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v6, 0xa

    if-eq p1, v6, :cond_9

    const/16 v6, 0x12

    if-eq p1, v6, :cond_6

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_3

    .line 34
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v6

    check-cast v6, LsL;

    invoke-virtual {p0, v6, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 35
    :cond_3
    iget p1, p0, LsL;->B:I

    if-ne p1, v4, :cond_4

    .line 36
    iget-object p1, p0, LsL;->C:Ljava/lang/Object;

    check-cast p1, LuL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LtL;

    goto :goto_2

    :cond_4
    move-object p1, v5

    .line 37
    :goto_2
    sget-object v6, LuL;->B:LuL;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 38
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LsL;->C:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 39
    check-cast v6, LuL;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 40
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LsL;->C:Ljava/lang/Object;

    .line 41
    :cond_5
    iput v4, p0, LsL;->B:I

    goto :goto_1

    .line 42
    :cond_6
    iget p1, p0, LsL;->B:I

    if-ne p1, v3, :cond_7

    .line 43
    iget-object p1, p0, LsL;->C:Ljava/lang/Object;

    check-cast p1, LBK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LAK;

    goto :goto_3

    :cond_7
    move-object p1, v5

    .line 44
    :goto_3
    sget-object v6, LBK;->C:LBK;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 45
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    iput-object v6, p0, LsL;->C:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 46
    check-cast v6, LBK;

    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 47
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LsL;->C:Ljava/lang/Object;

    .line 48
    :cond_8
    iput v3, p0, LsL;->B:I

    goto :goto_1

    .line 49
    :cond_9
    iget p1, p0, LsL;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_a

    .line 50
    iget-object p1, p0, LsL;->D:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_4

    :cond_a
    move-object p1, v5

    .line 51
    :goto_4
    invoke-static {}, LtO;->m()LkG;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LtO;

    iput-object v6, p0, LsL;->D:LtO;

    if-eqz p1, :cond_b

    .line 52
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 53
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LsL;->D:LtO;

    .line 54
    :cond_b
    iget p1, p0, LsL;->A:I

    or-int/2addr p1, v2

    iput p1, p0, LsL;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 55
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 56
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 57
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :goto_6
    throw p1

    .line 59
    :cond_d
    :pswitch_5
    sget-object p1, LsL;->F:LsL;

    return-object p1

    .line 60
    :pswitch_6
    check-cast p2, LSF;

    .line 61
    check-cast p3, LsL;

    .line 62
    iget-object p1, p0, LsL;->D:LtO;

    iget-object v2, p3, LsL;->D:LtO;

    invoke-interface {p2, p1, v2}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LsL;->D:LtO;

    .line 63
    iget p1, p3, LsL;->B:I

    invoke-static {p1}, LrL;->a(I)LrL;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    if-eq p1, v1, :cond_10

    if-eq p1, v3, :cond_e

    goto :goto_7

    .line 65
    :cond_e
    iget p1, p0, LsL;->B:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_7

    .line 66
    :cond_10
    iget p1, p0, LsL;->B:I

    if-ne p1, v3, :cond_11

    const/4 v0, 0x1

    :cond_11
    iget-object p1, p0, LsL;->C:Ljava/lang/Object;

    iget-object v1, p3, LsL;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LsL;->C:Ljava/lang/Object;

    goto :goto_7

    .line 67
    :cond_12
    iget p1, p0, LsL;->B:I

    if-ne p1, v4, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-object p1, p0, LsL;->C:Ljava/lang/Object;

    iget-object v1, p3, LsL;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LsL;->C:Ljava/lang/Object;

    .line 68
    :goto_7
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_15

    .line 69
    iget p1, p3, LsL;->B:I

    if-eqz p1, :cond_14

    .line 70
    iput p1, p0, LsL;->B:I

    .line 71
    :cond_14
    iget p1, p0, LsL;->A:I

    iget p2, p3, LsL;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LsL;->A:I

    :cond_15
    return-object p0

    .line 72
    :pswitch_7
    iget-byte p1, p0, LsL;->E:B

    if-ne p1, v1, :cond_16

    .line 73
    sget-object p1, LsL;->F:LsL;

    return-object p1

    :cond_16
    if-nez p1, :cond_17

    return-object v5

    .line 74
    :cond_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 75
    iget p2, p0, LsL;->B:I

    if-ne p2, v4, :cond_18

    const/4 p2, 0x1

    goto :goto_8

    :cond_18
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1b

    .line 76
    iget p2, p0, LsL;->B:I

    if-ne p2, v4, :cond_19

    .line 77
    iget-object p2, p0, LsL;->C:Ljava/lang/Object;

    check-cast p2, LuL;

    goto :goto_9

    .line 78
    :cond_19
    sget-object p2, LuL;->B:LuL;

    .line 79
    :goto_9
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1b

    if-eqz p1, :cond_1a

    .line 80
    iput-byte v0, p0, LsL;->E:B

    :cond_1a
    return-object v5

    .line 81
    :cond_1b
    iget p2, p0, LsL;->A:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_1c

    const/4 p2, 0x1

    goto :goto_a

    :cond_1c
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_1e

    .line 82
    invoke-virtual {p0}, LsL;->m()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1e

    if-eqz p1, :cond_1d

    .line 83
    iput-byte v0, p0, LsL;->E:B

    :cond_1d
    return-object v5

    .line 84
    :cond_1e
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_20

    if-eqz p1, :cond_1f

    .line 85
    iput-byte v0, p0, LsL;->E:B

    :cond_1f
    return-object v5

    :cond_20
    if-eqz p1, :cond_21

    .line 86
    iput-byte v1, p0, LsL;->E:B

    .line 87
    :cond_21
    sget-object p1, LsL;->F:LsL;

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
    iget v1, p0, LsL;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, LsL;->m()LtO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LsL;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, LsL;->C:Ljava/lang/Object;

    check-cast v1, LBK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v1, p0, LsL;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v1, p0, LsL;->C:Ljava/lang/Object;

    check-cast v1, LuL;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_2
    const/high16 v1, 0x20000000

    .line 8
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 9
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LtO;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LsL;->D:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method
