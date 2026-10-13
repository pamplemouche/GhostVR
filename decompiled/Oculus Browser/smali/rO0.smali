.class public final LrO0;
.super LTF;
.source "PG"

# interfaces
.implements LsO0;


# static fields
.field public static final D:LrO0;

.field public static volatile E:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LnO0;

.field public C:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LrO0;

    invoke-direct {v0}, LrO0;-><init>()V

    sput-object v0, LrO0;->D:LrO0;

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
    iput-object v0, p0, LrO0;->A:Ljava/lang/String;

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
    iget v1, p0, LrO0;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, LrO0;->A:Ljava/lang/String;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LrO0;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 15
    invoke-virtual {p0}, LrO0;->j()LnO0;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget v1, p0, LrO0;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 17
    iget v2, p0, LrO0;->C:I

    .line 18
    invoke-static {v1, v2}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    sget-object p1, LrO0;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LrO0;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, LrO0;->E:LkG;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, LGF;

    sget-object p3, LrO0;->D:LrO0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LrO0;->E:LkG;

    .line 26
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 27
    :cond_1
    :goto_0
    sget-object p1, LrO0;->E:LkG;

    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LpO0;

    invoke-direct {p1, v3}, LpO0;-><init>(LlO0;)V

    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, LrO0;

    invoke-direct {p1}, LrO0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 30
    :pswitch_4
    check-cast p2, LtF;

    .line 31
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 32
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v4, 0xa

    if-eq p1, v4, :cond_8

    const/16 v4, 0x12

    if-eq p1, v4, :cond_5

    const/16 v4, 0x18

    if-eq p1, v4, :cond_3

    .line 33
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 34
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 35
    invoke-static {p1}, LqO0;->a(I)LqO0;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x3

    .line 36
    invoke-super {p0, v4, p1}, LTF;->a(II)V

    goto :goto_1

    .line 37
    :cond_4
    iget v4, p0, LrO0;->z:I

    or-int/2addr v4, v2

    iput v4, p0, LrO0;->z:I

    .line 38
    iput p1, p0, LrO0;->C:I

    goto :goto_1

    .line 39
    :cond_5
    iget p1, p0, LrO0;->z:I

    const/4 v4, 0x2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_6

    .line 40
    iget-object p1, p0, LrO0;->B:LnO0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LmO0;

    goto :goto_2

    :cond_6
    move-object p1, v3

    .line 41
    :goto_2
    sget-object v5, LnO0;->C:LnO0;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 42
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LnO0;

    iput-object v5, p0, LrO0;->B:LnO0;

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 44
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LnO0;

    iput-object p1, p0, LrO0;->B:LnO0;

    .line 45
    :cond_7
    iget p1, p0, LrO0;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LrO0;->z:I

    goto :goto_1

    .line 46
    :cond_8
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget v4, p0, LrO0;->z:I

    or-int/2addr v4, v1

    iput v4, p0, LrO0;->z:I

    .line 48
    iput-object p1, p0, LrO0;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 49
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 50
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 51
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    :goto_4
    throw p1

    .line 53
    :cond_a
    :pswitch_5
    sget-object p1, LrO0;->D:LrO0;

    return-object p1

    .line 54
    :pswitch_6
    check-cast p2, LSF;

    .line 55
    check-cast p3, LrO0;

    .line 56
    iget p1, p0, LrO0;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    .line 57
    :goto_5
    iget-object v3, p0, LrO0;->A:Ljava/lang/String;

    .line 58
    iget v4, p3, LrO0;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_c

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    .line 59
    :goto_6
    iget-object v5, p3, LrO0;->A:Ljava/lang/String;

    .line 60
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LrO0;->A:Ljava/lang/String;

    .line 61
    iget-object p1, p0, LrO0;->B:LnO0;

    iget-object v3, p3, LrO0;->B:LnO0;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LnO0;

    iput-object p1, p0, LrO0;->B:LnO0;

    .line 62
    iget p1, p0, LrO0;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_d

    const/4 p1, 0x1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    .line 63
    :goto_7
    iget v3, p0, LrO0;->C:I

    .line 64
    iget v4, p3, LrO0;->z:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_e

    const/4 v0, 0x1

    .line 65
    :cond_e
    iget v1, p3, LrO0;->C:I

    .line 66
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LrO0;->C:I

    .line 67
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_f

    .line 68
    iget p1, p0, LrO0;->z:I

    iget p2, p3, LrO0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LrO0;->z:I

    :cond_f
    return-object p0

    .line 69
    :pswitch_7
    sget-object p1, LrO0;->D:LrO0;

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
    iget v0, p0, LrO0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LrO0;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LrO0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, LrO0;->j()LnO0;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget v0, p0, LrO0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget v1, p0, LrO0;->C:I

    .line 8
    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 9
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LnO0;
    .locals 1

    .line 1
    iget-object v0, p0, LrO0;->B:LnO0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LnO0;->C:LnO0;

    :cond_0
    return-object v0
.end method
