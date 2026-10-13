.class public final LfQ;
.super LTF;
.source "PG"

# interfaces
.implements LgQ;


# static fields
.field public static final B:LfQ;

.field public static volatile C:LkG;


# instance fields
.field public A:LrF;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LfQ;

    invoke-direct {v0}, LfQ;-><init>()V

    sput-object v0, LfQ;->B:LfQ;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LrF;->x:LrF;

    iput-object v0, p0, LfQ;->A:LrF;

    return-void
.end method

.method public static j()LkG;
    .locals 1

    .line 1
    sget-object v0, LfQ;->B:LfQ;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 4
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget v1, p0, LfQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, p0, LfQ;->A:LrF;

    .line 7
    invoke-static {v2, v1}, LxF;->b(ILrF;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_1
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 9
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12
    :pswitch_0
    sget-object p1, LfQ;->C:LkG;

    if-nez p1, :cond_1

    const-class p1, LfQ;

    monitor-enter p1

    .line 13
    :try_start_0
    sget-object p2, LfQ;->C:LkG;

    if-nez p2, :cond_0

    .line 14
    new-instance p2, LGF;

    sget-object p3, LfQ;->B:LfQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LfQ;->C:LkG;

    .line 15
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 16
    :cond_1
    :goto_0
    sget-object p1, LfQ;->C:LkG;

    return-object p1

    .line 17
    :pswitch_1
    new-instance p1, LeQ;

    invoke-direct {p1, v2}, LeQ;-><init>(LdQ;)V

    return-object p1

    .line 18
    :pswitch_2
    new-instance p1, LfQ;

    invoke-direct {p1}, LfQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 19
    :pswitch_4
    check-cast p2, LtF;

    .line 20
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 21
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p3, 0xa

    if-eq p1, p3, :cond_3

    .line 22
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 23
    :cond_3
    iget p1, p0, LfQ;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LfQ;->z:I

    .line 24
    invoke-virtual {p2}, LtF;->c()LrF;

    move-result-object p1

    iput-object p1, p0, LfQ;->A:LrF;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 27
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    :goto_3
    throw p1

    .line 29
    :cond_5
    :pswitch_5
    sget-object p1, LfQ;->B:LfQ;

    return-object p1

    .line 30
    :pswitch_6
    check-cast p2, LSF;

    .line 31
    check-cast p3, LfQ;

    .line 32
    iget p1, p0, LfQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 33
    :goto_4
    iget-object v2, p0, LfQ;->A:LrF;

    .line 34
    iget v3, p3, LfQ;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_7

    const/4 v0, 0x1

    .line 35
    :cond_7
    iget-object v1, p3, LfQ;->A:LrF;

    .line 36
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLrF;ZLrF;)LrF;

    move-result-object p1

    iput-object p1, p0, LfQ;->A:LrF;

    .line 37
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_8

    .line 38
    iget p1, p0, LfQ;->z:I

    iget p2, p3, LfQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LfQ;->z:I

    :cond_8
    return-object p0

    .line 39
    :pswitch_7
    sget-object p1, LfQ;->B:LfQ;

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
    .locals 2

    .line 1
    iget v0, p0, LfQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LfQ;->A:LrF;

    invoke-virtual {p1, v1, v0}, LxF;->a(ILrF;)V

    .line 3
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
