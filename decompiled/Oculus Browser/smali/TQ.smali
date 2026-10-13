.class public final LTQ;
.super LTF;
.source "PG"

# interfaces
.implements LUQ;


# static fields
.field public static final D:LTQ;

.field public static volatile E:LkG;

.field public static final F:LOF;


# instance fields
.field public A:LbG;

.field public B:LfQ;

.field public C:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LTQ;

    invoke-direct {v0}, LTQ;-><init>()V

    sput-object v0, LTQ;->D:LTQ;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    .line 3
    sget-object v1, LTP;->D:LTP;

    .line 4
    sget-object v3, LTQ;->D:LTQ;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LTQ;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LTQ;->F:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LTQ;->C:B

    .line 3
    sget-object v0, LlG;->y:LlG;

    .line 4
    iput-object v0, p0, LTQ;->A:LbG;

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
    iget-object v2, p0, LTQ;->A:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 10
    iget-object v2, p0, LTQ;->A:LbG;

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
    iget v0, p0, LTQ;->z:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    .line 13
    iget-object v2, p0, LTQ;->B:LfQ;

    if-nez v2, :cond_2

    .line 14
    sget-object v2, LfQ;->B:LfQ;

    .line 15
    :cond_2
    invoke-static {v0, v2}, LxF;->b(ILhG;)I

    move-result v0

    add-int/2addr v1, v0

    .line 16
    :cond_3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 18
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20
    :pswitch_0
    sget-object p1, LTQ;->E:LkG;

    if-nez p1, :cond_1

    const-class p1, LTQ;

    monitor-enter p1

    .line 21
    :try_start_0
    sget-object p2, LTQ;->E:LkG;

    if-nez p2, :cond_0

    .line 22
    new-instance p2, LGF;

    sget-object p3, LTQ;->D:LTQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LTQ;->E:LkG;

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
    sget-object p1, LTQ;->E:LkG;

    return-object p1

    .line 25
    :pswitch_1
    new-instance p1, LSQ;

    invoke-direct {p1, v2}, LSQ;-><init>(LRQ;)V

    return-object p1

    .line 26
    :pswitch_2
    new-instance p1, LTQ;

    invoke-direct {p1}, LTQ;-><init>()V

    return-object p1

    .line 27
    :pswitch_3
    iget-object p1, p0, LTQ;->A:LbG;

    check-cast p1, LhF;

    .line 28
    iput-boolean v0, p1, LhF;->w:Z

    return-object v2

    .line 29
    :pswitch_4
    check-cast p2, LtF;

    .line 30
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 31
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x12

    if-eq p1, v3, :cond_3

    .line 32
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 33
    :cond_3
    iget p1, p0, LTQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    .line 34
    iget-object p1, p0, LTQ;->B:LfQ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LeQ;

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 35
    :goto_2
    invoke-static {}, LfQ;->j()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LfQ;

    iput-object v3, p0, LTQ;->B:LfQ;

    if-eqz p1, :cond_5

    .line 36
    invoke-virtual {p1, v3}, LFF;->a(LTF;)LFF;

    .line 37
    invoke-virtual {p1}, LFF;->f()LTF;

    move-result-object p1

    check-cast p1, LfQ;

    iput-object p1, p0, LTQ;->B:LfQ;

    .line 38
    :cond_5
    iget p1, p0, LTQ;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LTQ;->z:I

    goto :goto_1

    .line 39
    :cond_6
    iget-object p1, p0, LTQ;->A:LbG;

    check-cast p1, LhF;

    .line 40
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_7

    .line 41
    iget-object p1, p0, LTQ;->A:LbG;

    .line 42
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LTQ;->A:LbG;

    .line 43
    :cond_7
    iget-object p1, p0, LTQ;->A:LbG;

    .line 44
    sget-object v3, LFQ;->F:LFQ;

    invoke-virtual {v3}, LTF;->g()LkG;

    move-result-object v3

    .line 45
    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LFQ;

    .line 46
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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
    :goto_4
    throw p1

    .line 51
    :cond_9
    :pswitch_5
    sget-object p1, LTQ;->D:LTQ;

    return-object p1

    .line 52
    :pswitch_6
    check-cast p2, LSF;

    .line 53
    check-cast p3, LTQ;

    .line 54
    iget-object p1, p0, LTQ;->A:LbG;

    iget-object v0, p3, LTQ;->A:LbG;

    invoke-interface {p2, p1, v0}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LTQ;->A:LbG;

    .line 55
    iget-object p1, p0, LTQ;->B:LfQ;

    iget-object v0, p3, LTQ;->B:LfQ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LfQ;

    iput-object p1, p0, LTQ;->B:LfQ;

    .line 56
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_a

    .line 57
    iget p1, p0, LTQ;->z:I

    iget p2, p3, LTQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LTQ;->z:I

    :cond_a
    return-object p0

    .line 58
    :pswitch_7
    iget-byte p1, p0, LTQ;->C:B

    if-ne p1, v1, :cond_b

    .line 59
    sget-object p1, LTQ;->D:LTQ;

    return-object p1

    :cond_b
    if-nez p1, :cond_c

    return-object v2

    .line 60
    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 61
    :goto_5
    iget-object p3, p0, LTQ;->A:LbG;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_f

    .line 62
    iget-object p3, p0, LTQ;->A:LbG;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LFQ;

    .line 63
    invoke-virtual {p3}, LTF;->h()Z

    move-result p3

    if-nez p3, :cond_e

    if-eqz p1, :cond_d

    .line 64
    iput-byte v0, p0, LTQ;->C:B

    :cond_d
    return-object v2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_f
    if-eqz p1, :cond_10

    .line 65
    iput-byte v1, p0, LTQ;->C:B

    .line 66
    :cond_10
    sget-object p1, LTQ;->D:LTQ;

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
    iget-object v1, p0, LTQ;->A:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LTQ;->A:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, LTQ;->z:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, LTQ;->B:LfQ;

    if-nez v1, :cond_1

    .line 5
    sget-object v1, LfQ;->B:LfQ;

    .line 6
    :cond_1
    invoke-virtual {p1, v0, v1}, LxF;->a(ILhG;)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
