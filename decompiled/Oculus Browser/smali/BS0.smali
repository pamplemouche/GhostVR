.class public final LBS0;
.super LTF;
.source "PG"

# interfaces
.implements LCS0;


# static fields
.field public static final D:LBS0;

.field public static volatile E:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:LbG;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LBS0;

    invoke-direct {v0}, LBS0;-><init>()V

    sput-object v0, LBS0;->D:LBS0;

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
    iput-object v0, p0, LBS0;->A:Ljava/lang/String;

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LBS0;->C:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 9
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    iget-object v0, p0, LBS0;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, LBS0;->A:Ljava/lang/String;

    const/4 v2, 0x1

    .line 12
    invoke-static {v2, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget v2, p0, LBS0;->B:I

    sget-object v3, LAS0;->x:LAS0;

    .line 14
    iget v3, v3, LAS0;->w:I

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    .line 15
    invoke-static {v3, v2}, LxF;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_2
    :goto_1
    iget-object v2, p0, LBS0;->C:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 17
    iget-object v3, p0, LBS0;->C:LbG;

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v2, v3}, LxF;->b(ILhG;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LBS0;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LBS0;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LBS0;->E:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LBS0;->D:LBS0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LBS0;->E:LkG;

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
    sget-object p1, LBS0;->E:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LvS0;

    invoke-direct {p1, v2}, LvS0;-><init>(LtS0;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LBS0;

    invoke-direct {p1}, LBS0;-><init>()V

    return-object p1

    .line 29
    :pswitch_3
    iget-object p1, p0, LBS0;->C:LbG;

    check-cast p1, LhF;

    .line 30
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 31
    :pswitch_4
    check-cast p2, LtF;

    .line 32
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 33
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_6

    const/16 v2, 0x10

    if-eq p1, v2, :cond_5

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    .line 34
    invoke-virtual {p2, p1}, LtF;->e(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 35
    :cond_3
    iget-object p1, p0, LBS0;->C:LbG;

    check-cast p1, LhF;

    .line 36
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 37
    iget-object p1, p0, LBS0;->C:LbG;

    .line 38
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LBS0;->C:LbG;

    .line 39
    :cond_4
    iget-object p1, p0, LBS0;->C:LbG;

    .line 40
    sget-object v2, LyS0;->B:LyS0;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 41
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LyS0;

    .line 42
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_5
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 44
    iput p1, p0, LBS0;->B:I

    goto :goto_1

    .line 45
    :cond_6
    invoke-virtual {p2}, LtF;->o()Ljava/lang/String;

    move-result-object p1

    .line 46
    iput-object p1, p0, LBS0;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 47
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 48
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :goto_3
    throw p1

    .line 51
    :cond_8
    :pswitch_5
    sget-object p1, LBS0;->D:LBS0;

    return-object p1

    .line 52
    :pswitch_6
    check-cast p2, LSF;

    .line 53
    check-cast p3, LBS0;

    .line 54
    iget-object p1, p0, LBS0;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v2, p0, LBS0;->A:Ljava/lang/String;

    iget-object v3, p3, LBS0;->A:Ljava/lang/String;

    .line 55
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    iget-object v4, p3, LBS0;->A:Ljava/lang/String;

    .line 56
    invoke-interface {p2, p1, v2, v3, v4}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LBS0;->A:Ljava/lang/String;

    .line 57
    iget p1, p0, LBS0;->B:I

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    iget v2, p0, LBS0;->B:I

    iget v3, p3, LBS0;->B:I

    if-eqz v3, :cond_a

    const/4 v0, 0x1

    :cond_a
    iget v1, p3, LBS0;->B:I

    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LBS0;->B:I

    .line 58
    iget-object p1, p0, LBS0;->C:LbG;

    iget-object v0, p3, LBS0;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LBS0;->C:LbG;

    .line 59
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 60
    iget p1, p0, LBS0;->z:I

    iget p2, p3, LBS0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LBS0;->z:I

    :cond_b
    return-object p0

    .line 61
    :pswitch_7
    sget-object p1, LBS0;->D:LBS0;

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
    iget-object v0, p0, LBS0;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, LBS0;->A:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LBS0;->B:I

    sget-object v1, LAS0;->x:LAS0;

    .line 5
    iget v1, v1, LAS0;->w:I

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, LBS0;->C:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 8
    iget-object v2, p0, LBS0;->C:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
