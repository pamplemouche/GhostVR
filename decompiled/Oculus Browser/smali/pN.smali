.class public final LpN;
.super LTF;
.source "PG"

# interfaces
.implements LqN;


# static fields
.field public static final C:LpN;

.field public static volatile D:LkG;


# instance fields
.field public A:LbG;

.field public B:B

.field public z:LbG;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LpN;

    invoke-direct {v0}, LpN;-><init>()V

    sput-object v0, LpN;->C:LpN;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LpN;->B:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LpN;->z:LbG;

    .line 5
    iput-object v0, p0, LpN;->A:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 6
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, p0, LpN;->z:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 8
    iget-object v3, p0, LpN;->z:LbG;

    .line 9
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    const/4 v4, 0x1

    invoke-static {v4, v3}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    iget-object v1, p0, LpN;->A:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x2

    .line 11
    iget-object v3, p0, LpN;->A:LbG;

    .line 12
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v1, v3}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v2

    .line 14
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17
    :pswitch_0
    sget-object p1, LpN;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LpN;

    monitor-enter p1

    .line 18
    :try_start_0
    sget-object p2, LpN;->D:LkG;

    if-nez p2, :cond_0

    .line 19
    new-instance p2, LGF;

    sget-object p3, LpN;->C:LpN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LpN;->D:LkG;

    .line 20
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21
    :cond_1
    :goto_0
    sget-object p1, LpN;->D:LkG;

    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, LoN;

    invoke-direct {p1, v2}, LoN;-><init>(LjN;)V

    return-object p1

    .line 23
    :pswitch_2
    new-instance p1, LpN;

    invoke-direct {p1}, LpN;-><init>()V

    return-object p1

    .line 24
    :pswitch_3
    iget-object p1, p0, LpN;->z:LbG;

    check-cast p1, LhF;

    .line 25
    iput-boolean v0, p1, LhF;->w:Z

    .line 26
    iget-object p1, p0, LpN;->A:LbG;

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
    if-nez v0, :cond_8

    .line 30
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    .line 31
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 32
    :cond_3
    iget-object p1, p0, LpN;->A:LbG;

    check-cast p1, LhF;

    .line 33
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 34
    iget-object p1, p0, LpN;->A:LbG;

    .line 35
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LpN;->A:LbG;

    .line 36
    :cond_4
    iget-object p1, p0, LpN;->A:LbG;

    .line 37
    sget-object v2, LzN;->J:LzN;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 38
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LzN;

    .line 39
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_5
    iget-object p1, p0, LpN;->z:LbG;

    check-cast p1, LhF;

    .line 41
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_6

    .line 42
    iget-object p1, p0, LpN;->z:LbG;

    .line 43
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LpN;->z:LbG;

    .line 44
    :cond_6
    iget-object p1, p0, LpN;->z:LbG;

    .line 45
    invoke-static {}, LsN;->j()LkG;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LsN;

    .line 46
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
    sget-object p1, LpN;->C:LpN;

    return-object p1

    .line 52
    :pswitch_6
    check-cast p2, LSF;

    .line 53
    check-cast p3, LpN;

    .line 54
    iget-object p1, p0, LpN;->z:LbG;

    iget-object v0, p3, LpN;->z:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LpN;->z:LbG;

    .line 55
    iget-object p1, p0, LpN;->A:LbG;

    iget-object p3, p3, LpN;->A:LbG;

    invoke-interface {p2, p1, p3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LpN;->A:LbG;

    return-object p0

    .line 56
    :pswitch_7
    iget-byte p1, p0, LpN;->B:B

    if-ne p1, v1, :cond_9

    .line 57
    sget-object p1, LpN;->C:LpN;

    return-object p1

    :cond_9
    if-nez p1, :cond_a

    return-object v2

    .line 58
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 59
    :goto_4
    iget-object p3, p0, LpN;->z:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_d

    .line 60
    iget-object p3, p0, LpN;->z:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LsN;

    .line 61
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_c

    if-eqz p1, :cond_b

    .line 62
    iput-byte v0, p0, LpN;->B:B

    :cond_b
    return-object v2

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_d
    const/4 p2, 0x0

    .line 63
    :goto_5
    iget-object p3, p0, LpN;->A:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_10

    .line 64
    iget-object p3, p0, LpN;->A:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LzN;

    .line 65
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_f

    if-eqz p1, :cond_e

    .line 66
    iput-byte v0, p0, LpN;->B:B

    :cond_e
    return-object v2

    :cond_f
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_10
    if-eqz p1, :cond_11

    .line 67
    iput-byte v1, p0, LpN;->B:B

    .line 68
    :cond_11
    sget-object p1, LpN;->C:LpN;

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

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, LpN;->z:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, LpN;->z:LbG;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    iget-object v1, p0, LpN;->A:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, LpN;->A:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
