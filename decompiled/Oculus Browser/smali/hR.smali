.class public final LhR;
.super LTF;
.source "PG"

# interfaces
.implements LiR;


# static fields
.field public static final F:LYF;

.field public static final G:LhR;

.field public static volatile H:LkG;

.field public static final I:LOF;


# instance fields
.field public A:LbQ;

.field public B:LcR;

.field public C:LbG;

.field public D:LXF;

.field public E:LfQ;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LfR;

    invoke-direct {v0}, LfR;-><init>()V

    sput-object v0, LhR;->F:LYF;

    .line 2
    new-instance v0, LhR;

    invoke-direct {v0}, LhR;-><init>()V

    sput-object v0, LhR;->G:LhR;

    .line 3
    invoke-virtual {v0}, LTF;->i()V

    .line 4
    sget-object v1, LBR;->D:LBR;

    .line 5
    sget-object v3, LhR;->G:LhR;

    .line 6
    sget-object v6, LJG;->I:LJG;

    const-class v7, LhR;

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    move-object v2, v3

    .line 7
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LhR;->I:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LlG;->y:LlG;

    .line 3
    iput-object v0, p0, LhR;->C:LbG;

    .line 4
    sget-object v0, LUF;->z:LUF;

    .line 5
    iput-object v0, p0, LhR;->D:LXF;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 6

    .line 19
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 20
    :cond_0
    iget v0, p0, LhR;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, LhR;->A:LbQ;

    if-nez v0, :cond_1

    .line 22
    sget-object v0, LbQ;->G:LbQ;

    .line 23
    :cond_1
    invoke-static {v1, v0}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget v3, p0, LhR;->z:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 25
    iget-object v3, p0, LhR;->B:LcR;

    if-nez v3, :cond_3

    .line 26
    sget-object v3, LcR;->C:LcR;

    .line 27
    :cond_3
    invoke-static {v4, v3}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    move v3, v0

    const/4 v0, 0x0

    .line 28
    :goto_1
    iget-object v4, p0, LhR;->C:LbG;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    const/4 v4, 0x3

    .line 29
    iget-object v5, p0, LhR;->C:LbG;

    .line 30
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LhG;

    invoke-static {v4, v5}, LxF;->b(ILhG;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 31
    :goto_2
    iget-object v4, p0, LhR;->D:LXF;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 32
    iget-object v4, p0, LhR;->D:LXF;

    .line 33
    check-cast v4, LUF;

    invoke-virtual {v4, v2}, LUF;->c(I)I

    move-result v4

    .line 34
    invoke-static {v4}, LxF;->d(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v3, v0

    .line 35
    iget-object v0, p0, LhR;->D:LXF;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    .line 36
    iget v1, p0, LhR;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x5

    .line 37
    iget-object v2, p0, LhR;->E:LfQ;

    if-nez v2, :cond_7

    .line 38
    sget-object v2, LfQ;->B:LfQ;

    .line 39
    :cond_7
    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_8
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 41
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 44
    :pswitch_0
    sget-object p1, LhR;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LhR;

    monitor-enter p1

    .line 45
    :try_start_0
    sget-object p2, LhR;->H:LkG;

    if-nez p2, :cond_0

    .line 46
    new-instance p2, LGF;

    sget-object p3, LhR;->G:LhR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LhR;->H:LkG;

    .line 47
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 48
    :cond_1
    :goto_0
    sget-object p1, LhR;->H:LkG;

    return-object p1

    .line 49
    :pswitch_1
    new-instance p1, LgR;

    invoke-direct {p1, v1}, LgR;-><init>(LeR;)V

    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, LhR;

    invoke-direct {p1}, LhR;-><init>()V

    return-object p1

    .line 51
    :pswitch_3
    iget-object p1, p0, LhR;->C:LbG;

    check-cast p1, LhF;

    .line 52
    iput-boolean v0, p1, LhF;->w:Z

    .line 53
    iget-object p1, p0, LhR;->D:LXF;

    check-cast p1, LhF;

    .line 54
    iput-boolean v0, p1, LhF;->w:Z

    return-object v1

    .line 55
    :pswitch_4
    check-cast p2, LtF;

    .line 56
    check-cast p3, LBF;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_16

    .line 57
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v2

    if-eqz v2, :cond_15

    const/16 v3, 0xa

    if-eq v2, v3, :cond_12

    const/16 v3, 0x12

    if-eq v2, v3, :cond_f

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_d

    const/16 v3, 0x20

    const/4 v4, 0x4

    if-eq v2, v3, :cond_a

    const/16 v3, 0x22

    if-eq v2, v3, :cond_6

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    .line 58
    invoke-virtual {p0, v2, p2}, LTF;->a(ILtF;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_6

    .line 59
    :cond_3
    iget v2, p0, LhR;->z:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 60
    iget-object v2, p0, LhR;->E:LfQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LeQ;

    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 61
    :goto_2
    invoke-static {}, LfQ;->j()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LfQ;

    iput-object v3, p0, LhR;->E:LfQ;

    if-eqz v2, :cond_5

    .line 62
    invoke-virtual {v2, v3}, LFF;->a(LTF;)LFF;

    .line 63
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LfQ;

    iput-object v2, p0, LhR;->E:LfQ;

    .line 64
    :cond_5
    iget v2, p0, LhR;->z:I

    or-int/2addr v2, v4

    iput v2, p0, LhR;->z:I

    goto :goto_1

    .line 65
    :cond_6
    iget-object v2, p0, LhR;->D:LXF;

    check-cast v2, LhF;

    .line 66
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_7

    .line 67
    iget-object v2, p0, LhR;->D:LXF;

    .line 68
    invoke-static {v2}, LTF;->a(LXF;)LXF;

    move-result-object v2

    iput-object v2, p0, LhR;->D:LXF;

    .line 69
    :cond_7
    invoke-virtual {p2}, LtF;->k()I

    move-result v2

    .line 70
    invoke-virtual {p2, v2}, LtF;->b(I)I

    move-result v2

    .line 71
    :goto_3
    invoke-virtual {p2}, LtF;->a()I

    move-result v3

    if-lez v3, :cond_9

    .line 72
    invoke-virtual {p2}, LtF;->k()I

    move-result v3

    .line 73
    invoke-static {v3}, LWP;->a(I)LWP;

    move-result-object v5

    if-nez v5, :cond_8

    .line 74
    invoke-super {p0, v4, v3}, LTF;->a(II)V

    goto :goto_3

    .line 75
    :cond_8
    iget-object v5, p0, LhR;->D:LXF;

    check-cast v5, LUF;

    .line 76
    iget v6, v5, LUF;->y:I

    invoke-virtual {v5, v6, v3}, LUF;->a(II)V

    goto :goto_3

    .line 77
    :cond_9
    iput v2, p2, LtF;->j:I

    .line 78
    invoke-virtual {p2}, LtF;->r()V

    goto/16 :goto_1

    .line 79
    :cond_a
    iget-object v2, p0, LhR;->D:LXF;

    check-cast v2, LhF;

    .line 80
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_b

    .line 81
    iget-object v2, p0, LhR;->D:LXF;

    .line 82
    invoke-static {v2}, LTF;->a(LXF;)LXF;

    move-result-object v2

    iput-object v2, p0, LhR;->D:LXF;

    .line 83
    :cond_b
    invoke-virtual {p2}, LtF;->k()I

    move-result v2

    .line 84
    invoke-static {v2}, LWP;->a(I)LWP;

    move-result-object v3

    if-nez v3, :cond_c

    .line 85
    invoke-super {p0, v4, v2}, LTF;->a(II)V

    goto/16 :goto_1

    .line 86
    :cond_c
    iget-object v3, p0, LhR;->D:LXF;

    check-cast v3, LUF;

    .line 87
    iget v4, v3, LUF;->y:I

    invoke-virtual {v3, v4, v2}, LUF;->a(II)V

    goto/16 :goto_1

    .line 88
    :cond_d
    iget-object v2, p0, LhR;->C:LbG;

    check-cast v2, LhF;

    .line 89
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_e

    .line 90
    iget-object v2, p0, LhR;->C:LbG;

    .line 91
    invoke-static {v2}, LTF;->a(LbG;)LbG;

    move-result-object v2

    iput-object v2, p0, LhR;->C:LbG;

    .line 92
    :cond_e
    iget-object v2, p0, LhR;->C:LbG;

    .line 93
    sget-object v3, LMQ;->G:LMQ;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 94
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LMQ;

    .line 95
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 96
    :cond_f
    iget v2, p0, LhR;->z:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_10

    .line 97
    iget-object v2, p0, LhR;->B:LcR;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LaR;

    goto :goto_4

    :cond_10
    move-object v2, v1

    .line 98
    :goto_4
    sget-object v4, LcR;->C:LcR;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 99
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LcR;

    iput-object v4, p0, LhR;->B:LcR;

    if-eqz v2, :cond_11

    .line 100
    invoke-virtual {v2, v4}, LFF;->a(LTF;)LFF;

    .line 101
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LcR;

    iput-object v2, p0, LhR;->B:LcR;

    .line 102
    :cond_11
    iget v2, p0, LhR;->z:I

    or-int/2addr v2, v3

    iput v2, p0, LhR;->z:I

    goto/16 :goto_1

    .line 103
    :cond_12
    iget v2, p0, LhR;->z:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_13

    .line 104
    iget-object v2, p0, LhR;->A:LbQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LZP;

    goto :goto_5

    :cond_13
    move-object v2, v1

    .line 105
    :goto_5
    sget-object v3, LbQ;->G:LbQ;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 106
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LbQ;

    iput-object v3, p0, LhR;->A:LbQ;

    if-eqz v2, :cond_14

    .line 107
    invoke-virtual {v2, v3}, LFF;->a(LTF;)LFF;

    .line 108
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LbQ;

    iput-object v2, p0, LhR;->A:LbQ;

    .line 109
    :cond_14
    iget v2, p0, LhR;->z:I

    or-int/2addr v2, p1

    iput v2, p0, LhR;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_15
    :goto_6
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 110
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 112
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :goto_7
    throw p1

    .line 114
    :cond_16
    :pswitch_5
    sget-object p1, LhR;->G:LhR;

    return-object p1

    .line 115
    :pswitch_6
    check-cast p2, LSF;

    .line 116
    check-cast p3, LhR;

    .line 117
    iget-object p1, p0, LhR;->A:LbQ;

    iget-object v0, p3, LhR;->A:LbQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LbQ;

    iput-object p1, p0, LhR;->A:LbQ;

    .line 118
    iget-object p1, p0, LhR;->B:LcR;

    iget-object v0, p3, LhR;->B:LcR;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LcR;

    iput-object p1, p0, LhR;->B:LcR;

    .line 119
    iget-object p1, p0, LhR;->C:LbG;

    iget-object v0, p3, LhR;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LhR;->C:LbG;

    .line 120
    iget-object p1, p0, LhR;->D:LXF;

    iget-object v0, p3, LhR;->D:LXF;

    invoke-interface {p2, p1, v0}, LSF;->a(LXF;LXF;)LXF;

    move-result-object p1

    iput-object p1, p0, LhR;->D:LXF;

    .line 121
    iget-object p1, p0, LhR;->E:LfQ;

    iget-object v0, p3, LhR;->E:LfQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LfQ;

    iput-object p1, p0, LhR;->E:LfQ;

    .line 122
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_17

    .line 123
    iget p1, p0, LhR;->z:I

    iget p2, p3, LhR;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LhR;->z:I

    :cond_17
    return-object p0

    .line 124
    :pswitch_7
    sget-object p1, LhR;->G:LhR;

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
    .locals 4

    .line 1
    iget v0, p0, LhR;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LhR;->A:LbQ;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LbQ;->G:LbQ;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget v0, p0, LhR;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 6
    iget-object v0, p0, LhR;->B:LcR;

    if-nez v0, :cond_2

    .line 7
    sget-object v0, LcR;->C:LcR;

    .line 8
    :cond_2
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, LhR;->C:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x3

    .line 10
    iget-object v3, p0, LhR;->C:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_1
    iget-object v1, p0, LhR;->D:LXF;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_5

    .line 12
    iget-object v1, p0, LhR;->D:LXF;

    check-cast v1, LUF;

    invoke-virtual {v1, v0}, LUF;->c(I)I

    move-result v1

    .line 13
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_5
    iget v0, p0, LhR;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_7

    const/4 v0, 0x5

    .line 15
    iget-object v1, p0, LhR;->E:LfQ;

    if-nez v1, :cond_6

    .line 16
    sget-object v1, LfQ;->B:LfQ;

    .line 17
    :cond_6
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 18
    :cond_7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
