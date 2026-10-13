.class public final LBO;
.super LTF;
.source "PG"

# interfaces
.implements LCO;


# static fields
.field public static final C:LBO;

.field public static volatile D:LkG;


# instance fields
.field public A:I

.field public B:Ljava/lang/Object;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LBO;

    invoke-direct {v0}, LBO;-><init>()V

    sput-object v0, LBO;->C:LBO;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LBO;->A:I

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
    iget v1, p0, LBO;->A:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, LBO;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, LxF;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_1
    iget v1, p0, LBO;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-ne v1, v2, :cond_2

    .line 13
    iget-object v1, p0, LBO;->B:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 14
    :goto_0
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_3
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 16
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19
    :pswitch_0
    sget-object p1, LBO;->D:LkG;

    if-nez p1, :cond_1

    const-class p1, LBO;

    monitor-enter p1

    .line 20
    :try_start_0
    sget-object p2, LBO;->D:LkG;

    if-nez p2, :cond_0

    .line 21
    new-instance p2, LGF;

    sget-object p3, LBO;->C:LBO;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LBO;->D:LkG;

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
    sget-object p1, LBO;->D:LkG;

    return-object p1

    .line 24
    :pswitch_1
    new-instance p1, LyO;

    invoke-direct {p1, v1}, LyO;-><init>(LQN;)V

    return-object p1

    .line 25
    :pswitch_2
    new-instance p1, LBO;

    invoke-direct {p1}, LBO;-><init>()V

    return-object p1

    :pswitch_3
    return-object v1

    .line 26
    :pswitch_4
    check-cast p2, LtF;

    .line 27
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v3, :cond_7

    .line 28
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

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
    iput v2, p0, LBO;->A:I

    .line 32
    iput-object p1, p0, LBO;->B:Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {p2}, LtF;->k()I

    move-result p1

    .line 34
    invoke-static {p1}, LzO;->a(I)LzO;

    move-result-object p3

    if-nez p3, :cond_5

    .line 35
    invoke-super {p0, v0, p1}, LTF;->a(II)V

    goto :goto_1

    .line 36
    :cond_5
    iput v0, p0, LBO;->A:I

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LBO;->B:Ljava/lang/Object;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 40
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    :goto_3
    throw p1

    .line 42
    :cond_7
    :pswitch_5
    sget-object p1, LBO;->C:LBO;

    return-object p1

    .line 43
    :pswitch_6
    check-cast p2, LSF;

    .line 44
    check-cast p3, LBO;

    .line 45
    iget p1, p3, LBO;->A:I

    invoke-static {p1}, LAO;->a(I)LAO;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_c

    if-eq p1, v0, :cond_a

    if-eq p1, v2, :cond_8

    goto :goto_7

    .line 47
    :cond_8
    iget p1, p0, LBO;->A:I

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-interface {p2, v0}, LSF;->a(Z)V

    goto :goto_7

    .line 48
    :cond_a
    iget p1, p0, LBO;->A:I

    if-ne p1, v2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    :goto_5
    iget-object p1, p0, LBO;->B:Ljava/lang/Object;

    iget-object v1, p3, LBO;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->d(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LBO;->B:Ljava/lang/Object;

    goto :goto_7

    .line 49
    :cond_c
    iget p1, p0, LBO;->A:I

    if-ne p1, v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    :goto_6
    iget-object p1, p0, LBO;->B:Ljava/lang/Object;

    iget-object v1, p3, LBO;->B:Ljava/lang/Object;

    invoke-interface {p2, v0, p1, v1}, LSF;->b(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LBO;->B:Ljava/lang/Object;

    .line 50
    :goto_7
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_f

    .line 51
    iget p1, p3, LBO;->A:I

    if-eqz p1, :cond_e

    .line 52
    iput p1, p0, LBO;->A:I

    .line 53
    :cond_e
    iget p1, p0, LBO;->z:I

    iget p2, p3, LBO;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LBO;->z:I

    :cond_f
    return-object p0

    .line 54
    :pswitch_7
    sget-object p1, LBO;->C:LBO;

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
    iget v0, p0, LBO;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LBO;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->b(II)V

    .line 4
    :cond_0
    iget v0, p0, LBO;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LBO;->B:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 6
    :goto_0
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 7
    :cond_2
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
