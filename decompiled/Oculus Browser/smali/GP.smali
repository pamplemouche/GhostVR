.class public final LGP;
.super LTF;
.source "PG"

# interfaces
.implements LHP;


# static fields
.field public static volatile A:LkG;

.field public static final B:LOF;

.field public static final z:LGP;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, LGP;

    invoke-direct {v0}, LGP;-><init>()V

    sput-object v0, LGP;->z:LGP;

    .line 2
    invoke-virtual {v0}, LTF;->i()V

    .line 3
    sget-object v1, LyQ;->E:LyQ;

    .line 4
    sget-object v3, LGP;->z:LGP;

    .line 5
    sget-object v6, LJG;->I:LJG;

    const-class v7, LGP;

    const/4 v4, 0x0

    const v5, 0xb0d758d

    move-object v2, v3

    .line 6
    invoke-static/range {v1 .. v7}, LTF;->a(LhG;Ljava/lang/Object;LhG;LWF;ILJG;Ljava/lang/Class;)LOF;

    move-result-object v0

    sput-object v0, LGP;->B:LOF;

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
    .locals 2

    .line 2
    iget v0, p0, LTF;->y:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0}, LwG;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4
    iput v0, p0, LTF;->y:I

    return v0
.end method

.method public final a(LRF;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7
    :pswitch_0
    sget-object p1, LGP;->A:LkG;

    if-nez p1, :cond_1

    const-class p1, LGP;

    monitor-enter p1

    .line 8
    :try_start_0
    sget-object p2, LGP;->A:LkG;

    if-nez p2, :cond_0

    .line 9
    new-instance p2, LGF;

    sget-object p3, LGP;->z:LGP;

    invoke-direct {p2, p3}, LGF;-><init>(LTF;)V

    sput-object p2, LGP;->A:LkG;

    .line 10
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 11
    :cond_1
    :goto_0
    sget-object p1, LGP;->A:LkG;

    return-object p1

    .line 12
    :pswitch_1
    new-instance p1, LFP;

    invoke-direct {p1, v0}, LFP;-><init>(LiP;)V

    return-object p1

    .line 13
    :pswitch_2
    new-instance p1, LGP;

    invoke-direct {p1}, LGP;-><init>()V

    return-object p1

    :pswitch_3
    return-object v0

    .line 14
    :pswitch_4
    check-cast p2, LtF;

    .line 15
    check-cast p3, LBF;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_4

    .line 16
    :try_start_1
    invoke-virtual {p2}, LtF;->p()I

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    invoke-virtual {p0, p3, p2}, LTF;->a(ILtF;)Z

    move-result p3
    :try_end_1
    .catch LdG; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_2

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, LdG;

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, LdG;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :goto_2
    throw p1

    .line 22
    :cond_4
    :pswitch_5
    sget-object p1, LGP;->z:LGP;

    return-object p1

    .line 23
    :pswitch_6
    check-cast p2, LSF;

    .line 24
    check-cast p3, LGP;

    return-object p0

    .line 25
    :pswitch_7
    sget-object p1, LGP;->z:LGP;

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
    .locals 1

    .line 1
    iget-object v0, p0, LTF;->x:LwG;

    invoke-virtual {v0, p1}, LwG;->a(LxF;)V

    return-void
.end method
