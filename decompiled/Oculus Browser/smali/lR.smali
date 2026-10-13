.class public final LlR;
.super LTF;
.source "PG"

# interfaces
.implements LpR;


# static fields
.field public static final E:LlR;

.field public static volatile F:LkG;

.field public static final G:LOF;


# instance fields
.field public A:LbG;

.field public B:LnR;

.field public C:LXF;

.field public D:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LlR;

    invoke-direct {v0}, LlR;-><init>()V

    sput-object v0, LlR;->E:LlR;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    .line 3
    sget-object v1, LGR;->D:LGR;

    .line 4
    sget-object v3, LlR;->E:LlR;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LlR;

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LlR;->G:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LlR;->D:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LlR;->A:LbG;

    .line 5
    sget-object v0, LUF;->z:LUF;

    .line 6
    iput-object v0, p0, LlR;->C:LXF;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 9
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, LlR;->A:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 11
    iget-object v3, p0, LlR;->A:LbG;

    .line 12
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v4, v3}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget v1, p0, LlR;->z:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    const/4 v1, 0x2

    .line 14
    invoke-virtual {p0}, LlR;->j()LnR;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v2, v1

    :cond_2
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v3, p0, LlR;->C:LXF;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 16
    iget-object v3, p0, LlR;->C:LXF;

    .line 17
    check-cast v3, LUF;

    invoke-virtual {v3, v0}, LUF;->c(I)I

    move-result v3

    .line 18
    invoke-static {v3}, LxF;->d(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v2, v1

    .line 19
    iget-object v0, p0, LlR;->C:LXF;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 20
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 21
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 22
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24
    :pswitch_0
    sget-object p1, LlR;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LlR;

    monitor-enter p1

    .line 25
    :try_start_0
    sget-object p2, LlR;->F:LkG;

    if-nez p2, :cond_0

    .line 26
    new-instance p2, LGF;

    sget-object p3, LlR;->E:LlR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LlR;->F:LkG;

    .line 27
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 28
    :cond_1
    :goto_0
    sget-object p1, LlR;->F:LkG;

    return-object p1

    .line 29
    :pswitch_1
    new-instance p1, LkR;

    invoke-direct {p1, v2}, LkR;-><init>(LjR;)V

    return-object p1

    .line 30
    :pswitch_2
    new-instance p1, LlR;

    invoke-direct {p1}, LlR;-><init>()V

    return-object p1

    .line 31
    :pswitch_3
    iget-object p1, p0, LlR;->A:LbG;

    check-cast p1, LhF;

    .line 32
    iput-boolean v0, p1, LhF;->w:Z

    .line 33
    iget-object p1, p0, LlR;->C:LXF;

    check-cast p1, LhF;

    .line 34
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 35
    :pswitch_4
    check-cast p2, LtF;

    .line 36
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_10

    .line 37
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v3, 0xa

    if-eq p1, v3, :cond_d

    const/16 v3, 0x12

    if-eq p1, v3, :cond_a

    const/16 v3, 0x18

    const/4 v4, 0x3

    if-eq p1, v3, :cond_7

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_3

    .line 38
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 39
    :cond_3
    iget-object p1, p0, LlR;->C:LXF;

    check-cast p1, LhF;

    .line 40
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 41
    iget-object p1, p0, LlR;->C:LXF;

    .line 42
    invoke-static {p1}, LTF;->a(LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LlR;->C:LXF;

    .line 43
    :cond_4
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 44
    invoke-virtual {p2, p1}, LtF;->b(I)I

    move-result p1

    .line 45
    :goto_2
    invoke-virtual {p2}, LtF;->a()I

    move-result v3

    if-lez v3, :cond_6

    .line 46
    invoke-virtual {p2}, LtF;->k()I

    move-result v3

    .line 47
    invoke-static {v3}, LWP;->a(I)LWP;

    move-result-object v5

    if-nez v5, :cond_5

    .line 48
    invoke-super {p0, v4, v3}, LTF;->a(II)V

    goto :goto_2

    .line 49
    :cond_5
    iget-object v5, p0, LlR;->C:LXF;

    check-cast v5, LUF;

    .line 50
    iget v6, v5, LUF;->y:I

    invoke-virtual {v5, v6, v3}, LUF;->a(II)V

    goto :goto_2

    .line 51
    :cond_6
    iput p1, p2, LtF;->j:I

    .line 52
    invoke-virtual {p2}, LtF;->r()V

    goto :goto_1

    .line 53
    :cond_7
    iget-object p1, p0, LlR;->C:LXF;

    check-cast p1, LhF;

    .line 54
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_8

    .line 55
    iget-object p1, p0, LlR;->C:LXF;

    .line 56
    invoke-static {p1}, LTF;->a(LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LlR;->C:LXF;

    .line 57
    :cond_8
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 58
    invoke-static {p1}, LWP;->a(I)LWP;

    move-result-object v3

    if-nez v3, :cond_9

    .line 59
    invoke-super {p0, v4, p1}, LTF;->a(II)V

    goto :goto_1

    .line 60
    :cond_9
    iget-object v3, p0, LlR;->C:LXF;

    check-cast v3, LUF;

    .line 61
    iget v4, v3, LUF;->y:I

    invoke-virtual {v3, v4, p1}, LUF;->a(II)V

    goto/16 :goto_1

    .line 62
    :cond_a
    iget p1, p0, LlR;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_b

    .line 63
    iget-object p1, p0, LlR;->B:LnR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LmR;

    goto :goto_3

    :cond_b
    move-object p1, v2

    .line 64
    :goto_3
    sget-object v3, LnR;->B:LnR;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 65
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LnR;

    iput-object v3, p0, LlR;->B:LnR;

    if-eqz p1, :cond_c

    .line 66
    invoke-virtual {p1, v3}, LFF;->a(LTF;)LFF;

    .line 67
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LnR;

    iput-object p1, p0, LlR;->B:LnR;

    .line 68
    :cond_c
    iget p1, p0, LlR;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LlR;->z:I

    goto/16 :goto_1

    .line 69
    :cond_d
    iget-object p1, p0, LlR;->A:LbG;

    check-cast p1, LhF;

    .line 70
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_e

    .line 71
    iget-object p1, p0, LlR;->A:LbG;

    .line 72
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LlR;->A:LbG;

    .line 73
    :cond_e
    iget-object p1, p0, LlR;->A:LbG;

    .line 74
    invoke-static {}, LpQ;->m()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LpQ;

    .line 75
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 76
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 77
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    :goto_5
    throw p1

    .line 80
    :cond_10
    :pswitch_5
    sget-object p1, LlR;->E:LlR;

    return-object p1

    .line 81
    :pswitch_6
    check-cast p2, LSF;

    .line 82
    check-cast p3, LlR;

    .line 83
    iget-object p1, p0, LlR;->A:LbG;

    iget-object v0, p3, LlR;->A:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LlR;->A:LbG;

    .line 84
    iget-object p1, p0, LlR;->B:LnR;

    iget-object v0, p3, LlR;->B:LnR;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LnR;

    iput-object p1, p0, LlR;->B:LnR;

    .line 85
    iget-object p1, p0, LlR;->C:LXF;

    iget-object v0, p3, LlR;->C:LXF;

    invoke-interface {p2, p1, v0}, LSF;->a(LXF;LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LlR;->C:LXF;

    .line 86
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_11

    .line 87
    iget p1, p0, LlR;->z:I

    iget p2, p3, LlR;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LlR;->z:I

    :cond_11
    return-object p0

    .line 88
    :pswitch_7
    iget-byte p1, p0, LlR;->D:B

    if-ne p1, v1, :cond_12

    .line 89
    sget-object p1, LlR;->E:LlR;

    return-object p1

    :cond_12
    if-nez p1, :cond_13

    return-object v2

    .line 90
    :cond_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 91
    :goto_6
    iget-object p3, p0, LlR;->A:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_16

    .line 92
    iget-object p3, p0, LlR;->A:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LpQ;

    .line 93
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_15

    if-eqz p1, :cond_14

    .line 94
    iput-byte v0, p0, LlR;->D:B

    :cond_14
    return-object v2

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_16
    if-eqz p1, :cond_17

    .line 95
    iput-byte v1, p0, LlR;->D:B

    .line 96
    :cond_17
    sget-object p1, LlR;->E:LlR;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LlR;->A:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, LlR;->A:LbG;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v3, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, LlR;->z:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0}, LlR;->j()LnR;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    :goto_1
    iget-object v1, p0, LlR;->C:LXF;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 6
    iget-object v2, p0, LlR;->C:LXF;

    check-cast v2, LUF;

    invoke-virtual {v2, v0}, LUF;->c(I)I

    move-result v2

    .line 7
    invoke-virtual {p1, v1, v2}, LxF;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LnR;
    .locals 1

    .line 1
    iget-object v0, p0, LlR;->B:LnR;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LnR;->B:LnR;

    :cond_0
    return-object v0
.end method
