.class public final LlM;
.super LLF;
.source "PG"

# interfaces
.implements LmM;


# static fields
.field public static final E:LlM;

.field public static volatile F:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:LbG;

.field public D:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LlM;

    invoke-direct {v0}, LlM;-><init>()V

    sput-object v0, LlM;->E:LlM;

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
    iput-byte v0, p0, LlM;->D:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LlM;->B:Ljava/lang/String;

    .line 4
    sget-object v0, LlG;->y:LlG;

    .line 5
    iput-object v0, p0, LlM;->C:LbG;

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LlM;->E:LlM;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
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
    iget v0, p0, LlM;->A:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, LlM;->B:Ljava/lang/String;

    .line 12
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, LlM;->C:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    const/4 v1, 0x2

    .line 14
    iget-object v3, p0, LlM;->C:LbG;

    .line 15
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p0}, LLF;->k()I

    move-result v1

    add-int/2addr v1, v0

    .line 17
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 19
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    sget-object p1, LlM;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LlM;

    monitor-enter p1

    .line 22
    :try_start_0
    sget-object p2, LlM;->F:LkG;

    if-nez p2, :cond_0

    .line 23
    new-instance p2, LGF;

    sget-object p3, LlM;->E:LlM;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LlM;->F:LkG;

    .line 24
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 25
    :cond_1
    :goto_0
    sget-object p1, LlM;->F:LkG;

    return-object p1

    .line 26
    :pswitch_1
    new-instance p1, LkM;

    invoke-direct {p1, v2}, LkM;-><init>(LeL;)V

    return-object p1

    .line 27
    :pswitch_2
    new-instance p1, LlM;

    invoke-direct {p1}, LlM;-><init>()V

    return-object p1

    .line 28
    :pswitch_3
    iget-object p1, p0, LlM;->C:LbG;

    check-cast p1, LhF;

    .line 29
    iput-boolean v0, p1, LhF;->w:Z

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

    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    .line 33
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v2

    check-cast v2, LlM;

    invoke-virtual {p0, v2, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 34
    :cond_3
    iget-object p1, p0, LlM;->C:LbG;

    check-cast p1, LhF;

    .line 35
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 36
    iget-object p1, p0, LlM;->C:LbG;

    .line 37
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LlM;->C:LbG;

    .line 38
    :cond_4
    iget-object p1, p0, LlM;->C:LbG;

    .line 39
    sget-object v2, LgL;->B:LgL;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 40
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LgL;

    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    :cond_5
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget v2, p0, LlM;->A:I

    or-int/2addr v2, v1

    iput v2, p0, LlM;->A:I

    .line 44
    iput-object p1, p0, LlM;->B:Ljava/lang/String;
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
    :cond_7
    :pswitch_5
    sget-object p1, LlM;->E:LlM;

    return-object p1

    .line 50
    :pswitch_6
    check-cast p2, LSF;

    .line 51
    check-cast p3, LlM;

    .line 52
    iget p1, p0, LlM;->A:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 53
    :goto_4
    iget-object v2, p0, LlM;->B:Ljava/lang/String;

    .line 54
    iget v3, p3, LlM;->A:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_9

    const/4 v0, 0x1

    .line 55
    :cond_9
    iget-object v1, p3, LlM;->B:Ljava/lang/String;

    .line 56
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LlM;->B:Ljava/lang/String;

    .line 57
    iget-object p1, p0, LlM;->C:LbG;

    iget-object v0, p3, LlM;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LlM;->C:LbG;

    .line 58
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_a

    .line 59
    iget p1, p0, LlM;->A:I

    iget p2, p3, LlM;->A:I

    or-int/2addr p1, p2

    iput p1, p0, LlM;->A:I

    :cond_a
    return-object p0

    .line 60
    :pswitch_7
    iget-byte p1, p0, LlM;->D:B

    if-ne p1, v1, :cond_b

    .line 61
    sget-object p1, LlM;->E:LlM;

    return-object p1

    :cond_b
    if-nez p1, :cond_c

    return-object v2

    .line 62
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 63
    :goto_5
    iget-object p3, p0, LlM;->C:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_f

    .line 64
    iget-object p3, p0, LlM;->C:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LgL;

    .line 65
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_e

    if-eqz p1, :cond_d

    .line 66
    iput-byte v0, p0, LlM;->D:B

    :cond_d
    return-object v2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 67
    :cond_f
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_11

    if-eqz p1, :cond_10

    .line 68
    iput-byte v0, p0, LlM;->D:B

    :cond_10
    return-object v2

    :cond_11
    if-eqz p1, :cond_12

    .line 69
    iput-byte v1, p0, LlM;->D:B

    .line 70
    :cond_12
    sget-object p1, LlM;->E:LlM;

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
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    .line 2
    iget v1, p0, LlM;->A:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, LlM;->B:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v2, v1}, LxF;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, LlM;->C:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, LlM;->C:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000000

    .line 7
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 8
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
