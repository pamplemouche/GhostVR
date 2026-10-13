.class public final Lcq0;
.super LTF;
.source "PG"

# interfaces
.implements Ldq0;


# static fields
.field public static final C:Lcq0;

.field public static volatile D:LkG;


# instance fields
.field public A:I

.field public B:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcq0;

    invoke-direct {v0}, Lcq0;-><init>()V

    sput-object v0, Lcq0;->C:Lcq0;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 14
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15
    iget v1, p0, Lcq0;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 16
    invoke-static {v2}, LxF;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 17
    :cond_1
    iget v1, p0, Lcq0;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18
    invoke-static {v2}, LxF;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 19
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23
    :pswitch_0
    sget-object p1, Lcq0;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, Lcq0;

    monitor-enter p1

    .line 24
    :try_start_0
    sget-object p2, Lcq0;->D:LkG;

    if-nez p2, :cond_0

    .line 25
    new-instance p2, LGF;

    sget-object p3, Lcq0;->C:Lcq0;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, Lcq0;->D:LkG;

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
    sget-object p1, Lcq0;->D:LkG;

    return-object p1

    .line 28
    :pswitch_1
    new-instance p1, Lbq0;

    invoke-direct {p1, v2}, Lbq0;-><init>(Laq0;)V

    return-object p1

    .line 29
    :pswitch_2
    new-instance p1, Lcq0;

    invoke-direct {p1}, Lcq0;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 30
    :pswitch_4
    check-cast p2, LtF;

    .line 31
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 32
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0xd

    if-eq p1, p3, :cond_4

    const/16 p3, 0x15

    if-eq p1, p3, :cond_3

    .line 33
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 34
    :cond_3
    iget p1, p0, Lcq0;->z:I

    or-int/2addr p1, v3

    iput p1, p0, Lcq0;->z:I

    .line 35
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 36
    iput p1, p0, Lcq0;->B:I

    goto :goto_1

    .line 37
    :cond_4
    iget p1, p0, Lcq0;->z:I

    or-int/2addr p1, v1

    iput p1, p0, Lcq0;->z:I

    .line 38
    invoke-virtual {p2}, LtF;->i()I

    move-result p1

    .line 39
    iput p1, p0, Lcq0;->A:I
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

    .line 40
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 41
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :goto_3
    throw p1

    .line 44
    :cond_6
    :pswitch_5
    sget-object p1, Lcq0;->C:Lcq0;

    return-object p1

    .line 45
    :pswitch_6
    check-cast p2, LSF;

    .line 46
    check-cast p3, Lcq0;

    .line 47
    iget p1, p0, Lcq0;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 48
    :goto_4
    iget v2, p0, Lcq0;->A:I

    .line 49
    iget v4, p3, Lcq0;->z:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 50
    :goto_5
    iget v5, p3, Lcq0;->A:I

    .line 51
    invoke-interface {p2, p1, v2, v4, v5}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lcq0;->A:I

    .line 52
    iget p1, p0, Lcq0;->z:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 53
    :goto_6
    iget v2, p0, Lcq0;->B:I

    .line 54
    iget v4, p3, Lcq0;->z:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_a

    const/4 v0, 0x1

    .line 55
    :cond_a
    iget v1, p3, Lcq0;->B:I

    .line 56
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, Lcq0;->B:I

    .line 57
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_b

    .line 58
    iget p1, p0, Lcq0;->z:I

    iget p2, p3, Lcq0;->z:I

    or-int/2addr p1, p2

    iput p1, p0, Lcq0;->z:I

    :cond_b
    return-object p0

    .line 59
    :pswitch_7
    sget-object p1, Lcq0;->C:Lcq0;

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
    iget v0, p0, Lcq0;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lcq0;->A:I

    if-eqz p1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, LvF;

    const/16 v3, 0xd

    .line 4
    invoke-virtual {v1, v3}, LvF;->c(I)V

    .line 5
    invoke-virtual {v1, v0}, LvF;->a(I)V

    goto :goto_0

    .line 6
    :cond_0
    throw v2

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lcq0;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 8
    iget v0, p0, Lcq0;->B:I

    if-eqz p1, :cond_2

    .line 9
    move-object v1, p1

    check-cast v1, LvF;

    const/16 v2, 0x15

    .line 10
    invoke-virtual {v1, v2}, LvF;->c(I)V

    .line 11
    invoke-virtual {v1, v0}, LvF;->a(I)V

    goto :goto_1

    .line 12
    :cond_2
    throw v2

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
