.class public final LLL;
.super LLF;
.source "PG"

# interfaces
.implements LML;


# static fields
.field public static final F:LLL;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:LoL;

.field public E:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LLL;

    invoke-direct {v0}, LLL;-><init>()V

    sput-object v0, LLL;->F:LLL;

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
    iput v0, p0, LLL;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LLL;->E:B

    return-void
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
    iget v1, p0, LLL;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, LLL;->C:Ljava/lang/Object;

    check-cast v1, LQL;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LLL;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 15
    iget-object v1, p0, LLL;->C:Ljava/lang/Object;

    check-cast v1, LHK;

    .line 16
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_2
    iget v1, p0, LLL;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x7

    .line 18
    invoke-virtual {p0}, LLL;->m()LoL;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

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
    .locals 6

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    sget-object p1, LLL;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LLL;

    monitor-enter p1

    .line 25
    :try_start_0
    sget-object p2, LLL;->G:LkG;

    if-nez p2, :cond_0

    .line 26
    new-instance p2, LGF;

    sget-object p3, LLL;->F:LLL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LLL;->G:LkG;

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
    sget-object p1, LLL;->G:LkG;

    return-object p1

    .line 29
    :pswitch_1
    new-instance p1, LJL;

    invoke-direct {p1, v4}, LJL;-><init>(LeL;)V

    return-object p1

    .line 30
    :pswitch_2
    new-instance p1, LLL;

    invoke-direct {p1}, LLL;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

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

    const/16 v5, 0x22

    if-eq p1, v5, :cond_9

    const/16 v5, 0x2a

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3a

    if-eq p1, v5, :cond_3

    .line 34
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v5

    check-cast v5, LLL;

    invoke-virtual {p0, v5, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 35
    :cond_3
    iget p1, p0, LLL;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    .line 36
    iget-object p1, p0, LLL;->D:LoL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LmL;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 37
    :goto_2
    invoke-static {}, LoL;->j()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LoL;

    iput-object v5, p0, LLL;->D:LoL;

    if-eqz p1, :cond_5

    .line 38
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 39
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LoL;

    iput-object p1, p0, LLL;->D:LoL;

    .line 40
    :cond_5
    iget p1, p0, LLL;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LLL;->A:I

    goto :goto_1

    .line 41
    :cond_6
    iget p1, p0, LLL;->B:I

    if-ne p1, v2, :cond_7

    .line 42
    iget-object p1, p0, LLL;->C:Ljava/lang/Object;

    check-cast p1, LHK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LGK;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 43
    :goto_3
    sget-object v5, LHK;->B:LHK;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 44
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LLL;->C:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 45
    check-cast v5, LHK;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 46
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LLL;->C:Ljava/lang/Object;

    .line 47
    :cond_8
    iput v2, p0, LLL;->B:I

    goto :goto_1

    .line 48
    :cond_9
    iget p1, p0, LLL;->B:I

    if-ne p1, v3, :cond_a

    .line 49
    iget-object p1, p0, LLL;->C:Ljava/lang/Object;

    check-cast p1, LQL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LNL;

    goto :goto_4

    :cond_a
    move-object p1, v4

    .line 50
    :goto_4
    sget-object v5, LQL;->D:LQL;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 51
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LLL;->C:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 52
    check-cast v5, LQL;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 53
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LLL;->C:Ljava/lang/Object;

    .line 54
    :cond_b
    iput v3, p0, LLL;->B:I
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
    sget-object p1, LLL;->F:LLL;

    return-object p1

    .line 60
    :pswitch_6
    check-cast p2, LSF;

    .line 61
    check-cast p3, LLL;

    .line 62
    iget-object p1, p0, LLL;->D:LoL;

    iget-object v4, p3, LLL;->D:LoL;

    invoke-interface {p2, p1, v4}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LoL;

    iput-object p1, p0, LLL;->D:LoL;

    .line 63
    iget p1, p3, LLL;->B:I

    invoke-static {p1}, LKL;->a(I)LKL;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_12

    if-eq p1, v1, :cond_10

    const/4 v2, 0x2

    if-eq p1, v2, :cond_e

    goto :goto_7

    .line 65
    :cond_e
    iget p1, p0, LLL;->B:I

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_7

    .line 66
    :cond_10
    iget p1, p0, LLL;->B:I

    if-ne p1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    iget-object p1, p0, LLL;->C:Ljava/lang/Object;

    iget-object v1, p3, LLL;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LLL;->C:Ljava/lang/Object;

    goto :goto_7

    .line 67
    :cond_12
    iget p1, p0, LLL;->B:I

    if-ne p1, v3, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-object p1, p0, LLL;->C:Ljava/lang/Object;

    iget-object v1, p3, LLL;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LLL;->C:Ljava/lang/Object;

    .line 68
    :goto_7
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_15

    .line 69
    iget p1, p3, LLL;->B:I

    if-eqz p1, :cond_14

    .line 70
    iput p1, p0, LLL;->B:I

    .line 71
    :cond_14
    iget p1, p0, LLL;->A:I

    iget p2, p3, LLL;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LLL;->A:I

    :cond_15
    return-object p0

    .line 72
    :pswitch_7
    iget-byte p1, p0, LLL;->E:B

    if-ne p1, v1, :cond_16

    .line 73
    sget-object p1, LLL;->F:LLL;

    return-object p1

    :cond_16
    if-nez p1, :cond_17

    return-object v4

    .line 74
    :cond_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 75
    iget p2, p0, LLL;->A:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_18

    const/4 p2, 0x1

    goto :goto_8

    :cond_18
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_1a

    .line 76
    invoke-virtual {p0}, LLL;->m()LoL;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    .line 77
    iput-byte v0, p0, LLL;->E:B

    :cond_19
    return-object v4

    .line 78
    :cond_1a
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_1c

    if-eqz p1, :cond_1b

    .line 79
    iput-byte v0, p0, LLL;->E:B

    :cond_1b
    return-object v4

    :cond_1c
    if-eqz p1, :cond_1d

    .line 80
    iput-byte v1, p0, LLL;->E:B

    .line 81
    :cond_1d
    sget-object p1, LLL;->F:LLL;

    return-object p1

    nop

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
    iget v1, p0, LLL;->B:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LLL;->C:Ljava/lang/Object;

    check-cast v1, LQL;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LLL;->B:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, LLL;->C:Ljava/lang/Object;

    check-cast v1, LHK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v1, p0, LLL;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x7

    .line 7
    invoke-virtual {p0}, LLL;->m()LoL;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_2
    const/high16 v1, 0x20000000

    .line 8
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 9
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LoL;
    .locals 1

    .line 1
    iget-object v0, p0, LLL;->D:LoL;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LoL;->D:LoL;

    :cond_0
    return-object v0
.end method
