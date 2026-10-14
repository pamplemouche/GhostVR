.class public abstract Lcom/samsung/a/a/a/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/g/b;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/a/a/a/c;

.field protected c:Lcom/samsung/a/a/a/a/b/a;

.field protected d:Lcom/samsung/a/a/a/a/j/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/a/a/a/a/j/b<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/samsung/a/a/a/a/g/d/a;

.field protected f:Lcom/samsung/a/a/a/a/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/a/a/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-static {}, Lcom/samsung/a/a/a/a/d/d;->a()Lcom/samsung/a/a/a/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->f:Lcom/samsung/a/a/a/a/d/c;

    new-instance v0, Lcom/samsung/a/a/a/a/b/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    new-instance v0, Lcom/samsung/a/a/a/a/j/b;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/j/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->d:Lcom/samsung/a/a/a/a/j/b;

    invoke-static {p1, p2}, Lcom/samsung/a/a/a/a/g/d/a;->a(Landroid/content/Context;Lcom/samsung/a/a/a/c;)Lcom/samsung/a/a/a/a/g/d/a;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/a;->e:Lcom/samsung/a/a/a/a/g/d/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
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

    sget-object v0, Lcom/samsung/a/a/a/a/b;->a:Lcom/samsung/a/a/a/a/e/b;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/e/b;->b()Lcom/samsung/a/a/a/a/g/e;

    move-result-object v0

    sget-object v1, Lcom/samsung/a/a/a/a/g/e;->c:Lcom/samsung/a/a/a/a/g/e;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "la"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mcc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mnc"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dm"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "av"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "at"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tid"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "v"

    const-string v1, "2.01.007"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->c:Lcom/samsung/a/a/a/a/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tz"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "aip"

    const-string v1, "1"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->b:Lcom/samsung/a/a/a/c;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/c;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "oip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1
.end method

.method protected b(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->d:Lcom/samsung/a/a/a/a/j/b;

    sget-object v1, Lcom/samsung/a/a/a/a/j/c;->a:Lcom/samsung/a/a/a/a/j/c;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/a/a/a/a/j/b;->a(Ljava/util/Map;Lcom/samsung/a/a/a/a/j/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/a;->e:Lcom/samsung/a/a/a/a/g/d/a;

    new-instance v7, Lcom/samsung/a/a/a/a/g/f;

    const-string v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "ts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/a/a/a/a/g/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/a;->d(Ljava/util/Map;)Lcom/samsung/a/a/a/a/g/c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/a/a/a/a/g/f;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/samsung/a/a/a/a/g/c;)V

    invoke-virtual {v0, v7}, Lcom/samsung/a/a/a/a/g/d/a;->a(Lcom/samsung/a/a/a/a/g/f;)V

    return-void
.end method

.method protected d(Ljava/util/Map;)Lcom/samsung/a/a/a/a/g/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/a/a/a/a/g/c;"
        }
    .end annotation

    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/j/e;->b(Ljava/lang/String;)Lcom/samsung/a/a/a/a/g/c;

    move-result-object p1

    return-object p1
.end method
