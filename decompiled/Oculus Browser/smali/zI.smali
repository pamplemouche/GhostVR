.class public final LzI;
.super LTF;
.source "PG"

# interfaces
.implements LAI;


# static fields
.field public static final D:LzI;

.field public static volatile E:LkG;


# instance fields
.field public A:LbJ;

.field public B:LNI;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LzI;

    invoke-direct {v0}, LzI;-><init>()V

    sput-object v0, LzI;->D:LzI;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LzI;->C:B

    return-void
.end method

.method public static l()LyI;
    .locals 1

    .line 1
    sget-object v0, LzI;->D:LzI;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LyI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 6
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iget v1, p0, LzI;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, LzI;->k()LbJ;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_1
    iget v1, p0, LzI;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {p0}, LzI;->j()LNI;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15
    :pswitch_0
    sget-object p1, LzI;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LzI;

    monitor-enter p1

    .line 16
    :try_start_0
    sget-object p2, LzI;->E:LkG;

    if-nez p2, :cond_0

    .line 17
    new-instance p2, LGF;

    sget-object p3, LzI;->D:LzI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LzI;->E:LkG;

    .line 18
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19
    :cond_1
    :goto_0
    sget-object p1, LzI;->E:LkG;

    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, LyI;

    invoke-direct {p1, v3}, LyI;-><init>(LrI;)V

    return-object p1

    .line 21
    :pswitch_2
    new-instance p1, LzI;

    invoke-direct {p1}, LzI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 22
    :pswitch_4
    check-cast p2, LtF;

    .line 23
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 24
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v4, 0xa

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 25
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 26
    :cond_3
    iget p1, p0, LzI;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 27
    iget-object p1, p0, LzI;->B:LNI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LLI;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 28
    :goto_2
    sget-object v4, LNI;->D:LNI;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 29
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LNI;

    iput-object v4, p0, LzI;->B:LNI;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 31
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LNI;

    iput-object p1, p0, LzI;->B:LNI;

    .line 32
    :cond_5
    iget p1, p0, LzI;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LzI;->z:I

    goto :goto_1

    .line 33
    :cond_6
    iget p1, p0, LzI;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    .line 34
    iget-object p1, p0, LzI;->A:LbJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LZI;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 35
    :goto_3
    sget-object v4, LbJ;->F:LbJ;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 36
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LbJ;

    iput-object v4, p0, LzI;->A:LbJ;

    if-eqz p1, :cond_8

    .line 37
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 38
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LbJ;

    iput-object p1, p0, LzI;->A:LbJ;

    .line 39
    :cond_8
    iget p1, p0, LzI;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LzI;->z:I
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

    .line 40
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 41
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :goto_5
    throw p1

    .line 44
    :cond_a
    :pswitch_5
    sget-object p1, LzI;->D:LzI;

    return-object p1

    .line 45
    :pswitch_6
    check-cast p2, LSF;

    .line 46
    check-cast p3, LzI;

    .line 47
    iget-object p1, p0, LzI;->A:LbJ;

    iget-object v0, p3, LzI;->A:LbJ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LbJ;

    iput-object p1, p0, LzI;->A:LbJ;

    .line 48
    iget-object p1, p0, LzI;->B:LNI;

    iget-object v0, p3, LzI;->B:LNI;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LNI;

    iput-object p1, p0, LzI;->B:LNI;

    .line 49
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 50
    iget p1, p0, LzI;->z:I

    iget p2, p3, LzI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LzI;->z:I

    :cond_b
    return-object p0

    .line 51
    :pswitch_7
    iget-byte p1, p0, LzI;->C:B

    if-ne p1, v1, :cond_c

    .line 52
    sget-object p1, LzI;->D:LzI;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v3

    .line 53
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 54
    iget p2, p0, LzI;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_e

    const/4 p2, 0x1

    goto :goto_6

    :cond_e
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_10

    .line 55
    invoke-virtual {p0}, LzI;->k()LbJ;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    .line 56
    iput-byte v0, p0, LzI;->C:B

    :cond_f
    return-object v3

    .line 57
    :cond_10
    iget p2, p0, LzI;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_11

    const/4 p2, 0x1

    goto :goto_7

    :cond_11
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_13

    .line 58
    invoke-virtual {p0}, LzI;->j()LNI;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_13

    if-eqz p1, :cond_12

    .line 59
    iput-byte v0, p0, LzI;->C:B

    :cond_12
    return-object v3

    :cond_13
    if-eqz p1, :cond_14

    .line 60
    iput-byte v1, p0, LzI;->C:B

    .line 61
    :cond_14
    sget-object p1, LzI;->D:LzI;

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
    iget v0, p0, LzI;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, LzI;->k()LbJ;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LzI;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, LzI;->j()LNI;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LNI;
    .locals 1

    .line 1
    iget-object v0, p0, LzI;->B:LNI;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LNI;->D:LNI;

    :cond_0
    return-object v0
.end method

.method public k()LbJ;
    .locals 1

    .line 1
    iget-object v0, p0, LzI;->A:LbJ;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LbJ;->F:LbJ;

    :cond_0
    return-object v0
.end method
