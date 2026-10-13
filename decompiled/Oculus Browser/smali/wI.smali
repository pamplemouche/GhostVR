.class public final LwI;
.super LTF;
.source "PG"

# interfaces
.implements LxI;


# static fields
.field public static final D:LwI;

.field public static volatile E:LkG;


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LwI;

    invoke-direct {v0}, LwI;-><init>()V

    sput-object v0, LwI;->D:LwI;

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
    .locals 5

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iget v1, p0, LwI;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget-wide v3, p0, LwI;->A:J

    .line 11
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LwI;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13
    iget-wide v3, p0, LwI;->B:J

    .line 14
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget v1, p0, LwI;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 16
    iget v2, p0, LwI;->C:I

    .line 17
    invoke-static {v1, v2}, LxF;->g(II)I

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
    .locals 12

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LwI;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LwI;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LwI;->E:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LwI;->D:LwI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LwI;->E:LkG;

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
    sget-object p1, LwI;->E:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LvI;

    invoke-direct {p1, v2}, LvI;-><init>(LrI;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LwI;

    invoke-direct {p1}, LwI;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 33
    :cond_3
    iget p1, p0, LwI;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LwI;->z:I

    .line 34
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 35
    iput p1, p0, LwI;->C:I

    goto :goto_1

    .line 36
    :cond_4
    iget p1, p0, LwI;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LwI;->z:I

    .line 37
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v5

    .line 38
    iput-wide v5, p0, LwI;->B:J

    goto :goto_1

    .line 39
    :cond_5
    iget p1, p0, LwI;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LwI;->z:I

    .line 40
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v5

    .line 41
    iput-wide v5, p0, LwI;->A:J
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

    .line 42
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 44
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :goto_3
    throw p1

    .line 46
    :cond_7
    :pswitch_5
    sget-object p1, LwI;->D:LwI;

    return-object p1

    .line 47
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 48
    check-cast p3, LwI;

    .line 49
    iget p2, p0, LwI;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_8

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    .line 50
    :goto_4
    iget-wide v7, p0, LwI;->A:J

    .line 51
    iget p2, p3, LwI;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_9

    const/4 v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    .line 52
    :goto_5
    iget-wide v10, p3, LwI;->A:J

    move-object v5, p1

    .line 53
    invoke-interface/range {v5 .. v11}, LSF;->a(ZJZJ)J

    move-result-wide v5

    iput-wide v5, p0, LwI;->A:J

    .line 54
    iget p2, p0, LwI;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 55
    :goto_6
    iget-wide v6, p0, LwI;->B:J

    .line 56
    iget p2, p3, LwI;->z:I

    and-int/2addr p2, v4

    if-ne p2, v4, :cond_b

    const/4 v8, 0x1

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    .line 57
    :goto_7
    iget-wide v9, p3, LwI;->B:J

    move-object v4, p1

    .line 58
    invoke-interface/range {v4 .. v10}, LSF;->a(ZJZJ)J

    move-result-wide v4

    iput-wide v4, p0, LwI;->B:J

    .line 59
    iget p2, p0, LwI;->z:I

    and-int/2addr p2, v3

    if-ne p2, v3, :cond_c

    const/4 p2, 0x1

    goto :goto_8

    :cond_c
    const/4 p2, 0x0

    .line 60
    :goto_8
    iget v2, p0, LwI;->C:I

    .line 61
    iget v4, p3, LwI;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_d

    const/4 v0, 0x1

    .line 62
    :cond_d
    iget v1, p3, LwI;->C:I

    .line 63
    invoke-interface {p1, p2, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p2

    iput p2, p0, LwI;->C:I

    .line 64
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_e

    .line 65
    iget p1, p0, LwI;->z:I

    iget p2, p3, LwI;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LwI;->z:I

    :cond_e
    return-object p0

    .line 66
    :pswitch_7
    sget-object p1, LwI;->D:LwI;

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
    iget v0, p0, LwI;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-wide v2, p0, LwI;->A:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 3
    :cond_0
    iget v0, p0, LwI;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget-wide v2, p0, LwI;->B:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 5
    :cond_1
    iget v0, p0, LwI;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget v1, p0, LwI;->C:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
