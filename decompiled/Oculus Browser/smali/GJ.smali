.class public final LGJ;
.super LTF;
.source "PG"

# interfaces
.implements LHJ;


# static fields
.field public static final D:LGJ;

.field public static volatile E:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LoJ;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LGJ;

    invoke-direct {v0}, LGJ;-><init>()V

    sput-object v0, LGJ;->D:LGJ;

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
    iput-byte v0, p0, LGJ;->C:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LGJ;->A:Ljava/lang/String;

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
    iget v1, p0, LGJ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, LGJ;->A:Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_1
    iget v1, p0, LGJ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    invoke-virtual {p0}, LGJ;->j()LoJ;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17
    :pswitch_0
    sget-object p1, LGJ;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LGJ;

    monitor-enter p1

    .line 18
    :try_start_0
    sget-object p2, LGJ;->E:LkG;

    if-nez p2, :cond_0

    .line 19
    new-instance p2, LGF;

    sget-object p3, LGJ;->D:LGJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LGJ;->E:LkG;

    .line 20
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21
    :cond_1
    :goto_0
    sget-object p1, LGJ;->E:LkG;

    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, LFJ;

    invoke-direct {p1, v3}, LFJ;-><init>(LqJ;)V

    return-object p1

    .line 23
    :pswitch_2
    new-instance p1, LGJ;

    invoke-direct {p1}, LGJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 24
    :pswitch_4
    check-cast p2, LtF;

    .line 25
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 26
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v4, 0xa

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 27
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 28
    :cond_3
    iget p1, p0, LGJ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 29
    iget-object p1, p0, LGJ;->B:LoJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LnJ;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 30
    :goto_2
    invoke-static {}, LoJ;->m()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LoJ;

    iput-object v4, p0, LGJ;->B:LoJ;

    if-eqz p1, :cond_5

    .line 31
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 32
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LoJ;

    iput-object p1, p0, LGJ;->B:LoJ;

    .line 33
    :cond_5
    iget p1, p0, LGJ;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LGJ;->z:I

    goto :goto_1

    .line 34
    :cond_6
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 35
    iget v4, p0, LGJ;->z:I

    or-int/2addr v4, v1

    iput v4, p0, LGJ;->z:I

    .line 36
    iput-object p1, p0, LGJ;->A:Ljava/lang/String;
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

    .line 37
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 38
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :goto_4
    throw p1

    .line 41
    :cond_8
    :pswitch_5
    sget-object p1, LGJ;->D:LGJ;

    return-object p1

    .line 42
    :pswitch_6
    check-cast p2, LSF;

    .line 43
    check-cast p3, LGJ;

    .line 44
    iget p1, p0, LGJ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 45
    :goto_5
    iget-object v2, p0, LGJ;->A:Ljava/lang/String;

    .line 46
    iget v3, p3, LGJ;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_a

    const/4 v0, 0x1

    .line 47
    :cond_a
    iget-object v1, p3, LGJ;->A:Ljava/lang/String;

    .line 48
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LGJ;->A:Ljava/lang/String;

    .line 49
    iget-object p1, p0, LGJ;->B:LoJ;

    iget-object v0, p3, LGJ;->B:LoJ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LoJ;

    iput-object p1, p0, LGJ;->B:LoJ;

    .line 50
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 51
    iget p1, p0, LGJ;->z:I

    iget p2, p3, LGJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LGJ;->z:I

    :cond_b
    return-object p0

    .line 52
    :pswitch_7
    iget-byte p1, p0, LGJ;->C:B

    if-ne p1, v1, :cond_c

    .line 53
    sget-object p1, LGJ;->D:LGJ;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v3

    .line 54
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 55
    iget p2, p0, LGJ;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_e

    const/4 p2, 0x1

    goto :goto_6

    :cond_e
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_10

    .line 56
    invoke-virtual {p0}, LGJ;->j()LoJ;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    .line 57
    iput-byte v0, p0, LGJ;->C:B

    :cond_f
    return-object v3

    :cond_10
    if-eqz p1, :cond_11

    .line 58
    iput-byte v1, p0, LGJ;->C:B

    .line 59
    :cond_11
    sget-object p1, LGJ;->D:LGJ;

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
    iget v0, p0, LGJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LGJ;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LGJ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, LGJ;->j()LoJ;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 6
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LoJ;
    .locals 1

    .line 1
    iget-object v0, p0, LGJ;->B:LoJ;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LoJ;->B:LoJ;

    :cond_0
    return-object v0
.end method
