.class public final LkP;
.super LLF;
.source "PG"

# interfaces
.implements LlP;


# static fields
.field public static final D:LkP;

.field public static volatile E:LkG;


# instance fields
.field public A:I

.field public B:F

.field public C:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LkP;

    invoke-direct {v0}, LkP;-><init>()V

    sput-object v0, LkP;->D:LkP;

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
    iput-byte v0, p0, LkP;->C:B

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
    iget v1, p0, LkP;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 8
    iget v2, p0, LkP;->B:F

    .line 9
    invoke-static {v1, v2}, LxF;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_1
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 11
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15
    :pswitch_0
    sget-object p1, LkP;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LkP;

    monitor-enter p1

    .line 16
    :try_start_0
    sget-object p2, LkP;->E:LkG;

    if-nez p2, :cond_0

    .line 17
    new-instance p2, LGF;

    sget-object p3, LkP;->D:LkP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LkP;->E:LkG;

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
    sget-object p1, LkP;->E:LkG;

    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, LjP;

    invoke-direct {p1, v2}, LjP;-><init>(LiP;)V

    return-object p1

    .line 21
    :pswitch_2
    new-instance p1, LkP;

    invoke-direct {p1}, LkP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 22
    :pswitch_4
    check-cast p2, LtF;

    .line 23
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 24
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 v2, 0x15

    if-eq p1, v2, :cond_3

    .line 25
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v2

    check-cast v2, LkP;

    invoke-virtual {p0, v2, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 26
    :cond_3
    iget p1, p0, LkP;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LkP;->A:I

    .line 27
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, LkP;->B:F
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 29
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :goto_3
    throw p1

    .line 32
    :cond_5
    :pswitch_5
    sget-object p1, LkP;->D:LkP;

    return-object p1

    .line 33
    :pswitch_6
    check-cast p2, LSF;

    .line 34
    check-cast p3, LkP;

    .line 35
    iget p1, p0, LkP;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 36
    :goto_4
    iget v2, p0, LkP;->B:F

    .line 37
    iget v3, p3, LkP;->A:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_7

    const/4 v0, 0x1

    .line 38
    :cond_7
    iget v1, p3, LkP;->B:F

    .line 39
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZFZF)F

    move-result p1

    iput p1, p0, LkP;->B:F

    .line 40
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_8

    .line 41
    iget p1, p0, LkP;->A:I

    iget p2, p3, LkP;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LkP;->A:I

    :cond_8
    return-object p0

    .line 42
    :pswitch_7
    iget-byte p1, p0, LkP;->C:B

    if-ne p1, v1, :cond_9

    .line 43
    sget-object p1, LkP;->D:LkP;

    return-object p1

    :cond_9
    if-nez p1, :cond_a

    return-object v2

    .line 44
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 45
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    .line 46
    iput-byte v0, p0, LkP;->C:B

    :cond_b
    return-object v2

    :cond_c
    if-eqz p1, :cond_d

    .line 47
    iput-byte v1, p0, LkP;->C:B

    .line 48
    :cond_d
    sget-object p1, LkP;->D:LkP;

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
    .locals 3

    .line 1
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LkP;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 3
    iget v2, p0, LkP;->B:F

    invoke-virtual {p1, v1, v2}, LxF;->a(IF)V

    :cond_0
    const/high16 v1, 0x20000000

    .line 4
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
