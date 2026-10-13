.class public final LFQ;
.super LTF;
.source "PG"

# interfaces
.implements LGQ;


# static fields
.field public static final F:LFQ;

.field public static volatile G:LkG;


# instance fields
.field public A:LjQ;

.field public B:LOP;

.field public C:LDQ;

.field public D:LKR;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LFQ;

    invoke-direct {v0}, LFQ;-><init>()V

    sput-object v0, LFQ;->F:LFQ;

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
    iput-byte v0, p0, LFQ;->E:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 16
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 17
    iget v1, p0, LFQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18
    iget-object v1, p0, LFQ;->A:LjQ;

    if-nez v1, :cond_1

    .line 19
    sget-object v1, LjQ;->D:LjQ;

    .line 20
    :cond_1
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_2
    iget v1, p0, LFQ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/4 v3, 0x4

    if-ne v1, v2, :cond_3

    .line 22
    invoke-virtual {p0}, LFQ;->j()LOP;

    move-result-object v1

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_3
    iget v1, p0, LFQ;->z:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 24
    iget-object v2, p0, LFQ;->C:LDQ;

    if-nez v2, :cond_4

    .line 25
    sget-object v2, LDQ;->B:LDQ;

    .line 26
    :cond_4
    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_5
    iget v1, p0, LFQ;->z:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x6

    .line 28
    iget-object v2, p0, LFQ;->D:LKR;

    if-nez v2, :cond_6

    .line 29
    sget-object v2, LKR;->B:LKR;

    .line 30
    :cond_6
    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_7
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 32
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 35
    :pswitch_0
    sget-object p1, LFQ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LFQ;

    monitor-enter p1

    .line 36
    :try_start_0
    sget-object p2, LFQ;->G:LkG;

    if-nez p2, :cond_0

    .line 37
    new-instance p2, LGF;

    sget-object p3, LFQ;->F:LFQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LFQ;->G:LkG;

    .line 38
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 39
    :cond_1
    :goto_0
    sget-object p1, LFQ;->G:LkG;

    return-object p1

    .line 40
    :pswitch_1
    new-instance p1, LBQ;

    invoke-direct {p1, v3}, LBQ;-><init>(LAQ;)V

    return-object p1

    .line 41
    :pswitch_2
    new-instance p1, LFQ;

    invoke-direct {p1}, LFQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 42
    :pswitch_4
    check-cast p2, LtF;

    .line 43
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_10

    .line 44
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v4, 0xa

    if-eq p1, v4, :cond_c

    const/16 v4, 0x22

    if-eq p1, v4, :cond_9

    const/16 v4, 0x2a

    if-eq p1, v4, :cond_6

    const/16 v4, 0x32

    if-eq p1, v4, :cond_3

    .line 45
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 46
    :cond_3
    iget p1, p0, LFQ;->z:I

    const/16 v4, 0x8

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 47
    iget-object p1, p0, LFQ;->D:LKR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LJR;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 48
    :goto_2
    invoke-static {}, LKR;->k()LkG;

    move-result-object v5

    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LKR;

    iput-object v5, p0, LFQ;->D:LKR;

    if-eqz p1, :cond_5

    .line 49
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 50
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LKR;

    iput-object p1, p0, LFQ;->D:LKR;

    .line 51
    :cond_5
    iget p1, p0, LFQ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LFQ;->z:I

    goto :goto_1

    .line 52
    :cond_6
    iget p1, p0, LFQ;->z:I

    const/4 v4, 0x4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_7

    .line 53
    iget-object p1, p0, LFQ;->C:LDQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LCQ;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 54
    :goto_3
    sget-object v5, LDQ;->B:LDQ;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 55
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LDQ;

    iput-object v5, p0, LFQ;->C:LDQ;

    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 57
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LDQ;

    iput-object p1, p0, LFQ;->C:LDQ;

    .line 58
    :cond_8
    iget p1, p0, LFQ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LFQ;->z:I

    goto/16 :goto_1

    .line 59
    :cond_9
    iget p1, p0, LFQ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_a

    .line 60
    iget-object p1, p0, LFQ;->B:LOP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LNP;

    goto :goto_4

    :cond_a
    move-object p1, v3

    .line 61
    :goto_4
    invoke-static {}, LOP;->m()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LOP;

    iput-object v4, p0, LFQ;->B:LOP;

    if-eqz p1, :cond_b

    .line 62
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 63
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LOP;

    iput-object p1, p0, LFQ;->B:LOP;

    .line 64
    :cond_b
    iget p1, p0, LFQ;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LFQ;->z:I

    goto/16 :goto_1

    .line 65
    :cond_c
    iget p1, p0, LFQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_d

    .line 66
    iget-object p1, p0, LFQ;->A:LjQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiQ;

    goto :goto_5

    :cond_d
    move-object p1, v3

    .line 67
    :goto_5
    invoke-static {}, LjQ;->j()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LjQ;

    iput-object v4, p0, LFQ;->A:LjQ;

    if-eqz p1, :cond_e

    .line 68
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 69
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LFQ;->A:LjQ;

    .line 70
    :cond_e
    iget p1, p0, LFQ;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LFQ;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 71
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 72
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 73
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :goto_7
    throw p1

    .line 75
    :cond_10
    :pswitch_5
    sget-object p1, LFQ;->F:LFQ;

    return-object p1

    .line 76
    :pswitch_6
    check-cast p2, LSF;

    .line 77
    check-cast p3, LFQ;

    .line 78
    iget-object p1, p0, LFQ;->A:LjQ;

    iget-object v0, p3, LFQ;->A:LjQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LFQ;->A:LjQ;

    .line 79
    iget-object p1, p0, LFQ;->B:LOP;

    iget-object v0, p3, LFQ;->B:LOP;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LOP;

    iput-object p1, p0, LFQ;->B:LOP;

    .line 80
    iget-object p1, p0, LFQ;->C:LDQ;

    iget-object v0, p3, LFQ;->C:LDQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LDQ;

    iput-object p1, p0, LFQ;->C:LDQ;

    .line 81
    iget-object p1, p0, LFQ;->D:LKR;

    iget-object v0, p3, LFQ;->D:LKR;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LKR;

    iput-object p1, p0, LFQ;->D:LKR;

    .line 82
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_11

    .line 83
    iget p1, p0, LFQ;->z:I

    iget p2, p3, LFQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LFQ;->z:I

    :cond_11
    return-object p0

    .line 84
    :pswitch_7
    iget-byte p1, p0, LFQ;->E:B

    if-ne p1, v1, :cond_12

    .line 85
    sget-object p1, LFQ;->F:LFQ;

    return-object p1

    :cond_12
    if-nez p1, :cond_13

    return-object v3

    .line 86
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 87
    iget p2, p0, LFQ;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_14

    const/4 p2, 0x1

    goto :goto_8

    :cond_14
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_16

    .line 88
    invoke-virtual {p0}, LFQ;->j()LOP;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_16

    if-eqz p1, :cond_15

    .line 89
    iput-byte v0, p0, LFQ;->E:B

    :cond_15
    return-object v3

    :cond_16
    if-eqz p1, :cond_17

    .line 90
    iput-byte v1, p0, LFQ;->E:B

    .line 91
    :cond_17
    sget-object p1, LFQ;->F:LFQ;

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
    iget v0, p0, LFQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LFQ;->A:LjQ;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LjQ;->D:LjQ;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LFQ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, LFQ;->j()LOP;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget v0, p0, LFQ;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    .line 8
    iget-object v1, p0, LFQ;->C:LDQ;

    if-nez v1, :cond_3

    .line 9
    sget-object v1, LDQ;->B:LDQ;

    .line 10
    :cond_3
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 11
    :cond_4
    iget v0, p0, LFQ;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    .line 12
    iget-object v1, p0, LFQ;->D:LKR;

    if-nez v1, :cond_5

    .line 13
    sget-object v1, LKR;->B:LKR;

    .line 14
    :cond_5
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 15
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LOP;
    .locals 1

    .line 1
    iget-object v0, p0, LFQ;->B:LOP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOP;->B:LOP;

    :cond_0
    return-object v0
.end method
