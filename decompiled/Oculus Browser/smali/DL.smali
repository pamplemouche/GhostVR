.class public final LDL;
.super LLF;
.source "PG"

# interfaces
.implements LEL;


# static fields
.field public static final E:LDL;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:LbG;

.field public C:LtO;

.field public D:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LDL;

    invoke-direct {v0}, LDL;-><init>()V

    sput-object v0, LDL;->E:LDL;

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
    iput-byte v0, p0, LDL;->D:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LDL;->B:LbG;

    return-void
.end method

.method public static n()LkG;
    .locals 1

    .line 1
    sget-object v0, LDL;->E:LDL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9
    :cond_0
    iget v0, p0, LDL;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0}, LDL;->m()LtO;

    move-result-object v1

    invoke-static {v0, v1}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, LDL;->B:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    const/4 v1, 0x6

    .line 12
    iget-object v3, p0, LDL;->B:LbG;

    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19
    :pswitch_0
    sget-object p1, LDL;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LDL;

    monitor-enter p1

    .line 20
    :try_start_0
    sget-object p2, LDL;->F:LkG;

    if-nez p2, :cond_0

    .line 21
    new-instance p2, LGF;

    sget-object p3, LDL;->E:LDL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LDL;->F:LkG;

    .line 22
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 23
    :cond_1
    :goto_0
    sget-object p1, LDL;->F:LkG;

    return-object p1

    .line 24
    :pswitch_1
    new-instance p1, LCL;

    invoke-direct {p1, v2}, LCL;-><init>(LeL;)V

    return-object p1

    .line 25
    :pswitch_2
    new-instance p1, LDL;

    invoke-direct {p1}, LDL;-><init>()V

    return-object p1

    .line 26
    :pswitch_3
    iget-object p1, p0, LDL;->B:LbG;

    check-cast p1, LhF;

    .line 27
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 28
    :pswitch_4
    check-cast p2, LtF;

    .line 29
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 30
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_5

    const/16 v3, 0x32

    if-eq p1, v3, :cond_3

    .line 31
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v3

    check-cast v3, LDL;

    invoke-virtual {p0, v3, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 32
    :cond_3
    iget-object p1, p0, LDL;->B:LbG;

    check-cast p1, LhF;

    .line 33
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 34
    iget-object p1, p0, LDL;->B:LbG;

    .line 35
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LDL;->B:LbG;

    .line 36
    :cond_4
    iget-object p1, p0, LDL;->B:LbG;

    .line 37
    invoke-static {}, LoL;->j()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LoL;

    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    :cond_5
    iget p1, p0, LDL;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    .line 40
    iget-object p1, p0, LDL;->C:LtO;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LsO;

    goto :goto_2

    :cond_6
    move-object p1, v2

    .line 41
    :goto_2
    invoke-static {}, LtO;->m()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LtO;

    iput-object v3, p0, LDL;->C:LtO;

    if-eqz p1, :cond_7

    .line 42
    invoke-virtual {p1, v3}, LFF;->a(LTF;)LFF;

    .line 43
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LDL;->C:LtO;

    .line 44
    :cond_7
    iget p1, p0, LDL;->A:I

    or-int/2addr p1, v1

    iput p1, p0, LDL;->A:I
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
    :goto_4
    throw p1

    .line 49
    :cond_9
    :pswitch_5
    sget-object p1, LDL;->E:LDL;

    return-object p1

    .line 50
    :pswitch_6
    check-cast p2, LSF;

    .line 51
    check-cast p3, LDL;

    .line 52
    iget-object p1, p0, LDL;->B:LbG;

    iget-object v0, p3, LDL;->B:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LDL;->B:LbG;

    .line 53
    iget-object p1, p0, LDL;->C:LtO;

    iget-object v0, p3, LDL;->C:LtO;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LtO;

    iput-object p1, p0, LDL;->C:LtO;

    .line 54
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_a

    .line 55
    iget p1, p0, LDL;->A:I

    iget p2, p3, LDL;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LDL;->A:I

    :cond_a
    return-object p0

    .line 56
    :pswitch_7
    iget-byte p1, p0, LDL;->D:B

    if-ne p1, v1, :cond_b

    .line 57
    sget-object p1, LDL;->E:LDL;

    return-object p1

    :cond_b
    if-nez p1, :cond_c

    return-object v2

    .line 58
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 59
    :goto_5
    iget-object p3, p0, LDL;->B:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_f

    .line 60
    iget-object p3, p0, LDL;->B:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LoL;

    .line 61
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_e

    if-eqz p1, :cond_d

    .line 62
    iput-byte v0, p0, LDL;->D:B

    :cond_d
    return-object v2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 63
    :cond_f
    iget p2, p0, LDL;->A:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_10

    const/4 p2, 0x1

    goto :goto_6

    :cond_10
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_12

    .line 64
    invoke-virtual {p0}, LDL;->m()LtO;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    .line 65
    iput-byte v0, p0, LDL;->D:B

    :cond_11
    return-object v2

    .line 66
    :cond_12
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_14

    if-eqz p1, :cond_13

    .line 67
    iput-byte v0, p0, LDL;->D:B

    :cond_13
    return-object v2

    :cond_14
    if-eqz p1, :cond_15

    .line 68
    iput-byte v1, p0, LDL;->D:B

    .line 69
    :cond_15
    sget-object p1, LDL;->E:LDL;

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

    .line 2
    iget v1, p0, LDL;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0}, LDL;->m()LtO;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LDL;->B:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x6

    .line 5
    iget-object v3, p0, LDL;->B:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000000

    .line 6
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 7
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public m()LtO;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LDL;->C:LtO;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LtO;->E:LtO;

    :cond_0
    return-object v0
.end method
