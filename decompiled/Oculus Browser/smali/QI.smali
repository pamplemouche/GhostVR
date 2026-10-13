.class public final LQI;
.super LTF;
.source "PG"

# interfaces
.implements LRI;


# static fields
.field public static final D:LQI;

.field public static volatile E:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:LwI;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LQI;

    invoke-direct {v0}, LQI;-><init>()V

    sput-object v0, LQI;->D:LQI;

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
    iput-object v0, p0, LQI;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 9
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10
    iget v1, p0, LQI;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 11
    iget-object v1, p0, LQI;->A:Ljava/lang/String;

    .line 12
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_1
    iget v1, p0, LQI;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 14
    iget-wide v3, p0, LQI;->B:J

    .line 15
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget v1, p0, LQI;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 17
    invoke-virtual {p0}, LQI;->j()LwI;

    move-result-object v2

    invoke-static {v1, v2}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LQI;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LQI;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LQI;->E:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LQI;->D:LQI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LQI;->E:LkG;

    .line 25
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 26
    :cond_1
    :goto_0
    sget-object p1, LQI;->E:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LPI;

    invoke-direct {p1, v3}, LPI;-><init>(LrI;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LQI;

    invoke-direct {p1}, LQI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v3

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v4, 0xa

    if-eq p1, v4, :cond_7

    const/16 v4, 0x10

    if-eq p1, v4, :cond_6

    const/16 v4, 0x1a

    if-eq p1, v4, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 33
    :cond_3
    iget p1, p0, LQI;->z:I

    const/4 v4, 0x4

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_4

    .line 34
    iget-object p1, p0, LQI;->C:LwI;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LvI;

    goto :goto_2

    :cond_4
    move-object p1, v3

    .line 35
    :goto_2
    sget-object v5, LwI;->D:LwI;

    invoke-virtual {v5}, LTF;->g()LkG;

    move-result-object v5

    .line 36
    invoke-virtual {p2, v5, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v5

    check-cast v5, LwI;

    iput-object v5, p0, LQI;->C:LwI;

    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p1, v5}, LFF;->a(LTF;)LFF;

    .line 38
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LwI;

    iput-object p1, p0, LQI;->C:LwI;

    .line 39
    :cond_5
    iget p1, p0, LQI;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LQI;->z:I

    goto :goto_1

    .line 40
    :cond_6
    iget p1, p0, LQI;->z:I

    or-int/2addr p1, v2

    iput p1, p0, LQI;->z:I

    .line 41
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v4

    .line 42
    iput-wide v4, p0, LQI;->B:J

    goto :goto_1

    .line 43
    :cond_7
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 44
    iget v4, p0, LQI;->z:I

    or-int/2addr v4, v1

    iput v4, p0, LQI;->z:I

    .line 45
    iput-object p1, p0, LQI;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 46
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 47
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 48
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    :goto_4
    throw p1

    .line 50
    :cond_9
    :pswitch_5
    sget-object p1, LQI;->D:LQI;

    return-object p1

    .line 51
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 52
    check-cast p3, LQI;

    .line 53
    iget p2, p0, LQI;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_a

    const/4 p2, 0x1

    goto :goto_5

    :cond_a
    const/4 p2, 0x0

    .line 54
    :goto_5
    iget-object v3, p0, LQI;->A:Ljava/lang/String;

    .line 55
    iget v4, p3, LQI;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    .line 56
    :goto_6
    iget-object v5, p3, LQI;->A:Ljava/lang/String;

    .line 57
    invoke-interface {p1, p2, v3, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LQI;->A:Ljava/lang/String;

    .line 58
    iget p2, p0, LQI;->z:I

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_c

    const/4 p2, 0x1

    goto :goto_7

    :cond_c
    const/4 p2, 0x0

    .line 59
    :goto_7
    iget-wide v3, p0, LQI;->B:J

    .line 60
    iget v5, p3, LQI;->z:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 61
    :goto_8
    iget-wide v6, p3, LQI;->B:J

    move-object v0, p1

    move v1, p2

    move-wide v2, v3

    move v4, v5

    move-wide v5, v6

    .line 62
    invoke-interface/range {v0 .. v6}, LSF;->a(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, LQI;->B:J

    .line 63
    iget-object p2, p0, LQI;->C:LwI;

    iget-object v0, p3, LQI;->C:LwI;

    invoke-interface {p1, p2, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p2

    check-cast p2, LwI;

    iput-object p2, p0, LQI;->C:LwI;

    .line 64
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_e

    .line 65
    iget p1, p0, LQI;->z:I

    iget p2, p3, LQI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LQI;->z:I

    :cond_e
    return-object p0

    .line 66
    :pswitch_7
    sget-object p1, LQI;->D:LQI;

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
    iget v0, p0, LQI;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LQI;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LQI;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-wide v2, p0, LQI;->B:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 6
    :cond_1
    iget v0, p0, LQI;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0}, LQI;->j()LwI;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 8
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LwI;
    .locals 1

    .line 1
    iget-object v0, p0, LQI;->C:LwI;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LwI;->D:LwI;

    :cond_0
    return-object v0
.end method
