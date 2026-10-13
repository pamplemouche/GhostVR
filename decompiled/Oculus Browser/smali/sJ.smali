.class public final LsJ;
.super LTF;
.source "PG"

# interfaces
.implements LtJ;


# static fields
.field public static final F:LsJ;

.field public static volatile G:LkG;


# instance fields
.field public A:LjQ;

.field public B:LbG;

.field public C:LWJ;

.field public D:LOP;

.field public E:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LsJ;

    invoke-direct {v0}, LsJ;-><init>()V

    sput-object v0, LsJ;->F:LsJ;

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
    iput-byte v0, p0, LsJ;->E:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LsJ;->B:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 14
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 15
    :cond_0
    iget v0, p0, LsJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 16
    iget-object v0, p0, LsJ;->A:LjQ;

    if-nez v0, :cond_1

    .line 17
    sget-object v0, LjQ;->D:LjQ;

    .line 18
    :cond_1
    invoke-static {v1, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, LsJ;->B:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_3

    .line 20
    iget-object v1, p0, LsJ;->B:LbG;

    .line 21
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_3
    iget v1, p0, LsJ;->z:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x3

    .line 23
    iget-object v2, p0, LsJ;->C:LWJ;

    if-nez v2, :cond_4

    .line 24
    sget-object v2, LWJ;->C:LWJ;

    .line 25
    :cond_4
    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_5
    iget v1, p0, LsJ;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 27
    invoke-virtual {p0}, LsJ;->j()LOP;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_6
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 29
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 32
    :pswitch_0
    sget-object p1, LsJ;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LsJ;

    monitor-enter p1

    .line 33
    :try_start_0
    sget-object p2, LsJ;->G:LkG;

    if-nez p2, :cond_0

    .line 34
    new-instance p2, LGF;

    sget-object p3, LsJ;->F:LsJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LsJ;->G:LkG;

    .line 35
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 36
    :cond_1
    :goto_0
    sget-object p1, LsJ;->G:LkG;

    return-object p1

    .line 37
    :pswitch_1
    new-instance p1, LrJ;

    invoke-direct {p1, v3}, LrJ;-><init>(LqJ;)V

    return-object p1

    .line 38
    :pswitch_2
    new-instance p1, LsJ;

    invoke-direct {p1}, LsJ;-><init>()V

    return-object p1

    .line 39
    :pswitch_3
    iget-object p1, p0, LsJ;->B:LbG;

    check-cast p1, LhF;

    .line 40
    iput-boolean v0, p1, LhF;->w:Z

    return-object v3

    .line 41
    :pswitch_4
    check-cast p2, LtF;

    .line 42
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_f

    .line 43
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 v4, 0xa

    if-eq p1, v4, :cond_b

    const/16 v4, 0x12

    if-eq p1, v4, :cond_9

    const/16 v4, 0x1a

    if-eq p1, v4, :cond_6

    const/16 v4, 0x22

    if-eq p1, v4, :cond_3

    .line 44
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 45
    :cond_3
    iget p1, p0, LsJ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_4

    .line 46
    iget-object p1, p0, LsJ;->D:LOP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LNP;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 47
    :goto_2
    invoke-static {}, LOP;->m()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LOP;

    iput-object v4, p0, LsJ;->D:LOP;

    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 49
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LOP;

    iput-object p1, p0, LsJ;->D:LOP;

    .line 50
    :cond_5
    iget p1, p0, LsJ;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LsJ;->z:I

    goto :goto_1

    .line 51
    :cond_6
    iget p1, p0, LsJ;->z:I

    const/4 v4, 0x2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_7

    .line 52
    iget-object p1, p0, LsJ;->C:LWJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LVJ;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 53
    :goto_3
    sget-object v5, LWJ;->C:LWJ;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 54
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LWJ;

    iput-object v5, p0, LsJ;->C:LWJ;

    if-eqz p1, :cond_8

    .line 55
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 56
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LWJ;

    iput-object p1, p0, LsJ;->C:LWJ;

    .line 57
    :cond_8
    iget p1, p0, LsJ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LsJ;->z:I

    goto :goto_1

    .line 58
    :cond_9
    iget-object p1, p0, LsJ;->B:LbG;

    check-cast p1, LhF;

    .line 59
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_a

    .line 60
    iget-object p1, p0, LsJ;->B:LbG;

    .line 61
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsJ;->B:LbG;

    .line 62
    :cond_a
    iget-object p1, p0, LsJ;->B:LbG;

    .line 63
    invoke-static {}, LpQ;->m()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LpQ;

    .line 64
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 65
    :cond_b
    iget p1, p0, LsJ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_c

    .line 66
    iget-object p1, p0, LsJ;->A:LjQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LiQ;

    goto :goto_4

    :cond_c
    move-object p1, v3

    .line 67
    :goto_4
    invoke-static {}, LjQ;->j()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LjQ;

    iput-object v4, p0, LsJ;->A:LjQ;

    if-eqz p1, :cond_d

    .line 68
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 69
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LsJ;->A:LjQ;

    .line 70
    :cond_d
    iget p1, p0, LsJ;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LsJ;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

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
    :goto_6
    throw p1

    .line 75
    :cond_f
    :pswitch_5
    sget-object p1, LsJ;->F:LsJ;

    return-object p1

    .line 76
    :pswitch_6
    check-cast p2, LSF;

    .line 77
    check-cast p3, LsJ;

    .line 78
    iget-object p1, p0, LsJ;->A:LjQ;

    iget-object v0, p3, LsJ;->A:LjQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LsJ;->A:LjQ;

    .line 79
    iget-object p1, p0, LsJ;->B:LbG;

    iget-object v0, p3, LsJ;->B:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsJ;->B:LbG;

    .line 80
    iget-object p1, p0, LsJ;->C:LWJ;

    iget-object v0, p3, LsJ;->C:LWJ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LWJ;

    iput-object p1, p0, LsJ;->C:LWJ;

    .line 81
    iget-object p1, p0, LsJ;->D:LOP;

    iget-object v0, p3, LsJ;->D:LOP;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LOP;

    iput-object p1, p0, LsJ;->D:LOP;

    .line 82
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_10

    .line 83
    iget p1, p0, LsJ;->z:I

    iget p2, p3, LsJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LsJ;->z:I

    :cond_10
    return-object p0

    .line 84
    :pswitch_7
    iget-byte p1, p0, LsJ;->E:B

    if-ne p1, v1, :cond_11

    .line 85
    sget-object p1, LsJ;->F:LsJ;

    return-object p1

    :cond_11
    if-nez p1, :cond_12

    return-object v3

    .line 86
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 87
    :goto_7
    iget-object p3, p0, LsJ;->B:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_15

    .line 88
    iget-object p3, p0, LsJ;->B:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LpQ;

    .line 89
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_14

    if-eqz p1, :cond_13

    .line 90
    iput-byte v0, p0, LsJ;->E:B

    :cond_13
    return-object v3

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 91
    :cond_15
    iget p2, p0, LsJ;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_16

    const/4 p2, 0x1

    goto :goto_8

    :cond_16
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_18

    .line 92
    invoke-virtual {p0}, LsJ;->j()LOP;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_18

    if-eqz p1, :cond_17

    .line 93
    iput-byte v0, p0, LsJ;->E:B

    :cond_17
    return-object v3

    :cond_18
    if-eqz p1, :cond_19

    .line 94
    iput-byte v1, p0, LsJ;->E:B

    .line 95
    :cond_19
    sget-object p1, LsJ;->F:LsJ;

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
    iget v0, p0, LsJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LsJ;->A:LjQ;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LjQ;->D:LjQ;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, LsJ;->B:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_2

    .line 6
    iget-object v1, p0, LsJ;->B:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget v0, p0, LsJ;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    .line 8
    iget-object v1, p0, LsJ;->C:LWJ;

    if-nez v1, :cond_3

    .line 9
    sget-object v1, LWJ;->C:LWJ;

    .line 10
    :cond_3
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 11
    :cond_4
    iget v0, p0, LsJ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 12
    invoke-virtual {p0}, LsJ;->j()LOP;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 13
    :cond_5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LOP;
    .locals 1

    .line 1
    iget-object v0, p0, LsJ;->D:LOP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LOP;->B:LOP;

    :cond_0
    return-object v0
.end method
