.class public final LsR;
.super LTF;
.source "PG"

# interfaces
.implements LtR;


# static fields
.field public static final C:LsR;

.field public static volatile D:LkG;


# instance fields
.field public A:LjQ;

.field public B:LKR;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LsR;

    invoke-direct {v0}, LsR;-><init>()V

    sput-object v0, LsR;->C:LsR;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 6
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7
    iget v1, p0, LsR;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, LsR;->j()LjQ;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_1
    iget v1, p0, LsR;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {p0}, LsR;->k()LKR;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15
    :pswitch_0
    sget-object p1, LsR;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LsR;

    monitor-enter p1

    .line 16
    :try_start_0
    sget-object p2, LsR;->D:LkG;

    if-nez p2, :cond_0

    .line 17
    new-instance p2, LGF;

    sget-object p3, LsR;->C:LsR;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LsR;->D:LkG;

    .line 18
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19
    :cond_1
    :goto_0
    sget-object p1, LsR;->D:LkG;

    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, LrR;

    invoke-direct {p1, v0}, LrR;-><init>(LqR;)V

    return-object p1

    .line 21
    :pswitch_2
    new-instance p1, LsR;

    invoke-direct {p1}, LsR;-><init>()V

    return-object p1

    :pswitch_3
    return-object v0

    .line 22
    :pswitch_4
    check-cast p2, LtF;

    .line 23
    check-cast p3, LBF;

    const/4 p1, 0x0

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 24
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v2

    if-eqz v2, :cond_9

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    .line 25
    invoke-virtual {p0, v2, p2}, LTF;->a(ILtF;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 26
    :cond_3
    iget v2, p0, LsR;->z:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    .line 27
    iget-object v2, p0, LsR;->B:LKR;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LJR;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 28
    :goto_2
    invoke-static {}, LKR;->k()LkG;

    move-result-object v4

    invoke-virtual {p2, v4, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v4

    check-cast v4, LKR;

    iput-object v4, p0, LsR;->B:LKR;

    if-eqz v2, :cond_5

    .line 29
    invoke-virtual {v2, v4}, LFF;->a(LTF;)LFF;

    .line 30
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LKR;

    iput-object v2, p0, LsR;->B:LKR;

    .line 31
    :cond_5
    iget v2, p0, LsR;->z:I

    or-int/2addr v2, v3

    iput v2, p0, LsR;->z:I

    goto :goto_1

    .line 32
    :cond_6
    iget v2, p0, LsR;->z:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_7

    .line 33
    iget-object v2, p0, LsR;->A:LjQ;

    invoke-virtual {v2}, LTF;->c()LFF;

    move-result-object v2

    check-cast v2, LiQ;

    goto :goto_3

    :cond_7
    move-object v2, v0

    .line 34
    :goto_3
    invoke-static {}, LjQ;->j()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LjQ;

    iput-object v3, p0, LsR;->A:LjQ;

    if-eqz v2, :cond_8

    .line 35
    invoke-virtual {v2, v3}, LFF;->a(LTF;)LFF;

    .line 36
    invoke-virtual {v2}, LFF;->f()LTF;

    move-result-object v2

    check-cast v2, LjQ;

    iput-object v2, p0, LsR;->A:LjQ;

    .line 37
    :cond_8
    iget v2, p0, LsR;->z:I

    or-int/2addr v2, v1

    iput v2, p0, LsR;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_4
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 40
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :goto_5
    throw p1

    .line 42
    :cond_a
    :pswitch_5
    sget-object p1, LsR;->C:LsR;

    return-object p1

    .line 43
    :pswitch_6
    check-cast p2, LSF;

    .line 44
    check-cast p3, LsR;

    .line 45
    iget-object p1, p0, LsR;->A:LjQ;

    iget-object v0, p3, LsR;->A:LjQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LjQ;

    iput-object p1, p0, LsR;->A:LjQ;

    .line 46
    iget-object p1, p0, LsR;->B:LKR;

    iget-object v0, p3, LsR;->B:LKR;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LKR;

    iput-object p1, p0, LsR;->B:LKR;

    .line 47
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 48
    iget p1, p0, LsR;->z:I

    iget p2, p3, LsR;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LsR;->z:I

    :cond_b
    return-object p0

    .line 49
    :pswitch_7
    sget-object p1, LsR;->C:LsR;

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
    .locals 2

    .line 1
    iget v0, p0, LsR;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, LsR;->j()LjQ;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget v0, p0, LsR;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, LsR;->k()LKR;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 5
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LjQ;
    .locals 1

    .line 1
    iget-object v0, p0, LsR;->A:LjQ;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LjQ;->D:LjQ;

    :cond_0
    return-object v0
.end method

.method public k()LKR;
    .locals 1

    .line 1
    iget-object v0, p0, LsR;->B:LKR;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LKR;->B:LKR;

    :cond_0
    return-object v0
.end method
