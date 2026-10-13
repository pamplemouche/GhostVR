.class public final LwR;
.super LTF;
.source "PG"

# interfaces
.implements LxR;


# static fields
.field public static final D:LwR;

.field public static volatile E:LkG;


# instance fields
.field public A:LjQ;

.field public B:LpN;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LwR;

    invoke-direct {v0}, LwR;-><init>()V

    sput-object v0, LwR;->D:LwR;

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
    iput-byte v0, p0, LwR;->C:B

    return-void
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
    iget v1, p0, LwR;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 10
    iget-object v1, p0, LwR;->A:LjQ;

    if-nez v1, :cond_1

    .line 11
    sget-object v1, LjQ;->D:LjQ;

    .line 12
    :cond_1
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_2
    iget v1, p0, LwR;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 14
    invoke-virtual {p0}, LwR;->j()LpN;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19
    :pswitch_0
    sget-object p1, LwR;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LwR;

    monitor-enter p1

    .line 20
    :try_start_0
    sget-object p2, LwR;->E:LkG;

    if-nez p2, :cond_0

    .line 21
    new-instance p2, LGF;

    sget-object p3, LwR;->D:LwR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LwR;->E:LkG;

    .line 22
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 23
    :cond_1
    :goto_0
    sget-object p1, LwR;->E:LkG;

    return-object p1

    .line 24
    :pswitch_1
    new-instance p1, LvR;

    invoke-direct {p1, v3}, LvR;-><init>(LuR;)V

    return-object p1

    .line 25
    :pswitch_2
    new-instance p1, LwR;

    invoke-direct {p1}, LwR;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 26
    :pswitch_4
    check-cast p2, LtF;

    .line 27
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 28
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v4, 0xa

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 29
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 30
    :cond_3
    iget p1, p0, LwR;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 31
    iget-object p1, p0, LwR;->B:LpN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LoN;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 32
    :goto_2
    sget-object v4, LpN;->C:LpN;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 33
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LpN;

    iput-object v4, p0, LwR;->B:LpN;

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 35
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LpN;

    iput-object p1, p0, LwR;->B:LpN;

    .line 36
    :cond_5
    iget p1, p0, LwR;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LwR;->z:I

    goto :goto_1

    .line 37
    :cond_6
    iget p1, p0, LwR;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    .line 38
    iget-object p1, p0, LwR;->A:LjQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiQ;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 39
    :goto_3
    invoke-static {}, LjQ;->j()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LjQ;

    iput-object v4, p0, LwR;->A:LjQ;

    if-eqz p1, :cond_8

    .line 40
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 41
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LwR;->A:LjQ;

    .line 42
    :cond_8
    iget p1, p0, LwR;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LwR;->z:I
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

    .line 43
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :goto_5
    throw p1

    .line 47
    :cond_a
    :pswitch_5
    sget-object p1, LwR;->D:LwR;

    return-object p1

    .line 48
    :pswitch_6
    check-cast p2, LSF;

    .line 49
    check-cast p3, LwR;

    .line 50
    iget-object p1, p0, LwR;->A:LjQ;

    iget-object v0, p3, LwR;->A:LjQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LwR;->A:LjQ;

    .line 51
    iget-object p1, p0, LwR;->B:LpN;

    iget-object v0, p3, LwR;->B:LpN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LpN;

    iput-object p1, p0, LwR;->B:LpN;

    .line 52
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 53
    iget p1, p0, LwR;->z:I

    iget p2, p3, LwR;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LwR;->z:I

    :cond_b
    return-object p0

    .line 54
    :pswitch_7
    iget-byte p1, p0, LwR;->C:B

    if-ne p1, v1, :cond_c

    .line 55
    sget-object p1, LwR;->D:LwR;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v3

    .line 56
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 57
    iget p2, p0, LwR;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_e

    const/4 p2, 0x1

    goto :goto_6

    :cond_e
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_10

    .line 58
    invoke-virtual {p0}, LwR;->j()LpN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    .line 59
    iput-byte v0, p0, LwR;->C:B

    :cond_f
    return-object v3

    :cond_10
    if-eqz p1, :cond_11

    .line 60
    iput-byte v1, p0, LwR;->C:B

    .line 61
    :cond_11
    sget-object p1, LwR;->D:LwR;

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
    iget v0, p0, LwR;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LwR;->A:LjQ;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LjQ;->D:LjQ;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LwR;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, LwR;->j()LpN;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LpN;
    .locals 1

    .line 1
    iget-object v0, p0, LwR;->B:LpN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LpN;->C:LpN;

    :cond_0
    return-object v0
.end method
