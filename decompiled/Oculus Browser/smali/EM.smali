.class public final LEM;
.super LTF;
.source "PG"

# interfaces
.implements LFM;


# static fields
.field public static final D:LEM;

.field public static volatile E:LkG;


# instance fields
.field public A:LbG;

.field public B:I

.field public C:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LEM;

    invoke-direct {v0}, LEM;-><init>()V

    sput-object v0, LEM;->D:LEM;

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
    iput-object v0, p0, LEM;->A:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, LEM;->A:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 10
    iget-object v2, p0, LEM;->A:LbG;

    .line 11
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-static {v3, v2}, LxF;->b(ILhG;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, LEM;->z:I

    and-int/2addr v0, v3

    const/4 v2, 0x2

    if-ne v0, v3, :cond_2

    .line 13
    iget v0, p0, LEM;->B:I

    .line 14
    invoke-static {v2, v0}, LxF;->h(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 15
    :cond_2
    iget v0, p0, LEM;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    .line 16
    iget-boolean v2, p0, LEM;->C:Z

    .line 17
    invoke-static {v0, v2}, LxF;->b(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 18
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 20
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22
    :pswitch_0
    sget-object p1, LEM;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LEM;

    monitor-enter p1

    .line 23
    :try_start_0
    sget-object p2, LEM;->E:LkG;

    if-nez p2, :cond_0

    .line 24
    new-instance p2, LGF;

    sget-object p3, LEM;->D:LEM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LEM;->E:LkG;

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
    sget-object p1, LEM;->E:LkG;

    return-object p1

    .line 27
    :pswitch_1
    new-instance p1, LDM;

    invoke-direct {p1, v2}, LDM;-><init>(LvM;)V

    return-object p1

    .line 28
    :pswitch_2
    new-instance p1, LEM;

    invoke-direct {p1}, LEM;-><init>()V

    return-object p1

    .line 29
    :pswitch_3
    iget-object p1, p0, LEM;->A:LbG;

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

    if-eq p1, v2, :cond_5

    const/16 v2, 0x10

    if-eq p1, v2, :cond_4

    const/16 v2, 0x18

    if-eq p1, v2, :cond_3

    .line 34
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 35
    :cond_3
    iget p1, p0, LEM;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LEM;->z:I

    .line 36
    invoke-virtual {p2}, LtF;->b()Z

    move-result p1

    iput-boolean p1, p0, LEM;->C:Z

    goto :goto_1

    .line 37
    :cond_4
    iget p1, p0, LEM;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LEM;->z:I

    .line 38
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 39
    iput p1, p0, LEM;->B:I

    goto :goto_1

    .line 40
    :cond_5
    iget-object p1, p0, LEM;->A:LbG;

    check-cast p1, LhF;

    .line 41
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_6

    .line 42
    iget-object p1, p0, LEM;->A:LbG;

    .line 43
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LEM;->A:LbG;

    .line 44
    :cond_6
    iget-object p1, p0, LEM;->A:LbG;

    .line 45
    sget-object v2, LxM;->C:LxM;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 46
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LxM;

    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 48
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 49
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 50
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :goto_3
    throw p1

    .line 52
    :cond_8
    :pswitch_5
    sget-object p1, LEM;->D:LEM;

    return-object p1

    .line 53
    :pswitch_6
    check-cast p2, LSF;

    .line 54
    check-cast p3, LEM;

    .line 55
    iget-object p1, p0, LEM;->A:LbG;

    iget-object v2, p3, LEM;->A:LbG;

    invoke-interface {p2, p1, v2}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LEM;->A:LbG;

    .line 56
    iget p1, p0, LEM;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    .line 57
    :goto_4
    iget v2, p0, LEM;->B:I

    .line 58
    iget v4, p3, LEM;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    .line 59
    :goto_5
    iget v5, p3, LEM;->B:I

    .line 60
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LEM;->B:I

    .line 61
    iget p1, p0, LEM;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_b

    const/4 p1, 0x1

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    .line 62
    :goto_6
    iget-boolean v2, p0, LEM;->C:Z

    .line 63
    iget v4, p3, LEM;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_c

    const/4 v0, 0x1

    .line 64
    :cond_c
    iget-boolean v1, p3, LEM;->C:Z

    .line 65
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, LEM;->C:Z

    .line 66
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_d

    .line 67
    iget p1, p0, LEM;->z:I

    iget p2, p3, LEM;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LEM;->z:I

    :cond_d
    return-object p0

    .line 68
    :pswitch_7
    sget-object p1, LEM;->D:LEM;

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
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LEM;->A:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LEM;->A:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, LEM;->z:I

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v0, v2, :cond_1

    .line 4
    iget v0, p0, LEM;->B:I

    invoke-virtual {p1, v1, v0}, LxF;->d(II)V

    .line 5
    :cond_1
    iget v0, p0, LEM;->z:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-boolean v1, p0, LEM;->C:Z

    invoke-virtual {p1, v0, v1}, LxF;->a(IZ)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
