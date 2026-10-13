.class public final LbJ;
.super LLF;
.source "PG"

# interfaces
.implements LcJ;


# static fields
.field public static final F:LbJ;

.field public static volatile G:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LbJ;

    invoke-direct {v0}, LbJ;-><init>()V

    sput-object v0, LbJ;->F:LbJ;

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
    iput-byte v0, p0, LbJ;->E:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LbJ;->C:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LbJ;->D:Ljava/lang/String;

    return-void
.end method

.method public static o()LZI;
    .locals 1

    .line 1
    sget-object v0, LbJ;->F:LbJ;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LZI;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 13
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 15
    iget v1, p0, LbJ;->B:I

    .line 16
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18
    iget-object v1, p0, LbJ;->C:Ljava/lang/String;

    .line 19
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_2
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 21
    iget-object v2, p0, LbJ;->D:Ljava/lang/String;

    .line 22
    invoke-static {v1, v2}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 24
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 25
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 28
    :pswitch_0
    sget-object p1, LbJ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LbJ;

    monitor-enter p1

    .line 29
    :try_start_0
    sget-object p2, LbJ;->G:LkG;

    if-nez p2, :cond_0

    .line 30
    new-instance p2, LGF;

    sget-object p3, LbJ;->F:LbJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LbJ;->G:LkG;

    .line 31
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 32
    :cond_1
    :goto_0
    sget-object p1, LbJ;->G:LkG;

    return-object p1

    .line 33
    :pswitch_1
    new-instance p1, LZI;

    invoke-direct {p1, v3}, LZI;-><init>(LrI;)V

    return-object p1

    .line 34
    :pswitch_2
    new-instance p1, LbJ;

    invoke-direct {p1}, LbJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 35
    :pswitch_4
    check-cast p2, LtF;

    .line 36
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 37
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v3, 0x8

    if-eq p1, v3, :cond_5

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_3

    .line 38
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v3

    check-cast v3, LbJ;

    invoke-virtual {p0, v3, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget v3, p0, LbJ;->A:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, LbJ;->A:I

    .line 41
    iput-object p1, p0, LbJ;->D:Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_4
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget v3, p0, LbJ;->A:I

    or-int/2addr v3, v2

    iput v3, p0, LbJ;->A:I

    .line 44
    iput-object p1, p0, LbJ;->C:Ljava/lang/String;

    goto :goto_1

    .line 45
    :cond_5
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 46
    invoke-static {p1}, LaJ;->a(I)LaJ;

    move-result-object v3

    if-nez v3, :cond_6

    .line 47
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto :goto_1

    .line 48
    :cond_6
    iget v3, p0, LbJ;->A:I

    or-int/2addr v3, v1

    iput v3, p0, LbJ;->A:I

    .line 49
    iput p1, p0, LbJ;->B:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 50
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 51
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    :goto_3
    throw p1

    .line 54
    :cond_8
    :pswitch_5
    sget-object p1, LbJ;->F:LbJ;

    return-object p1

    .line 55
    :pswitch_6
    check-cast p2, LSF;

    .line 56
    check-cast p3, LbJ;

    .line 57
    iget p1, p0, LbJ;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    .line 58
    :goto_4
    iget v3, p0, LbJ;->B:I

    .line 59
    iget v4, p3, LbJ;->A:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    .line 60
    :goto_5
    iget v5, p3, LbJ;->B:I

    .line 61
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbJ;->B:I

    .line 62
    iget p1, p0, LbJ;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 63
    :goto_6
    iget-object v3, p0, LbJ;->C:Ljava/lang/String;

    .line 64
    iget v4, p3, LbJ;->A:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_c

    const/4 v0, 0x1

    .line 65
    :cond_c
    iget-object v1, p3, LbJ;->C:Ljava/lang/String;

    .line 66
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LbJ;->C:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, LbJ;->n()Z

    move-result p1

    iget-object v0, p0, LbJ;->D:Ljava/lang/String;

    .line 68
    invoke-virtual {p3}, LbJ;->n()Z

    move-result v1

    iget-object v2, p3, LbJ;->D:Ljava/lang/String;

    .line 69
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LbJ;->D:Ljava/lang/String;

    .line 70
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_d

    .line 71
    iget p1, p0, LbJ;->A:I

    iget p2, p3, LbJ;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LbJ;->A:I

    :cond_d
    return-object p0

    .line 72
    :pswitch_7
    iget-byte p1, p0, LbJ;->E:B

    if-ne p1, v1, :cond_e

    .line 73
    sget-object p1, LbJ;->F:LbJ;

    return-object p1

    :cond_e
    if-nez p1, :cond_f

    return-object v3

    .line 74
    :cond_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 75
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_11

    if-eqz p1, :cond_10

    .line 76
    iput-byte v0, p0, LbJ;->E:B

    :cond_10
    return-object v3

    :cond_11
    if-eqz p1, :cond_12

    .line 77
    iput-byte v1, p0, LbJ;->E:B

    .line 78
    :cond_12
    sget-object p1, LbJ;->F:LbJ;

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
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, LbJ;->B:I

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    .line 5
    :cond_0
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, LbJ;->C:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 8
    :cond_1
    iget v1, p0, LbJ;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 9
    iget-object v2, p0, LbJ;->D:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v1, v2}, LxF;->a(ILjava/lang/String;)V

    :cond_2
    const/high16 v1, 0x20000000

    .line 11
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 12
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LaJ;
    .locals 1

    .line 1
    iget v0, p0, LbJ;->B:I

    invoke-static {v0}, LaJ;->a(I)LaJ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LaJ;->x:LaJ;

    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, LbJ;->A:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
