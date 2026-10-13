.class public final LWK;
.super LTF;
.source "PG"

# interfaces
.implements LXK;


# static fields
.field public static final B:LWK;

.field public static volatile C:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LWK;

    invoke-direct {v0}, LWK;-><init>()V

    sput-object v0, LWK;->B:LWK;

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
    iput-object v0, p0, LWK;->A:Ljava/lang/String;

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
    iget v1, p0, LWK;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 7
    iget-object v1, p0, LWK;->A:Ljava/lang/String;

    .line 8
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

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
    sget-object p1, LWK;->C:LkG;

    if-nez p1, :cond_1

    const-class p1, LWK;

    monitor-enter p1

    .line 14
    :try_start_0
    sget-object p2, LWK;->C:LkG;

    if-nez p2, :cond_0

    .line 15
    new-instance p2, LGF;

    sget-object p3, LWK;->B:LWK;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LWK;->C:LkG;

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
    sget-object p1, LWK;->C:LkG;

    return-object p1

    .line 18
    :pswitch_1
    new-instance p1, LVK;

    invoke-direct {p1, v2}, LVK;-><init>(LtK;)V

    return-object p1

    .line 19
    :pswitch_2
    new-instance p1, LWK;

    invoke-direct {p1}, LWK;-><init>()V

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
    if-nez v0, :cond_5

    .line 22
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p3, 0xa

    if-eq p1, p3, :cond_3

    .line 23
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object p1

    .line 25
    iget p3, p0, LWK;->z:I

    or-int/2addr p3, v1

    iput p3, p0, LWK;->z:I

    .line 26
    iput-object p1, p0, LWK;->A:Ljava/lang/String;
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

    .line 27
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 28
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :goto_3
    throw p1

    .line 31
    :cond_5
    :pswitch_5
    sget-object p1, LWK;->B:LWK;

    return-object p1

    .line 32
    :pswitch_6
    check-cast p2, LSF;

    .line 33
    check-cast p3, LWK;

    .line 34
    iget p1, p0, LWK;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 35
    :goto_4
    iget-object v2, p0, LWK;->A:Ljava/lang/String;

    .line 36
    iget v3, p3, LWK;->z:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_7

    const/4 v0, 0x1

    .line 37
    :cond_7
    iget-object v1, p3, LWK;->A:Ljava/lang/String;

    .line 38
    invoke-interface {p2, p1, v2, v0, v1}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LWK;->A:Ljava/lang/String;

    .line 39
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_8

    .line 40
    iget p1, p0, LWK;->z:I

    iget p2, p3, LWK;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LWK;->z:I

    :cond_8
    return-object p0

    .line 41
    :pswitch_7
    sget-object p1, LWK;->B:LWK;

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
    iget v0, p0, LWK;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LWK;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
