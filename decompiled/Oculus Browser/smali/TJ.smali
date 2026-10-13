.class public final LTJ;
.super LTF;
.source "PG"

# interfaces
.implements LUJ;


# static fields
.field public static final E:LTJ;

.field public static volatile F:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:LDJ;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LTJ;

    invoke-direct {v0}, LTJ;-><init>()V

    sput-object v0, LTJ;->E:LTJ;

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
    iput-object v0, p0, LTJ;->A:Ljava/lang/String;

    .line 3
    iput-object v0, p0, LTJ;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 15
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 16
    iget v1, p0, LTJ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 17
    iget-object v1, p0, LTJ;->A:Ljava/lang/String;

    .line 18
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_1
    iget v1, p0, LTJ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 20
    iget-object v1, p0, LTJ;->B:Ljava/lang/String;

    .line 21
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_2
    iget v1, p0, LTJ;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 23
    iget v3, p0, LTJ;->C:I

    .line 24
    invoke-static {v1, v3}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_3
    iget v1, p0, LTJ;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    .line 26
    iget-object v1, p0, LTJ;->D:LDJ;

    if-nez v1, :cond_4

    .line 27
    sget-object v1, LDJ;->C:LDJ;

    .line 28
    :cond_4
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_5
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 30
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 33
    :pswitch_0
    sget-object p1, LTJ;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LTJ;

    monitor-enter p1

    .line 34
    :try_start_0
    sget-object p2, LTJ;->F:LkG;

    if-nez p2, :cond_0

    .line 35
    new-instance p2, LGF;

    sget-object p3, LTJ;->E:LTJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LTJ;->F:LkG;

    .line 36
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 37
    :cond_1
    :goto_0
    sget-object p1, LTJ;->F:LkG;

    return-object p1

    .line 38
    :pswitch_1
    new-instance p1, LRJ;

    invoke-direct {p1, v4}, LRJ;-><init>(LqJ;)V

    return-object p1

    .line 39
    :pswitch_2
    new-instance p1, LTJ;

    invoke-direct {p1}, LTJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v4

    .line 40
    :pswitch_4
    check-cast p2, LtF;

    .line 41
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_b

    .line 42
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v5, 0xa

    if-eq p1, v5, :cond_9

    const/16 v5, 0x12

    if-eq p1, v5, :cond_8

    const/16 v5, 0x18

    if-eq p1, v5, :cond_6

    const/16 v5, 0x22

    if-eq p1, v5, :cond_3

    .line 43
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 44
    :cond_3
    iget p1, p0, LTJ;->z:I

    const/16 v5, 0x8

    and-int/2addr p1, v5

    if-ne p1, v5, :cond_4

    .line 45
    iget-object p1, p0, LTJ;->D:LDJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LCJ;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 46
    :goto_2
    sget-object v6, LDJ;->C:LDJ;

    invoke-virtual {v6}, LTF;->g()LkG;

    move-result-object v6

    .line 47
    invoke-virtual {p2, v6, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v6

    check-cast v6, LDJ;

    iput-object v6, p0, LTJ;->D:LDJ;

    if-eqz p1, :cond_5

    .line 48
    invoke-virtual {p1, v6}, LFF;->a(LTF;)LFF;

    .line 49
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LDJ;

    iput-object p1, p0, LTJ;->D:LDJ;

    .line 50
    :cond_5
    iget p1, p0, LTJ;->z:I

    or-int/2addr p1, v5

    iput p1, p0, LTJ;->z:I

    goto :goto_1

    .line 51
    :cond_6
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 52
    invoke-static {p1}, LSJ;->a(I)LSJ;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x3

    .line 53
    invoke-super {p0, v5, p1}, LTF;->a(II)V

    goto :goto_1

    .line 54
    :cond_7
    iget v5, p0, LTJ;->z:I

    or-int/2addr v5, v2

    iput v5, p0, LTJ;->z:I

    .line 55
    iput p1, p0, LTJ;->C:I

    goto :goto_1

    .line 56
    :cond_8
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 57
    iget v5, p0, LTJ;->z:I

    or-int/2addr v5, v3

    iput v5, p0, LTJ;->z:I

    .line 58
    iput-object p1, p0, LTJ;->B:Ljava/lang/String;

    goto :goto_1

    .line 59
    :cond_9
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 60
    iget v5, p0, LTJ;->z:I

    or-int/2addr v5, v1

    iput v5, p0, LTJ;->z:I

    .line 61
    iput-object p1, p0, LTJ;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 62
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 63
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :goto_4
    throw p1

    .line 66
    :cond_b
    :pswitch_5
    sget-object p1, LTJ;->E:LTJ;

    return-object p1

    .line 67
    :pswitch_6
    check-cast p2, LSF;

    .line 68
    check-cast p3, LTJ;

    .line 69
    iget p1, p0, LTJ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    .line 70
    :goto_5
    iget-object v4, p0, LTJ;->A:Ljava/lang/String;

    .line 71
    iget v5, p3, LTJ;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_d

    const/4 v5, 0x1

    goto :goto_6

    :cond_d
    const/4 v5, 0x0

    .line 72
    :goto_6
    iget-object v6, p3, LTJ;->A:Ljava/lang/String;

    .line 73
    invoke-interface {p2, p1, v4, v5, v6}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LTJ;->A:Ljava/lang/String;

    .line 74
    iget p1, p0, LTJ;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_e

    const/4 p1, 0x1

    goto :goto_7

    :cond_e
    const/4 p1, 0x0

    .line 75
    :goto_7
    iget-object v4, p0, LTJ;->B:Ljava/lang/String;

    .line 76
    iget v5, p3, LTJ;->z:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_f

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    .line 77
    :goto_8
    iget-object v5, p3, LTJ;->B:Ljava/lang/String;

    .line 78
    invoke-interface {p2, p1, v4, v3, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LTJ;->B:Ljava/lang/String;

    .line 79
    iget p1, p0, LTJ;->z:I

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_10

    const/4 p1, 0x1

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    .line 80
    :goto_9
    iget v3, p0, LTJ;->C:I

    .line 81
    iget v4, p3, LTJ;->z:I

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_11

    const/4 v0, 0x1

    .line 82
    :cond_11
    iget v1, p3, LTJ;->C:I

    .line 83
    invoke-interface {p2, p1, v3, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LTJ;->C:I

    .line 84
    iget-object p1, p0, LTJ;->D:LDJ;

    iget-object v0, p3, LTJ;->D:LDJ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LDJ;

    iput-object p1, p0, LTJ;->D:LDJ;

    .line 85
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_12

    .line 86
    iget p1, p0, LTJ;->z:I

    iget p2, p3, LTJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LTJ;->z:I

    :cond_12
    return-object p0

    .line 87
    :pswitch_7
    sget-object p1, LTJ;->E:LTJ;

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
    iget v0, p0, LTJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LTJ;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LTJ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LTJ;->B:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 7
    :cond_1
    iget v0, p0, LTJ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 8
    iget v2, p0, LTJ;->C:I

    .line 9
    invoke-virtual {p1, v0, v2}, LxF;->b(II)V

    .line 10
    :cond_2
    iget v0, p0, LTJ;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    .line 11
    iget-object v0, p0, LTJ;->D:LDJ;

    if-nez v0, :cond_3

    .line 12
    sget-object v0, LDJ;->C:LDJ;

    .line 13
    :cond_3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 14
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
