.class public final LOP;
.super LLF;
.source "PG"

# interfaces
.implements LPP;


# static fields
.field public static final B:LOP;

.field public static volatile C:LkG;


# instance fields
.field public A:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOP;

    invoke-direct {v0}, LOP;-><init>()V

    sput-object v0, LOP;->B:LOP;

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
    iput-byte v0, p0, LOP;->A:B

    return-void
.end method

.method public static m()LkG;
    .locals 1

    .line 1
    sget-object v0, LOP;->B:LOP;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 4
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, LLF;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10
    :pswitch_0
    sget-object p1, LOP;->C:LkG;

    if-nez p1, :cond_1

    const-class p1, LOP;

    monitor-enter p1

    .line 11
    :try_start_0
    sget-object p2, LOP;->C:LkG;

    if-nez p2, :cond_0

    .line 12
    new-instance p2, LGF;

    sget-object p3, LOP;->B:LOP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LOP;->C:LkG;

    .line 13
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14
    :cond_1
    :goto_0
    sget-object p1, LOP;->C:LkG;

    return-object p1

    .line 15
    :pswitch_1
    new-instance p1, LNP;

    invoke-direct {p1, v2}, LNP;-><init>(LMP;)V

    return-object p1

    .line 16
    :pswitch_2
    new-instance p1, LOP;

    invoke-direct {p1}, LOP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 17
    :pswitch_4
    check-cast p2, LtF;

    .line 18
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 19
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p0}, LTF;->b()LTF;

    move-result-object v2

    check-cast v2, LOP;

    invoke-virtual {p0, v2, p2, p3, p1}, LLF;->a(LhG;LtF;LBF;I)Z

    move-result p1
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 21
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 22
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :goto_2
    throw p1

    .line 25
    :cond_4
    :pswitch_5
    sget-object p1, LOP;->B:LOP;

    return-object p1

    .line 26
    :pswitch_6
    check-cast p2, LSF;

    .line 27
    check-cast p3, LOP;

    return-object p0

    .line 28
    :pswitch_7
    iget-byte p1, p0, LOP;->A:B

    if-ne p1, v0, :cond_5

    .line 29
    sget-object p1, LOP;->B:LOP;

    return-object p1

    :cond_5
    if-nez p1, :cond_6

    return-object v2

    .line 30
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 31
    invoke-virtual {p0}, LLF;->j()Z

    move-result p2

    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    .line 32
    iput-byte v1, p0, LOP;->A:B

    :cond_7
    return-object v2

    :cond_8
    if-eqz p1, :cond_9

    .line 33
    iput-byte v0, p0, LOP;->A:B

    .line 34
    :cond_9
    sget-object p1, LOP;->B:LOP;

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
    invoke-virtual {p0}, LLF;->l()LKF;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1, p1}, LKF;->a(ILxF;)V

    .line 3
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
