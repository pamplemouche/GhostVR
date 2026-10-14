.class Lb/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lc/aa;


# instance fields
.field a:Z

.field final synthetic b:Lc/j;

.field final synthetic c:Lb/a/a/c;

.field final synthetic d:Lc/i;

.field final synthetic e:Lb/a/a/a;


# direct methods
.method constructor <init>(Lb/a/a/a;Lc/j;Lb/a/a/c;Lc/i;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/b;->e:Lb/a/a/a;

    iput-object p2, p0, Lb/a/a/b;->b:Lc/j;

    iput-object p3, p0, Lb/a/a/b;->c:Lb/a/a/c;

    iput-object p4, p0, Lb/a/a/b;->d:Lc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lb/a/a/b;->b:Lc/j;

    invoke-interface {v1, p1, p2, p3}, Lc/j;->a(Lc/f;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lb/a/a/b;->a:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lb/a/a/b;->a:Z

    iget-object p1, p0, Lb/a/a/b;->d:Lc/i;

    invoke-interface {p1}, Lc/i;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lb/a/a/b;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->c()Lc/f;

    move-result-object v3

    invoke-virtual {p1}, Lc/f;->b()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lc/f;->a(Lc/f;JJ)Lc/f;

    iget-object p1, p0, Lb/a/a/b;->d:Lc/i;

    invoke-interface {p1}, Lc/i;->w()Lc/i;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lb/a/a/b;->a:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, Lb/a/a/b;->a:Z

    iget-object p2, p0, Lb/a/a/b;->c:Lb/a/a/c;

    invoke-interface {p2}, Lb/a/a/c;->b()V

    :cond_2
    throw p1
.end method

.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lb/a/a/b;->b:Lc/j;

    invoke-interface {v0}, Lc/j;->a()Lc/ab;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/a/b;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lb/a/c;->a(Lc/aa;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/b;->a:Z

    iget-object v0, p0, Lb/a/a/b;->c:Lb/a/a/c;

    invoke-interface {v0}, Lb/a/a/c;->b()V

    :cond_0
    iget-object v0, p0, Lb/a/a/b;->b:Lc/j;

    invoke-interface {v0}, Lc/j;->close()V

    return-void
.end method
