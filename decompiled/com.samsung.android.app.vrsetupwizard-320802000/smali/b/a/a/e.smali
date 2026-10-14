.class public Lb/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field final a:J

.field final b:Lb/ax;

.field final c:Lb/bc;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLb/ax;Lb/bc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/e;->l:I

    iput-wide p1, p0, Lb/a/a/e;->a:J

    iput-object p3, p0, Lb/a/a/e;->b:Lb/ax;

    iput-object p4, p0, Lb/a/a/e;->c:Lb/bc;

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lb/bc;->j()J

    move-result-wide p1

    iput-wide p1, p0, Lb/a/a/e;->i:J

    invoke-virtual {p4}, Lb/bc;->k()J

    move-result-wide p1

    iput-wide p1, p0, Lb/a/a/e;->j:J

    invoke-virtual {p4}, Lb/bc;->f()Lb/ag;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1}, Lb/ag;->a()I

    move-result p3

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-virtual {p1, p2}, Lb/ag;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2}, Lb/ag;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lb/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/e;->d:Ljava/util/Date;

    iput-object v1, p0, Lb/a/a/e;->e:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lb/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/e;->h:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lb/a/c/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/e;->f:Ljava/util/Date;

    iput-object v1, p0, Lb/a/a/e;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lb/a/a/e;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {v1, v0}, Lb/a/c/f;->b(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lb/a/a/e;->l:I

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static a(Lb/ax;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b()Lb/a/a/d;
    .locals 13

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-direct {v0, v2, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-virtual {v0}, Lb/ax;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v0}, Lb/bc;->e()Lb/af;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-direct {v0, v2, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-static {v0, v2}, Lb/a/a/d;->a(Lb/bc;Lb/ax;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-direct {v0, v2, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-virtual {v0}, Lb/ax;->f()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->a()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-static {v2}, Lb/a/a/e;->a(Lb/ax;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, Lb/a/a/e;->d()J

    move-result-wide v2

    invoke-direct {p0}, Lb/a/a/e;->c()J

    move-result-wide v4

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_4
    invoke-virtual {v0}, Lb/e;->h()I

    move-result v6

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lb/e;->h()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    goto :goto_0

    :cond_5
    move-wide v10, v8

    :goto_0
    iget-object v6, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v6}, Lb/bc;->i()Lb/e;

    move-result-object v6

    invoke-virtual {v6}, Lb/e;->f()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v0}, Lb/e;->g()I

    move-result v12

    if-eq v12, v7, :cond_6

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lb/e;->g()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    :cond_6
    invoke-virtual {v6}, Lb/e;->a()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v10, v2

    add-long/2addr v8, v4

    cmp-long v0, v10, v8

    if-gez v0, :cond_9

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v0}, Lb/bc;->h()Lb/bd;

    move-result-object v0

    const-string v6, "Warning"

    cmp-long v7, v10, v4

    if-ltz v7, :cond_7

    const-string v4, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v6, v4}, Lb/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lb/bd;

    :cond_7
    const-wide/32 v4, 0x5265c00

    cmp-long v7, v2, v4

    if-lez v7, :cond_8

    invoke-direct {p0}, Lb/a/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v6, v2}, Lb/bd;->a(Ljava/lang/String;Ljava/lang/String;)Lb/bd;

    :cond_8
    new-instance v2, Lb/a/a/d;

    invoke-virtual {v0}, Lb/bd;->a()Lb/bc;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v2

    :cond_9
    iget-object v0, p0, Lb/a/a/e;->k:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_a

    const-string v2, "If-None-Match"

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lb/a/a/e;->f:Ljava/util/Date;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/a/a/e;->g:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lb/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lb/a/a/e;->e:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-virtual {v1}, Lb/ax;->c()Lb/ag;

    move-result-object v1

    invoke-virtual {v1}, Lb/ag;->b()Lb/ah;

    move-result-object v1

    sget-object v3, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v3, v1, v2, v0}, Lb/a/a;->a(Lb/ah;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-virtual {v0}, Lb/ax;->e()Lb/ay;

    move-result-object v0

    invoke-virtual {v1}, Lb/ah;->a()Lb/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ay;->a(Lb/ag;)Lb/ay;

    move-result-object v0

    invoke-virtual {v0}, Lb/ay;->a()Lb/ax;

    move-result-object v0

    new-instance v1, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-direct {v1, v0, v2}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v1

    :cond_c
    new-instance v0, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-direct {v0, v2, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v0

    :cond_d
    :goto_2
    new-instance v0, Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-direct {v0, v2, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    return-object v0
.end method

.method private c()J
    .locals 7

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v0}, Lb/bc;->i()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lb/a/a/e;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lb/a/a/e;->j:J

    :goto_0
    iget-object v0, p0, Lb/a/a/e;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v3, v5, v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    move-wide v1, v3

    :cond_2
    return-wide v1

    :cond_3
    iget-object v0, p0, Lb/a/a/e;->f:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v0}, Lb/bc;->a()Lb/ax;

    move-result-object v0

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v0

    invoke-virtual {v0}, Lb/ai;->l()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/a/a/e;->d:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lb/a/a/e;->i:J

    :goto_1
    iget-object v0, p0, Lb/a/a/e;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v1, v3, v0

    :cond_5
    return-wide v1
.end method

.method private d()J
    .locals 9

    iget-object v0, p0, Lb/a/a/e;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lb/a/a/e;->j:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget v0, p0, Lb/a/a/e;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lb/a/a/e;->l:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p0, Lb/a/a/e;->j:J

    iget-wide v5, p0, Lb/a/a/e;->i:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lb/a/a/e;->a:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, Lb/a/a/e;->c:Lb/bc;

    invoke-virtual {v0}, Lb/bc;->i()Lb/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/e;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/a/e;->h:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Lb/a/a/d;
    .locals 2

    invoke-direct {p0}, Lb/a/a/e;->b()Lb/a/a/d;

    move-result-object v0

    iget-object v1, v0, Lb/a/a/d;->a:Lb/ax;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/e;->b:Lb/ax;

    invoke-virtual {v1}, Lb/ax;->f()Lb/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lb/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lb/a/a/d;-><init>(Lb/ax;Lb/bc;)V

    :cond_0
    return-object v0
.end method
