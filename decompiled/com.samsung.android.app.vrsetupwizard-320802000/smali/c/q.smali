.class final Lc/q;
.super Ljava/lang/Object;

# interfaces
.implements Lc/z;


# instance fields
.field final synthetic a:Lc/ab;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lc/ab;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lc/q;->a:Lc/ab;

    iput-object p2, p0, Lc/q;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lc/q;->a:Lc/ab;

    return-object v0
.end method

.method public a_(Lc/f;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p1, Lc/f;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc/ad;->a(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lc/q;->a:Lc/ab;

    invoke-virtual {v0}, Lc/ab;->g()V

    iget-object v0, p1, Lc/f;->a:Lc/w;

    iget v1, v0, Lc/w;->c:I

    iget v2, v0, Lc/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lc/q;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lc/w;->a:[B

    iget v4, v0, Lc/w;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v1, v0, Lc/w;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lc/w;->b:I

    int-to-long v1, v2

    sub-long/2addr p2, v1

    iget-wide v3, p1, Lc/f;->b:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lc/f;->b:J

    iget v1, v0, Lc/w;->b:I

    iget v2, v0, Lc/w;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lc/w;->a()Lc/w;

    move-result-object v1

    iput-object v1, p1, Lc/f;->a:Lc/w;

    invoke-static {v0}, Lc/x;->a(Lc/w;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/q;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
