.class public final Lb/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/c/c;


# instance fields
.field final a:Lb/ar;

.field final b:Lb/a/b/g;

.field final c:Lc/j;

.field final d:Lc/i;

.field e:I


# direct methods
.method public constructor <init>(Lb/ar;Lb/a/b/g;Lc/j;Lc/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/d/a;->e:I

    iput-object p1, p0, Lb/a/d/a;->a:Lb/ar;

    iput-object p2, p0, Lb/a/d/a;->b:Lb/a/b/g;

    iput-object p3, p0, Lb/a/d/a;->c:Lc/j;

    iput-object p4, p0, Lb/a/d/a;->d:Lc/i;

    return-void
.end method

.method private b(Lb/bc;)Lc/aa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lb/a/c/f;->b(Lb/bc;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/d/a;->b(J)Lc/aa;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lb/bc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/bc;->a()Lb/ax;

    move-result-object p1

    invoke-virtual {p1}, Lb/ax;->a()Lb/ai;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/d/a;->a(Lb/ai;)Lc/aa;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lb/a/c/f;->a(Lb/bc;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lb/a/d/a;->b(J)Lc/aa;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lb/a/d/a;->f()Lc/aa;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Z)Lb/bd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lb/a/d/a;->c:Lc/j;

    invoke-interface {v0}, Lc/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/c/l;->a(Ljava/lang/String;)Lb/a/c/l;

    move-result-object v0

    new-instance v1, Lb/bd;

    invoke-direct {v1}, Lb/bd;-><init>()V

    iget-object v2, v0, Lb/a/c/l;->a:Lb/au;

    invoke-virtual {v1, v2}, Lb/bd;->a(Lb/au;)Lb/bd;

    move-result-object v1

    iget v2, v0, Lb/a/c/l;->b:I

    invoke-virtual {v1, v2}, Lb/bd;->a(I)Lb/bd;

    move-result-object v1

    iget-object v2, v0, Lb/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/bd;->a(Ljava/lang/String;)Lb/bd;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/d/a;->d()Lb/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/bd;->a(Lb/ag;)Lb/bd;

    move-result-object v1

    if-eqz p1, :cond_2

    iget p1, v0, Lb/a/c/l;->b:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    iput p1, p0, Lb/a/d/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/a/d/a;->b:Lb/a/b/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public a(Lb/bc;)Lb/be;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/a/d/a;->b(Lb/bc;)Lc/aa;

    move-result-object v0

    new-instance v1, Lb/a/c/i;

    invoke-virtual {p1}, Lb/bc;->f()Lb/ag;

    move-result-object p1

    invoke-static {v0}, Lc/p;->a(Lc/aa;)Lc/j;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lb/a/c/i;-><init>(Lb/ag;Lc/j;)V

    return-object v1
.end method

.method public a(Lb/ai;)Lc/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lb/a/d/a;->e:I

    new-instance v0, Lb/a/d/e;

    invoke-direct {v0, p0, p1}, Lb/a/d/e;-><init>(Lb/a/d/a;Lb/ai;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/d/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Lc/z;
    .locals 2

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lb/a/d/a;->e:I

    new-instance v0, Lb/a/d/f;

    invoke-direct {v0, p0, p1, p2}, Lb/a/d/f;-><init>(Lb/a/d/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/ax;J)Lc/z;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lb/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/a/d/a;->e()Lc/z;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lb/a/d/a;->a(J)Lc/z;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->flush()V

    return-void
.end method

.method public a(Lb/ag;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/a;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0, p2}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lb/ag;->a()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v2, p0, Lb/a/d/a;->d:Lc/i;

    invoke-virtual {p1, p2}, Lb/ag;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    move-result-object v2

    invoke-virtual {p1, p2}, Lb/ag;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    move-result-object v2

    invoke-interface {v2, v0}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {p1, v0}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    const/4 p1, 0x1

    iput p1, p0, Lb/a/d/a;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lb/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/d/a;->b:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c;->a()Lb/bh;

    move-result-object v0

    invoke-virtual {v0}, Lb/bh;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/c/j;->a(Lb/ax;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/ax;->c()Lb/ag;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lb/a/d/a;->a(Lb/ag;Ljava/lang/String;)V

    return-void
.end method

.method a(Lc/m;)V
    .locals 2

    invoke-virtual {p1}, Lc/m;->a()Lc/ab;

    move-result-object v0

    sget-object v1, Lc/ab;->c:Lc/ab;

    invoke-virtual {p1, v1}, Lc/m;->a(Lc/ab;)Lc/m;

    invoke-virtual {v0}, Lc/ab;->f()Lc/ab;

    invoke-virtual {v0}, Lc/ab;->h_()Lc/ab;

    return-void
.end method

.method public b(J)Lc/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lb/a/d/a;->e:I

    new-instance v0, Lb/a/d/g;

    invoke-direct {v0, p0, p1, p2}, Lb/a/d/g;-><init>(Lb/a/d/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/a/d/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->flush()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lb/a/d/a;->b:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/b/c;->c()V

    :cond_0
    return-void
.end method

.method public d()Lb/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/ah;

    invoke-direct {v0}, Lb/ah;-><init>()V

    :goto_0
    iget-object v1, p0, Lb/a/d/a;->c:Lc/j;

    invoke-interface {v1}, Lc/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v2, v0, v1}, Lb/a/a;->a(Lb/ah;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/ah;->a()Lb/ag;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/z;
    .locals 3

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lb/a/d/a;->e:I

    new-instance v0, Lb/a/d/d;

    invoke-direct {v0, p0}, Lb/a/d/d;-><init>(Lb/a/d/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lc/aa;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/d/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/a/d/a;->b:Lb/a/b/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Lb/a/d/a;->e:I

    invoke-virtual {v0}, Lb/a/b/g;->d()V

    new-instance v0, Lb/a/d/h;

    invoke-direct {v0, p0}, Lb/a/d/h;-><init>(Lb/a/d/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/d/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
