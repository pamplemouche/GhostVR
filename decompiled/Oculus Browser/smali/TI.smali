.class public final LTI;
.super LTF;
.source "PG"

# interfaces
.implements LUI;


# static fields
.field public static final A:LTI;

.field public static volatile B:LkG;


# instance fields
.field public z:LbG;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LTI;

    invoke-direct {v0}, LTI;-><init>()V

    sput-object v0, LTI;->A:LTI;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LTF;-><init>()V

    .line 2
    sget-object v0, LlG;->y:LlG;

    .line 3
    iput-object v0, p0, LTI;->z:LbG;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 4
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, LTI;->z:LbG;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    iget-object v2, p0, LTI;->z:LbG;

    .line 7
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LhG;

    const/4 v3, 0x1

    invoke-static {v3, v2}, LxF;->b(ILhG;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 9
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12
    :pswitch_0
    sget-object p1, LTI;->B:LkG;

    if-nez p1, :cond_1

    const-class p1, LTI;

    monitor-enter p1

    .line 13
    :try_start_0
    sget-object p2, LTI;->B:LkG;

    if-nez p2, :cond_0

    .line 14
    new-instance p2, LGF;

    sget-object p3, LTI;->A:LTI;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LTI;->B:LkG;

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
    sget-object p1, LTI;->B:LkG;

    return-object p1

    .line 17
    :pswitch_1
    new-instance p1, LSI;

    invoke-direct {p1, v0}, LSI;-><init>(LrI;)V

    return-object p1

    .line 18
    :pswitch_2
    new-instance p1, LTI;

    invoke-direct {p1}, LTI;-><init>()V

    return-object p1

    .line 19
    :pswitch_3
    iget-object p1, p0, LTI;->z:LbG;

    check-cast p1, LhF;

    .line 20
    iput-boolean v1, p1, LhF;->w:Z

    return-object v0

    .line 21
    :pswitch_4
    check-cast p2, LtF;

    .line 22
    check-cast p3, LBF;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 23
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    .line 24
    invoke-virtual {p0, p1, p2}, LTF;->a(ILtF;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p0, LTI;->z:LbG;

    check-cast p1, LhF;

    .line 26
    iget-boolean p1, p1, LhF;->w:Z

    if-nez p1, :cond_4

    .line 27
    iget-object p1, p0, LTI;->z:LbG;

    .line 28
    invoke-static {p1}, LTF;->a(LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LTI;->z:LbG;

    .line 29
    :cond_4
    iget-object p1, p0, LTI;->z:LbG;

    .line 30
    sget-object v0, LQI;->D:LQI;

    invoke-virtual {v0}, LTF;->g()LkG;

    move-result-object v0

    .line 31
    invoke-virtual {p2, v0, p3}, LtF;->a(LkG;LBF;)LhG;

    move-result-object v0

    check-cast v0, LQI;

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    :goto_3
    throw p1

    .line 37
    :cond_6
    :pswitch_5
    sget-object p1, LTI;->A:LTI;

    return-object p1

    .line 38
    :pswitch_6
    check-cast p2, LSF;

    .line 39
    check-cast p3, LTI;

    .line 40
    iget-object p1, p0, LTI;->z:LbG;

    iget-object p3, p3, LTI;->z:LbG;

    invoke-interface {p2, p1, p3}, LSF;->a(LbG;LbG;)LbG;

    move-result-object p1

    iput-object p1, p0, LTI;->z:LbG;

    return-object p0

    .line 41
    :pswitch_7
    sget-object p1, LTI;->A:LTI;

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

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, LTI;->z:LbG;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, LTI;->z:LbG;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LhG;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, LxF;->a(ILhG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
