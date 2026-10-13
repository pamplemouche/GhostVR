.class public final LtM;
.super LTF;
.source "PG"

# interfaces
.implements LuM;


# static fields
.field public static final C:LtM;

.field public static volatile D:LkG;


# instance fields
.field public A:LcL;

.field public B:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LtM;

    invoke-direct {v0}, LtM;-><init>()V

    sput-object v0, LtM;->C:LtM;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LtM;->B:I

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LtM;->C:LtM;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v1, p0, LtM;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 11
    iget-object v1, p0, LtM;->A:LcL;

    if-nez v1, :cond_1

    .line 12
    sget-object v1, LcL;->B:LcL;

    .line 13
    :cond_1
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_2
    iget v1, p0, LtM;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 15
    iget v1, p0, LtM;->B:I

    .line 16
    invoke-static {v2, v1}, LxF;->e(II)I

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
    .locals 5

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    sget-object p1, LtM;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LtM;

    monitor-enter p1

    .line 22
    :try_start_0
    sget-object p2, LtM;->D:LkG;

    if-nez p2, :cond_0

    .line 23
    new-instance p2, LGF;

    sget-object p3, LtM;->C:LtM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LtM;->D:LkG;

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
    sget-object p1, LtM;->D:LkG;

    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, LsM;

    invoke-direct {p1, v2}, LsM;-><init>(LeL;)V

    return-object p1

    .line 27
    :pswitch_2
    new-instance p1, LtM;

    invoke-direct {p1}, LtM;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 28
    :pswitch_4
    check-cast p2, LtF;

    .line 29
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 30
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v4, 0xa

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10

    if-eq p1, v4, :cond_3

    .line 31
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 32
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 33
    invoke-static {p1}, LrM;->a(I)LrM;

    move-result-object v4

    if-nez v4, :cond_4

    .line 34
    invoke-super {p0, v3, p1}, LTF;->a(II)V

    goto :goto_1

    .line 35
    :cond_4
    iget v4, p0, LtM;->z:I

    or-int/2addr v4, v3

    iput v4, p0, LtM;->z:I

    .line 36
    iput p1, p0, LtM;->B:I

    goto :goto_1

    .line 37
    :cond_5
    iget p1, p0, LtM;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    .line 38
    iget-object p1, p0, LtM;->A:LcL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LbL;

    goto :goto_2

    :cond_6
    move-object p1, v2

    .line 39
    :goto_2
    sget-object v4, LcL;->B:LcL;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 40
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LcL;

    iput-object v4, p0, LtM;->A:LcL;

    if-eqz p1, :cond_7

    .line 41
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 42
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LcL;

    iput-object p1, p0, LtM;->A:LcL;

    .line 43
    :cond_7
    iget p1, p0, LtM;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LtM;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 44
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :goto_4
    throw p1

    .line 48
    :cond_9
    :pswitch_5
    sget-object p1, LtM;->C:LtM;

    return-object p1

    .line 49
    :pswitch_6
    check-cast p2, LSF;

    .line 50
    check-cast p3, LtM;

    .line 51
    iget-object p1, p0, LtM;->A:LcL;

    iget-object v2, p3, LtM;->A:LcL;

    invoke-interface {p2, p1, v2}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LcL;

    iput-object p1, p0, LtM;->A:LcL;

    .line 52
    iget p1, p0, LtM;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_a

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    .line 53
    :goto_5
    iget v2, p0, LtM;->B:I

    .line 54
    iget v4, p3, LtM;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_b

    const/4 v0, 0x1

    .line 55
    :cond_b
    iget v1, p3, LtM;->B:I

    .line 56
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LtM;->B:I

    .line 57
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_c

    .line 58
    iget p1, p0, LtM;->z:I

    iget p2, p3, LtM;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LtM;->z:I

    :cond_c
    return-object p0

    .line 59
    :pswitch_7
    sget-object p1, LtM;->C:LtM;

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
    iget v0, p0, LtM;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LtM;->A:LcL;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LcL;->B:LcL;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LtM;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, LtM;->B:I

    .line 7
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 8
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
