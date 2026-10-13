.class public final LtO;
.super LLF;
.source "PG"

# interfaces
.implements LuO;


# static fields
.field public static final E:LtO;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:LbG;

.field public C:LWK;

.field public D:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LtO;

    invoke-direct {v0}, LtO;-><init>()V

    sput-object v0, LtO;->E:LtO;

    .line 2
    invoke-virtual {v0}, LLF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LLF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LtO;->D:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LtO;->B:LbG;

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LtO;->E:LtO;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 10
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, LtO;->B:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 12
    iget-object v3, p0, LtO;->B:LbG;

    .line 13
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, LxF;->b(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 14
    iget-object v1, p0, LtO;->B:LbG;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    .line 16
    iget v0, p0, LtO;->A:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    .line 17
    iget-object v2, p0, LtO;->C:LWK;

    if-nez v2, :cond_2

    .line 18
    sget-object v2, LWK;->B:LWK;

    .line 19
    :cond_2
    invoke-static {v0, v2}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 20
    :cond_3
    invoke-virtual {p0}, LLF;->k()I

    move-result v0

    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 22
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 23
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 25
    :pswitch_0
    sget-object p1, LtO;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LtO;

    monitor-enter p1

    .line 26
    :try_start_0
    sget-object p2, LtO;->F:LkG;

    if-nez p2, :cond_0

    .line 27
    new-instance p2, LGF;

    sget-object p3, LtO;->E:LtO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LtO;->F:LkG;

    .line 28
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 29
    :cond_1
    :goto_0
    sget-object p1, LtO;->F:LkG;

    return-object p1

    .line 30
    :pswitch_1
    new-instance p1, LsO;

    invoke-direct {p1, v2}, LsO;-><init>(LQN;)V

    return-object p1

    .line 31
    :pswitch_2
    new-instance p1, LtO;

    invoke-direct {p1}, LtO;-><init>()V

    return-object p1

    .line 32
    :pswitch_3
    iget-object p1, p0, LtO;->B:LbG;

    check-cast p1, LhF;

    .line 33
    iput-boolean v1, p1, LhF;->w:Z

    return-object v2

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x12

    if-eq p1, v3, :cond_3

    .line 37
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v3

    check-cast v3, LtO;

    invoke-virtual {p0, v3, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 38
    :cond_3
    iget p1, p0, LtO;->A:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4

    .line 39
    iget-object p1, p0, LtO;->C:LWK;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LVK;

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 40
    :goto_2
    sget-object v3, LWK;->B:LWK;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 41
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LWK;

    iput-object v3, p0, LtO;->C:LWK;

    if-eqz p1, :cond_5

    .line 42
    invoke-virtual {p1, v3}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LWK;

    iput-object p1, p0, LtO;->C:LWK;

    .line 44
    :cond_5
    iget p1, p0, LtO;->A:I

    or-int/2addr p1, v0

    iput p1, p0, LtO;->A:I

    goto :goto_1

    .line 45
    :cond_6
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 46
    iget-object v3, p0, LtO;->B:LbG;

    check-cast v3, LhF;

    .line 47
    iget-boolean v3, v3, LhF;->w:Z

    if-nez v3, :cond_7

    .line 48
    iget-object v3, p0, LtO;->B:LbG;

    .line 49
    invoke-static {v3}, LTF;->a(LbG;)LbG;

    move-result-object v3

    iput-object v3, p0, LtO;->B:LbG;

    .line 50
    :cond_7
    iget-object v3, p0, LtO;->B:LbG;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 51
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 53
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    :goto_4
    throw p1

    .line 55
    :cond_9
    :pswitch_5
    sget-object p1, LtO;->E:LtO;

    return-object p1

    .line 56
    :pswitch_6
    check-cast p2, LSF;

    .line 57
    check-cast p3, LtO;

    .line 58
    iget-object p1, p0, LtO;->B:LbG;

    iget-object v0, p3, LtO;->B:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LtO;->B:LbG;

    .line 59
    iget-object p1, p0, LtO;->C:LWK;

    iget-object v0, p3, LtO;->C:LWK;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LWK;

    iput-object p1, p0, LtO;->C:LWK;

    .line 60
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_a

    .line 61
    iget p1, p0, LtO;->A:I

    iget p2, p3, LtO;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LtO;->A:I

    :cond_a
    return-object p0

    .line 62
    :pswitch_7
    iget-byte p1, p0, LtO;->D:B

    if-ne p1, v0, :cond_b

    .line 63
    sget-object p1, LtO;->E:LtO;

    return-object p1

    :cond_b
    if-nez p1, :cond_c

    return-object v2

    .line 64
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 65
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_e

    if-eqz p1, :cond_d

    .line 66
    iput-byte v1, p0, LtO;->D:B

    :cond_d
    return-object v2

    :cond_e
    if-eqz p1, :cond_f

    .line 67
    iput-byte v0, p0, LtO;->D:B

    .line 68
    :cond_f
    sget-object p1, LtO;->E:LtO;

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
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, LtO;->B:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, LtO;->B:LbG;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, LxF;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, LtO;->A:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x2

    .line 5
    iget-object v2, p0, LtO;->C:LWK;

    if-nez v2, :cond_1

    .line 6
    sget-object v2, LWK;->B:LWK;

    .line 7
    :cond_1
    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_2
    const/high16 v1, 0x20000000

    .line 8
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 9
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
