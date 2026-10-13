.class public final LBM;
.super LTF;
.source "PG"

# interfaces
.implements LCM;


# static fields
.field public static final C:LBM;

.field public static volatile D:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LBM;

    invoke-direct {v0}, LBM;-><init>()V

    sput-object v0, LBM;->C:LBM;

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
    iput v0, p0, LBM;->A:I

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LBM;->C:LBM;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iget v1, p0, LBM;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, LBM;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12
    invoke-static {v2, v1}, LxF;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget v1, p0, LBM;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 14
    iget-object v1, p0, LBM;->B:Ljava/lang/Object;

    check-cast v1, LEM;

    .line 15
    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, LBM;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LBM;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p2, LBM;->D:LkG;

    if-nez p2, :cond_0

    .line 22
    new-instance p2, LGF;

    sget-object p3, LBM;->C:LBM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LBM;->D:LkG;

    .line 23
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24
    :cond_1
    :goto_0
    sget-object p1, LBM;->D:LkG;

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, LzM;

    invoke-direct {p1, v1}, LzM;-><init>(LvM;)V

    return-object p1

    .line 26
    :pswitch_2
    new-instance p1, LBM;

    invoke-direct {p1}, LBM;-><init>()V

    return-object p1

    :pswitch_3
    return-object v1

    .line 27
    :pswitch_4
    check-cast p2, LtF;

    .line 28
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v2, :cond_8

    .line 29
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v4, 0xd

    if-eq p1, v4, :cond_6

    const/16 v4, 0x12

    if-eq p1, v4, :cond_3

    .line 30
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 31
    :cond_3
    iget p1, p0, LBM;->A:I

    if-ne p1, v3, :cond_4

    .line 32
    iget-object p1, p0, LBM;->B:Ljava/lang/Object;

    check-cast p1, LEM;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LDM;

    goto :goto_2

    :cond_4
    move-object p1, v1

    .line 33
    :goto_2
    sget-object v4, LEM;->D:LEM;

    invoke-virtual {v4}, LTF;->g()LkG;

    move-result-object v4

    .line 34
    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    iput-object v4, p0, LBM;->B:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 35
    check-cast v4, LEM;

    invoke-virtual {p1, v4}, LFF;->a(LTF;)LFF;

    .line 36
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    iput-object p1, p0, LBM;->B:Ljava/lang/Object;

    .line 37
    :cond_5
    iput v3, p0, LBM;->A:I

    goto :goto_1

    .line 38
    :cond_6
    iput v0, p0, LBM;->A:I

    .line 39
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LBM;->B:Ljava/lang/Object;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_3
    const/4 v2, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 41
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 42
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 43
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :goto_4
    throw p1

    .line 45
    :cond_8
    :pswitch_5
    sget-object p1, LBM;->C:LBM;

    return-object p1

    .line 46
    :pswitch_6
    check-cast p2, LSF;

    .line 47
    check-cast p3, LBM;

    .line 48
    iget p1, p3, LBM;->A:I

    invoke-static {p1}, LAM;->a(I)LAM;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_d

    if-eq p1, v0, :cond_b

    if-eq p1, v3, :cond_9

    goto :goto_8

    .line 50
    :cond_9
    iget p1, p0, LBM;->A:I

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_8

    .line 51
    :cond_b
    iget p1, p0, LBM;->A:I

    if-ne p1, v3, :cond_c

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    iget-object p1, p0, LBM;->B:Ljava/lang/Object;

    iget-object v1, p3, LBM;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->f(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LBM;->B:Ljava/lang/Object;

    goto :goto_8

    .line 52
    :cond_d
    iget p1, p0, LBM;->A:I

    if-ne p1, v0, :cond_e

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    iget-object p1, p0, LBM;->B:Ljava/lang/Object;

    iget-object v1, p3, LBM;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LBM;->B:Ljava/lang/Object;

    .line 53
    :goto_8
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_10

    .line 54
    iget p1, p3, LBM;->A:I

    if-eqz p1, :cond_f

    .line 55
    iput p1, p0, LBM;->A:I

    .line 56
    :cond_f
    iget p1, p0, LBM;->z:I

    iget p2, p3, LBM;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LBM;->z:I

    :cond_10
    return-object p0

    .line 57
    :pswitch_7
    sget-object p1, LBM;->C:LBM;

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
    .locals 2

    .line 1
    iget v0, p0, LBM;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LBM;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-virtual {p1, v1, v0}, LxF;->a(II)V

    .line 5
    :cond_0
    iget v0, p0, LBM;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, LBM;->B:Ljava/lang/Object;

    check-cast v0, LEM;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 7
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
