.class final Lb/a/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lc/z;


# instance fields
.field final synthetic a:Lb/a/d/a;

.field private final b:Lc/m;

.field private c:Z


# direct methods
.method constructor <init>(Lb/a/d/a;)V
    .locals 1

    iput-object p1, p0, Lb/a/d/d;->a:Lb/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/m;

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->a()Lc/ab;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/m;-><init>(Lc/ab;)V

    iput-object p1, p0, Lb/a/d/d;->b:Lc/m;

    return-void
.end method


# virtual methods
.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lb/a/d/d;->b:Lc/m;

    return-object v0
.end method

.method public a_(Lc/f;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/d/d;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0, p2, p3}, Lc/i;->l(J)Lc/i;

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0, p1, p2, p3}, Lc/i;->a_(Lc/f;J)V

    iget-object p1, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object p1, p1, Lb/a/d/a;->d:Lc/i;

    invoke-interface {p1, v1}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/d/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/d/d;->c:Z

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lc/i;->b(Ljava/lang/String;)Lc/i;

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v1, p0, Lb/a/d/d;->b:Lc/m;

    invoke-virtual {v0, v1}, Lb/a/d/a;->a(Lc/m;)V

    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    const/4 v1, 0x3

    iput v1, v0, Lb/a/d/a;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/d/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/d/d;->a:Lb/a/d/a;

    iget-object v0, v0, Lb/a/d/a;->d:Lc/i;

    invoke-interface {v0}, Lc/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
