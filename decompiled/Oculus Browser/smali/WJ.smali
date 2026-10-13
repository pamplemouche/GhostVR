.class public final LWJ;
.super LTF;
.source "PG"

# interfaces
.implements LXJ;


# static fields
.field public static final C:LWJ;

.field public static volatile D:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWJ;

    invoke-direct {v0}, LWJ;-><init>()V

    sput-object v0, LWJ;->C:LWJ;

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
    iput-object v0, p0, LWJ;->A:Ljava/lang/String;

    .line 3
    iput-object v0, p0, LWJ;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 8
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    iget v1, p0, LWJ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, LWJ;->A:Ljava/lang/String;

    .line 11
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LWJ;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, LWJ;->B:Ljava/lang/String;

    .line 14
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19
    :pswitch_0
    sget-object p1, LWJ;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LWJ;

    monitor-enter p1

    .line 20
    :try_start_0
    sget-object p2, LWJ;->D:LkG;

    if-nez p2, :cond_0

    .line 21
    new-instance p2, LGF;

    sget-object p3, LWJ;->C:LWJ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LWJ;->D:LkG;

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
    sget-object p1, LWJ;->D:LkG;

    return-object p1

    .line 24
    :pswitch_1
    new-instance p1, LVJ;

    invoke-direct {p1, v2}, LVJ;-><init>(LqJ;)V

    return-object p1

    .line 25
    :pswitch_2
    new-instance p1, LWJ;

    invoke-direct {p1}, LWJ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 26
    :pswitch_4
    check-cast p2, LtF;

    .line 27
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 28
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0xa

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_3

    .line 29
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 31
    iget p3, p0, LWJ;->z:I

    or-int/2addr p3, v3

    iput p3, p0, LWJ;->z:I

    .line 32
    iput-object p1, p0, LWJ;->B:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget p3, p0, LWJ;->z:I

    or-int/2addr p3, v1

    iput p3, p0, LWJ;->z:I

    .line 35
    iput-object p1, p0, LWJ;->A:Ljava/lang/String;
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

    .line 36
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 37
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 38
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 39
    :goto_3
    throw p1

    .line 40
    :cond_6
    :pswitch_5
    sget-object p1, LWJ;->C:LWJ;

    return-object p1

    .line 41
    :pswitch_6
    check-cast p2, LSF;

    .line 42
    check-cast p3, LWJ;

    .line 43
    iget p1, p0, LWJ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 44
    :goto_4
    iget-object v2, p0, LWJ;->A:Ljava/lang/String;

    .line 45
    iget v4, p3, LWJ;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 46
    :goto_5
    iget-object v5, p3, LWJ;->A:Ljava/lang/String;

    .line 47
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LWJ;->A:Ljava/lang/String;

    .line 48
    iget p1, p0, LWJ;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 49
    :goto_6
    iget-object v2, p0, LWJ;->B:Ljava/lang/String;

    .line 50
    iget v4, p3, LWJ;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_a

    const/4 v0, 0x1

    .line 51
    :cond_a
    iget-object v1, p3, LWJ;->B:Ljava/lang/String;

    .line 52
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LWJ;->B:Ljava/lang/String;

    .line 53
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 54
    iget p1, p0, LWJ;->z:I

    iget p2, p3, LWJ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LWJ;->z:I

    :cond_b
    return-object p0

    .line 55
    :pswitch_7
    sget-object p1, LWJ;->C:LWJ;

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
    .locals 2

    .line 1
    iget v0, p0, LWJ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LWJ;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LWJ;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LWJ;->B:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
