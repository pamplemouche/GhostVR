.class public final LSN;
.super LLF;
.source "PG"

# interfaces
.implements LTN;


# static fields
.field public static final E:LSN;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LSN;

    invoke-direct {v0}, LSN;-><init>()V

    sput-object v0, LSN;->E:LSN;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LSN;->D:B

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LSN;->E:LSN;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v1, p0, LSN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget v1, p0, LSN;->B:I

    .line 11
    invoke-static {v2, v1}, LxF;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LSN;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13
    iget v1, p0, LSN;->C:I

    .line 14
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, LSN;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LSN;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p2, LSN;->F:LkG;

    if-nez p2, :cond_0

    .line 22
    new-instance p2, LGF;

    sget-object p3, LSN;->E:LSN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LSN;->F:LkG;

    .line 23
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24
    :cond_1
    :goto_0
    sget-object p1, LSN;->F:LkG;

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, LRN;

    invoke-direct {p1, v3}, LRN;-><init>(LQN;)V

    return-object p1

    .line 26
    :pswitch_2
    new-instance p1, LSN;

    invoke-direct {p1}, LSN;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 27
    :pswitch_4
    check-cast p2, LtF;

    .line 28
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 29
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 v3, 0xd

    if-eq p1, v3, :cond_4

    const/16 v3, 0x10

    if-eq p1, v3, :cond_3

    .line 30
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v3

    check-cast v3, LSN;

    invoke-virtual {p0, v3, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 31
    :cond_3
    iget p1, p0, LSN;->A:I

    or-int/2addr p1, v2

    iput p1, p0, LSN;->A:I

    .line 32
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 33
    iput p1, p0, LSN;->C:I

    goto :goto_1

    .line 34
    :cond_4
    iget p1, p0, LSN;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LSN;->A:I

    .line 35
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 36
    iput p1, p0, LSN;->B:I
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
    :goto_3
    throw p1

    .line 41
    :cond_6
    :pswitch_5
    sget-object p1, LSN;->E:LSN;

    return-object p1

    .line 42
    :pswitch_6
    check-cast p2, LSF;

    .line 43
    check-cast p3, LSN;

    .line 44
    iget p1, p0, LSN;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 45
    :goto_4
    iget v3, p0, LSN;->B:I

    .line 46
    iget v4, p3, LSN;->A:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 47
    :goto_5
    iget v5, p3, LSN;->B:I

    .line 48
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LSN;->B:I

    .line 49
    iget p1, p0, LSN;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 50
    :goto_6
    iget v3, p0, LSN;->C:I

    .line 51
    iget v4, p3, LSN;->A:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_a

    const/4 v0, 0x1

    .line 52
    :cond_a
    iget v1, p3, LSN;->C:I

    .line 53
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LSN;->C:I

    .line 54
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 55
    iget p1, p0, LSN;->A:I

    iget p2, p3, LSN;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LSN;->A:I

    :cond_b
    return-object p0

    .line 56
    :pswitch_7
    iget-byte p1, p0, LSN;->D:B

    if-ne p1, v1, :cond_c

    .line 57
    sget-object p1, LSN;->E:LSN;

    return-object p1

    :cond_c
    if-nez p1, :cond_d

    return-object v3

    .line 58
    :cond_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 59
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    .line 60
    iput-byte v0, p0, LSN;->D:B

    :cond_e
    return-object v3

    :cond_f
    if-eqz p1, :cond_10

    .line 61
    iput-byte v1, p0, LSN;->D:B

    .line 62
    :cond_10
    sget-object p1, LSN;->E:LSN;

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
    .locals 3

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LSN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, LSN;->B:I

    invoke-virtual {p1, v2, v1}, LxF;->a(II)V

    .line 4
    :cond_0
    iget v1, p0, LSN;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5
    iget v1, p0, LSN;->C:I

    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    :cond_1
    const/high16 v1, 0x20000000

    .line 6
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
