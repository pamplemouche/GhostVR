.class public final LrK;
.super LTF;
.source "PG"

# interfaces
.implements LsK;


# static fields
.field public static final D:LrK;

.field public static volatile E:LkG;


# instance fields
.field public A:F

.field public B:LlK;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LrK;

    invoke-direct {v0}, LrK;-><init>()V

    sput-object v0, LrK;->D:LrK;

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
    iput-byte v0, p0, LrK;->C:B

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, LrK;->A:F

    return-void
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
    iget v1, p0, LrK;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    iget v1, p0, LrK;->A:F

    .line 9
    invoke-static {v2, v1}, LxF;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_1
    iget v1, p0, LrK;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 11
    invoke-virtual {p0}, LrK;->j()LlK;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_0
    sget-object p1, LrK;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LrK;

    monitor-enter p1

    .line 17
    :try_start_0
    sget-object p2, LrK;->E:LkG;

    if-nez p2, :cond_0

    .line 18
    new-instance p2, LGF;

    sget-object p3, LrK;->D:LrK;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LrK;->E:LkG;

    .line 19
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 20
    :cond_1
    :goto_0
    sget-object p1, LrK;->E:LkG;

    return-object p1

    .line 21
    :pswitch_1
    new-instance p1, LqK;

    invoke-direct {p1, v3}, LqK;-><init>(LjK;)V

    return-object p1

    .line 22
    :pswitch_2
    new-instance p1, LrK;

    invoke-direct {p1}, LrK;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 23
    :pswitch_4
    check-cast p2, LtF;

    .line 24
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 25
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v4, 0xd

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 26
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 27
    :cond_3
    iget p1, p0, LrK;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 28
    iget-object p1, p0, LrK;->B:LlK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LkK;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 29
    :goto_2
    invoke-static {}, LlK;->m()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LlK;

    iput-object v4, p0, LrK;->B:LlK;

    if-eqz p1, :cond_5

    .line 30
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 31
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LrK;->B:LlK;

    .line 32
    :cond_5
    iget p1, p0, LrK;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LrK;->z:I

    goto :goto_1

    .line 33
    :cond_6
    iget p1, p0, LrK;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LrK;->z:I

    .line 34
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LrK;->A:F
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
    :goto_4
    throw p1

    .line 39
    :cond_8
    :pswitch_5
    sget-object p1, LrK;->D:LrK;

    return-object p1

    .line 40
    :pswitch_6
    check-cast p2, LSF;

    .line 41
    check-cast p3, LrK;

    .line 42
    iget p1, p0, LrK;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 43
    :goto_5
    iget v2, p0, LrK;->A:F

    .line 44
    iget v3, p3, LrK;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_a

    const/4 v0, 0x1

    .line 45
    :cond_a
    iget v1, p3, LrK;->A:F

    .line 46
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LrK;->A:F

    .line 47
    iget-object p1, p0, LrK;->B:LlK;

    iget-object v0, p3, LrK;->B:LlK;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LlK;

    iput-object p1, p0, LrK;->B:LlK;

    .line 48
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 49
    iget p1, p0, LrK;->z:I

    iget p2, p3, LrK;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LrK;->z:I

    :cond_b
    return-object p0

    .line 50
    :pswitch_7
    iget-byte p1, p0, LrK;->C:B

    if-ne p1, v1, :cond_c

    .line 51
    sget-object p1, LrK;->D:LrK;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v3

    .line 52
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 53
    iget p2, p0, LrK;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_e

    const/4 p2, 0x1

    goto :goto_6

    :cond_e
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_10

    .line 54
    invoke-virtual {p0}, LrK;->j()LlK;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_10

    if-eqz p1, :cond_f

    .line 55
    iput-byte v0, p0, LrK;->C:B

    :cond_f
    return-object v3

    :cond_10
    if-eqz p1, :cond_11

    .line 56
    iput-byte v1, p0, LrK;->C:B

    .line 57
    :cond_11
    sget-object p1, LrK;->D:LrK;

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
    iget v0, p0, LrK;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LrK;->A:F

    invoke-virtual {p1, v1, v0}, LxF;->a(IF)V

    .line 3
    :cond_0
    iget v0, p0, LrK;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, LrK;->j()LlK;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LlK;
    .locals 1

    .line 1
    iget-object v0, p0, LrK;->B:LlK;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LlK;->B:LlK;

    :cond_0
    return-object v0
.end method
