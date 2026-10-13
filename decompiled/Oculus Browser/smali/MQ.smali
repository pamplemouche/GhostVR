.class public final LMQ;
.super LTF;
.source "PG"

# interfaces
.implements LQQ;


# static fields
.field public static final G:LMQ;

.field public static volatile H:LkG;


# instance fields
.field public A:LJQ;

.field public B:LaG;

.field public C:LbG;

.field public D:LbG;

.field public E:LbG;

.field public F:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LMQ;

    invoke-direct {v0}, LMQ;-><init>()V

    sput-object v0, LMQ;->G:LMQ;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LfG;->z:LfG;

    .line 3
    iput-object v0, p0, LMQ;->B:LaG;

    .line 4
    sget-object v0, LlG;->y:LlG;

    .line 5
    iput-object v0, p0, LMQ;->C:LbG;

    .line 6
    iput-object v0, p0, LMQ;->D:LbG;

    .line 7
    iput-object v0, p0, LMQ;->E:LbG;

    .line 8
    iput-object v0, p0, LMQ;->F:LbG;

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
    iget v0, p0, LMQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, LMQ;->A:LJQ;

    if-nez v0, :cond_1

    .line 22
    sget-object v0, LJQ;->B:LJQ;

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
    iget-object v3, p0, LMQ;->B:LaG;

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    .line 26
    iget-object v0, p0, LMQ;->B:LaG;

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 28
    :goto_1
    iget-object v5, p0, LMQ;->C:LbG;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 29
    iget-object v5, p0, LMQ;->C:LbG;

    .line 30
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, LxF;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v4

    .line 31
    iget-object v3, p0, LMQ;->C:LbG;

    .line 32
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 33
    :goto_2
    iget-object v5, p0, LMQ;->D:LbG;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 34
    iget-object v5, p0, LMQ;->D:LbG;

    .line 35
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, LxF;->b(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v3, v4

    .line 36
    iget-object v0, p0, LMQ;->D:LbG;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    move v1, v0

    const/4 v0, 0x0

    .line 38
    :goto_3
    iget-object v3, p0, LMQ;->E:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    const/4 v3, 0x5

    .line 39
    iget-object v4, p0, LMQ;->E:LbG;

    .line 40
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-static {v3, v4}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 41
    :cond_5
    :goto_4
    iget-object v0, p0, LMQ;->F:LbG;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    const/4 v0, 0x6

    .line 42
    iget-object v3, p0, LMQ;->F:LbG;

    .line 43
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v0, v3}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 44
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 45
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 48
    :pswitch_0
    sget-object p1, LMQ;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LMQ;

    monitor-enter p1

    .line 49
    :try_start_0
    sget-object p2, LMQ;->H:LkG;

    if-nez p2, :cond_0

    .line 50
    new-instance p2, LGF;

    sget-object p3, LMQ;->G:LMQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LMQ;->H:LkG;

    .line 51
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 52
    :cond_1
    :goto_0
    sget-object p1, LMQ;->H:LkG;

    return-object p1

    .line 53
    :pswitch_1
    new-instance p1, LLQ;

    invoke-direct {p1, v0}, LLQ;-><init>(LHQ;)V

    return-object p1

    .line 54
    :pswitch_2
    new-instance p1, LMQ;

    invoke-direct {p1}, LMQ;-><init>()V

    return-object p1

    .line 55
    :pswitch_3
    iget-object p1, p0, LMQ;->B:LaG;

    check-cast p1, LhF;

    .line 56
    iput-boolean v1, p1, LhF;->w:Z

    .line 57
    iget-object p1, p0, LMQ;->C:LbG;

    check-cast p1, LhF;

    .line 58
    iput-boolean v1, p1, LhF;->w:Z

    .line 59
    iget-object p1, p0, LMQ;->D:LbG;

    check-cast p1, LhF;

    .line 60
    iput-boolean v1, p1, LhF;->w:Z

    .line 61
    iget-object p1, p0, LMQ;->E:LbG;

    check-cast p1, LhF;

    .line 62
    iput-boolean v1, p1, LhF;->w:Z

    .line 63
    iget-object p1, p0, LMQ;->F:LbG;

    check-cast p1, LhF;

    .line 64
    iput-boolean v1, p1, LhF;->w:Z

    return-object v0

    .line 65
    :pswitch_4
    check-cast p2, LtF;

    .line 66
    check-cast p3, LBF;

    const/4 p1, 0x1

    :cond_2
    :goto_1
    if-nez v1, :cond_15

    .line 67
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v2

    if-eqz v2, :cond_14

    const/16 v3, 0xa

    if-eq v2, v3, :cond_11

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_f

    const/16 v4, 0x22

    if-eq v2, v4, :cond_d

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_b

    const/16 v4, 0x32

    if-eq v2, v4, :cond_9

    const/16 v4, 0x11

    if-eq v2, v4, :cond_6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    .line 68
    invoke-virtual {p0, v2, p2}, LTF;->a(ILtF;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    .line 69
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result v2

    .line 70
    invoke-virtual {p2, v2}, LtF;->b(I)I

    move-result v3

    .line 71
    iget-object v4, p0, LMQ;->B:LaG;

    check-cast v4, LhF;

    .line 72
    iget-boolean v4, v4, LhF;->w:Z

    if-nez v4, :cond_4

    .line 73
    invoke-virtual {p2}, LtF;->a()I

    move-result v4

    if-lez v4, :cond_4

    .line 74
    iget-object v4, p0, LMQ;->B:LaG;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 75
    iget-object v5, p0, LMQ;->B:LaG;

    div-int/lit8 v2, v2, 0x8
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v4, v2

    check-cast v5, LfG;

    :try_start_2
    invoke-virtual {v5, v4}, LfG;->a(I)LaG;

    move-result-object v2

    iput-object v2, p0, LMQ;->B:LaG;

    .line 76
    :cond_4
    :goto_2
    invoke-virtual {p2}, LtF;->a()I

    move-result v2

    if-lez v2, :cond_5

    .line 77
    iget-object v2, p0, LMQ;->B:LaG;

    .line 78
    invoke-virtual {p2}, LtF;->j()J

    move-result-wide v4

    .line 79
    check-cast v2, LfG;

    .line 80
    iget v6, v2, LfG;->y:I

    invoke-virtual {v2, v6, v4, v5}, LfG;->a(IJ)V

    goto :goto_2

    .line 81
    :cond_5
    iput v3, p2, LtF;->j:I

    .line 82
    invoke-virtual {p2}, LtF;->r()V

    goto :goto_1

    .line 83
    :cond_6
    iget-object v2, p0, LMQ;->B:LaG;

    check-cast v2, LhF;

    .line 84
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_8

    .line 85
    iget-object v2, p0, LMQ;->B:LaG;

    .line 86
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    mul-int/lit8 v3, v4, 0x2

    .line 87
    :goto_3
    check-cast v2, LfG;

    invoke-virtual {v2, v3}, LfG;->a(I)LaG;

    move-result-object v2

    .line 88
    iput-object v2, p0, LMQ;->B:LaG;

    .line 89
    :cond_8
    iget-object v2, p0, LMQ;->B:LaG;

    .line 90
    invoke-virtual {p2}, LtF;->j()J

    move-result-wide v3

    .line 91
    check-cast v2, LfG;

    .line 92
    iget v5, v2, LfG;->y:I

    invoke-virtual {v2, v5, v3, v4}, LfG;->a(IJ)V

    goto/16 :goto_1

    .line 93
    :cond_9
    iget-object v2, p0, LMQ;->F:LbG;

    check-cast v2, LhF;

    .line 94
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_a

    .line 95
    iget-object v2, p0, LMQ;->F:LbG;

    .line 96
    invoke-static {v2}, LTF;->a(LbG;)LbG;

    move-result-object v2

    iput-object v2, p0, LMQ;->F:LbG;

    .line 97
    :cond_a
    iget-object v2, p0, LMQ;->F:LbG;

    .line 98
    sget-object v3, LOQ;->E:LOQ;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 99
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LOQ;

    .line 100
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    :cond_b
    iget-object v2, p0, LMQ;->E:LbG;

    check-cast v2, LhF;

    .line 102
    iget-boolean v2, v2, LhF;->w:Z

    if-nez v2, :cond_c

    .line 103
    iget-object v2, p0, LMQ;->E:LbG;

    .line 104
    invoke-static {v2}, LTF;->a(LbG;)LbG;

    move-result-object v2

    iput-object v2, p0, LMQ;->E:LbG;

    .line 105
    :cond_c
    iget-object v2, p0, LMQ;->E:LbG;

    .line 106
    invoke-static {}, LKR;->k()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LKR;

    .line 107
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 108
    :cond_d
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v3, p0, LMQ;->D:LbG;

    check-cast v3, LhF;

    .line 110
    iget-boolean v3, v3, LhF;->w:Z

    if-nez v3, :cond_e

    .line 111
    iget-object v3, p0, LMQ;->D:LbG;

    .line 112
    invoke-static {v3}, LTF;->a(LbG;)LbG;

    move-result-object v3

    iput-object v3, p0, LMQ;->D:LbG;

    .line 113
    :cond_e
    iget-object v3, p0, LMQ;->D:LbG;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 114
    :cond_f
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, LMQ;->C:LbG;

    check-cast v3, LhF;

    .line 116
    iget-boolean v3, v3, LhF;->w:Z

    if-nez v3, :cond_10

    .line 117
    iget-object v3, p0, LMQ;->C:LbG;

    .line 118
    invoke-static {v3}, LTF;->a(LbG;)LbG;

    move-result-object v3

    iput-object v3, p0, LMQ;->C:LbG;

    .line 119
    :cond_10
    iget-object v3, p0, LMQ;->C:LbG;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 120
    :cond_11
    iget v2, p0, LMQ;->z:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_12

    .line 121
    iget-object v2, p0, LMQ;->A:LJQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LIQ;

    goto :goto_4

    :cond_12
    move-object v2, v0

    .line 122
    :goto_4
    sget-object v3, LJQ;->B:LJQ;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 123
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LJQ;

    iput-object v3, p0, LMQ;->A:LJQ;

    if-eqz v2, :cond_13

    .line 124
    invoke-virtual {v2, v3}, LFF;->a(LTF;)LFF;

    .line 125
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LJQ;

    iput-object v2, p0, LMQ;->A:LJQ;

    .line 126
    :cond_13
    iget v2, p0, LMQ;->z:I

    or-int/2addr v2, p1

    iput v2, p0, LMQ;->z:I
    :try_end_2
    .catch LdG; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :cond_14
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 127
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 129
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :goto_6
    throw p1

    .line 131
    :cond_15
    :pswitch_5
    sget-object p1, LMQ;->G:LMQ;

    return-object p1

    .line 132
    :pswitch_6
    check-cast p2, LSF;

    .line 133
    check-cast p3, LMQ;

    .line 134
    iget-object p1, p0, LMQ;->A:LJQ;

    iget-object v0, p3, LMQ;->A:LJQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LJQ;

    iput-object p1, p0, LMQ;->A:LJQ;

    .line 135
    iget-object p1, p0, LMQ;->B:LaG;

    iget-object v0, p3, LMQ;->B:LaG;

    invoke-interface {p2, p1, v0}, LSF;->a(LaG;LaG;)LaG;

    move-result-object p1

    iput-object p1, p0, LMQ;->B:LaG;

    .line 136
    iget-object p1, p0, LMQ;->C:LbG;

    iget-object v0, p3, LMQ;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMQ;->C:LbG;

    .line 137
    iget-object p1, p0, LMQ;->D:LbG;

    iget-object v0, p3, LMQ;->D:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMQ;->D:LbG;

    .line 138
    iget-object p1, p0, LMQ;->E:LbG;

    iget-object v0, p3, LMQ;->E:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMQ;->E:LbG;

    .line 139
    iget-object p1, p0, LMQ;->F:LbG;

    iget-object v0, p3, LMQ;->F:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMQ;->F:LbG;

    .line 140
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_16

    .line 141
    iget p1, p0, LMQ;->z:I

    iget p2, p3, LMQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LMQ;->z:I

    :cond_16
    return-object p0

    .line 142
    :pswitch_7
    sget-object p1, LMQ;->G:LMQ;

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
    .locals 6

    .line 1
    iget v0, p0, LMQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, LMQ;->A:LJQ;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, LJQ;->B:LJQ;

    .line 4
    :cond_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, LMQ;->B:LaG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, LMQ;->B:LaG;

    check-cast v3, LfG;

    .line 7
    invoke-virtual {v3, v1}, LfG;->b(I)V

    .line 8
    iget-object v3, v3, LfG;->x:[J

    aget-wide v4, v3, v1

    .line 9
    invoke-virtual {p1, v2, v4, v5}, LxF;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 10
    :goto_1
    iget-object v2, p0, LMQ;->C:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 11
    iget-object v3, p0, LMQ;->C:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 12
    :goto_2
    iget-object v2, p0, LMQ;->D:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 13
    iget-object v3, p0, LMQ;->D:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 14
    :goto_3
    iget-object v2, p0, LMQ;->E:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 15
    iget-object v3, p0, LMQ;->E:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 16
    :cond_5
    :goto_4
    iget-object v1, p0, LMQ;->F:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    .line 17
    iget-object v2, p0, LMQ;->F:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 18
    :cond_6
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
