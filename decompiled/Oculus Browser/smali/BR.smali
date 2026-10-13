.class public final LBR;
.super LLF;
.source "PG"

# interfaces
.implements LCR;


# static fields
.field public static final D:LBR;

.field public static volatile E:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LBR;

    invoke-direct {v0}, LBR;-><init>()V

    sput-object v0, LBR;->D:LBR;

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
    iput-byte v0, p0, LBR;->C:B

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
    iget v1, p0, LBR;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9
    iget v1, p0, LBR;->B:I

    .line 10
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_1
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 13
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_0
    sget-object p1, LBR;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LBR;

    monitor-enter p1

    .line 17
    :try_start_0
    sget-object p2, LBR;->E:LkG;

    if-nez p2, :cond_0

    .line 18
    new-instance p2, LGF;

    sget-object p3, LBR;->D:LBR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LBR;->E:LkG;

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
    sget-object p1, LBR;->E:LkG;

    return-object p1

    .line 21
    :pswitch_1
    new-instance p1, LzR;

    invoke-direct {p1, v2}, LzR;-><init>(LyR;)V

    return-object p1

    .line 22
    :pswitch_2
    new-instance p1, LBR;

    invoke-direct {p1}, LBR;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 23
    :pswitch_4
    check-cast p2, LtF;

    .line 24
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 25
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    .line 26
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v2

    check-cast v2, LBR;

    invoke-virtual {p0, v2, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 28
    invoke-static {p1}, LAR;->a(I)LAR;

    move-result-object v2

    if-nez v2, :cond_4

    .line 29
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto :goto_1

    .line 30
    :cond_4
    iget v2, p0, LBR;->A:I

    or-int/2addr v2, v1

    iput v2, p0, LBR;->A:I

    .line 31
    iput p1, p0, LBR;->B:I
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

    .line 32
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    :goto_3
    throw p1

    .line 36
    :cond_6
    :pswitch_5
    sget-object p1, LBR;->D:LBR;

    return-object p1

    .line 37
    :pswitch_6
    check-cast p2, LSF;

    .line 38
    check-cast p3, LBR;

    .line 39
    iget p1, p0, LBR;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 40
    :goto_4
    iget v2, p0, LBR;->B:I

    .line 41
    iget v3, p3, LBR;->A:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_8

    const/4 v0, 0x1

    .line 42
    :cond_8
    iget v1, p3, LBR;->B:I

    .line 43
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LBR;->B:I

    .line 44
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_9

    .line 45
    iget p1, p0, LBR;->A:I

    iget p2, p3, LBR;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LBR;->A:I

    :cond_9
    return-object p0

    .line 46
    :pswitch_7
    iget-byte p1, p0, LBR;->C:B

    if-ne p1, v1, :cond_a

    .line 47
    sget-object p1, LBR;->D:LBR;

    return-object p1

    :cond_a
    if-nez p1, :cond_b

    return-object v2

    .line 48
    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 49
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    .line 50
    iput-byte v0, p0, LBR;->C:B

    :cond_c
    return-object v2

    :cond_d
    if-eqz p1, :cond_e

    .line 51
    iput-byte v1, p0, LBR;->C:B

    .line 52
    :cond_e
    sget-object p1, LBR;->D:LBR;

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
    iget v1, p0, LBR;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, LBR;->B:I

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    :cond_0
    const/high16 v1, 0x20000000

    .line 5
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
