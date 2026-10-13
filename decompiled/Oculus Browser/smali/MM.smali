.class public final LMM;
.super LTF;
.source "PG"

# interfaces
.implements LNM;


# static fields
.field public static final E:LMM;

.field public static volatile F:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LbG;

.field public C:I

.field public D:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LMM;

    invoke-direct {v0}, LMM;-><init>()V

    sput-object v0, LMM;->E:LMM;

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
    iput-object v0, p0, LMM;->A:Ljava/lang/String;

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LMM;->B:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 11
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12
    :cond_0
    iget v0, p0, LMM;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 13
    iget-object v0, p0, LMM;->A:Ljava/lang/String;

    .line 14
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, LMM;->B:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 16
    iget-object v1, p0, LMM;->B:LbG;

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-static {v3, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    iget v1, p0, LMM;->z:I

    and-int/2addr v1, v3

    const/4 v2, 0x4

    if-ne v1, v3, :cond_3

    .line 19
    iget v1, p0, LMM;->C:I

    .line 20
    invoke-static {v2, v1}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_3
    iget v1, p0, LMM;->z:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x5

    .line 22
    iget v2, p0, LMM;->D:I

    .line 23
    invoke-static {v1, v2}, LxF;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_4
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 28
    :pswitch_0
    sget-object p1, LMM;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LMM;

    monitor-enter p1

    .line 29
    :try_start_0
    sget-object p2, LMM;->F:LkG;

    if-nez p2, :cond_0

    .line 30
    new-instance p2, LGF;

    sget-object p3, LMM;->E:LMM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LMM;->F:LkG;

    .line 31
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 32
    :cond_1
    :goto_0
    sget-object p1, LMM;->F:LkG;

    return-object p1

    .line 33
    :pswitch_1
    new-instance p1, LLM;

    invoke-direct {p1, v2}, LLM;-><init>(LGM;)V

    return-object p1

    .line 34
    :pswitch_2
    new-instance p1, LMM;

    invoke-direct {p1}, LMM;-><init>()V

    return-object p1

    .line 35
    :pswitch_3
    iget-object p1, p0, LMM;->B:LbG;

    check-cast p1, LhF;

    .line 36
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 37
    :pswitch_4
    check-cast p2, LtF;

    .line 38
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 39
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v2, 0xa

    if-eq p1, v2, :cond_7

    const/16 v2, 0x12

    if-eq p1, v2, :cond_5

    const/16 v2, 0x20

    if-eq p1, v2, :cond_4

    const/16 v2, 0x28

    if-eq p1, v2, :cond_3

    .line 40
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 41
    :cond_3
    iget p1, p0, LMM;->z:I

    or-int/2addr p1, v3

    iput p1, p0, LMM;->z:I

    .line 42
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 43
    iput p1, p0, LMM;->D:I

    goto :goto_1

    .line 44
    :cond_4
    iget p1, p0, LMM;->z:I

    or-int/2addr p1, v4

    iput p1, p0, LMM;->z:I

    .line 45
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 46
    iput p1, p0, LMM;->C:I

    goto :goto_1

    .line 47
    :cond_5
    iget-object p1, p0, LMM;->B:LbG;

    check-cast p1, LhF;

    .line 48
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_6

    .line 49
    iget-object p1, p0, LMM;->B:LbG;

    .line 50
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMM;->B:LbG;

    .line 51
    :cond_6
    iget-object p1, p0, LMM;->B:LbG;

    .line 52
    invoke-static {}, LdN;->j()LkG;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LdN;

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :cond_7
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 55
    iget v2, p0, LMM;->z:I

    or-int/2addr v2, v1

    iput v2, p0, LMM;->z:I

    .line 56
    iput-object p1, p0, LMM;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    :goto_3
    throw p1

    .line 61
    :cond_9
    :pswitch_5
    sget-object p1, LMM;->E:LMM;

    return-object p1

    .line 62
    :pswitch_6
    check-cast p2, LSF;

    .line 63
    check-cast p3, LMM;

    .line 64
    iget p1, p0, LMM;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 65
    :goto_4
    iget-object v2, p0, LMM;->A:Ljava/lang/String;

    .line 66
    iget v5, p3, LMM;->z:I

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_b

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 67
    :goto_5
    iget-object v6, p3, LMM;->A:Ljava/lang/String;

    .line 68
    invoke-interface {p2, p1, v2, v5, v6}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMM;->A:Ljava/lang/String;

    .line 69
    iget-object p1, p0, LMM;->B:LbG;

    iget-object v2, p3, LMM;->B:LbG;

    invoke-interface {p2, p1, v2}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LMM;->B:LbG;

    .line 70
    iget p1, p0, LMM;->z:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    .line 71
    :goto_6
    iget v2, p0, LMM;->C:I

    .line 72
    iget v5, p3, LMM;->z:I

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_d

    const/4 v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    .line 73
    :goto_7
    iget v5, p3, LMM;->C:I

    .line 74
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LMM;->C:I

    .line 75
    iget p1, p0, LMM;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_e

    const/4 p1, 0x1

    goto :goto_8

    :cond_e
    const/4 p1, 0x0

    .line 76
    :goto_8
    iget v2, p0, LMM;->D:I

    .line 77
    iget v4, p3, LMM;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_f

    const/4 v0, 0x1

    .line 78
    :cond_f
    iget v1, p3, LMM;->D:I

    .line 79
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LMM;->D:I

    .line 80
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_10

    .line 81
    iget p1, p0, LMM;->z:I

    iget p2, p3, LMM;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LMM;->z:I

    :cond_10
    return-object p0

    .line 82
    :pswitch_7
    sget-object p1, LMM;->E:LMM;

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
    iget v0, p0, LMM;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LMM;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, LMM;->B:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, LMM;->B:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, LMM;->z:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-ne v0, v2, :cond_2

    .line 7
    iget v0, p0, LMM;->C:I

    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 8
    :cond_2
    iget v0, p0, LMM;->z:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 9
    iget v1, p0, LMM;->D:I

    invoke-virtual {p1, v0, v1}, LxF;->b(II)V

    .line 10
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
