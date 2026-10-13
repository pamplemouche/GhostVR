.class public final LbQ;
.super LTF;
.source "PG"

# interfaces
.implements LcQ;


# static fields
.field public static final G:LbQ;

.field public static volatile H:LkG;


# instance fields
.field public A:I

.field public B:LVR;

.field public C:I

.field public D:LVR;

.field public E:Ljava/lang/String;

.field public F:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LbQ;

    invoke-direct {v0}, LbQ;-><init>()V

    sput-object v0, LbQ;->G:LbQ;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, LbQ;->E:Ljava/lang/String;

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LbQ;->F:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 21
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22
    :cond_0
    iget v0, p0, LbQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 23
    iget v0, p0, LbQ;->A:I

    .line 24
    invoke-static {v1, v0}, LxF;->e(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget v1, p0, LbQ;->z:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 26
    iget-object v1, p0, LbQ;->B:LVR;

    if-nez v1, :cond_2

    .line 27
    sget-object v1, LVR;->H:LVR;

    .line 28
    :cond_2
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_3
    iget v1, p0, LbQ;->z:I

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    .line 30
    iget v4, p0, LbQ;->C:I

    .line 31
    invoke-static {v1, v4}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_4
    iget v1, p0, LbQ;->z:I

    const/16 v4, 0x8

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_6

    .line 33
    iget-object v1, p0, LbQ;->D:LVR;

    if-nez v1, :cond_5

    .line 34
    sget-object v1, LVR;->H:LVR;

    .line 35
    :cond_5
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_6
    iget v1, p0, LbQ;->z:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/4 v1, 0x5

    .line 37
    iget-object v3, p0, LbQ;->E:Ljava/lang/String;

    .line 38
    invoke-static {v1, v3}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_7
    :goto_1
    iget-object v1, p0, LbQ;->F:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    const/4 v1, 0x6

    .line 40
    iget-object v3, p0, LbQ;->F:LbG;

    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_8
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 43
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 46
    :pswitch_0
    sget-object p1, LbQ;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LbQ;

    monitor-enter p1

    .line 47
    :try_start_0
    sget-object p2, LbQ;->H:LkG;

    if-nez p2, :cond_0

    .line 48
    new-instance p2, LGF;

    sget-object p3, LbQ;->G:LbQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LbQ;->H:LkG;

    .line 49
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 50
    :cond_1
    :goto_0
    sget-object p1, LbQ;->H:LkG;

    return-object p1

    .line 51
    :pswitch_1
    new-instance p1, LZP;

    invoke-direct {p1, v4}, LZP;-><init>(LXP;)V

    return-object p1

    .line 52
    :pswitch_2
    new-instance p1, LbQ;

    invoke-direct {p1}, LbQ;-><init>()V

    return-object p1

    .line 53
    :pswitch_3
    iget-object p1, p0, LbQ;->F:LbG;

    check-cast p1, LhF;

    .line 54
    iput-boolean v0, p1, LhF;->w:Z

    return-object v4

    .line 55
    :pswitch_4
    check-cast p2, LtF;

    .line 56
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_11

    .line 57
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_10

    const/16 v5, 0x8

    if-eq p1, v5, :cond_e

    const/16 v6, 0x12

    if-eq p1, v6, :cond_b

    const/16 v6, 0x18

    if-eq p1, v6, :cond_9

    const/16 v6, 0x22

    if-eq p1, v6, :cond_6

    const/16 v5, 0x2a

    if-eq p1, v5, :cond_5

    const/16 v5, 0x32

    if-eq p1, v5, :cond_3

    .line 58
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 59
    :cond_3
    iget-object p1, p0, LbQ;->F:LbG;

    check-cast p1, LhF;

    .line 60
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 61
    iget-object p1, p0, LbQ;->F:LbG;

    .line 62
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LbQ;->F:LbG;

    .line 63
    :cond_4
    iget-object p1, p0, LbQ;->F:LbG;

    .line 64
    sget-object v5, LtQ;->D:LtQ;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 65
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LtQ;

    .line 66
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget v5, p0, LbQ;->z:I

    or-int/2addr v5, v2

    iput v5, p0, LbQ;->z:I

    .line 69
    iput-object p1, p0, LbQ;->E:Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_6
    iget p1, p0, LbQ;->z:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_7

    .line 71
    iget-object p1, p0, LbQ;->D:LVR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LUR;

    goto :goto_2

    :cond_7
    move-object p1, v4

    .line 72
    :goto_2
    sget-object v6, LVR;->H:LVR;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 73
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LVR;

    iput-object v6, p0, LbQ;->D:LVR;

    if-eqz p1, :cond_8

    .line 74
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 75
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LVR;

    iput-object p1, p0, LbQ;->D:LVR;

    .line 76
    :cond_8
    iget p1, p0, LbQ;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LbQ;->z:I

    goto/16 :goto_1

    .line 77
    :cond_9
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 78
    invoke-static {p1}, LYP;->a(I)LYP;

    move-result-object v5

    if-nez v5, :cond_a

    const/4 v5, 0x3

    .line 79
    invoke-super {p0, v5, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 80
    :cond_a
    iget v5, p0, LbQ;->z:I

    or-int/2addr v5, v3

    iput v5, p0, LbQ;->z:I

    .line 81
    iput p1, p0, LbQ;->C:I

    goto/16 :goto_1

    .line 82
    :cond_b
    iget p1, p0, LbQ;->z:I

    const/4 v5, 0x2

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_c

    .line 83
    iget-object p1, p0, LbQ;->B:LVR;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LUR;

    goto :goto_3

    :cond_c
    move-object p1, v4

    .line 84
    :goto_3
    sget-object v6, LVR;->H:LVR;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 85
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LVR;

    iput-object v6, p0, LbQ;->B:LVR;

    if-eqz p1, :cond_d

    .line 86
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 87
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LVR;

    iput-object p1, p0, LbQ;->B:LVR;

    .line 88
    :cond_d
    iget p1, p0, LbQ;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LbQ;->z:I

    goto/16 :goto_1

    .line 89
    :cond_e
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 90
    invoke-static {p1}, LaQ;->a(I)LaQ;

    move-result-object v5

    if-nez v5, :cond_f

    .line 91
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 92
    :cond_f
    iget v5, p0, LbQ;->z:I

    or-int/2addr v5, v1

    iput v5, p0, LbQ;->z:I

    .line 93
    iput p1, p0, LbQ;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_10
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 94
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    :goto_5
    throw p1

    .line 98
    :cond_11
    :pswitch_5
    sget-object p1, LbQ;->G:LbQ;

    return-object p1

    .line 99
    :pswitch_6
    check-cast p2, LSF;

    .line 100
    check-cast p3, LbQ;

    .line 101
    iget p1, p0, LbQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_12

    const/4 p1, 0x1

    goto :goto_6

    :cond_12
    const/4 p1, 0x0

    .line 102
    :goto_6
    iget v4, p0, LbQ;->A:I

    .line 103
    iget v5, p3, LbQ;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_13

    const/4 v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    .line 104
    :goto_7
    iget v6, p3, LbQ;->A:I

    .line 105
    invoke-interface {p2, p1, v4, v5, v6}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbQ;->A:I

    .line 106
    iget-object p1, p0, LbQ;->B:LVR;

    iget-object v4, p3, LbQ;->B:LVR;

    invoke-interface {p2, p1, v4}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LVR;

    iput-object p1, p0, LbQ;->B:LVR;

    .line 107
    iget p1, p0, LbQ;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_14

    const/4 p1, 0x1

    goto :goto_8

    :cond_14
    const/4 p1, 0x0

    .line 108
    :goto_8
    iget v4, p0, LbQ;->C:I

    .line 109
    iget v5, p3, LbQ;->z:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_15

    const/4 v3, 0x1

    goto :goto_9

    :cond_15
    const/4 v3, 0x0

    .line 110
    :goto_9
    iget v5, p3, LbQ;->C:I

    .line 111
    invoke-interface {p2, p1, v4, v3, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LbQ;->C:I

    .line 112
    iget-object p1, p0, LbQ;->D:LVR;

    iget-object v3, p3, LbQ;->D:LVR;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LVR;

    iput-object p1, p0, LbQ;->D:LVR;

    .line 113
    iget p1, p0, LbQ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_16

    const/4 p1, 0x1

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    .line 114
    :goto_a
    iget-object v3, p0, LbQ;->E:Ljava/lang/String;

    .line 115
    iget v4, p3, LbQ;->z:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_17

    const/4 v0, 0x1

    .line 116
    :cond_17
    iget-object v1, p3, LbQ;->E:Ljava/lang/String;

    .line 117
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LbQ;->E:Ljava/lang/String;

    .line 118
    iget-object p1, p0, LbQ;->F:LbG;

    iget-object v0, p3, LbQ;->F:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LbQ;->F:LbG;

    .line 119
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_18

    .line 120
    iget p1, p0, LbQ;->z:I

    iget p2, p3, LbQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LbQ;->z:I

    :cond_18
    return-object p0

    .line 121
    :pswitch_7
    sget-object p1, LbQ;->G:LbQ;

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
    iget v0, p0, LbQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LbQ;->A:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, LbQ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, LbQ;->B:LVR;

    if-nez v0, :cond_1

    .line 6
    sget-object v0, LVR;->H:LVR;

    .line 7
    :cond_1
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget v0, p0, LbQ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 9
    iget v2, p0, LbQ;->C:I

    .line 10
    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 11
    :cond_3
    iget v0, p0, LbQ;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    .line 12
    iget-object v0, p0, LbQ;->D:LVR;

    if-nez v0, :cond_4

    .line 13
    sget-object v0, LVR;->H:LVR;

    .line 14
    :cond_4
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 15
    :cond_5
    iget v0, p0, LbQ;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x5

    .line 16
    iget-object v1, p0, LbQ;->E:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v0, v1}, LxF;->a(ILjava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, LbQ;->F:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/4 v1, 0x6

    .line 19
    iget-object v2, p0, LbQ;->F:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
