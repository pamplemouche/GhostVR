.class public final LES0;
.super LTF;
.source "PG"

# interfaces
.implements LFS0;


# static fields
.field public static final D:LES0;

.field public static volatile E:LkG;


# instance fields
.field public A:I

.field public B:J

.field public C:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LES0;

    invoke-direct {v0}, LES0;-><init>()V

    sput-object v0, LES0;->D:LES0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LlG;->y:LlG;

    .line 3
    iput-object v0, p0, LES0;->C:LbG;

    return-void
.end method

.method public static j()LuS0;
    .locals 1

    .line 1
    sget-object v0, LES0;->D:LES0;

    invoke-virtual {v0}, LTF;->c()LFF;

    move-result-object v0

    check-cast v0, LuS0;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 7

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9
    :cond_0
    iget v0, p0, LES0;->A:I

    sget-object v1, LDS0;->x:LDS0;

    .line 10
    iget v1, v1, LDS0;->w:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    .line 11
    invoke-static {v1, v0}, LxF;->e(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-wide v3, p0, LES0;->B:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 13
    invoke-static {v1, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_2
    :goto_1
    iget-object v1, p0, LES0;->C:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    .line 15
    iget-object v3, p0, LES0;->C:LbG;

    .line 16
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_3
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, LES0;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LES0;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p2, LES0;->E:LkG;

    if-nez p2, :cond_0

    .line 22
    new-instance p2, LGF;

    sget-object p3, LES0;->D:LES0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LES0;->E:LkG;

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
    sget-object p1, LES0;->E:LkG;

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, LuS0;

    invoke-direct {p1, v2}, LuS0;-><init>(LtS0;)V

    return-object p1

    .line 26
    :pswitch_2
    new-instance p1, LES0;

    invoke-direct {p1}, LES0;-><init>()V

    return-object p1

    .line 27
    :pswitch_3
    iget-object p1, p0, LES0;->C:LbG;

    check-cast p1, LhF;

    .line 28
    iput-boolean v1, p1, LhF;->w:Z

    return-object v2

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v2, 0x8

    if-eq p1, v2, :cond_6

    const/16 v2, 0x10

    if-eq p1, v2, :cond_5

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    .line 32
    invoke-virtual {p2, p1}, LtF;->e(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 33
    :cond_3
    iget-object p1, p0, LES0;->C:LbG;

    check-cast p1, LhF;

    .line 34
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 35
    iget-object p1, p0, LES0;->C:LbG;

    .line 36
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LES0;->C:LbG;

    .line 37
    :cond_4
    iget-object p1, p0, LES0;->C:LbG;

    .line 38
    sget-object v2, LBS0;->D:LBS0;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 39
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LBS0;

    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_5
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v2

    .line 42
    iput-wide v2, p0, LES0;->B:J

    goto :goto_1

    .line 43
    :cond_6
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 44
    iput p1, p0, LES0;->A:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 45
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 46
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :goto_3
    throw p1

    .line 49
    :cond_8
    :pswitch_5
    sget-object p1, LES0;->D:LES0;

    return-object p1

    .line 50
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 51
    check-cast p3, LES0;

    .line 52
    iget p2, p0, LES0;->A:I

    if-eqz p2, :cond_9

    const/4 p2, 0x1

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    :goto_4
    iget v2, p0, LES0;->A:I

    iget v3, p3, LES0;->A:I

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    iget v4, p3, LES0;->A:I

    invoke-interface {p1, p2, v2, v3, v4}, LSF;->a(ZIZI)I

    move-result p2

    iput p2, p0, LES0;->A:I

    .line 53
    iget-wide v2, p0, LES0;->B:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_6

    :cond_b
    const/4 p2, 0x0

    :goto_6
    iget-wide v2, p0, LES0;->B:J

    iget-wide v6, p3, LES0;->B:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    iget-wide v5, p3, LES0;->B:J

    move-object v0, p1

    move v1, p2

    invoke-interface/range {v0 .. v6}, LSF;->a(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, LES0;->B:J

    .line 54
    iget-object p2, p0, LES0;->C:LbG;

    iget-object v0, p3, LES0;->C:LbG;

    invoke-interface {p1, p2, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p2

    iput-object p2, p0, LES0;->C:LbG;

    .line 55
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_d

    .line 56
    iget p1, p0, LES0;->z:I

    iget p2, p3, LES0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LES0;->z:I

    :cond_d
    return-object p0

    .line 57
    :pswitch_7
    sget-object p1, LES0;->D:LES0;

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
    .locals 5

    .line 1
    iget v0, p0, LES0;->A:I

    sget-object v1, LDS0;->x:LDS0;

    .line 2
    iget v1, v1, LDS0;->w:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget-wide v0, p0, LES0;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p1, v2, v0, v1}, LxF;->b(IJ)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, LES0;->C:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, LES0;->C:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
