.class public Lcom/samsung/a/a/a/a/g/b/b;
.super Lcom/samsung/a/a/a/a/g/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/a/a/a/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x4

    return v0
.end method

.method private a(I)I
    .locals 4

    const-string v0, "DLS Sender"

    const/4 v1, -0x4

    if-ne p1, v1, :cond_0

    const-string p1, "Network unavailable."

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "policy expired. request policy"

    invoke-static {v0, p1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x6

    return p1

    :cond_1
    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v2}, Lcom/samsung/a/a/a/c;->p()I

    move-result v2

    if-ne v2, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network unavailable by restrict option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(ILcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;Lcom/samsung/a/a/a/a/d/a;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/a/a/a/a/g/c;",
            "Ljava/util/Queue<",
            "Lcom/samsung/a/a/a/a/g/f;",
            ">;",
            "Lcom/samsung/a/a/a/a/d/a;",
            ")I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;I)I

    move-result v4

    const v5, 0xc800

    if-le v5, v4, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0xc800

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/a/a/a/a/g/f;

    invoke-virtual {v5}, Lcom/samsung/a/a/a/a/g/f;->d()Lcom/samsung/a/a/a/a/g/c;

    move-result-object v6

    if-eq v6, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v3

    if-le v6, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v5}, Lcom/samsung/a/a/a/a/g/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p3, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {p3, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(Ljava/util/List;)V

    iget-object p3, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    const/16 v1, 0xc8

    invoke-virtual {p3, v1}, Lcom/samsung/a/a/a/a/g/d/a;->a(I)Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {v4, v0}, Lcom/samsung/a/a/a/a/g/d/a;->a(Ljava/util/List;)V

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, v2

    move v8, v3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;ILcom/samsung/a/a/a/a/d/a;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send packet : num("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") size("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DLSLogSender"

    invoke-static {v3, v2}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return v3
.end method

.method private a(ILcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;Z)I
    .locals 2

    if-nez p2, :cond_0

    const/16 p1, -0x64

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/a/a/a/a/g/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/a/a/a/a/e/c;->b(Landroid/content/Context;II)V

    new-instance p1, Lcom/samsung/a/a/a/a/g/b/a;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v1}, Lcom/samsung/a/a/a/c;->l()I

    move-result v1

    invoke-direct {p1, p2, v0, v1, p3}, Lcom/samsung/a/a/a/a/g/b/a;-><init>(Lcom/samsung/a/a/a/a/g/f;Ljava/lang/String;ILcom/samsung/a/a/a/a/d/a;)V

    if-eqz p4, :cond_2

    const-string p2, "sync send"

    invoke-static {p2}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/b/a;->a()V

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/b/a;->b()I

    move-result p1

    return p1

    :cond_2
    iget-object p2, p0, Lcom/samsung/a/a/a/a/g/b/b;->f:Lcom/samsung/a/a/a/a/d/c;

    invoke-interface {p2, p1}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/g/b/b;)Lcom/samsung/a/a/a/a/g/d/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    return-object p0
.end method

.method private a(ILcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;ILcom/samsung/a/a/a/a/d/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/a/a/a/a/g/c;",
            "Ljava/util/Queue<",
            "Lcom/samsung/a/a/a/a/g/f;",
            ">;I",
            "Lcom/samsung/a/a/a/a/d/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/samsung/a/a/a/a/e/c;->b(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/b/b;->f:Lcom/samsung/a/a/a/a/d/c;

    new-instance p4, Lcom/samsung/a/a/a/a/g/b/a;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->l()I

    move-result v4

    move-object v0, p4

    move-object v1, p2

    move-object v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/a/a/a/a/g/b/a;-><init>(Lcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;Ljava/lang/String;ILcom/samsung/a/a/a/a/d/a;)V

    invoke-interface {p1, p4}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/a/a/a/a/g/b/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/b/b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/a/g/b/b;->a(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/b/b;->c(Ljava/util/Map;)V

    const/4 p1, -0x6

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/g/b/b;->f:Lcom/samsung/a/a/a/a/d/c;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/b/b;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-static {p1, v0, v2, v3}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/d/c;Lcom/samsung/a/a/a/a/b/a;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/d/a;->b()V

    :cond_0
    return v1

    :cond_1
    new-instance v1, Lcom/samsung/a/a/a/a/g/b/c;

    invoke-direct {v1, p0, v0}, Lcom/samsung/a/a/a/a/g/b/c;-><init>(Lcom/samsung/a/a/a/a/g/b/b;I)V

    new-instance v2, Lcom/samsung/a/a/a/a/g/f;

    const-string v3, "ts"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/a/a/a/a/g/b/b;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/b/b;->d(Ljava/util/Map;)Lcom/samsung/a/a/a/a/g/c;

    move-result-object p1

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/samsung/a/a/a/a/g/f;-><init>(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;Z)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    return v2

    :cond_2
    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/samsung/a/a/a/a/g/d/a;->a(I)Ljava/util/Queue;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/a/a/a/a/g/b/b;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {v5}, Lcom/samsung/a/a/a/a/g/d/a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p1, Lcom/samsung/a/a/a/a/g/c;->b:Lcom/samsung/a/a/a/a/g/c;

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;Lcom/samsung/a/a/a/a/d/a;)I

    sget-object p1, Lcom/samsung/a/a/a/a/g/c;->a:Lcom/samsung/a/a/a/a/g/c;

    invoke-direct {p0, v0, p1, v4, v1}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/c;Ljava/util/Queue;Lcom/samsung/a/a/a/a/d/a;)I

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/a/a/a/a/g/f;

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;Z)I

    move-result v2

    if-ne v2, v3, :cond_3

    :cond_4
    :goto_0
    return v2
.end method

.method public f(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/b/b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/a/g/b/b;->a(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, -0x6

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/b/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/b/b;->b:Lcom/samsung/a/a/a/c;

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/b/b;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/a/a/a/a/e/c;->a(Landroid/content/Context;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/b/a;Lcom/samsung/a/a/a/a/a;)Lcom/samsung/a/a/a/a/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/e/a;->a()V

    invoke-virtual {v1}, Lcom/samsung/a/a/a/a/e/a;->b()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get policy sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :cond_0
    return v1

    :cond_1
    new-instance v1, Lcom/samsung/a/a/a/a/g/f;

    const-string v3, "ts"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/a/a/a/a/g/b/b;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/b/b;->d(Ljava/util/Map;)Lcom/samsung/a/a/a/a/g/c;

    move-result-object p1

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/samsung/a/a/a/a/g/f;-><init>(JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/a/a/a/a/g/b/b;->a(ILcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;Z)I

    move-result p1

    return p1
.end method
