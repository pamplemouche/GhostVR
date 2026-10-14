.class public Lcom/samsung/a/a/a/a/g/a/d;
.super Lcom/samsung/a/a/a/a/g/a;


# instance fields
.field private g:Lcom/samsung/a/a/a/a/g/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/a/a/a/a/g/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V

    new-instance p2, Lcom/samsung/a/a/a/a/g/a/a;

    new-instance v0, Lcom/samsung/a/a/a/a/g/a/e;

    invoke-direct {v0, p0}, Lcom/samsung/a/a/a/a/g/a/e;-><init>(Lcom/samsung/a/a/a/a/g/a/d;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/a/a/a/a/g/a/a;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/a/a;)V

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/a/a;->b()V

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a/d;->e:Lcom/samsung/a/a/a/a/g/d/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/g/d/a;->c()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/a/a/a/a/g/a/d;->f:Lcom/samsung/a/a/a/a/d/c;

    new-instance v2, Lcom/samsung/a/a/a/a/g/a/f;

    iget-object v3, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    iget-object v4, p0, Lcom/samsung/a/a/a/a/g/a/d;->b:Lcom/samsung/a/a/a/c;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/a/a/a/a/g/f;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/a/a/a/a/g/a/f;-><init>(Lcom/samsung/a/a/a/a/g/a/a;Lcom/samsung/a/a/a/c;Lcom/samsung/a/a/a/a/g/f;Lcom/samsung/a/a/a/a/d/a;)V

    invoke-interface {v1, v2}, Lcom/samsung/a/a/a/a/d/c;->a(Lcom/samsung/a/a/a/a/d/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/a/a/a/a/g/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/a/d;->a()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/a/a/a/a/g/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "do"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dm"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "v"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public e(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/a/d;->c(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/a/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/a/a;->d()Lcom/sec/a/a/a/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/a/a/a/a/g/a/d;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/a/d;->g:Lcom/samsung/a/a/a/a/g/a/a;

    invoke-virtual {p1}, Lcom/samsung/a/a/a/a/g/a/a;->b()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "DLCLogSender"

    const-string v1, "not support sync api"

    invoke-static {v0, v1}, Lcom/samsung/a/a/a/a/j/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/a/d;->e(Ljava/util/Map;)I

    const/16 p1, -0x64

    return p1
.end method
