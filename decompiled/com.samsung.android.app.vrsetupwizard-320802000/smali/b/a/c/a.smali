.class public final Lb/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# instance fields
.field private final a:Lb/u;


# direct methods
.method public constructor <init>(Lb/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/c/a;->a:Lb/u;

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/t;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/t;

    invoke-virtual {v3}, Lb/t;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/t;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lb/am;)Lb/bc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v0

    invoke-virtual {v0}, Lb/ax;->e()Lb/ay;

    move-result-object v1

    invoke-virtual {v0}, Lb/ax;->d()Lb/az;

    move-result-object v2

    const-string v3, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lb/az;->a()Lb/an;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lb/an;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v1, v5, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_0
    invoke-virtual {v2}, Lb/az;->b()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string v2, "Transfer-Encoding"

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    invoke-virtual {v1, v2}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    goto :goto_0

    :cond_1
    const-string v4, "chunked"

    invoke-virtual {v1, v2, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    invoke-virtual {v1, v3}, Lb/ay;->a(Ljava/lang/String;)Lb/ay;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v4

    invoke-static {v4, v5}, Lb/a/c;->a(Lb/ai;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "Keep-Alive"

    invoke-virtual {v1, v2, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gzip"

    if-nez v4, :cond_5

    const-string v4, "Range"

    invoke-virtual {v0, v4}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v6}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_5
    iget-object v2, p0, Lb/a/c/a;->a:Lb/u;

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v4

    invoke-interface {v2, v4}, Lb/u;->a(Lb/ai;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v2}, Lb/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cookie"

    invoke-virtual {v1, v4, v2}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lb/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lb/ay;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    :cond_7
    invoke-virtual {v1}, Lb/ay;->a()Lb/ax;

    move-result-object v1

    invoke-interface {p1, v1}, Lb/am;->a(Lb/ax;)Lb/bc;

    move-result-object p1

    iget-object v1, p0, Lb/a/c/a;->a:Lb/u;

    invoke-virtual {v0}, Lb/ax;->a()Lb/ai;

    move-result-object v2

    invoke-virtual {p1}, Lb/bc;->f()Lb/ag;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lb/a/c/f;->a(Lb/u;Lb/ai;Lb/ag;)V

    invoke-virtual {p1}, Lb/bc;->h()Lb/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/bd;->a(Lb/ax;)Lb/bd;

    move-result-object v0

    if-eqz v5, :cond_8

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lb/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lb/a/c/f;->b(Lb/bc;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lc/n;

    invoke-virtual {p1}, Lb/bc;->g()Lb/be;

    move-result-object v4

    invoke-virtual {v4}, Lb/be;->c()Lc/j;

    move-result-object v4

    invoke-direct {v2, v4}, Lc/n;-><init>(Lc/aa;)V

    invoke-virtual {p1}, Lb/bc;->f()Lb/ag;

    move-result-object p1

    invoke-virtual {p1}, Lb/ag;->b()Lb/ah;

    move-result-object p1

    invoke-virtual {p1, v1}, Lb/ah;->b(Ljava/lang/String;)Lb/ah;

    move-result-object p1

    invoke-virtual {p1, v3}, Lb/ah;->b(Ljava/lang/String;)Lb/ah;

    move-result-object p1

    invoke-virtual {p1}, Lb/ah;->a()Lb/ag;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/bd;->a(Lb/ag;)Lb/bd;

    new-instance v1, Lb/a/c/i;

    invoke-static {v2}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lb/a/c/i;-><init>(Lb/ag;Lc/j;)V

    invoke-virtual {v0, v1}, Lb/bd;->a(Lb/be;)Lb/bd;

    :cond_8
    invoke-virtual {v0}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    return-object p1
.end method
