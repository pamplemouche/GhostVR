.class public final Lfq0;
.super LTF;
.source "PG"

# interfaces
.implements Lgq0;


# static fields
.field public static final G:Lfq0;

.field public static volatile H:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:J

.field public D:Lcq0;

.field public E:F

.field public F:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfq0;

    invoke-direct {v0}, Lfq0;-><init>()V

    sput-object v0, Lfq0;->G:Lfq0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LlG;->y:LlG;

    .line 3
    iput-object v0, p0, Lfq0;->F:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 18
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 19
    :cond_0
    iget v0, p0, Lfq0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 20
    iget v0, p0, Lfq0;->A:I

    .line 21
    invoke-static {v1, v0}, LxF;->e(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget v1, p0, Lfq0;->z:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    .line 23
    iget v1, p0, Lfq0;->B:I

    .line 24
    invoke-static {v3, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_2
    iget v1, p0, Lfq0;->z:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 26
    iget-wide v3, p0, Lfq0;->C:J

    .line 27
    invoke-static {v1, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_3
    iget v1, p0, Lfq0;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x5

    .line 29
    iget-object v3, p0, Lfq0;->D:Lcq0;

    if-nez v3, :cond_4

    .line 30
    sget-object v3, Lcq0;->C:Lcq0;

    .line 31
    :cond_4
    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_5
    iget v1, p0, Lfq0;->z:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x7

    .line 33
    iget v3, p0, Lfq0;->E:F

    .line 34
    invoke-static {v1, v3}, LxF;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_6
    :goto_1
    iget-object v1, p0, Lfq0;->F:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    const/16 v1, 0x17

    .line 36
    iget-object v3, p0, Lfq0;->F:LbG;

    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 38
    :cond_7
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 39
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x2

    packed-switch p1, :pswitch_data_0

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 42
    :pswitch_0
    sget-object p1, Lfq0;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, Lfq0;

    monitor-enter p1

    .line 43
    :try_start_0
    sget-object p2, Lfq0;->H:LkG;

    if-nez p2, :cond_0

    .line 44
    new-instance p2, LGF;

    sget-object p3, Lfq0;->G:Lfq0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, Lfq0;->H:LkG;

    .line 45
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 46
    :cond_1
    :goto_0
    sget-object p1, Lfq0;->H:LkG;

    return-object p1

    .line 47
    :pswitch_1
    new-instance p1, Leq0;

    invoke-direct {p1, v3}, Leq0;-><init>(Laq0;)V

    return-object p1

    .line 48
    :pswitch_2
    new-instance p1, Lfq0;

    invoke-direct {p1}, Lfq0;-><init>()V

    return-object p1

    .line 49
    :pswitch_3
    iget-object p1, p0, Lfq0;->F:LbG;

    check-cast p1, LhF;

    .line 50
    iput-boolean v0, p1, LhF;->w:Z

    return-object v3

    .line 51
    :pswitch_4
    check-cast p2, LtF;

    .line 52
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_f

    .line 53
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 v6, 0x8

    if-eq p1, v6, :cond_c

    if-eq p1, v4, :cond_a

    const/16 v7, 0x18

    if-eq p1, v7, :cond_9

    const/16 v7, 0x2a

    if-eq p1, v7, :cond_6

    const/16 v6, 0x3d

    if-eq p1, v6, :cond_5

    const/16 v6, 0xba

    if-eq p1, v6, :cond_3

    .line 54
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 55
    :cond_3
    iget-object p1, p0, Lfq0;->F:LbG;

    check-cast p1, LhF;

    .line 56
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 57
    iget-object p1, p0, Lfq0;->F:LbG;

    .line 58
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, Lfq0;->F:LbG;

    .line 59
    :cond_4
    iget-object p1, p0, Lfq0;->F:LbG;

    .line 60
    sget-object v6, Lsq0;->E:Lsq0;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 61
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, Lsq0;

    .line 62
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_5
    iget p1, p0, Lfq0;->z:I

    or-int/2addr p1, v4

    iput p1, p0, Lfq0;->z:I

    .line 64
    invoke-virtual {p2}, LtF;->g()F

    move-result p1

    iput p1, p0, Lfq0;->E:F

    goto :goto_1

    .line 65
    :cond_6
    iget p1, p0, Lfq0;->z:I

    and-int/2addr p1, v6

    if-ne p1, v6, :cond_7

    .line 66
    iget-object p1, p0, Lfq0;->D:Lcq0;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, Lbq0;

    goto :goto_2

    :cond_7
    move-object p1, v3

    .line 67
    :goto_2
    sget-object v7, Lcq0;->C:Lcq0;

    invoke-virtual {v7}, LTF;->g()LkG;

    move-result-object v7

    .line 68
    invoke-virtual {p2, v7, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v7

    check-cast v7, Lcq0;

    iput-object v7, p0, Lfq0;->D:Lcq0;

    if-eqz p1, :cond_8

    .line 69
    invoke-virtual {p1, v7}, LFF;->a(LTF;)LFF;

    .line 70
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, Lcq0;

    iput-object p1, p0, Lfq0;->D:Lcq0;

    .line 71
    :cond_8
    iget p1, p0, Lfq0;->z:I

    or-int/2addr p1, v6

    iput p1, p0, Lfq0;->z:I

    goto/16 :goto_1

    .line 72
    :cond_9
    iget p1, p0, Lfq0;->z:I

    or-int/2addr p1, v2

    iput p1, p0, Lfq0;->z:I

    .line 73
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v6

    .line 74
    iput-wide v6, p0, Lfq0;->C:J

    goto/16 :goto_1

    .line 75
    :cond_a
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 76
    invoke-static {p1}, Lhq0;->a(I)Lhq0;

    move-result-object v6

    if-nez v6, :cond_b

    .line 77
    invoke-super {p0, v5, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 78
    :cond_b
    iget v6, p0, Lfq0;->z:I

    or-int/2addr v6, v5

    iput v6, p0, Lfq0;->z:I

    .line 79
    iput p1, p0, Lfq0;->B:I

    goto/16 :goto_1

    .line 80
    :cond_c
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 81
    invoke-static {p1}, Liq0;->a(I)Liq0;

    move-result-object v6

    if-nez v6, :cond_d

    .line 82
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 83
    :cond_d
    iget v6, p0, Lfq0;->z:I

    or-int/2addr v6, v1

    iput v6, p0, Lfq0;->z:I

    .line 84
    iput p1, p0, Lfq0;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 85
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    :goto_4
    throw p1

    .line 89
    :cond_f
    :pswitch_5
    sget-object p1, Lfq0;->G:Lfq0;

    return-object p1

    .line 90
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 91
    check-cast p3, Lfq0;

    .line 92
    iget p2, p0, Lfq0;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_10

    const/4 p2, 0x1

    goto :goto_5

    :cond_10
    const/4 p2, 0x0

    .line 93
    :goto_5
    iget v3, p0, Lfq0;->A:I

    .line 94
    iget v6, p3, Lfq0;->z:I

    and-int/2addr v6, v1

    if-ne v6, v1, :cond_11

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    const/4 v6, 0x0

    .line 95
    :goto_6
    iget v7, p3, Lfq0;->A:I

    .line 96
    invoke-interface {p1, p2, v3, v6, v7}, LSF;->a(ZIZI)I

    move-result p2

    iput p2, p0, Lfq0;->A:I

    .line 97
    iget p2, p0, Lfq0;->z:I

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_12

    const/4 p2, 0x1

    goto :goto_7

    :cond_12
    const/4 p2, 0x0

    .line 98
    :goto_7
    iget v3, p0, Lfq0;->B:I

    .line 99
    iget v6, p3, Lfq0;->z:I

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_13

    const/4 v5, 0x1

    goto :goto_8

    :cond_13
    const/4 v5, 0x0

    .line 100
    :goto_8
    iget v6, p3, Lfq0;->B:I

    .line 101
    invoke-interface {p1, p2, v3, v5, v6}, LSF;->a(ZIZI)I

    move-result p2

    iput p2, p0, Lfq0;->B:I

    .line 102
    iget p2, p0, Lfq0;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_14

    const/4 v6, 0x1

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    .line 103
    :goto_9
    iget-wide v7, p0, Lfq0;->C:J

    .line 104
    iget p2, p3, Lfq0;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_15

    const/4 v9, 0x1

    goto :goto_a

    :cond_15
    const/4 v9, 0x0

    .line 105
    :goto_a
    iget-wide v10, p3, Lfq0;->C:J

    move-object v5, p1

    .line 106
    invoke-interface/range {v5 .. v11}, LSF;->a(ZJZJ)J

    move-result-wide v2

    iput-wide v2, p0, Lfq0;->C:J

    .line 107
    iget-object p2, p0, Lfq0;->D:Lcq0;

    iget-object v2, p3, Lfq0;->D:Lcq0;

    invoke-interface {p1, p2, v2}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p2

    check-cast p2, Lcq0;

    iput-object p2, p0, Lfq0;->D:Lcq0;

    .line 108
    iget p2, p0, Lfq0;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_16

    const/4 p2, 0x1

    goto :goto_b

    :cond_16
    const/4 p2, 0x0

    .line 109
    :goto_b
    iget v2, p0, Lfq0;->E:F

    .line 110
    iget v3, p3, Lfq0;->z:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_17

    const/4 v0, 0x1

    .line 111
    :cond_17
    iget v1, p3, Lfq0;->E:F

    .line 112
    invoke-interface {p1, p2, v2, v0, v1}, LSF;->a(ZFZF)F

    move-result p2

    iput p2, p0, Lfq0;->E:F

    .line 113
    iget-object p2, p0, Lfq0;->F:LbG;

    iget-object v0, p3, Lfq0;->F:LbG;

    invoke-interface {p1, p2, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p2

    iput-object p2, p0, Lfq0;->F:LbG;

    .line 114
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_18

    .line 115
    iget p1, p0, Lfq0;->z:I

    iget p2, p3, Lfq0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, Lfq0;->z:I

    :cond_18
    return-object p0

    .line 116
    :pswitch_7
    sget-object p1, Lfq0;->G:Lfq0;

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
    iget v0, p0, Lfq0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lfq0;->A:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, Lfq0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget v0, p0, Lfq0;->B:I

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 7
    :cond_1
    iget v0, p0, Lfq0;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 8
    iget-wide v1, p0, Lfq0;->C:J

    invoke-virtual {p1, v0, v1, v2}, LxF;->b(IJ)V

    .line 9
    :cond_2
    iget v0, p0, Lfq0;->z:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lfq0;->D:Lcq0;

    if-nez v1, :cond_3

    .line 11
    sget-object v1, Lcq0;->C:Lcq0;

    .line 12
    :cond_3
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 13
    :cond_4
    iget v0, p0, Lfq0;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x7

    .line 14
    iget v1, p0, Lfq0;->E:F

    invoke-virtual {p1, v0, v1}, LxF;->a(IF)V

    :cond_5
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lfq0;->F:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/16 v1, 0x17

    .line 16
    iget-object v2, p0, Lfq0;->F:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
