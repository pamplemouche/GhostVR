.class public LxC;
.super LNC;
.source "PG"


# instance fields
.field public final j:LLC;


# direct methods
.method public constructor <init>(LLC;LfC;LaF;I)V
    .locals 9

    .line 1
    move-object v0, p2

    check-cast v0, LsC;

    .line 2
    iget-object v3, v0, LsC;->a:LdC;

    .line 3
    check-cast p2, LsC;

    .line 4
    iget-object v4, p2, LsC;->b:LZB;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "Batching"

    move-object v1, p0

    move-object v5, p3

    move v7, p4

    .line 5
    invoke-direct/range {v1 .. v8}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;II)V

    .line 6
    iput-object p1, p0, LxC;->j:LLC;

    return-void
.end method

.method public constructor <init>(LLC;LfC;LaF;LIE;)V
    .locals 8

    .line 7
    move-object v0, p2

    check-cast v0, LsC;

    .line 8
    iget-object v3, v0, LsC;->a:LdC;

    .line 9
    check-cast p2, LsC;

    .line 10
    iget-object v4, p2, LsC;->b:LZB;

    const/4 v6, 0x0

    const-string v2, "Batching"

    move-object v1, p0

    move-object v5, p3

    move-object v7, p4

    .line 11
    invoke-direct/range {v1 .. v7}, LNC;-><init>(Ljava/lang/String;LdC;LZB;LaF;LZC;LIE;)V

    .line 12
    iput-object p1, p0, LxC;->j:LLC;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 13

    .line 1
    iget-object v0, p0, LxC;->j:LLC;

    .line 2
    iget-object v1, v0, LLC;->c:LdC;

    invoke-interface {v1}, LdC;->b()Z

    move-result v1

    const-string v2, "Not on internal thread"

    invoke-static {v1, v2}, LWE;->a(ZLjava/lang/Object;)V

    .line 3
    iget-wide v1, v0, LLC;->i:J

    iget-object v3, v0, LLC;->c:LdC;

    invoke-interface {v3}, LdC;->a()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v3

    if-lez v8, :cond_0

    .line 4
    iget-object v1, v0, LLC;->b:LZB;

    new-array v2, v5, [Ljava/lang/Object;

    iget-wide v3, v0, LLC;->i:J

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v0, v0, LLC;->c:LdC;

    invoke-interface {v0}, LdC;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v6

    .line 6
    check-cast v1, LgC;

    const-string v0, "In quiet period: not sending message to server: %s > %s"

    invoke-virtual {v1, v0, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 7
    :cond_0
    :try_start_0
    iget-object v1, v0, LLC;->f:LHC;

    invoke-virtual {v0}, LLC;->a()LcE;

    move-result-object v2

    iget-object v3, v0, LLC;->e:LJC;
    :try_end_0
    .catch LXE; {:try_start_0 .. :try_end_0} :catch_1

    check-cast v3, LEC;

    :try_start_1
    invoke-virtual {v3}, LEC;->a()LPE;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, LHC;->a(LcE;Z)LdE;

    move-result-object v1
    :try_end_1
    .catch LXE; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v1, :cond_2

    goto/16 :goto_d

    .line 8
    :cond_2
    iget v2, v0, LLC;->g:I

    add-int/2addr v2, v6

    iput v2, v0, LLC;->g:I

    .line 9
    iget-object v2, v0, LLC;->j:LWC;

    sget-object v3, LVC;->B:LVC;

    .line 10
    iget-object v2, v2, LWC;->a:Ljava/util/Map;

    invoke-static {v2, v3}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    .line 11
    iget-object v2, v0, LLC;->b:LZB;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    check-cast v2, LgC;

    const-string v4, "Sending message to server: %s"

    invoke-virtual {v2, v4, v3}, LgC;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v2, v0, LLC;->d:LbC;

    .line 13
    new-instance v3, LQH;

    invoke-direct {v3}, LQH;-><init>()V

    .line 14
    iget-object v4, v1, LdE;->d:LcE;

    const/4 v8, 0x0

    if-eqz v4, :cond_13

    .line 15
    new-instance v9, LPH;

    invoke-direct {v9}, LPH;-><init>()V

    .line 16
    iget-object v10, v4, LcE;->d:LpE;

    if-eqz v10, :cond_12

    .line 17
    new-instance v11, LcI;

    invoke-direct {v11}, LcI;-><init>()V

    .line 18
    iget-object v10, v10, LpE;->c:LDE;

    invoke-virtual {v10}, LDE;->c()LqI;

    move-result-object v10

    iput-object v10, v11, LcI;->c:LqI;

    .line 19
    iput-object v11, v9, LPH;->c:LcI;

    .line 20
    invoke-virtual {v4}, LcE;->c()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v4, LcE;->e:LPE;

    .line 21
    iget-object v10, v10, LPE;->w:[B

    goto :goto_1

    :cond_3
    move-object v10, v8

    .line 22
    :goto_1
    iput-object v10, v9, LPH;->d:[B

    .line 23
    iget-object v10, v4, LcE;->f:LwE;

    if-eqz v10, :cond_4

    .line 24
    new-instance v11, LjI;

    invoke-direct {v11}, LjI;-><init>()V

    .line 25
    iget v12, v10, LwE;->c:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v11, LjI;->c:Ljava/lang/Integer;

    .line 26
    iget-object v10, v10, LwE;->d:LPE;

    .line 27
    iget-object v10, v10, LPE;->w:[B

    .line 28
    iput-object v10, v11, LjI;->d:[B

    goto :goto_2

    :cond_4
    move-object v11, v8

    .line 29
    :goto_2
    iput-object v11, v9, LPH;->e:LjI;

    .line 30
    iget-wide v10, v4, LcE;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, LPH;->f:Ljava/lang/Long;

    .line 31
    iget-wide v10, v4, LcE;->h:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, LPH;->g:Ljava/lang/Long;

    .line 32
    invoke-virtual {v4}, LcE;->e()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v4, LcE;->i:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v10, v8

    :goto_3
    iput-object v10, v9, LPH;->h:Ljava/lang/String;

    .line 33
    invoke-virtual {v4}, LcE;->d()Z

    move-result v10

    if-eqz v10, :cond_6

    iget v4, v4, LcE;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v8

    :goto_4
    iput-object v4, v9, LPH;->i:Ljava/lang/Integer;

    .line 34
    iput-object v9, v3, LQH;->c:LPH;

    .line 35
    iget-object v4, v1, LdE;->e:LjE;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, LjE;->c()LWH;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object v4, v8

    :goto_5
    iput-object v4, v3, LQH;->d:LWH;

    .line 36
    iget-object v4, v1, LdE;->f:LrE;

    if-eqz v4, :cond_8

    .line 37
    new-instance v9, LeI;

    invoke-direct {v9}, LeI;-><init>()V

    .line 38
    iget-object v10, v4, LrE;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [LfI;

    iput-object v10, v9, LeI;->c:[LfI;

    const/4 v10, 0x0

    .line 39
    :goto_6
    iget-object v11, v9, LeI;->c:[LfI;

    array-length v12, v11

    if-ge v10, v12, :cond_9

    .line 40
    iget-object v12, v4, LrE;->c:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LsE;

    invoke-virtual {v12}, LsE;->c()LfI;

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    move-object v9, v8

    .line 41
    :cond_9
    iput-object v9, v3, LQH;->e:LeI;

    .line 42
    iget-object v4, v1, LdE;->g:LxE;

    if-eqz v4, :cond_a

    .line 43
    new-instance v9, LkI;

    invoke-direct {v9}, LkI;-><init>()V

    .line 44
    iget-object v10, v4, LxE;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [LiI;

    iput-object v10, v9, LkI;->c:[LiI;

    const/4 v10, 0x0

    .line 45
    :goto_7
    iget-object v11, v9, LkI;->c:[LiI;

    array-length v12, v11

    if-ge v10, v12, :cond_b

    .line 46
    iget-object v12, v4, LxE;->c:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LvE;

    invoke-virtual {v12}, LvE;->c()LiI;

    move-result-object v12

    aput-object v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    move-object v9, v8

    .line 47
    :cond_b
    iput-object v9, v3, LQH;->f:LkI;

    .line 48
    iget-object v4, v1, LdE;->h:LkE;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, LkE;->c()LXH;

    move-result-object v4

    goto :goto_8

    :cond_c
    move-object v4, v8

    :goto_8
    iput-object v4, v3, LQH;->g:LXH;

    .line 49
    invoke-virtual {v1}, LdE;->c()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v1, v1, LdE;->i:LhE;

    invoke-virtual {v1}, LhE;->d()LUH;

    move-result-object v1

    goto :goto_9

    :cond_d
    move-object v1, v8

    :goto_9
    iput-object v1, v3, LQH;->h:LUH;

    .line 50
    invoke-static {v3}, LZG;->a(LZG;)[B

    move-result-object v1

    .line 51
    check-cast v2, LtD;

    if-eqz v2, :cond_11

    .line 52
    sget-object v3, LjD;->a:LDE;

    new-instance v4, LPE;

    invoke-direct {v4, v1}, LPE;-><init>([B)V

    .line 53
    new-instance v1, LxD;

    invoke-direct {v1, v3, v4}, LxD;-><init>(LDE;LPE;)V

    .line 54
    new-instance v3, LfH;

    invoke-direct {v3}, LfH;-><init>()V

    .line 55
    iget-object v4, v1, LxD;->c:LDE;

    invoke-virtual {v4}, LDE;->c()LqI;

    move-result-object v4

    iput-object v4, v3, LfH;->c:LqI;

    .line 56
    iget-object v1, v1, LxD;->d:LPE;

    .line 57
    iget-object v1, v1, LPE;->w:[B

    .line 58
    iput-object v1, v3, LfH;->d:[B

    .line 59
    invoke-static {v3}, LZG;->a(LZG;)[B

    move-result-object v1

    .line 60
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "ipcinv-outbound-message"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    .line 61
    invoke-static {}, LrD;->a()I

    move-result v3

    if-ne v3, v5, :cond_10

    .line 62
    new-instance v3, LhD;

    iget-object v4, v2, LtD;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, LhD;-><init>(Landroid/content/Context;)V

    .line 63
    iget-object v3, v3, LhD;->a:LgD;

    .line 64
    iget-object v3, v3, LgD;->d:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 65
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_a

    .line 66
    :cond_e
    iget-object v4, v2, LtD;->a:Landroid/content/Context;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 67
    :cond_f
    :goto_a
    sget-object v1, LtD;->c:LZB;

    new-array v2, v7, [Ljava/lang/Object;

    check-cast v1, LgC;

    const-string v3, "GcmUpstreamSenderService class not found."

    invoke-virtual {v1, v3, v2}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 68
    :cond_10
    iget-object v3, v2, LtD;->a:Landroid/content/Context;

    const-class v4, Lcom/google/ipc/invalidation/ticl/android2/channel/AndroidMessageSenderService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :goto_b
    :try_start_2
    iget-object v2, v2, LtD;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v1

    .line 70
    sget-object v2, LtD;->c:LZB;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    check-cast v2, LgC;

    const-string v1, "Unable to send message: %s"

    invoke-virtual {v2, v1, v3}, LgC;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_c
    iget-object v0, v0, LLC;->e:LJC;

    check-cast v0, LEC;

    .line 72
    iget-object v1, v0, LEC;->w:LfC;

    check-cast v1, LsC;

    .line 73
    iget-object v1, v1, LsC;->a:LdC;

    .line 74
    invoke-interface {v1}, LdC;->a()J

    move-result-wide v1

    .line 75
    iput-wide v1, v0, LEC;->O:J

    .line 76
    iget-object v1, v0, LEC;->B:LbE;

    .line 77
    iget-boolean v1, v1, LbE;->n:Z

    if-eqz v1, :cond_14

    .line 78
    iget-object v0, v0, LEC;->R:LBC;

    const-string v1, "sent-message"

    .line 79
    invoke-virtual {v0, v7, v1}, LNC;->a(ZLjava/lang/String;)V

    goto :goto_d

    .line 80
    :cond_11
    throw v8

    .line 81
    :cond_12
    throw v8

    .line 82
    :cond_13
    throw v8

    .line 83
    :catch_1
    iget-object v1, v0, LLC;->b:LZB;

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, v0, LLC;->f:LHC;

    aput-object v3, v2, v7

    check-cast v1, LgC;

    const-string v3, "Tried to send invalid message: %s"

    invoke-virtual {v1, v3, v2}, LgC;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, v0, LLC;->j:LWC;

    sget-object v1, LRC;->y:LRC;

    .line 85
    iget-object v0, v0, LWC;->e:Ljava/util/Map;

    invoke-static {v0, v1}, LWC;->a(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_14
    :goto_d
    return v7
.end method
