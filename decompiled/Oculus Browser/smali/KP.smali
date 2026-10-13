.class public final LKP;
.super LTF;
.source "PG"

# interfaces
.implements LLP;


# static fields
.field public static final C:LKP;

.field public static volatile D:LkG;

.field public static final E:LOF;


# instance fields
.field public A:LoJ;

.field public B:B

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LKP;

    invoke-direct {v0}, LKP;-><init>()V

    sput-object v0, LKP;->C:LKP;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    .line 3
    sget-object v1, LnP;->B:LnP;

    .line 4
    sget-object v3, LKP;->C:LKP;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LKP;

    const/4 v4, 0x0

    const v5, 0xbb74220

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LKP;->E:LOF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, LKP;->B:B

    return-void
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
    iget v1, p0, LKP;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0}, LKP;->j()LoJ;

    move-result-object v1

    invoke-static {v2, v1}, LxF;->b(ILhG;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_1
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 8
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 11
    :pswitch_0
    sget-object p1, LKP;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LKP;

    monitor-enter p1

    .line 12
    :try_start_0
    sget-object p2, LKP;->D:LkG;

    if-nez p2, :cond_0

    .line 13
    new-instance p2, LGF;

    sget-object p3, LKP;->C:LKP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LKP;->D:LkG;

    .line 14
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15
    :cond_1
    :goto_0
    sget-object p1, LKP;->D:LkG;

    return-object p1

    .line 16
    :pswitch_1
    new-instance p1, LJP;

    invoke-direct {p1, v2}, LJP;-><init>(LIP;)V

    return-object p1

    .line 17
    :pswitch_2
    new-instance p1, LKP;

    invoke-direct {p1}, LKP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v2

    .line 18
    :pswitch_4
    check-cast p2, LtF;

    .line 19
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    .line 20
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    .line 21
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 22
    :cond_3
    iget p1, p0, LKP;->z:I

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    .line 23
    iget-object p1, p0, LKP;->A:LoJ;

    invoke-virtual {p1}, LTF;->c()LFF;

    move-result-object p1

    check-cast p1, LnJ;

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 24
    :goto_2
    invoke-static {}, LoJ;->m()LkG;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v3

    check-cast v3, LoJ;

    iput-object v3, p0, LKP;->A:LoJ;

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {p1, v3}, LFF;->a(LTF;)LFF;

    .line 26
    invoke-virtual {p1}, LJF;->f()LLF;

    move-result-object p1

    check-cast p1, LoJ;

    iput-object p1, p0, LKP;->A:LoJ;

    .line 27
    :cond_5
    iget p1, p0, LKP;->z:I

    or-int/2addr p1, v1

    iput p1, p0, LKP;->z:I
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 29
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 31
    :goto_4
    throw p1

    .line 32
    :cond_7
    :pswitch_5
    sget-object p1, LKP;->C:LKP;

    return-object p1

    .line 33
    :pswitch_6
    check-cast p2, LSF;

    .line 34
    check-cast p3, LKP;

    .line 35
    iget-object p1, p0, LKP;->A:LoJ;

    iget-object v0, p3, LKP;->A:LoJ;

    invoke-interface {p2, p1, v0}, LSF;->a(LhG;LhG;)LhG;

    move-result-object p1

    check-cast p1, LoJ;

    iput-object p1, p0, LKP;->A:LoJ;

    .line 36
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_8

    .line 37
    iget p1, p0, LKP;->z:I

    iget p2, p3, LKP;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LKP;->z:I

    :cond_8
    return-object p0

    .line 38
    :pswitch_7
    iget-byte p1, p0, LKP;->B:B

    if-ne p1, v1, :cond_9

    .line 39
    sget-object p1, LKP;->C:LKP;

    return-object p1

    :cond_9
    if-nez p1, :cond_a

    return-object v2

    .line 40
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 41
    iget p2, p0, LKP;->z:I

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_b

    const/4 p2, 0x1

    goto :goto_5

    :cond_b
    const/4 p2, 0x0

    :goto_5
    if-eqz p2, :cond_d

    .line 42
    invoke-virtual {p0}, LKP;->j()LoJ;

    move-result-object p2

    invoke-virtual {p2}, LTF;->h()Z

    move-result p2

    if-nez p2, :cond_d

    if-eqz p1, :cond_c

    .line 43
    iput-byte v0, p0, LKP;->B:B

    :cond_c
    return-object v2

    :cond_d
    if-eqz p1, :cond_e

    .line 44
    iput-byte v1, p0, LKP;->B:B

    .line 45
    :cond_e
    sget-object p1, LKP;->C:LKP;

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
    iget v0, p0, LKP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, LKP;->j()LoJ;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LxF;->a(ILhG;)V

    .line 3
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()LoJ;
    .locals 1

    .line 1
    iget-object v0, p0, LKP;->A:LoJ;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, LoJ;->B:LoJ;

    :cond_0
    return-object v0
.end method
