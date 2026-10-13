.class public final LDP;
.super LTF;
.source "PG"

# interfaces
.implements LEP;


# static fields
.field public static final C:LDP;

.field public static volatile D:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LDP;

    invoke-direct {v0}, LDP;-><init>()V

    sput-object v0, LDP;->C:LDP;

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
    iput-object v0, p0, LDP;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 7
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iget v1, p0, LDP;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, LDP;->A:Ljava/lang/String;

    .line 10
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_1
    iget v1, p0, LDP;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12
    iget-wide v3, p0, LDP;->B:J

    .line 13
    invoke-static {v2, v3, v4}, LxF;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_2
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 15
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18
    :pswitch_0
    sget-object p1, LDP;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LDP;

    monitor-enter p1

    .line 19
    :try_start_0
    sget-object p2, LDP;->D:LkG;

    if-nez p2, :cond_0

    .line 20
    new-instance p2, LGF;

    sget-object p3, LDP;->C:LDP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LDP;->D:LkG;

    .line 21
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 22
    :cond_1
    :goto_0
    sget-object p1, LDP;->D:LkG;

    return-object p1

    .line 23
    :pswitch_1
    new-instance p1, LCP;

    invoke-direct {p1, v0}, LCP;-><init>(LiP;)V

    return-object p1

    .line 24
    :pswitch_2
    new-instance p1, LDP;

    invoke-direct {p1}, LDP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v0

    .line 25
    :pswitch_4
    check-cast p2, LtF;

    .line 26
    check-cast p3, LBF;

    const/4 p1, 0x0

    const/4 p3, 0x1

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 27
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 28
    invoke-virtual {p0, v0, p2}, LTF;->a(ILtF;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 29
    :cond_3
    iget v0, p0, LDP;->z:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, LDP;->z:I

    .line 30
    invoke-virtual {p2}, LtF;->l()J

    move-result-wide v0

    .line 31
    iput-wide v0, p0, LDP;->B:J

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget v1, p0, LDP;->z:I

    or-int/2addr v1, p3

    iput v1, p0, LDP;->z:I

    .line 34
    iput-object v0, p0, LDP;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 35
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 36
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 37
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 38
    :goto_3
    throw p1

    .line 39
    :cond_6
    :pswitch_5
    sget-object p1, LDP;->C:LDP;

    return-object p1

    .line 40
    :pswitch_6
    move-object p1, p2

    check-cast p1, LSF;

    .line 41
    check-cast p3, LDP;

    .line 42
    invoke-virtual {p0}, LDP;->k()Z

    move-result p2

    iget-object v0, p0, LDP;->A:Ljava/lang/String;

    .line 43
    invoke-virtual {p3}, LDP;->k()Z

    move-result v1

    iget-object v2, p3, LDP;->A:Ljava/lang/String;

    .line 44
    invoke-interface {p1, p2, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, LDP;->A:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, LDP;->j()Z

    move-result v1

    iget-wide v2, p0, LDP;->B:J

    .line 46
    invoke-virtual {p3}, LDP;->j()Z

    move-result v4

    iget-wide v5, p3, LDP;->B:J

    move-object v0, p1

    .line 47
    invoke-interface/range {v0 .. v6}, LSF;->a(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, LDP;->B:J

    .line 48
    sget-object p2, LQF;->a:LQF;

    if-ne p1, p2, :cond_7

    .line 49
    iget p1, p0, LDP;->z:I

    iget p2, p3, LDP;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LDP;->z:I

    :cond_7
    return-object p0

    .line 50
    :pswitch_7
    sget-object p1, LDP;->C:LDP;

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
    iget v0, p0, LDP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LDP;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LDP;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-wide v2, p0, LDP;->B:J

    invoke-virtual {p1, v1, v2, v3}, LxF;->b(IJ)V

    .line 6
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, LDP;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, LDP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
