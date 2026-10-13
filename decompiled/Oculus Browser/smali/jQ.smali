.class public final LjQ;
.super LTF;
.source "PG"

# interfaces
.implements LkQ;


# static fields
.field public static final D:LjQ;

.field public static volatile E:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LjQ;

    invoke-direct {v0}, LjQ;-><init>()V

    sput-object v0, LjQ;->D:LjQ;

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
    iput-object v0, p0, LjQ;->A:Ljava/lang/String;

    .line 3
    iput-object v0, p0, LjQ;->C:Ljava/lang/String;

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LjQ;->D:LjQ;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    iget v1, p0, LjQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 12
    iget-object v1, p0, LjQ;->A:Ljava/lang/String;

    .line 13
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_1
    iget v1, p0, LjQ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 15
    invoke-static {v2}, LxF;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 16
    :cond_2
    iget v1, p0, LjQ;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 17
    iget-object v2, p0, LjQ;->C:Ljava/lang/String;

    .line 18
    invoke-static {v1, v2}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    sget-object p1, LjQ;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LjQ;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, LjQ;->E:LkG;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, LGF;

    sget-object p3, LjQ;->D:LjQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LjQ;->E:LkG;

    .line 26
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 27
    :cond_1
    :goto_0
    sget-object p1, LjQ;->E:LkG;

    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LiQ;

    invoke-direct {p1, v2}, LiQ;-><init>(LhQ;)V

    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, LjQ;

    invoke-direct {p1}, LjQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 30
    :pswitch_4
    check-cast p2, LtF;

    .line 31
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 32
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0xa

    if-eq p1, p3, :cond_5

    const/16 p3, 0x11

    if-eq p1, p3, :cond_4

    const/16 p3, 0x1a

    if-eq p1, p3, :cond_3

    .line 33
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 35
    iget p3, p0, LjQ;->z:I

    or-int/2addr p3, v3

    iput p3, p0, LjQ;->z:I

    .line 36
    iput-object p1, p0, LjQ;->C:Ljava/lang/String;

    goto :goto_1

    .line 37
    :cond_4
    iget p1, p0, LjQ;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LjQ;->z:I

    .line 38
    invoke-virtual {p2}, LtF;->j()J

    move-result-wide v5

    .line 39
    iput-wide v5, p0, LjQ;->B:J

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 41
    iget p3, p0, LjQ;->z:I

    or-int/2addr p3, v1

    iput p3, p0, LjQ;->z:I

    .line 42
    iput-object p1, p0, LjQ;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 43
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 44
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    :goto_3
    throw p1

    .line 47
    :cond_7
    :pswitch_5
    sget-object p1, LjQ;->D:LjQ;

    return-object p1

    .line 48
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 49
    check-cast p3, LjQ;

    .line 50
    iget p2, p0, LjQ;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_8

    const/4 p2, 0x1

    goto :goto_4

    :cond_8
    const/4 p2, 0x0

    .line 51
    :goto_4
    iget-object v2, p0, LjQ;->A:Ljava/lang/String;

    .line 52
    iget v5, p3, LjQ;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 53
    :goto_5
    iget-object v6, p3, LjQ;->A:Ljava/lang/String;

    .line 54
    invoke-interface {p1, p2, v2, v5, v6}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LjQ;->A:Ljava/lang/String;

    .line 55
    iget p2, p0, LjQ;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 56
    :goto_6
    iget-wide v6, p0, LjQ;->B:J

    .line 57
    iget p2, p3, LjQ;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_b

    const/4 v8, 0x1

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    .line 58
    :goto_7
    iget-wide v9, p3, LjQ;->B:J

    move-object v4, p1

    .line 59
    invoke-interface/range {v4 .. v10}, LSF;->a(ZJZJ)J

    move-result-wide v4

    iput-wide v4, p0, LjQ;->B:J

    .line 60
    iget p2, p0, LjQ;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_c

    const/4 p2, 0x1

    goto :goto_8

    :cond_c
    const/4 p2, 0x0

    .line 61
    :goto_8
    iget-object v2, p0, LjQ;->C:Ljava/lang/String;

    .line 62
    iget v4, p3, LjQ;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d

    const/4 v0, 0x1

    .line 63
    :cond_d
    iget-object v1, p3, LjQ;->C:Ljava/lang/String;

    .line 64
    invoke-interface {p1, p2, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LjQ;->C:Ljava/lang/String;

    .line 65
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_e

    .line 66
    iget p1, p0, LjQ;->z:I

    iget p2, p3, LjQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LjQ;->z:I

    :cond_e
    return-object p0

    .line 67
    :pswitch_7
    sget-object p1, LjQ;->D:LjQ;

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
    iget v0, p0, LjQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LjQ;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LjQ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-wide v2, p0, LjQ;->B:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->a(IJ)V

    .line 6
    :cond_1
    iget v0, p0, LjQ;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 7
    iget-object v1, p0, LjQ;->C:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0, v1}, LxF;->a(ILjava/lang/String;)V

    .line 9
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
