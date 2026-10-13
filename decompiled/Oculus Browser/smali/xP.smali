.class public final LxP;
.super LTF;
.source "PG"

# interfaces
.implements LyP;


# static fields
.field public static final F:LxP;

.field public static volatile G:LkG;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LxP;

    invoke-direct {v0}, LxP;-><init>()V

    sput-object v0, LxP;->F:LxP;

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
    iput-object v0, p0, LxP;->A:Ljava/lang/String;

    .line 3
    iput-object v0, p0, LxP;->B:Ljava/lang/String;

    .line 4
    iput-object v0, p0, LxP;->C:Ljava/lang/String;

    .line 5
    iput-object v0, p0, LxP;->D:Ljava/lang/String;

    .line 6
    iput-object v0, p0, LxP;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 17
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 18
    iget v1, p0, LxP;->z:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 19
    iget-object v1, p0, LxP;->A:Ljava/lang/String;

    .line 20
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_1
    iget v1, p0, LxP;->z:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 22
    iget-object v1, p0, LxP;->B:Ljava/lang/String;

    .line 23
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_2
    iget v1, p0, LxP;->z:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 25
    iget-object v3, p0, LxP;->C:Ljava/lang/String;

    .line 26
    invoke-static {v1, v3}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_3
    iget v1, p0, LxP;->z:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 28
    iget-object v1, p0, LxP;->D:Ljava/lang/String;

    .line 29
    invoke-static {v2, v1}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_4
    iget v1, p0, LxP;->z:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 31
    iget-object v2, p0, LxP;->E:Ljava/lang/String;

    .line 32
    invoke-static {v1, v2}, LxF;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_5
    iget-object v1, p0, LTF;->x:LwG;

    invoke-virtual {v1}, LwG;->a()I

    move-result v1

    add-int/2addr v1, v0

    .line 34
    iput v1, p0, LTF;->y:I

    return v1
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 35
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 37
    :pswitch_0
    sget-object p1, LxP;->G:LkG;

    if-nez p1, :cond_1

    const-class p1, LxP;

    monitor-enter p1

    .line 38
    :try_start_0
    sget-object p2, LxP;->G:LkG;

    if-nez p2, :cond_0

    .line 39
    new-instance p2, LGF;

    sget-object p3, LxP;->F:LxP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LxP;->G:LkG;

    .line 40
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 41
    :cond_1
    :goto_0
    sget-object p1, LxP;->G:LkG;

    return-object p1

    .line 42
    :pswitch_1
    new-instance p1, LwP;

    invoke-direct {p1, v0}, LwP;-><init>(LiP;)V

    return-object p1

    .line 43
    :pswitch_2
    new-instance p1, LxP;

    invoke-direct {p1}, LxP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v0

    .line 44
    :pswitch_4
    check-cast p2, LtF;

    .line 45
    check-cast p3, LBF;

    const/4 p1, 0x0

    const/4 p3, 0x1

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    .line 46
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x22

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    .line 47
    invoke-virtual {p0, v0, p2}, LTF;->a(ILtF;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget v1, p0, LxP;->z:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, LxP;->z:I

    .line 50
    iput-object v0, p0, LxP;->E:Ljava/lang/String;

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget v1, p0, LxP;->z:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, LxP;->z:I

    .line 53
    iput-object v0, p0, LxP;->D:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_5
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget v1, p0, LxP;->z:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, LxP;->z:I

    .line 56
    iput-object v0, p0, LxP;->C:Ljava/lang/String;

    goto :goto_1

    .line 57
    :cond_6
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget v1, p0, LxP;->z:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, LxP;->z:I

    .line 59
    iput-object v0, p0, LxP;->B:Ljava/lang/String;

    goto :goto_1

    .line 60
    :cond_7
    invoke-virtual {p2}, LtF;->n()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget v1, p0, LxP;->z:I

    or-int/2addr v1, p3

    iput v1, p0, LxP;->z:I

    .line 62
    iput-object v0, p0, LxP;->A:Ljava/lang/String;
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 63
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 64
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 66
    :goto_3
    throw p1

    .line 67
    :cond_9
    :pswitch_5
    sget-object p1, LxP;->F:LxP;

    return-object p1

    .line 68
    :pswitch_6
    check-cast p2, LSF;

    .line 69
    check-cast p3, LxP;

    .line 70
    invoke-virtual {p0}, LxP;->n()Z

    move-result p1

    iget-object v0, p0, LxP;->A:Ljava/lang/String;

    .line 71
    invoke-virtual {p3}, LxP;->n()Z

    move-result v1

    iget-object v2, p3, LxP;->A:Ljava/lang/String;

    .line 72
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LxP;->A:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, LxP;->k()Z

    move-result p1

    iget-object v0, p0, LxP;->B:Ljava/lang/String;

    .line 74
    invoke-virtual {p3}, LxP;->k()Z

    move-result v1

    iget-object v2, p3, LxP;->B:Ljava/lang/String;

    .line 75
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LxP;->B:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, LxP;->l()Z

    move-result p1

    iget-object v0, p0, LxP;->C:Ljava/lang/String;

    .line 77
    invoke-virtual {p3}, LxP;->l()Z

    move-result v1

    iget-object v2, p3, LxP;->C:Ljava/lang/String;

    .line 78
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LxP;->C:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, LxP;->j()Z

    move-result p1

    iget-object v0, p0, LxP;->D:Ljava/lang/String;

    .line 80
    invoke-virtual {p3}, LxP;->j()Z

    move-result v1

    iget-object v2, p3, LxP;->D:Ljava/lang/String;

    .line 81
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LxP;->D:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, LxP;->m()Z

    move-result p1

    iget-object v0, p0, LxP;->E:Ljava/lang/String;

    .line 83
    invoke-virtual {p3}, LxP;->m()Z

    move-result v1

    iget-object v2, p3, LxP;->E:Ljava/lang/String;

    .line 84
    invoke-interface {p2, p1, v0, v1, v2}, LSF;->a(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LxP;->E:Ljava/lang/String;

    .line 85
    sget-object p1, LQF;->a:LQF;

    if-ne p2, p1, :cond_a

    .line 86
    iget p1, p0, LxP;->z:I

    iget p2, p3, LxP;->z:I

    or-int/2addr p1, p2

    iput p1, p0, LxP;->z:I

    :cond_a
    return-object p0

    .line 87
    :pswitch_7
    sget-object p1, LxP;->F:LxP;

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
    .locals 3

    .line 1
    iget v0, p0, LxP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LxP;->A:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 4
    :cond_0
    iget v0, p0, LxP;->z:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, LxP;->B:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 7
    :cond_1
    iget v0, p0, LxP;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 8
    iget-object v2, p0, LxP;->C:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0, v2}, LxF;->a(ILjava/lang/String;)V

    .line 10
    :cond_2
    iget v0, p0, LxP;->z:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11
    iget-object v0, p0, LxP;->D:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v1, v0}, LxF;->a(ILjava/lang/String;)V

    .line 13
    :cond_3
    iget v0, p0, LxP;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 14
    iget-object v1, p0, LxP;->E:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0, v1}, LxF;->a(ILjava/lang/String;)V

    .line 16
    :cond_4
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, LxP;->z:I

    const/16 v1, 0x8

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
    iget v0, p0, LxP;->z:I

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

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, LxP;->z:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 1
    iget v0, p0, LxP;->z:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    .line 1
    iget v0, p0, LxP;->z:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
