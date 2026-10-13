.class public final LzN;
.super LLF;
.source "PG"

# interfaces
.implements LAN;


# static fields
.field public static final J:LzN;

.field public static volatile K:LkG;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/String;

.field public E:LvN;

.field public F:LtO;

.field public G:LBL;

.field public H:LbG;

.field public I:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LzN;

    invoke-direct {v0}, LzN;-><init>()V

    sput-object v0, LzN;->J:LzN;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LzN;->B:I

    const/4 v0, -0x1

    .line 3
    iput-byte v0, p0, LzN;->I:B

    const-string v0, ""

    .line 4
    iput-object v0, p0, LzN;->D:Ljava/lang/String;

    .line 5
    sget-object v0, LlG;->y:LlG;

    .line 6
    iput-object v0, p0, LzN;->H:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 20
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 21
    :cond_0
    iget v0, p0, LzN;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 22
    iget-object v0, p0, LzN;->D:Ljava/lang/String;

    .line 23
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 24
    :goto_0
    iget v1, p0, LzN;->B:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    if-ne v1, v3, :cond_2

    .line 25
    iget-object v1, p0, LzN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 26
    :goto_1
    invoke-static {v3, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget v1, p0, LzN;->B:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 28
    iget-object v1, p0, LzN;->C:Ljava/lang/Object;

    check-cast v1, LsN;

    .line 29
    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_4
    iget v1, p0, LzN;->A:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0}, LzN;->m()LtO;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_5
    iget v1, p0, LzN;->A:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x6

    .line 33
    invoke-virtual {p0}, LzN;->n()LBL;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_6
    :goto_2
    iget-object v1, p0, LzN;->H:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x8

    if-ge v2, v1, :cond_7

    .line 35
    iget-object v1, p0, LzN;->H:LbG;

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 37
    :cond_7
    iget v1, p0, LzN;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    const/16 v1, 0xb

    .line 38
    invoke-virtual {p0}, LzN;->o()LvN;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_8
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 40
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 41
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 44
    :pswitch_0
    sget-object p1, LzN;->K:LkG;

    if-nez p1, :cond_1

    const-class p1, LzN;

    monitor-enter p1

    .line 45
    :try_start_0
    sget-object p2, LzN;->K:LkG;

    if-nez p2, :cond_0

    .line 46
    new-instance p2, LGF;

    sget-object p3, LzN;->J:LzN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LzN;->K:LkG;

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
    sget-object p1, LzN;->K:LkG;

    return-object p1

    .line 49
    :pswitch_1
    new-instance p1, LxN;

    invoke-direct {p1, v7}, LxN;-><init>(LjN;)V

    return-object p1

    .line 50
    :pswitch_2
    new-instance p1, LzN;

    invoke-direct {p1}, LzN;-><init>()V

    return-object p1

    .line 51
    :pswitch_3
    iget-object p1, p0, LzN;->H:LbG;

    check-cast p1, LhF;

    .line 52
    iput-boolean v1, p1, LhF;->w:Z

    return-object v7

    .line 53
    :pswitch_4
    check-cast p2, LtF;

    .line 54
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_14

    .line 55
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_13

    const/16 v8, 0xa

    if-eq p1, v8, :cond_12

    const/16 v8, 0x12

    if-eq p1, v8, :cond_11

    const/16 v8, 0x1a

    if-eq p1, v8, :cond_e

    const/16 v8, 0x22

    if-eq p1, v8, :cond_b

    const/16 v8, 0x32

    if-eq p1, v8, :cond_8

    const/16 v8, 0x42

    if-eq p1, v8, :cond_6

    const/16 v8, 0x5a

    if-eq p1, v8, :cond_3

    .line 56
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v8

    check-cast v8, LzN;

    invoke-virtual {p0, v8, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 57
    :cond_3
    iget p1, p0, LzN;->A:I

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_4

    .line 58
    iget-object p1, p0, LzN;->E:LvN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LuN;

    goto :goto_2

    :cond_4
    move-object p1, v7

    .line 59
    :goto_2
    sget-object v8, LvN;->C:LvN;

    invoke-virtual {v8}, LTF;->g()LkG;

    move-result-object v8

    .line 60
    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LvN;

    iput-object v8, p0, LzN;->E:LvN;

    if-eqz p1, :cond_5

    .line 61
    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 62
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LvN;

    iput-object p1, p0, LzN;->E:LvN;

    .line 63
    :cond_5
    iget p1, p0, LzN;->A:I

    or-int/2addr p1, v5

    iput p1, p0, LzN;->A:I

    goto :goto_1

    .line 64
    :cond_6
    iget-object p1, p0, LzN;->H:LbG;

    check-cast p1, LhF;

    .line 65
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_7

    .line 66
    iget-object p1, p0, LzN;->H:LbG;

    .line 67
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LzN;->H:LbG;

    .line 68
    :cond_7
    iget-object p1, p0, LzN;->H:LbG;

    .line 69
    invoke-static {}, LdN;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LdN;

    .line 70
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 71
    :cond_8
    iget p1, p0, LzN;->A:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_9

    .line 72
    iget-object p1, p0, LzN;->G:LBL;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LyL;

    goto :goto_3

    :cond_9
    move-object p1, v7

    .line 73
    :goto_3
    invoke-static {}, LBL;->N()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LBL;

    iput-object v8, p0, LzN;->G:LBL;

    if-eqz p1, :cond_a

    .line 74
    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 75
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LBL;

    iput-object p1, p0, LzN;->G:LBL;

    .line 76
    :cond_a
    iget p1, p0, LzN;->A:I

    or-int/2addr p1, v3

    iput p1, p0, LzN;->A:I

    goto/16 :goto_1

    .line 77
    :cond_b
    iget p1, p0, LzN;->A:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_c

    .line 78
    iget-object p1, p0, LzN;->F:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_4

    :cond_c
    move-object p1, v7

    .line 79
    :goto_4
    invoke-static {}, LtO;->m()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    check-cast v8, LtO;

    iput-object v8, p0, LzN;->F:LtO;

    if-eqz p1, :cond_d

    .line 80
    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 81
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LzN;->F:LtO;

    .line 82
    :cond_d
    iget p1, p0, LzN;->A:I

    or-int/2addr p1, v4

    iput p1, p0, LzN;->A:I

    goto/16 :goto_1

    .line 83
    :cond_e
    iget p1, p0, LzN;->B:I

    if-ne p1, v6, :cond_f

    .line 84
    iget-object p1, p0, LzN;->C:Ljava/lang/Object;

    check-cast p1, LsN;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LrN;

    goto :goto_5

    :cond_f
    move-object p1, v7

    .line 85
    :goto_5
    invoke-static {}, LsN;->j()LkG;

    move-result-object v8

    invoke-virtual {p2, v8, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v8

    iput-object v8, p0, LzN;->C:Ljava/lang/Object;

    if-eqz p1, :cond_10

    .line 86
    check-cast v8, LsN;

    invoke-virtual {p1, v8}, LFF;->a(LTF;)LFF;

    .line 87
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LzN;->C:Ljava/lang/Object;

    .line 88
    :cond_10
    iput v6, p0, LzN;->B:I

    goto/16 :goto_1

    .line 89
    :cond_11
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 90
    iput v2, p0, LzN;->B:I

    .line 91
    iput-object p1, p0, LzN;->C:Ljava/lang/Object;

    goto/16 :goto_1

    .line 92
    :cond_12
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget v8, p0, LzN;->A:I

    or-int/2addr v8, v0

    iput v8, p0, LzN;->A:I

    .line 94
    iput-object p1, p0, LzN;->D:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_13
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 95
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 96
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 97
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    :goto_7
    throw p1

    .line 99
    :cond_14
    :pswitch_5
    sget-object p1, LzN;->J:LzN;

    return-object p1

    .line 100
    :pswitch_6
    check-cast p2, LSF;

    .line 101
    check-cast p3, LzN;

    .line 102
    iget p1, p0, LzN;->A:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_8

    :cond_15
    const/4 p1, 0x0

    .line 103
    :goto_8
    iget-object v3, p0, LzN;->D:Ljava/lang/String;

    .line 104
    iget v4, p3, LzN;->A:I

    and-int/2addr v4, v0

    if-ne v4, v0, :cond_16

    const/4 v4, 0x1

    goto :goto_9

    :cond_16
    const/4 v4, 0x0

    .line 105
    :goto_9
    iget-object v5, p3, LzN;->D:Ljava/lang/String;

    .line 106
    invoke-interface {p2, p1, v3, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LzN;->D:Ljava/lang/String;

    .line 107
    iget-object p1, p0, LzN;->E:LvN;

    iget-object v3, p3, LzN;->E:LvN;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LvN;

    iput-object p1, p0, LzN;->E:LvN;

    .line 108
    iget-object p1, p0, LzN;->F:LtO;

    iget-object v3, p3, LzN;->F:LtO;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LzN;->F:LtO;

    .line 109
    iget-object p1, p0, LzN;->G:LBL;

    iget-object v3, p3, LzN;->G:LBL;

    invoke-interface {p2, p1, v3}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LBL;

    iput-object p1, p0, LzN;->G:LBL;

    .line 110
    iget-object p1, p0, LzN;->H:LbG;

    iget-object v3, p3, LzN;->H:LbG;

    invoke-interface {p2, p1, v3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LzN;->H:LbG;

    .line 111
    iget p1, p3, LzN;->B:I

    invoke-static {p1}, LyN;->a(I)LyN;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1b

    if-eq p1, v0, :cond_19

    if-eq p1, v2, :cond_17

    goto :goto_d

    .line 113
    :cond_17
    iget p1, p0, LzN;->B:I

    if-eqz p1, :cond_18

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_d

    .line 114
    :cond_19
    iget p1, p0, LzN;->B:I

    if-ne p1, v6, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    :goto_b
    iget-object p1, p0, LzN;->C:Ljava/lang/Object;

    iget-object v1, p3, LzN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzN;->C:Ljava/lang/Object;

    goto :goto_d

    .line 115
    :cond_1b
    iget p1, p0, LzN;->B:I

    if-ne p1, v2, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    iget-object p1, p0, LzN;->C:Ljava/lang/Object;

    iget-object v1, p3, LzN;->C:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LzN;->C:Ljava/lang/Object;

    .line 116
    :goto_d
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_1e

    .line 117
    iget p1, p3, LzN;->B:I

    if-eqz p1, :cond_1d

    .line 118
    iput p1, p0, LzN;->B:I

    .line 119
    :cond_1d
    iget p1, p0, LzN;->A:I

    iget p2, p3, LzN;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LzN;->A:I

    :cond_1e
    return-object p0

    .line 120
    :pswitch_7
    iget-byte p1, p0, LzN;->I:B

    if-ne p1, v0, :cond_1f

    .line 121
    sget-object p1, LzN;->J:LzN;

    return-object p1

    :cond_1f
    if-nez p1, :cond_20

    return-object v7

    .line 122
    :cond_20
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 123
    iget p2, p0, LzN;->B:I

    if-ne p2, v6, :cond_21

    const/4 p2, 0x1

    goto :goto_e

    :cond_21
    const/4 p2, 0x0

    :goto_e
    if-eqz p2, :cond_24

    .line 124
    iget p2, p0, LzN;->B:I

    if-ne p2, v6, :cond_22

    .line 125
    iget-object p2, p0, LzN;->C:Ljava/lang/Object;

    check-cast p2, LsN;

    goto :goto_f

    .line 126
    :cond_22
    sget-object p2, LsN;->E:LsN;

    .line 127
    :goto_f
    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_24

    if-eqz p1, :cond_23

    .line 128
    iput-byte v1, p0, LzN;->I:B

    :cond_23
    return-object v7

    .line 129
    :cond_24
    iget p2, p0, LzN;->A:I

    and-int/2addr p2, v5

    if-ne p2, v5, :cond_25

    const/4 p2, 0x1

    goto :goto_10

    :cond_25
    const/4 p2, 0x0

    :goto_10
    if-eqz p2, :cond_27

    .line 130
    invoke-virtual {p0}, LzN;->o()LvN;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_27

    if-eqz p1, :cond_26

    .line 131
    iput-byte v1, p0, LzN;->I:B

    :cond_26
    return-object v7

    .line 132
    :cond_27
    iget p2, p0, LzN;->A:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_28

    const/4 p2, 0x1

    goto :goto_11

    :cond_28
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_2a

    .line 133
    invoke-virtual {p0}, LzN;->m()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2a

    if-eqz p1, :cond_29

    .line 134
    iput-byte v1, p0, LzN;->I:B

    :cond_29
    return-object v7

    .line 135
    :cond_2a
    iget p2, p0, LzN;->A:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_2b

    const/4 p2, 0x1

    goto :goto_12

    :cond_2b
    const/4 p2, 0x0

    :goto_12
    if-eqz p2, :cond_2d

    .line 136
    invoke-virtual {p0}, LzN;->n()LBL;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_2d

    if-eqz p1, :cond_2c

    .line 137
    iput-byte v1, p0, LzN;->I:B

    :cond_2c
    return-object v7

    .line 138
    :cond_2d
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_2f

    if-eqz p1, :cond_2e

    .line 139
    iput-byte v1, p0, LzN;->I:B

    :cond_2e
    return-object v7

    :cond_2f
    if-eqz p1, :cond_30

    .line 140
    iput-byte v0, p0, LzN;->I:B

    .line 141
    :cond_30
    sget-object p1, LzN;->J:LzN;

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
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LzN;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LzN;->D:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 5
    :cond_0
    iget v1, p0, LzN;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, LzN;->C:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 7
    :goto_0
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    .line 8
    :cond_2
    iget v1, p0, LzN;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, LzN;->C:Ljava/lang/Object;

    check-cast v1, LsN;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 10
    :cond_3
    iget v1, p0, LzN;->A:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, LzN;->m()LtO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    .line 12
    :cond_4
    iget v1, p0, LzN;->A:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, LzN;->n()LBL;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_5
    const/4 v1, 0x0

    .line 14
    :goto_1
    iget-object v2, p0, LzN;->H:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_6

    .line 15
    iget-object v2, p0, LzN;->H:LbG;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v3, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_6
    iget v1, p0, LzN;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/16 v1, 0xb

    .line 17
    invoke-virtual {p0}, LzN;->o()LvN;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_7
    const/high16 v1, 0x20000000

    .line 18
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 19
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LtO;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LzN;->F:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method

.method public n()LBL;
    .locals 1

    .line 1
    iget-object v0, p0, LzN;->G:LBL;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LBL;->P:LBL;

    :cond_0
    return-object v0
.end method

.method public o()LvN;
    .locals 1

    .line 1
    iget-object v0, p0, LzN;->E:LvN;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LvN;->C:LvN;

    :cond_0
    return-object v0
.end method
