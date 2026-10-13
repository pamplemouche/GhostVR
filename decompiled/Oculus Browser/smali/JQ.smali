.class public final LJQ;
.super LTF;
.source "PG"

# interfaces
.implements LKQ;


# static fields
.field public static final B:LJQ;

.field public static volatile C:LkG;


# instance fields
.field public A:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LJQ;

    invoke-direct {v0}, LJQ;-><init>()V

    sput-object v0, LJQ;->B:LJQ;

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

    .line 5
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iget v1, p0, LJQ;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7
    iget v1, p0, LJQ;->A:I

    .line 8
    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_1
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 10
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13
    :pswitch_0
    sget-object p1, LJQ;->C:LkG;

    if-nez p1, :cond_1

    const-class p1, LJQ;

    monitor-enter p1

    .line 14
    :try_start_0
    sget-object p2, LJQ;->C:LkG;

    if-nez p2, :cond_0

    .line 15
    new-instance p2, LGF;

    sget-object p3, LJQ;->B:LJQ;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LJQ;->C:LkG;

    .line 16
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 17
    :cond_1
    :goto_0
    sget-object p1, LJQ;->C:LkG;

    return-object p1

    .line 18
    :pswitch_1
    new-instance p1, LIQ;

    invoke-direct {p1, v2}, LIQ;-><init>(LHQ;)V

    return-object p1

    .line 19
    :pswitch_2
    new-instance p1, LJQ;

    invoke-direct {p1}, LJQ;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 20
    :pswitch_4
    check-cast p2, LtF;

    .line 21
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_6

    .line 22
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_3

    .line 23
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 25
    invoke-static {p1}, LVP;->a(I)LVP;

    move-result-object p3

    if-nez p3, :cond_4

    .line 26
    invoke-super {p0, v1, p1}, LTF;->a(II)V

    goto :goto_1

    .line 27
    :cond_4
    iget p3, p0, LJQ;->z:I

    or-int/2addr p3, v1

    iput p3, p0, LJQ;->z:I

    .line 28
    iput p1, p0, LJQ;->A:I
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

    .line 29
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 30
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 31
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :goto_3
    throw p1

    .line 33
    :cond_6
    :pswitch_5
    sget-object p1, LJQ;->B:LJQ;

    return-object p1

    .line 34
    :pswitch_6
    check-cast p2, LSF;

    .line 35
    check-cast p3, LJQ;

    .line 36
    iget p1, p0, LJQ;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    .line 37
    :goto_4
    iget v2, p0, LJQ;->A:I

    .line 38
    iget v3, p3, LJQ;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_8

    const/4 v0, 0x1

    .line 39
    :cond_8
    iget v1, p3, LJQ;->A:I

    .line 40
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZIZI)I

    move-result p1

    iput p1, p0, LJQ;->A:I

    .line 41
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_9

    .line 42
    iget p1, p0, LJQ;->z:I

    iget p2, p3, LJQ;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LJQ;->z:I

    :cond_9
    return-object p0

    .line 43
    :pswitch_7
    sget-object p1, LJQ;->B:LJQ;

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
    iget v0, p0, LJQ;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, LJQ;->A:I

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
