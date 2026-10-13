.class public final LXI;
.super LTF;
.source "PG"

# interfaces
.implements LYI;


# static fields
.field public static final E:LXI;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public C:Ljava/lang/String;

.field public D:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LXI;

    invoke-direct {v0}, LXI;-><init>()V

    sput-object v0, LXI;->E:LXI;

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
    iput v0, p0, LXI;->A:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LXI;->D:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, LXI;->C:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 7
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iget v1, p0, LXI;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, LXI;->C:Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_1
    iget v1, p0, LXI;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, p0, LXI;->B:Ljava/lang/Object;

    check-cast v1, LwR;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18
    :pswitch_0
    sget-object p1, LXI;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LXI;

    monitor-enter p1

    .line 19
    :try_start_0
    sget-object p2, LXI;->F:LkG;

    if-nez p2, :cond_0

    .line 20
    new-instance p2, LGF;

    sget-object p3, LXI;->E:LXI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LXI;->F:LkG;

    .line 21
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 22
    :cond_1
    :goto_0
    sget-object p1, LXI;->F:LkG;

    return-object p1

    .line 23
    :pswitch_1
    new-instance p1, LVI;

    invoke-direct {p1, v3}, LVI;-><init>(LrI;)V

    return-object p1

    .line 24
    :pswitch_2
    new-instance p1, LXI;

    invoke-direct {p1}, LXI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 25
    :pswitch_4
    check-cast p2, LtF;

    .line 26
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 27
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v4, 0xa

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 28
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 29
    :cond_3
    iget p1, p0, LXI;->A:I

    if-ne p1, v2, :cond_4

    .line 30
    iget-object p1, p0, LXI;->B:Ljava/lang/Object;

    check-cast p1, LwR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LvR;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 31
    :goto_2
    sget-object v4, LwR;->D:LwR;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 32
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    iput-object v4, p0, LXI;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 33
    check-cast v4, LwR;

    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 34
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LXI;->B:Ljava/lang/Object;

    .line 35
    :cond_5
    iput v2, p0, LXI;->A:I

    goto :goto_1

    .line 36
    :cond_6
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget v4, p0, LXI;->z:I

    or-int/2addr v4, v1

    iput v4, p0, LXI;->z:I

    .line 38
    iput-object p1, p0, LXI;->C:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 39
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 41
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :goto_4
    throw p1

    .line 43
    :cond_8
    :pswitch_5
    sget-object p1, LXI;->E:LXI;

    return-object p1

    .line 44
    :pswitch_6
    check-cast p2, LSF;

    .line 45
    check-cast p3, LXI;

    .line 46
    iget p1, p0, LXI;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 47
    :goto_5
    iget-object v3, p0, LXI;->C:Ljava/lang/String;

    .line 48
    iget v4, p3, LXI;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 49
    :goto_6
    iget-object v5, p3, LXI;->C:Ljava/lang/String;

    .line 50
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LXI;->C:Ljava/lang/String;

    .line 51
    iget p1, p3, LXI;->A:I

    invoke-static {p1}, LWI;->a(I)LWI;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v1, :cond_b

    goto :goto_7

    .line 53
    :cond_b
    iget p1, p0, LXI;->A:I

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_7

    .line 54
    :cond_d
    iget p1, p0, LXI;->A:I

    if-ne p1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    iget-object p1, p0, LXI;->B:Ljava/lang/Object;

    iget-object v1, p3, LXI;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LXI;->B:Ljava/lang/Object;

    .line 55
    :goto_7
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_10

    .line 56
    iget p1, p3, LXI;->A:I

    if-eqz p1, :cond_f

    .line 57
    iput p1, p0, LXI;->A:I

    .line 58
    :cond_f
    iget p1, p0, LXI;->z:I

    iget p2, p3, LXI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LXI;->z:I

    :cond_10
    return-object p0

    .line 59
    :pswitch_7
    iget-byte p1, p0, LXI;->D:B

    if-ne p1, v1, :cond_11

    .line 60
    sget-object p1, LXI;->E:LXI;

    return-object p1

    :cond_11
    if-nez p1, :cond_12

    return-object v3

    .line 61
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 62
    iget p2, p0, LXI;->A:I

    if-ne p2, v2, :cond_13

    const/4 p2, 0x1

    goto :goto_8

    :cond_13
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_16

    .line 63
    iget p2, p0, LXI;->A:I

    if-ne p2, v2, :cond_14

    .line 64
    iget-object p2, p0, LXI;->B:Ljava/lang/Object;

    check-cast p2, LwR;

    goto :goto_9

    .line 65
    :cond_14
    sget-object p2, LwR;->D:LwR;

    .line 66
    :goto_9
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    .line 67
    iput-byte v0, p0, LXI;->D:B

    :cond_15
    return-object v3

    :cond_16
    if-eqz p1, :cond_17

    .line 68
    iput-byte v1, p0, LXI;->D:B

    .line 69
    :cond_17
    sget-object p1, LXI;->E:LXI;

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
    .locals 2

    .line 1
    iget v0, p0, LXI;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LXI;->C:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LXI;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LXI;->B:Ljava/lang/Object;

    check-cast v0, LwR;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
