.class public final LuP;
.super LLF;
.source "PG"

# interfaces
.implements LvP;


# static fields
.field public static final G:LuP;

.field public static volatile H:LkG;

.field public static final I:LOF;


# instance fields
.field public A:I

.field public B:I

.field public C:LkP;

.field public D:LDP;

.field public E:LxP;

.field public F:B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LuP;

    invoke-direct {v0}, LuP;-><init>()V

    sput-object v0, LuP;->G:LuP;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    .line 3
    sget-object v1, LyQ;->E:LyQ;

    .line 4
    sget-object v3, LuP;->G:LuP;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LuP;

    const/4 v4, 0x0

    const v5, 0xb0d758f

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LuP;->I:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LuP;->F:B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 13
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 15
    iget v1, p0, LuP;->B:I

    .line 16
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18
    invoke-virtual {p0}, LuP;->m()LkP;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_2
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 20
    invoke-virtual {p0}, LuP;->o()LDP;

    move-result-object v3

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget v1, p0, LuP;->A:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 22
    invoke-virtual {p0}, LuP;->n()LxP;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_4
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
    sget-object p1, LuP;->H:LkG;

    if-nez p1, :cond_1

    const-class p1, LuP;

    monitor-enter p1

    .line 29
    :try_start_0
    sget-object p2, LuP;->H:LkG;

    if-nez p2, :cond_0

    .line 30
    new-instance p2, LGF;

    sget-object p3, LuP;->G:LuP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LuP;->H:LkG;

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
    sget-object p1, LuP;->H:LkG;

    return-object p1

    .line 33
    :pswitch_1
    new-instance p1, LsP;

    invoke-direct {p1, v3}, LsP;-><init>(LiP;)V

    return-object p1

    .line 34
    :pswitch_2
    new-instance p1, LuP;

    invoke-direct {p1}, LuP;-><init>()V

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
    if-nez v0, :cond_f

    .line 37
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 v4, 0x8

    if-eq p1, v4, :cond_c

    const/16 v5, 0x12

    if-eq p1, v5, :cond_9

    const/16 v5, 0x1a

    if-eq p1, v5, :cond_6

    const/16 v5, 0x22

    if-eq p1, v5, :cond_3

    .line 38
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v4

    check-cast v4, LuP;

    invoke-virtual {p0, v4, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 39
    :cond_3
    iget p1, p0, LuP;->A:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 40
    iget-object p1, p0, LuP;->E:LxP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LwP;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 41
    :goto_2
    sget-object v5, LxP;->F:LxP;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 42
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LxP;

    iput-object v5, p0, LuP;->E:LxP;

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 44
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LxP;

    iput-object p1, p0, LuP;->E:LxP;

    .line 45
    :cond_5
    iget p1, p0, LuP;->A:I

    or-int/2addr p1, v4

    iput p1, p0, LuP;->A:I

    goto :goto_1

    .line 46
    :cond_6
    iget p1, p0, LuP;->A:I

    const/4 v4, 0x4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_7

    .line 47
    iget-object p1, p0, LuP;->D:LDP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LCP;

    goto :goto_3

    :cond_7
    move-object p1, v3

    .line 48
    :goto_3
    sget-object v5, LDP;->C:LDP;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 49
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LDP;

    iput-object v5, p0, LuP;->D:LDP;

    if-eqz p1, :cond_8

    .line 50
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 51
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LDP;

    iput-object p1, p0, LuP;->D:LDP;

    .line 52
    :cond_8
    iget p1, p0, LuP;->A:I

    or-int/2addr p1, v4

    iput p1, p0, LuP;->A:I

    goto/16 :goto_1

    .line 53
    :cond_9
    iget p1, p0, LuP;->A:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_a

    .line 54
    iget-object p1, p0, LuP;->C:LkP;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LjP;

    goto :goto_4

    :cond_a
    move-object p1, v3

    .line 55
    :goto_4
    sget-object v4, LkP;->D:LkP;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 56
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LkP;

    iput-object v4, p0, LuP;->C:LkP;

    if-eqz p1, :cond_b

    .line 57
    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 58
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LkP;

    iput-object p1, p0, LuP;->C:LkP;

    .line 59
    :cond_b
    iget p1, p0, LuP;->A:I

    or-int/2addr p1, v2

    iput p1, p0, LuP;->A:I

    goto/16 :goto_1

    .line 60
    :cond_c
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 61
    invoke-static {p1}, LtP;->a(I)LtP;

    move-result-object v4

    if-nez v4, :cond_d

    .line 62
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto/16 :goto_1

    .line 63
    :cond_d
    iget v4, p0, LuP;->A:I

    or-int/2addr v4, v1

    iput v4, p0, LuP;->A:I

    .line 64
    iput p1, p0, LuP;->B:I
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

    .line 65
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 66
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :goto_6
    throw p1

    .line 69
    :cond_f
    :pswitch_5
    sget-object p1, LuP;->G:LuP;

    return-object p1

    .line 70
    :pswitch_6
    check-cast p2, LSF;

    .line 71
    check-cast p3, LuP;

    .line 72
    iget p1, p0, LuP;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_10

    const/4 p1, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    .line 73
    :goto_7
    iget v2, p0, LuP;->B:I

    .line 74
    iget v3, p3, LuP;->A:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_11

    const/4 v0, 0x1

    .line 75
    :cond_11
    iget v1, p3, LuP;->B:I

    .line 76
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LuP;->B:I

    .line 77
    iget-object p1, p0, LuP;->C:LkP;

    iget-object v0, p3, LuP;->C:LkP;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LkP;

    iput-object p1, p0, LuP;->C:LkP;

    .line 78
    iget-object p1, p0, LuP;->D:LDP;

    iget-object v0, p3, LuP;->D:LDP;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LDP;

    iput-object p1, p0, LuP;->D:LDP;

    .line 79
    iget-object p1, p0, LuP;->E:LxP;

    iget-object v0, p3, LuP;->E:LxP;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LxP;

    iput-object p1, p0, LuP;->E:LxP;

    .line 80
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_12

    .line 81
    iget p1, p0, LuP;->A:I

    iget p2, p3, LuP;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LuP;->A:I

    :cond_12
    return-object p0

    .line 82
    :pswitch_7
    iget-byte p1, p0, LuP;->F:B

    if-ne p1, v1, :cond_13

    .line 83
    sget-object p1, LuP;->G:LuP;

    return-object p1

    :cond_13
    if-nez p1, :cond_14

    return-object v3

    .line 84
    :cond_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 85
    iget p2, p0, LuP;->A:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_15

    const/4 p2, 0x1

    goto :goto_8

    :cond_15
    const/4 p2, 0x0

    :goto_8
    if-eqz p2, :cond_17

    .line 86
    invoke-virtual {p0}, LuP;->m()LkP;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_17

    if-eqz p1, :cond_16

    .line 87
    iput-byte v0, p0, LuP;->F:B

    :cond_16
    return-object v3

    .line 88
    :cond_17
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_19

    if-eqz p1, :cond_18

    .line 89
    iput-byte v0, p0, LuP;->F:B

    :cond_18
    return-object v3

    :cond_19
    if-eqz p1, :cond_1a

    .line 90
    iput-byte v1, p0, LuP;->F:B

    .line 91
    :cond_1a
    sget-object p1, LuP;->G:LuP;

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
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget v1, p0, LuP;->B:I

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->b(II)V

    .line 5
    :cond_0
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, LuP;->m()LkP;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    .line 7
    :cond_1
    iget v1, p0, LuP;->A:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, LuP;->o()LDP;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, LxF;->a(ILhG;)V

    .line 9
    :cond_2
    iget v1, p0, LuP;->A:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    .line 10
    invoke-virtual {p0}, LuP;->n()LxP;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    :cond_3
    const/high16 v1, 0x20000000

    .line 11
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 12
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LkP;
    .locals 1

    .line 1
    iget-object v0, p0, LuP;->C:LkP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LkP;->D:LkP;

    :cond_0
    return-object v0
.end method

.method public n()LxP;
    .locals 1

    .line 1
    iget-object v0, p0, LuP;->E:LxP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LxP;->F:LxP;

    :cond_0
    return-object v0
.end method

.method public o()LDP;
    .locals 1

    .line 1
    iget-object v0, p0, LuP;->D:LDP;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LDP;->C:LDP;

    :cond_0
    return-object v0
.end method
