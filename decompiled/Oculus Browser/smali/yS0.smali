.class public final LyS0;
.super LTF;
.source "PG"

# interfaces
.implements LzS0;


# static fields
.field public static final B:LyS0;

.field public static volatile C:LkG;


# instance fields
.field public A:Ljava/lang/Object;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LyS0;

    invoke-direct {v0}, LyS0;-><init>()V

    sput-object v0, LyS0;->B:LyS0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LyS0;->z:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 20
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 21
    iget v1, p0, LyS0;->z:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 22
    iget-object v1, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 24
    invoke-static {v2, v1}, LxF;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_1
    iget v1, p0, LyS0;->z:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 26
    iget-object v1, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 28
    invoke-static {v2, v3, v4}, LxF;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_2
    iget v1, p0, LyS0;->z:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 30
    iget-object v1, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 32
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_3
    iget v1, p0, LyS0;->z:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 34
    iget-object v1, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 36
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_4
    iget v1, p0, LyS0;->z:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    if-ne v1, v2, :cond_5

    .line 38
    iget-object v1, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, ""

    .line 39
    :goto_0
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_6
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    .line 42
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 43
    :pswitch_0
    sget-object p1, LyS0;->C:LkG;

    if-nez p1, :cond_1

    const-class p1, LyS0;

    monitor-enter p1

    .line 44
    :try_start_0
    sget-object p2, LyS0;->C:LkG;

    if-nez p2, :cond_0

    .line 45
    new-instance p2, LGF;

    sget-object p3, LyS0;->B:LyS0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LyS0;->C:LkG;

    .line 46
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 47
    :cond_1
    :goto_0
    sget-object p1, LyS0;->C:LkG;

    return-object p1

    .line 48
    :pswitch_1
    new-instance p1, LwS0;

    invoke-direct {p1, v1}, LwS0;-><init>(LtS0;)V

    return-object p1

    .line 49
    :pswitch_2
    new-instance p1, LyS0;

    invoke-direct {p1}, LyS0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v1

    .line 50
    :pswitch_4
    check-cast p2, LtF;

    .line 51
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v6, :cond_9

    .line 52
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x11

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_3

    .line 53
    invoke-virtual {p2, p1}, LtF;->e(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {p2}, LtF;->o()Ljava/lang/String;

    move-result-object p1

    .line 55
    iput v2, p0, LyS0;->z:I

    .line 56
    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_4
    iput v3, p0, LyS0;->z:I

    .line 58
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v7

    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_1

    .line 60
    :cond_5
    iput v4, p0, LyS0;->z:I

    .line 61
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_6
    iput v5, p0, LyS0;->z:I

    .line 64
    invoke-virtual {p2}, LtF;->d()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_1

    .line 65
    :cond_7
    iput v0, p0, LyS0;->z:I

    .line 66
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 67
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 68
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 69
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    :goto_3
    throw p1

    .line 71
    :cond_9
    :pswitch_5
    sget-object p1, LyS0;->B:LyS0;

    return-object p1

    .line 72
    :pswitch_6
    check-cast p2, LSF;

    .line 73
    check-cast p3, LyS0;

    .line 74
    iget p1, p3, LyS0;->z:I

    invoke-static {p1}, LxS0;->a(I)LxS0;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_14

    if-eq p1, v0, :cond_12

    if-eq p1, v5, :cond_10

    if-eq p1, v4, :cond_e

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_a

    goto :goto_a

    .line 76
    :cond_a
    iget p1, p0, LyS0;->z:I

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_4
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_a

    .line 77
    :cond_c
    iget p1, p0, LyS0;->z:I

    if-ne p1, v2, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    iget-object p1, p0, LyS0;->A:Ljava/lang/Object;

    iget-object v1, p3, LyS0;->A:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_a

    .line 78
    :cond_e
    iget p1, p0, LyS0;->z:I

    if-ne p1, v3, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    iget-object p1, p0, LyS0;->A:Ljava/lang/Object;

    iget-object v1, p3, LyS0;->A:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->g(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_a

    .line 79
    :cond_10
    iget p1, p0, LyS0;->z:I

    if-ne p1, v4, :cond_11

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    :goto_7
    iget-object p1, p0, LyS0;->A:Ljava/lang/Object;

    iget-object v1, p3, LyS0;->A:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_a

    .line 80
    :cond_12
    iget p1, p0, LyS0;->z:I

    if-ne p1, v5, :cond_13

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_8
    iget-object p1, p0, LyS0;->A:Ljava/lang/Object;

    iget-object v1, p3, LyS0;->A:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->a(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    goto :goto_a

    .line 81
    :cond_14
    iget p1, p0, LyS0;->z:I

    if-ne p1, v0, :cond_15

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    :goto_9
    iget-object p1, p0, LyS0;->A:Ljava/lang/Object;

    iget-object v1, p3, LyS0;->A:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->c(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LyS0;->A:Ljava/lang/Object;

    .line 82
    :goto_a
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_16

    .line 83
    iget p1, p3, LyS0;->z:I

    if-eqz p1, :cond_16

    .line 84
    iput p1, p0, LyS0;->z:I

    :cond_16
    return-object p0

    .line 85
    :pswitch_7
    sget-object p1, LyS0;->B:LyS0;

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

    .line 1
    iget v0, p0, LyS0;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0}, LxF;->a(IZ)V

    .line 5
    :cond_0
    iget v0, p0, LyS0;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 8
    invoke-virtual {p1, v1, v2, v3}, LxF;->a(ID)V

    .line 9
    :cond_1
    iget v0, p0, LyS0;->z:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 13
    :cond_2
    iget v0, p0, LyS0;->z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v0, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 16
    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 17
    :cond_3
    iget v0, p0, LyS0;->z:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    if-ne v0, v1, :cond_4

    .line 18
    iget-object v0, p0, LyS0;->A:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, ""

    .line 19
    :goto_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    :cond_5
    return-void
.end method
