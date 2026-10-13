.class public final LhJ;
.super LTF;
.source "PG"

# interfaces
.implements LiJ;


# static fields
.field public static final F:LhJ;

.field public static volatile G:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:J

.field public D:LOP;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LhJ;

    invoke-direct {v0}, LhJ;-><init>()V

    sput-object v0, LhJ;->F:LhJ;

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
    iput-byte v0, p0, LhJ;->E:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LhJ;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 11
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 12
    iget v1, p0, LhJ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 13
    iget-object v1, p0, LhJ;->A:Ljava/lang/String;

    .line 14
    invoke-static {v3, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_1
    iget v1, p0, LhJ;->z:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    .line 16
    iget v2, p0, LhJ;->B:I

    .line 17
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_2
    iget v1, p0, LhJ;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 19
    iget-wide v3, p0, LhJ;->C:J

    .line 20
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget v1, p0, LhJ;->z:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x6

    .line 22
    invoke-virtual {p0}, LhJ;->j()LOP;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 24
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 25
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 27
    :pswitch_0
    sget-object p1, LhJ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LhJ;

    monitor-enter p1

    .line 28
    :try_start_0
    sget-object p2, LhJ;->G:LkG;

    if-nez p2, :cond_0

    .line 29
    new-instance p2, LGF;

    sget-object p3, LhJ;->F:LhJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LhJ;->G:LkG;

    .line 30
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 31
    :cond_1
    :goto_0
    sget-object p1, LhJ;->G:LkG;

    return-object p1

    .line 32
    :pswitch_1
    new-instance p1, LgJ;

    invoke-direct {p1, v5}, LgJ;-><init>(LrI;)V

    return-object p1

    .line 33
    :pswitch_2
    new-instance p1, LhJ;

    invoke-direct {p1}, LhJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v5

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_a

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v6, 0x12

    if-eq p1, v6, :cond_8

    const/16 v6, 0x18

    if-eq p1, v6, :cond_7

    const/16 v6, 0x20

    if-eq p1, v6, :cond_6

    const/16 v6, 0x32

    if-eq p1, v6, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 38
    :cond_3
    iget p1, p0, LhJ;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 39
    iget-object p1, p0, LhJ;->D:LOP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LNP;

    goto :goto_2

    :cond_4
    move-object p1, v5

    .line 40
    :goto_2
    invoke-static {}, LOP;->m()LkG;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LOP;

    iput-object v6, p0, LhJ;->D:LOP;

    if-eqz p1, :cond_5

    .line 41
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 42
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LOP;

    iput-object p1, p0, LhJ;->D:LOP;

    .line 43
    :cond_5
    iget p1, p0, LhJ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LhJ;->z:I

    goto :goto_1

    .line 44
    :cond_6
    iget p1, p0, LhJ;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LhJ;->z:I

    .line 45
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v6

    .line 46
    iput-wide v6, p0, LhJ;->C:J

    goto :goto_1

    .line 47
    :cond_7
    iget p1, p0, LhJ;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LhJ;->z:I

    .line 48
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 49
    iput p1, p0, LhJ;->B:I

    goto :goto_1

    .line 50
    :cond_8
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 51
    iget v6, p0, LhJ;->z:I

    or-int/2addr v6, v1

    iput v6, p0, LhJ;->z:I

    .line 52
    iput-object p1, p0, LhJ;->A:Ljava/lang/String;
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

    .line 53
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 54
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    :goto_4
    throw p1

    .line 57
    :cond_a
    :pswitch_5
    sget-object p1, LhJ;->F:LhJ;

    return-object p1

    .line 58
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 59
    check-cast p3, LhJ;

    .line 60
    iget p2, p0, LhJ;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    goto :goto_5

    :cond_b
    const/4 p2, 0x0

    .line 61
    :goto_5
    iget-object v4, p0, LhJ;->A:Ljava/lang/String;

    .line 62
    iget v5, p3, LhJ;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    .line 63
    :goto_6
    iget-object v6, p3, LhJ;->A:Ljava/lang/String;

    .line 64
    invoke-interface {p1, p2, v4, v5, v6}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LhJ;->A:Ljava/lang/String;

    .line 65
    iget p2, p0, LhJ;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_d

    const/4 p2, 0x1

    goto :goto_7

    :cond_d
    const/4 p2, 0x0

    .line 66
    :goto_7
    iget v4, p0, LhJ;->B:I

    .line 67
    iget v5, p3, LhJ;->z:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 68
    :goto_8
    iget v5, p3, LhJ;->B:I

    .line 69
    invoke-interface {p1, p2, v4, v3, v5}, LSF;->a(ZIZI)I

    move-result p2

    iput p2, p0, LhJ;->B:I

    .line 70
    iget p2, p0, LhJ;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_f

    const/4 p2, 0x1

    goto :goto_9

    :cond_f
    const/4 p2, 0x0

    .line 71
    :goto_9
    iget-wide v3, p0, LhJ;->C:J

    .line 72
    iget v5, p3, LhJ;->z:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    const/4 v5, 0x0

    .line 73
    :goto_a
    iget-wide v6, p3, LhJ;->C:J

    move-object v0, p1

    move v1, p2

    move-wide v2, v3

    move v4, v5

    move-wide v5, v6

    .line 74
    invoke-interface/range {v0 .. v6}, LSF;->a(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, LhJ;->C:J

    .line 75
    iget-object p2, p0, LhJ;->D:LOP;

    iget-object v0, p3, LhJ;->D:LOP;

    invoke-interface {p1, p2, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p2

    check-cast p2, LOP;

    iput-object p2, p0, LhJ;->D:LOP;

    .line 76
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_11

    .line 77
    iget p1, p0, LhJ;->z:I

    iget p2, p3, LhJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LhJ;->z:I

    :cond_11
    return-object p0

    .line 78
    :pswitch_7
    iget-byte p1, p0, LhJ;->E:B

    if-ne p1, v1, :cond_12

    .line 79
    sget-object p1, LhJ;->F:LhJ;

    return-object p1

    :cond_12
    if-nez p1, :cond_13

    return-object v5

    .line 80
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 81
    iget p2, p0, LhJ;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_14

    const/4 p2, 0x1

    goto :goto_b

    :cond_14
    const/4 p2, 0x0

    :goto_b
    if-eqz p2, :cond_16

    .line 82
    invoke-virtual {p0}, LhJ;->j()LOP;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    .line 83
    iput-byte v0, p0, LhJ;->E:B

    :cond_15
    return-object v5

    :cond_16
    if-eqz p1, :cond_17

    .line 84
    iput-byte v1, p0, LhJ;->E:B

    .line 85
    :cond_17
    sget-object p1, LhJ;->F:LhJ;

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
    .locals 4

    .line 1
    iget v0, p0, LhJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LhJ;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LhJ;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    .line 5
    iget v1, p0, LhJ;->B:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 6
    :cond_1
    iget v0, p0, LhJ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 7
    iget-wide v2, p0, LhJ;->C:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 8
    :cond_2
    iget v0, p0, LhJ;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    .line 9
    invoke-virtual {p0}, LhJ;->j()LOP;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LOP;
    .locals 1

    .line 1
    iget-object v0, p0, LhJ;->D:LOP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOP;->B:LOP;

    :cond_0
    return-object v0
.end method
