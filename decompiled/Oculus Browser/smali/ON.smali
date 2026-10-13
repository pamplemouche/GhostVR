.class public final LON;
.super LTF;
.source "PG"

# interfaces
.implements LPN;


# static fields
.field public static final C:LON;

.field public static volatile D:LkG;


# instance fields
.field public A:LIN;

.field public B:LLN;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LON;

    invoke-direct {v0}, LON;-><init>()V

    sput-object v0, LON;->C:LON;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LON;->C:LON;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v1, p0, LON;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, p0, LON;->A:LIN;

    if-nez v1, :cond_1

    .line 13
    sget-object v1, LIN;->G:LIN;

    .line 14
    :cond_1
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LON;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 16
    iget-object v1, p0, LON;->B:LLN;

    if-nez v1, :cond_3

    .line 17
    sget-object v1, LLN;->B:LLN;

    .line 18
    :cond_3
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_4
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    sget-object p1, LON;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LON;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, LON;->D:LkG;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, LGF;

    sget-object p3, LON;->C:LON;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LON;->D:LkG;

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
    sget-object p1, LON;->D:LkG;

    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LNN;

    invoke-direct {p1, v0}, LNN;-><init>(LGN;)V

    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, LON;

    invoke-direct {p1}, LON;-><init>()V

    return-object p1

    :pswitch_3
    return-object v0

    .line 30
    :pswitch_4
    check-cast p2, LtF;

    .line 31
    check-cast p3, LBF;

    const/4 p1, 0x0

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 32
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    .line 33
    invoke-virtual {p0, v2, p2}, LTF;->a(ILtF;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 34
    :cond_3
    iget v2, p0, LON;->z:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    .line 35
    iget-object v2, p0, LON;->B:LLN;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LKN;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 36
    :goto_2
    sget-object v4, LLN;->B:LLN;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 37
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LLN;

    iput-object v4, p0, LON;->B:LLN;

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v2, v4}, LFF;->a(LTF;)LFF;

    .line 39
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LLN;

    iput-object v2, p0, LON;->B:LLN;

    .line 40
    :cond_5
    iget v2, p0, LON;->z:I

    or-int/2addr v2, v3

    iput v2, p0, LON;->z:I

    goto :goto_1

    .line 41
    :cond_6
    iget v2, p0, LON;->z:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    .line 42
    iget-object v2, p0, LON;->A:LIN;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LHN;

    goto :goto_3

    :cond_7
    move-object v2, v0

    .line 43
    :goto_3
    sget-object v3, LIN;->G:LIN;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 44
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LIN;

    iput-object v3, p0, LON;->A:LIN;

    if-eqz v2, :cond_8

    .line 45
    invoke-virtual {v2, v3}, LFF;->a(LTF;)LFF;

    .line 46
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LIN;

    iput-object v2, p0, LON;->A:LIN;

    .line 47
    :cond_8
    iget v2, p0, LON;->z:I

    or-int/2addr v2, v1

    iput v2, p0, LON;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_4
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 48
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 49
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_5
    throw p1

    .line 52
    :cond_a
    :pswitch_5
    sget-object p1, LON;->C:LON;

    return-object p1

    .line 53
    :pswitch_6
    check-cast p2, LSF;

    .line 54
    check-cast p3, LON;

    .line 55
    iget-object p1, p0, LON;->A:LIN;

    iget-object v0, p3, LON;->A:LIN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LIN;

    iput-object p1, p0, LON;->A:LIN;

    .line 56
    iget-object p1, p0, LON;->B:LLN;

    iget-object v0, p3, LON;->B:LLN;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LLN;

    iput-object p1, p0, LON;->B:LLN;

    .line 57
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 58
    iget p1, p0, LON;->z:I

    iget p2, p3, LON;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LON;->z:I

    :cond_b
    return-object p0

    .line 59
    :pswitch_7
    sget-object p1, LON;->C:LON;

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
    iget v0, p0, LON;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LON;->A:LIN;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LIN;->G:LIN;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LON;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, LON;->B:LLN;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, LLN;->B:LLN;

    .line 8
    :cond_2
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 9
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
