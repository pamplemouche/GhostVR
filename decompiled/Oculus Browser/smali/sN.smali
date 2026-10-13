.class public final LsN;
.super LTF;
.source "PG"

# interfaces
.implements LtN;


# static fields
.field public static final E:LsN;

.field public static volatile F:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:LbG;

.field public C:LbG;

.field public D:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LsN;

    invoke-direct {v0}, LsN;-><init>()V

    sput-object v0, LsN;->E:LsN;

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
    iput-byte v0, p0, LsN;->D:B

    const-string v0, ""

    .line 3
    iput-object v0, p0, LsN;->A:Ljava/lang/String;

    .line 4
    sget-object v0, LlG;->y:LlG;

    .line 5
    iput-object v0, p0, LsN;->B:LbG;

    .line 6
    iput-object v0, p0, LsN;->C:LbG;

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LsN;->E:LsN;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 9
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10
    :cond_0
    iget v0, p0, LsN;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 11
    iget-object v0, p0, LsN;->A:Ljava/lang/String;

    .line 12
    invoke-static {v1, v0}, LxF;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    const/4 v0, 0x0

    .line 13
    :goto_1
    iget-object v3, p0, LsN;->B:LbG;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v3, 0x2

    .line 14
    iget-object v4, p0, LsN;->B:LbG;

    .line 15
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LhG;

    invoke-static {v3, v4}, LxF;->b(ILhG;)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 16
    :cond_2
    :goto_2
    iget-object v0, p0, LsN;->C:LbG;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    const/4 v0, 0x3

    .line 17
    iget-object v3, p0, LsN;->C:LbG;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-static {v0, v3}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    sget-object p1, LsN;->F:LkG;

    if-nez p1, :cond_1

    const-class p1, LsN;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, LsN;->F:LkG;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, LGF;

    sget-object p3, LsN;->E:LsN;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LsN;->F:LkG;

    .line 26
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 27
    :cond_1
    :goto_0
    sget-object p1, LsN;->F:LkG;

    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, LrN;

    invoke-direct {p1, v2}, LrN;-><init>(LjN;)V

    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, LsN;

    invoke-direct {p1}, LsN;-><init>()V

    return-object p1

    .line 30
    :pswitch_3
    iget-object p1, p0, LsN;->B:LbG;

    check-cast p1, LhF;

    .line 31
    iput-boolean v0, p1, LhF;->w:Z

    .line 32
    iget-object p1, p0, LsN;->C:LbG;

    check-cast p1, LhF;

    .line 33
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 34
    :pswitch_4
    check-cast p2, LtF;

    .line 35
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 36
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v2, 0xa

    if-eq p1, v2, :cond_7

    const/16 v2, 0x12

    if-eq p1, v2, :cond_5

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    .line 37
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 38
    :cond_3
    iget-object p1, p0, LsN;->C:LbG;

    check-cast p1, LhF;

    .line 39
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 40
    iget-object p1, p0, LsN;->C:LbG;

    .line 41
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsN;->C:LbG;

    .line 42
    :cond_4
    iget-object p1, p0, LsN;->C:LbG;

    .line 43
    invoke-static {}, LdN;->j()LkG;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LdN;

    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 45
    :cond_5
    iget-object p1, p0, LsN;->B:LbG;

    check-cast p1, LhF;

    .line 46
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_6

    .line 47
    iget-object p1, p0, LsN;->B:LbG;

    .line 48
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsN;->B:LbG;

    .line 49
    :cond_6
    iget-object p1, p0, LsN;->B:LbG;

    .line 50
    sget-object v2, LrO;->Z:LrO;

    invoke-virtual {v2}, LTF;->g()LkG;

    move-result-object v2

    .line 51
    invoke-virtual {p2, v2, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v2

    check-cast v2, LrO;

    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget v2, p0, LsN;->z:I

    or-int/2addr v2, v1

    iput v2, p0, LsN;->z:I

    .line 55
    iput-object p1, p0, LsN;->A:Ljava/lang/String;
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

    .line 56
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 57
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 58
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :goto_3
    throw p1

    .line 60
    :cond_9
    :pswitch_5
    sget-object p1, LsN;->E:LsN;

    return-object p1

    .line 61
    :pswitch_6
    check-cast p2, LSF;

    .line 62
    check-cast p3, LsN;

    .line 63
    iget p1, p0, LsN;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/4 p1, 0x0

    .line 64
    :goto_4
    iget-object v2, p0, LsN;->A:Ljava/lang/String;

    .line 65
    iget v3, p3, LsN;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_b

    const/4 v0, 0x1

    .line 66
    :cond_b
    iget-object v1, p3, LsN;->A:Ljava/lang/String;

    .line 67
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LsN;->A:Ljava/lang/String;

    .line 68
    iget-object p1, p0, LsN;->B:LbG;

    iget-object v0, p3, LsN;->B:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsN;->B:LbG;

    .line 69
    iget-object p1, p0, LsN;->C:LbG;

    iget-object v0, p3, LsN;->C:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LsN;->C:LbG;

    .line 70
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_c

    .line 71
    iget p1, p0, LsN;->z:I

    iget p2, p3, LsN;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LsN;->z:I

    :cond_c
    return-object p0

    .line 72
    :pswitch_7
    iget-byte p1, p0, LsN;->D:B

    if-ne p1, v1, :cond_d

    .line 73
    sget-object p1, LsN;->E:LsN;

    return-object p1

    :cond_d
    if-nez p1, :cond_e

    return-object v2

    .line 74
    :cond_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 75
    :goto_5
    iget-object p3, p0, LsN;->B:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_11

    .line 76
    iget-object p3, p0, LsN;->B:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LrO;

    .line 77
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_10

    if-eqz p1, :cond_f

    .line 78
    iput-byte v0, p0, LsN;->D:B

    :cond_f
    return-object v2

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_11
    if-eqz p1, :cond_12

    .line 79
    iput-byte v1, p0, LsN;->D:B

    .line 80
    :cond_12
    sget-object p1, LsN;->E:LsN;

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
    iget v0, p0, LsN;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LsN;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, LsN;->B:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, LsN;->B:LbG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LhG;

    invoke-virtual {p1, v2, v3}, LxF;->a(ILhG;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, LsN;->C:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, LsN;->C:LbG;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    invoke-virtual {p1, v1, v2}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
