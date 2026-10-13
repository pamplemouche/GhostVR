.class public final Lqq0;
.super LTF;
.source "PG"

# interfaces
.implements Lrq0;


# static fields
.field public static final C:Lqq0;

.field public static volatile D:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqq0;

    invoke-direct {v0}, Lqq0;-><init>()V

    sput-object v0, Lqq0;->C:Lqq0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lqq0;->A:Ljava/lang/String;

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
    iget v1, p0, Lqq0;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Lqq0;->A:Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_1
    iget v1, p0, Lqq0;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget v1, p0, Lqq0;->B:I

    .line 13
    invoke-static {v2, v1}, LxF;->g(II)I

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

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18
    :pswitch_0
    sget-object p1, Lqq0;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, Lqq0;

    monitor-enter p1

    .line 19
    :try_start_0
    sget-object p2, Lqq0;->D:LkG;

    if-nez p2, :cond_0

    .line 20
    new-instance p2, LGF;

    sget-object p3, Lqq0;->C:Lqq0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, Lqq0;->D:LkG;

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
    sget-object p1, Lqq0;->D:LkG;

    return-object p1

    .line 23
    :pswitch_1
    new-instance p1, Lpq0;

    invoke-direct {p1, v2}, Lpq0;-><init>(Laq0;)V

    return-object p1

    .line 24
    :pswitch_2
    new-instance p1, Lqq0;

    invoke-direct {p1}, Lqq0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 25
    :pswitch_4
    check-cast p2, LtF;

    .line 26
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 27
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0xa

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 28
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 29
    :cond_3
    iget p1, p0, Lqq0;->z:I

    or-int/2addr p1, v3

    iput p1, p0, Lqq0;->z:I

    .line 30
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 31
    iput p1, p0, Lqq0;->B:I

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 33
    iget p3, p0, Lqq0;->z:I

    or-int/2addr p3, v1

    iput p3, p0, Lqq0;->z:I

    .line 34
    iput-object p1, p0, Lqq0;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 35
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 36
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :goto_3
    throw p1

    .line 39
    :cond_6
    :pswitch_5
    sget-object p1, Lqq0;->C:Lqq0;

    return-object p1

    .line 40
    :pswitch_6
    check-cast p2, LSF;

    .line 41
    check-cast p3, Lqq0;

    .line 42
    iget p1, p0, Lqq0;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 43
    :goto_4
    iget-object v2, p0, Lqq0;->A:Ljava/lang/String;

    .line 44
    iget v4, p3, Lqq0;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 45
    :goto_5
    iget-object v5, p3, Lqq0;->A:Ljava/lang/String;

    .line 46
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqq0;->A:Ljava/lang/String;

    .line 47
    iget p1, p0, Lqq0;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 48
    :goto_6
    iget v2, p0, Lqq0;->B:I

    .line 49
    iget v4, p3, Lqq0;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_a

    const/4 v0, 0x1

    .line 50
    :cond_a
    iget v1, p3, Lqq0;->B:I

    .line 51
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lqq0;->B:I

    .line 52
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 53
    iget p1, p0, Lqq0;->z:I

    iget p2, p3, Lqq0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, Lqq0;->z:I

    :cond_b
    return-object p0

    .line 54
    :pswitch_7
    sget-object p1, Lqq0;->C:Lqq0;

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
    iget v0, p0, Lqq0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lqq0;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, Lqq0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lqq0;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 6
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
