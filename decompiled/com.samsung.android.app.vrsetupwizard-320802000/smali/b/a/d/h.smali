.class Lb/a/d/h;
.super Lb/a/d/c;


# instance fields
.field final synthetic d:Lb/a/d/a;

.field private e:Z


# direct methods
.method constructor <init>(Lb/a/d/a;)V
    .locals 1

    iput-object p1, p0, Lb/a/d/h;->d:Lb/a/d/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lb/a/d/c;-><init>(Lb/a/d/a;Lb/a/d/b;)V

    return-void
.end method


# virtual methods
.method public a(Lc/f;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-boolean v0, p0, Lb/a/d/h;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lb/a/d/h;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lb/a/d/h;->d:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->c:Lc/j;

    invoke-interface {v0, p1, p2, p3}, Lc/j;->a(Lc/f;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a/d/h;->e:Z

    invoke-virtual {p0, p1}, Lb/a/d/h;->a(Z)V

    return-wide v1

    :cond_1
    return-wide p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/d/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lb/a/d/h;->e:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/d/h;->a(Z)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/d/h;->b:Z

    return-void
.end method
