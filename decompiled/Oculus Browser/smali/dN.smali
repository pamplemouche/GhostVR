.class public final LdN;
.super LTF;
.source "PG"

# interfaces
.implements LeN;


# static fields
.field public static final C:LdN;

.field public static volatile D:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LdN;

    invoke-direct {v0}, LdN;-><init>()V

    sput-object v0, LdN;->C:LdN;

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
    iput v0, p0, LdN;->A:I

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LdN;->C:LdN;

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
    iget v1, p0, LdN;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, LdN;->B:Ljava/lang/Object;

    check-cast v1, LZM;

    .line 11
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LdN;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, LdN;->B:Ljava/lang/Object;

    check-cast v1, LhN;

    .line 14
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LdN;->A:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 16
    iget-object v1, p0, LdN;->B:Ljava/lang/Object;

    check-cast v1, LWM;

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
    .locals 6

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LdN;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LdN;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LdN;->D:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LdN;->C:LdN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LdN;->D:LkG;

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
    sget-object p1, LdN;->D:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LbN;

    invoke-direct {p1, v4}, LbN;-><init>(LSM;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LdN;

    invoke-direct {p1}, LdN;-><init>()V

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
    if-nez v3, :cond_d

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v5, 0xa

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 33
    :cond_3
    iget p1, p0, LdN;->A:I

    if-ne p1, v1, :cond_4

    .line 34
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    check-cast p1, LWM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LUM;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 35
    :goto_2
    sget-object v5, LWM;->B:LWM;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 36
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LdN;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 37
    check-cast v5, LWM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 38
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    .line 39
    :cond_5
    iput v1, p0, LdN;->A:I

    goto :goto_1

    .line 40
    :cond_6
    iget p1, p0, LdN;->A:I

    if-ne p1, v2, :cond_7

    .line 41
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    check-cast p1, LhN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LfN;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 42
    :goto_3
    sget-object v5, LhN;->B:LhN;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 43
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LdN;->B:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 44
    check-cast v5, LhN;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 45
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    .line 46
    :cond_8
    iput v2, p0, LdN;->A:I

    goto :goto_1

    .line 47
    :cond_9
    iget p1, p0, LdN;->A:I

    if-ne p1, v0, :cond_a

    .line 48
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    check-cast p1, LZM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LYM;

    goto :goto_4

    :cond_a
    move-object p1, v4

    .line 49
    :goto_4
    sget-object v5, LZM;->C:LZM;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 50
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    iput-object v5, p0, LdN;->B:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 51
    check-cast v5, LZM;

    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 52
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    .line 53
    :cond_b
    iput v0, p0, LdN;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 54
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 55
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 56
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 57
    :goto_6
    throw p1

    .line 58
    :cond_d
    :pswitch_5
    sget-object p1, LdN;->C:LdN;

    return-object p1

    .line 59
    :pswitch_6
    check-cast p2, LSF;

    .line 60
    check-cast p3, LdN;

    .line 61
    iget p1, p3, LdN;->A:I

    invoke-static {p1}, LcN;->a(I)LcN;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_12

    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_e

    goto :goto_b

    .line 63
    :cond_e
    iget p1, p0, LdN;->A:I

    if-eqz p1, :cond_f

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_b

    .line 64
    :cond_10
    iget p1, p0, LdN;->A:I

    if-ne p1, v1, :cond_11

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    iget-object v1, p3, LdN;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    goto :goto_b

    .line 65
    :cond_12
    iget p1, p0, LdN;->A:I

    if-ne p1, v2, :cond_13

    goto :goto_9

    :cond_13
    const/4 v0, 0x0

    :goto_9
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    iget-object v1, p3, LdN;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    goto :goto_b

    .line 66
    :cond_14
    iget p1, p0, LdN;->A:I

    if-ne p1, v0, :cond_15

    goto :goto_a

    :cond_15
    const/4 v0, 0x0

    :goto_a
    iget-object p1, p0, LdN;->B:Ljava/lang/Object;

    iget-object v1, p3, LdN;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LdN;->B:Ljava/lang/Object;

    .line 67
    :goto_b
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_17

    .line 68
    iget p1, p3, LdN;->A:I

    if-eqz p1, :cond_16

    .line 69
    iput p1, p0, LdN;->A:I

    .line 70
    :cond_16
    iget p1, p0, LdN;->z:I

    iget p2, p3, LdN;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LdN;->z:I

    :cond_17
    return-object p0

    .line 71
    :pswitch_7
    sget-object p1, LdN;->C:LdN;

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
    iget v0, p0, LdN;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LdN;->B:Ljava/lang/Object;

    check-cast v0, LZM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LdN;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, LdN;->B:Ljava/lang/Object;

    check-cast v0, LhN;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LdN;->A:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, LdN;->B:Ljava/lang/Object;

    check-cast v0, LWM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
