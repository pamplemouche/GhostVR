.class public final LgP;
.super LTF;
.source "PG"

# interfaces
.implements LhP;


# static fields
.field public static final E:LgP;

.field public static volatile F:LkG;

.field public static final G:LOF;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LkL;

.field public C:LkL;

.field public D:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LgP;

    invoke-direct {v0}, LgP;-><init>()V

    sput-object v0, LgP;->E:LgP;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    .line 3
    sget-object v1, LWL;->B:LWL;

    .line 4
    sget-object v3, LgP;->E:LgP;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LgP;

    const/4 v4, 0x0

    const v5, 0xc7245e5

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LgP;->G:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LgP;->D:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LgP;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 9
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10
    iget v1, p0, LgP;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 11
    iget-object v1, p0, LgP;->A:Ljava/lang/String;

    .line 12
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget v1, p0, LgP;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 14
    invoke-virtual {p0}, LgP;->k()LkL;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LgP;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0}, LgP;->j()LkL;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    sget-object p1, LgP;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LgP;

    monitor-enter p1

    .line 22
    :try_start_0
    sget-object p2, LgP;->F:LkG;

    if-nez p2, :cond_0

    .line 23
    new-instance p2, LGF;

    sget-object p3, LgP;->E:LgP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LgP;->F:LkG;

    .line 24
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 25
    :cond_1
    :goto_0
    sget-object p1, LgP;->F:LkG;

    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, LfP;

    invoke-direct {p1, v4}, LfP;-><init>(LeP;)V

    return-object p1

    .line 27
    :pswitch_2
    new-instance p1, LgP;

    invoke-direct {p1}, LgP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 28
    :pswitch_4
    check-cast p2, LtF;

    .line 29
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    .line 30
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0xa

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_6

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_3

    .line 31
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 32
    :cond_3
    iget p1, p0, LgP;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 33
    iget-object p1, p0, LgP;->C:LkL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiL;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 34
    :goto_2
    invoke-static {}, LkL;->G()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LkL;

    iput-object v5, p0, LgP;->C:LkL;

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 36
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LkL;

    iput-object p1, p0, LgP;->C:LkL;

    .line 37
    :cond_5
    iget p1, p0, LgP;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LgP;->z:I

    goto :goto_1

    .line 38
    :cond_6
    iget p1, p0, LgP;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_7

    .line 39
    iget-object p1, p0, LgP;->B:LkL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiL;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 40
    :goto_3
    invoke-static {}, LkL;->G()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LkL;

    iput-object v5, p0, LgP;->B:LkL;

    if-eqz p1, :cond_8

    .line 41
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 42
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LkL;

    iput-object p1, p0, LgP;->B:LkL;

    .line 43
    :cond_8
    iget p1, p0, LgP;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LgP;->z:I

    goto :goto_1

    .line 44
    :cond_9
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget v5, p0, LgP;->z:I

    or-int/2addr v5, v1

    iput v5, p0, LgP;->z:I

    .line 46
    iput-object p1, p0, LgP;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

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
    sget-object p1, LgP;->E:LgP;

    return-object p1

    .line 52
    :pswitch_6
    check-cast p2, LSF;

    .line 53
    check-cast p3, LgP;

    .line 54
    iget p1, p0, LgP;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 55
    :goto_6
    iget-object v2, p0, LgP;->A:Ljava/lang/String;

    .line 56
    iget v3, p3, LgP;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_d

    const/4 v0, 0x1

    .line 57
    :cond_d
    iget-object v1, p3, LgP;->A:Ljava/lang/String;

    .line 58
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LgP;->A:Ljava/lang/String;

    .line 59
    iget-object p1, p0, LgP;->B:LkL;

    iget-object v0, p3, LgP;->B:LkL;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LkL;

    iput-object p1, p0, LgP;->B:LkL;

    .line 60
    iget-object p1, p0, LgP;->C:LkL;

    iget-object v0, p3, LgP;->C:LkL;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LkL;

    iput-object p1, p0, LgP;->C:LkL;

    .line 61
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_e

    .line 62
    iget p1, p0, LgP;->z:I

    iget p2, p3, LgP;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LgP;->z:I

    :cond_e
    return-object p0

    .line 63
    :pswitch_7
    iget-byte p1, p0, LgP;->D:B

    if-ne p1, v1, :cond_f

    .line 64
    sget-object p1, LgP;->E:LgP;

    return-object p1

    :cond_f
    if-nez p1, :cond_10

    return-object v4

    .line 65
    :cond_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 66
    iget p2, p0, LgP;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_11

    const/4 p2, 0x1

    goto :goto_7

    :cond_11
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_13

    .line 67
    invoke-virtual {p0}, LgP;->k()LkL;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    .line 68
    iput-byte v0, p0, LgP;->D:B

    :cond_12
    return-object v4

    .line 69
    :cond_13
    iget p2, p0, LgP;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_14

    const/4 p2, 0x1

    goto :goto_8

    :cond_14
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_16

    .line 70
    invoke-virtual {p0}, LgP;->j()LkL;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    .line 71
    iput-byte v0, p0, LgP;->D:B

    :cond_15
    return-object v4

    :cond_16
    if-eqz p1, :cond_17

    .line 72
    iput-byte v1, p0, LgP;->D:B

    .line 73
    :cond_17
    sget-object p1, LgP;->E:LgP;

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
    iget v0, p0, LgP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LgP;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LgP;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, LgP;->k()LkL;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v0, p0, LgP;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0}, LgP;->j()LkL;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LkL;
    .locals 1

    .line 1
    iget-object v0, p0, LgP;->C:LkL;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LkL;->G:LkL;

    :cond_0
    return-object v0
.end method

.method public k()LkL;
    .locals 1

    .line 1
    iget-object v0, p0, LgP;->B:LkL;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LkL;->G:LkL;

    :cond_0
    return-object v0
.end method
