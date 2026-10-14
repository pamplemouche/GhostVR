.class public final Lb/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# instance fields
.field final a:Lb/a/a/i;


# direct methods
.method public constructor <init>(Lb/a/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a;->a:Lb/a/a/i;

    return-void
.end method

.method private static a(Lb/ag;Lb/ag;)Lb/ag;
    .locals 7

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    invoke-virtual {p0}, Lb/ag;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lb/ag;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lb/ag;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lb/a/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lb/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v6, v0, v4, v5}, Lb/a/a;->a(Lb/ah;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lb/ag;->a()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_6

    invoke-virtual {p1, v2}, Lb/ag;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Content-Length"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lb/a/a/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {p1, v2}, Lb/ag;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lb/a/a;->a(Lb/ah;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lb/ah;->a()Lb/ag;

    move-result-object p0

    return-object p0
.end method

.method private a(Lb/a/a/c;Lb/bc;)Lb/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lb/a/a/c;->a()Lc/z;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lb/bc;->g()Lb/be;

    move-result-object v1

    invoke-virtual {v1}, Lb/be;->c()Lc/j;

    move-result-object v1

    invoke-static {v0}, Lc/p;->a(Lc/z;)Lc/i;

    move-result-object v0

    new-instance v2, Lb/a/a/b;

    invoke-direct {v2, p0, v1, p1, v0}, Lb/a/a/b;-><init>(Lb/a/a/a;Lc/j;Lb/a/a/c;Lc/i;)V

    invoke-virtual {p2}, Lb/bc;->h()Lb/bd;

    move-result-object p1

    new-instance v0, Lb/a/c/i;

    invoke-virtual {p2}, Lb/bc;->f()Lb/ag;

    move-result-object p2

    invoke-static {v2}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lb/a/c/i;-><init>(Lb/ag;Lc/j;)V

    invoke-virtual {p1, v0}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lb/bc;)Lb/bc;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb/bc;->g()Lb/be;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/bc;->h()Lb/bd;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p0

    invoke-virtual {p0}, Lb/bd;->a()Lb/bc;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lb/am;)Lb/bc;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a;->a:Lb/a/a/i;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/i;->a(Lb/ax;)Lb/bc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lb/a/a/e;

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lb/a/a/e;-><init>(JLb/ax;Lb/bc;)V

    invoke-virtual {v3}, Lb/a/a/e;->a()Lb/a/a/d;

    move-result-object v1

    iget-object v2, v1, Lb/a/a/d;->a:Lb/ax;

    iget-object v3, v1, Lb/a/a/d;->b:Lb/bc;

    iget-object v4, p0, Lb/a/a/a;->a:Lb/a/a/i;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lb/a/a/i;->a(Lb/a/a/d;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lb/bc;->g()Lb/be;

    move-result-object v1

    invoke-static {v1}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Lb/bd;

    invoke-direct {v0}, Lb/bd;-><init>()V

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/bd;->a(Lb/ax;)Lb/bd;

    move-result-object p1

    sget-object v0, Lb/au;->b:Lb/au;

    invoke-virtual {p1, v0}, Lb/bd;->a(Lb/au;)Lb/bd;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lb/bd;->a(I)Lb/bd;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lb/bd;->a(Ljava/lang/String;)Lb/bd;

    move-result-object p1

    sget-object v0, Lb/a/c;->c:Lb/be;

    invoke-virtual {p1, v0}, Lb/bd;->a(Lb/be;)Lb/bd;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lb/bd;->a(J)Lb/bd;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lb/bd;->b(J)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v3}, Lb/bc;->h()Lb/bd;

    move-result-object p1

    invoke-static {v3}, Lb/a/a/a;->a(Lb/bc;)Lb/bc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/bd;->b(Lb/bc;)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lb/am;->a(Lb/ax;)Lb/bc;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lb/bc;->g()Lb/be;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lb/bc;->b()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lb/bc;->h()Lb/bd;

    move-result-object v0

    invoke-virtual {v3}, Lb/bc;->f()Lb/ag;

    move-result-object v1

    invoke-virtual {p1}, Lb/bc;->f()Lb/ag;

    move-result-object v2

    invoke-static {v1, v2}, Lb/a/a/a;->a(Lb/ag;Lb/ag;)Lb/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/bd;->a(Lb/ag;)Lb/bd;

    move-result-object v0

    invoke-virtual {p1}, Lb/bc;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lb/bd;->a(J)Lb/bd;

    move-result-object v0

    invoke-virtual {p1}, Lb/bc;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lb/bd;->b(J)Lb/bd;

    move-result-object v0

    invoke-static {v3}, Lb/a/a/a;->a(Lb/bc;)Lb/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/bd;->b(Lb/bc;)Lb/bd;

    move-result-object v0

    invoke-static {p1}, Lb/a/a/a;->a(Lb/bc;)Lb/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/bd;->a(Lb/bc;)Lb/bd;

    move-result-object v0

    invoke-virtual {v0}, Lb/bd;->a()Lb/bc;

    move-result-object v0

    invoke-virtual {p1}, Lb/bc;->g()Lb/be;

    move-result-object p1

    invoke-virtual {p1}, Lb/be;->close()V

    iget-object p1, p0, Lb/a/a/a;->a:Lb/a/a/i;

    invoke-interface {p1}, Lb/a/a/i;->a()V

    iget-object p1, p0, Lb/a/a/a;->a:Lb/a/a/i;

    invoke-interface {p1, v3, v0}, Lb/a/a/i;->a(Lb/bc;Lb/bc;)V

    return-object v0

    :cond_6
    invoke-virtual {v3}, Lb/bc;->g()Lb/be;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p1}, Lb/bc;->h()Lb/bd;

    move-result-object v0

    invoke-static {v3}, Lb/a/a/a;->a(Lb/bc;)Lb/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/bd;->b(Lb/bc;)Lb/bd;

    move-result-object v0

    invoke-static {p1}, Lb/a/a/a;->a(Lb/bc;)Lb/bc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/bd;->a(Lb/bc;)Lb/bd;

    move-result-object p1

    invoke-virtual {p1}, Lb/bd;->a()Lb/bc;

    move-result-object p1

    iget-object v0, p0, Lb/a/a/a;->a:Lb/a/a/i;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lb/a/c/f;->b(Lb/bc;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lb/a/a/d;->a(Lb/bc;Lb/ax;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/a/a/a;->a:Lb/a/a/i;

    invoke-interface {v0, p1}, Lb/a/a/i;->a(Lb/bc;)Lb/a/a/c;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lb/a/a/a;->a(Lb/a/a/c;Lb/bc;)Lb/bc;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v2}, Lb/ax;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/c/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, Lb/a/a/a;->a:Lb/a/a/i;

    invoke-interface {v0, v2}, Lb/a/a/i;->b(Lb/ax;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lb/bc;->g()Lb/be;

    move-result-object v0

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
