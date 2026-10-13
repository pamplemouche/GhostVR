.class public final LeM;
.super LLF;
.source "PG"

# interfaces
.implements LiM;


# static fields
.field public static final E:LeM;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LeM;

    invoke-direct {v0}, LeM;-><init>()V

    sput-object v0, LeM;->E:LeM;

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
    iput v0, p0, LeM;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LeM;->D:B

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LeM;->E:LeM;

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
    iget v1, p0, LeM;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, LeM;->C:Ljava/lang/Object;

    check-cast v1, LQK;

    .line 11
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LeM;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, LeM;->C:Ljava/lang/Object;

    check-cast v1, LgM;

    .line 14
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, LeM;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LeM;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p2, LeM;->F:LkG;

    if-nez p2, :cond_0

    .line 22
    new-instance p2, LGF;

    sget-object p3, LeM;->E:LeM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LeM;->F:LkG;

    .line 23
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24
    :cond_1
    :goto_0
    sget-object p1, LeM;->F:LkG;

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, LcM;

    invoke-direct {p1, v4}, LcM;-><init>(LeL;)V

    return-object p1

    .line 26
    :pswitch_2
    new-instance p1, LeM;

    invoke-direct {p1}, LeM;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 27
    :pswitch_4
    check-cast p2, LtF;

    .line 28
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 29
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    .line 30
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v5

    check-cast v5, LeM;

    invoke-virtual {p0, v5, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 31
    :cond_3
    iget p1, p0, LeM;->B:I

    if-ne p1, v3, :cond_4

    .line 32
    iget-object p1, p0, LeM;->C:Ljava/lang/Object;

    check-cast p1, LgM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LfM;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 33
    :goto_2
    sget-object v5, LgM;->B:LgM;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 34
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LeM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 35
    check-cast v5, LgM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 36
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    iput-object p1, p0, LeM;->C:Ljava/lang/Object;

    .line 37
    :cond_5
    iput v3, p0, LeM;->B:I

    goto :goto_1

    .line 38
    :cond_6
    iget p1, p0, LeM;->B:I

    if-ne p1, v2, :cond_7

    .line 39
    iget-object p1, p0, LeM;->C:Ljava/lang/Object;

    check-cast p1, LQK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LPK;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 40
    :goto_3
    sget-object v5, LQK;->C:LQK;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 41
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LeM;->C:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 42
    check-cast v5, LQK;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LeM;->C:Ljava/lang/Object;

    .line 44
    :cond_8
    iput v2, p0, LeM;->B:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_4
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 45
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :goto_5
    throw p1

    .line 49
    :cond_a
    :pswitch_5
    sget-object p1, LeM;->E:LeM;

    return-object p1

    .line 50
    :pswitch_6
    check-cast p2, LSF;

    .line 51
    check-cast p3, LeM;

    .line 52
    iget p1, p3, LeM;->B:I

    invoke-static {p1}, LdM;->a(I)LdM;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_f

    if-eq p1, v1, :cond_d

    if-eq p1, v2, :cond_b

    goto :goto_6

    .line 54
    :cond_b
    iget p1, p0, LeM;->B:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_6

    .line 55
    :cond_d
    iget p1, p0, LeM;->B:I

    if-ne p1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object p1, p0, LeM;->C:Ljava/lang/Object;

    iget-object v1, p3, LeM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LeM;->C:Ljava/lang/Object;

    goto :goto_6

    .line 56
    :cond_f
    iget p1, p0, LeM;->B:I

    if-ne p1, v3, :cond_10

    const/4 v0, 0x1

    :cond_10
    iget-object p1, p0, LeM;->C:Ljava/lang/Object;

    iget-object v1, p3, LeM;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LeM;->C:Ljava/lang/Object;

    .line 57
    :goto_6
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_12

    .line 58
    iget p1, p3, LeM;->B:I

    if-eqz p1, :cond_11

    .line 59
    iput p1, p0, LeM;->B:I

    .line 60
    :cond_11
    iget p1, p0, LeM;->A:I

    iget p2, p3, LeM;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LeM;->A:I

    :cond_12
    return-object p0

    .line 61
    :pswitch_7
    iget-byte p1, p0, LeM;->D:B

    if-ne p1, v1, :cond_13

    .line 62
    sget-object p1, LeM;->E:LeM;

    return-object p1

    :cond_13
    if-nez p1, :cond_14

    return-object v4

    .line 63
    :cond_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    iget p2, p0, LeM;->B:I

    if-ne p2, v3, :cond_15

    const/4 p2, 0x1

    goto :goto_7

    :cond_15
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_18

    .line 65
    iget p2, p0, LeM;->B:I

    if-ne p2, v3, :cond_16

    .line 66
    iget-object p2, p0, LeM;->C:Ljava/lang/Object;

    check-cast p2, LgM;

    goto :goto_8

    .line 67
    :cond_16
    sget-object p2, LgM;->B:LgM;

    .line 68
    :goto_8
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    .line 69
    iput-byte v0, p0, LeM;->D:B

    :cond_17
    return-object v4

    .line 70
    :cond_18
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_1a

    if-eqz p1, :cond_19

    .line 71
    iput-byte v0, p0, LeM;->D:B

    :cond_19
    return-object v4

    :cond_1a
    if-eqz p1, :cond_1b

    .line 72
    iput-byte v1, p0, LeM;->D:B

    .line 73
    :cond_1b
    sget-object p1, LeM;->E:LeM;

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
    iget v1, p0, LeM;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LeM;->C:Ljava/lang/Object;

    check-cast v1, LQK;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 4
    :cond_0
    iget v1, p0, LeM;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, LeM;->C:Ljava/lang/Object;

    check-cast v1, LgM;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_1
    const/high16 v1, 0x20000000

    .line 6
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
