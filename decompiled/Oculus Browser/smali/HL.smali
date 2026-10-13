.class public final LHL;
.super LLF;
.source "PG"

# interfaces
.implements LIL;


# static fields
.field public static final C:LHL;

.field public static volatile D:LkG;


# instance fields
.field public A:LbG;

.field public B:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LHL;

    invoke-direct {v0}, LHL;-><init>()V

    sput-object v0, LHL;->C:LHL;

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
    iput-byte v0, p0, LHL;->B:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LHL;->A:LbG;

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LHL;->C:LHL;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 6
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, LHL;->A:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p0, LHL;->A:LbG;

    .line 9
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    const/4 v3, 0x1

    invoke-static {v3, v2}, LxF;->b(ILhG;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, LLF;->k()I

    move-result v0

    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 12
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15
    :pswitch_0
    sget-object p1, LHL;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LHL;

    monitor-enter p1

    .line 16
    :try_start_0
    sget-object p2, LHL;->D:LkG;

    if-nez p2, :cond_0

    .line 17
    new-instance p2, LGF;

    sget-object p3, LHL;->C:LHL;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LHL;->D:LkG;

    .line 18
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19
    :cond_1
    :goto_0
    sget-object p1, LHL;->D:LkG;

    return-object p1

    .line 20
    :pswitch_1
    new-instance p1, LGL;

    invoke-direct {p1, v2}, LGL;-><init>(LeL;)V

    return-object p1

    .line 21
    :pswitch_2
    new-instance p1, LHL;

    invoke-direct {p1}, LHL;-><init>()V

    return-object p1

    .line 22
    :pswitch_3
    iget-object p1, p0, LHL;->A:LbG;

    check-cast p1, LhF;

    .line 23
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 24
    :pswitch_4
    check-cast p2, LtF;

    .line 25
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 26
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    .line 27
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v2

    check-cast v2, LHL;

    invoke-virtual {p0, v2, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 28
    :cond_3
    iget-object p1, p0, LHL;->A:LbG;

    check-cast p1, LhF;

    .line 29
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 30
    iget-object p1, p0, LHL;->A:LbG;

    .line 31
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LHL;->A:LbG;

    .line 32
    :cond_4
    iget-object p1, p0, LHL;->A:LbG;

    .line 33
    invoke-static {}, LoL;->j()LkG;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LoL;

    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 35
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 36
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :goto_3
    throw p1

    .line 39
    :cond_6
    :pswitch_5
    sget-object p1, LHL;->C:LHL;

    return-object p1

    .line 40
    :pswitch_6
    check-cast p2, LSF;

    .line 41
    check-cast p3, LHL;

    .line 42
    iget-object p1, p0, LHL;->A:LbG;

    iget-object p3, p3, LHL;->A:LbG;

    invoke-interface {p2, p1, p3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LHL;->A:LbG;

    return-object p0

    .line 43
    :pswitch_7
    iget-byte p1, p0, LHL;->B:B

    if-ne p1, v1, :cond_7

    .line 44
    sget-object p1, LHL;->C:LHL;

    return-object p1

    :cond_7
    if-nez p1, :cond_8

    return-object v2

    .line 45
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 46
    :goto_4
    iget-object p3, p0, LHL;->A:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_b

    .line 47
    iget-object p3, p0, LHL;->A:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LoL;

    .line 48
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_a

    if-eqz p1, :cond_9

    .line 49
    iput-byte v0, p0, LHL;->B:B

    :cond_9
    return-object v2

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 50
    :cond_b
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    .line 51
    iput-byte v0, p0, LHL;->B:B

    :cond_c
    return-object v2

    :cond_d
    if-eqz p1, :cond_e

    .line 52
    iput-byte v1, p0, LHL;->B:B

    .line 53
    :cond_e
    sget-object p1, LHL;->C:LHL;

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
    iget-object v2, p0, LHL;->A:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, LHL;->A:LbG;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x20000000

    .line 4
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 5
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
