.class final Lc/t;
.super Ljava/lang/Object;

# interfaces
.implements Lc/i;


# instance fields
.field public final a:Lc/f;

.field public final b:Lc/z;

.field c:Z


# direct methods
.method constructor <init>(Lc/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iput-object v0, p0, Lc/t;->a:Lc/f;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lc/t;->b:Lc/z;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/t;->b:Lc/z;

    invoke-interface {v0}, Lc/z;->a()Lc/ab;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lc/f;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->a_(Lc/f;J)V

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lc/k;)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Lc/k;)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Lc/f;
    .locals 1

    iget-object v0, p0, Lc/t;->a:Lc/f;

    return-object v0
.end method

.method public c([B)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->b([B)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BII)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/f;->b([BII)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/t;->a:Lc/f;

    iget-wide v1, v1, Lc/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lc/t;->b:Lc/z;

    iget-object v2, p0, Lc/t;->a:Lc/f;

    iget-object v3, p0, Lc/t;->a:Lc/f;

    iget-wide v3, v3, Lc/f;->b:J

    invoke-interface {v1, v2, v3, v4}, Lc/z;->a_(Lc/f;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lc/t;->b:Lc/z;

    invoke-interface {v1}, Lc/z;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/t;->c:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, Lc/ad;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/t;->a:Lc/f;

    iget-wide v0, v0, Lc/f;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lc/t;->b:Lc/z;

    iget-object v1, p0, Lc/t;->a:Lc/f;

    iget-wide v2, v1, Lc/f;->b:J

    invoke-interface {v0, v1, v2, v3}, Lc/z;->a_(Lc/f;J)V

    :cond_0
    iget-object v0, p0, Lc/t;->b:Lc/z;

    invoke-interface {v0}, Lc/z;->flush()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(I)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->d(I)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(I)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->c(I)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->b(I)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(J)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2}, Lc/f;->k(J)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(J)Lc/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0, p1, p2}, Lc/f;->j(J)Lc/f;

    invoke-virtual {p0}, Lc/t;->w()Lc/i;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/t;->b:Lc/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lc/i;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lc/t;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/t;->a:Lc/f;

    invoke-virtual {v0}, Lc/f;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lc/t;->b:Lc/z;

    iget-object v3, p0, Lc/t;->a:Lc/f;

    invoke-interface {v2, v3, v0, v1}, Lc/z;->a_(Lc/f;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
