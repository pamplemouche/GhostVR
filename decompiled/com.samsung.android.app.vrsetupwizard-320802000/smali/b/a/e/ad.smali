.class final Lb/a/e/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lc/aa;


# static fields
.field static final synthetic c:Z


# instance fields
.field a:Z

.field b:Z

.field final synthetic d:Lb/a/e/ab;

.field private final e:Lc/f;

.field private final f:Lc/f;

.field private final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lb/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lb/a/e/ad;->c:Z

    return-void
.end method

.method constructor <init>(Lb/a/e/ab;J)V
    .locals 0

    iput-object p1, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    iput-object p1, p0, Lb/a/e/ad;->e:Lc/f;

    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    iput-object p1, p0, Lb/a/e/ad;->f:Lc/f;

    iput-wide p2, p0, Lb/a/e/ad;->g:J

    return-void
.end method

.method private b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v0, v0, Lb/a/e/ab;->f:Lb/a/e/ae;

    invoke-virtual {v0}, Lb/a/e/ae;->c()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v0}, Lc/f;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lb/a/e/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/a/e/ad;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v0, v0, Lb/a/e/ab;->h:Lb/a/e/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-virtual {v0}, Lb/a/e/ab;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v0, v0, Lb/a/e/ab;->f:Lb/a/e/ae;

    invoke-virtual {v0}, Lb/a/e/ae;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v1, v1, Lb/a/e/ab;->f:Lb/a/e/ae;

    invoke-virtual {v1}, Lb/a/e/ae;->b()V

    throw v0
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/e/ad;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v0, v0, Lb/a/e/ab;->h:Lb/a/e/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/a/e/am;

    iget-object v1, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v1, v1, Lb/a/e/ab;->h:Lb/a/e/b;

    invoke-direct {v0, v1}, Lb/a/e/am;-><init>(Lb/a/e/b;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lc/f;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lb/a/e/ad;->b()V

    invoke-direct {p0}, Lb/a/e/ad;->c()V

    iget-object v3, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v3}, Lc/f;->b()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    :cond_0
    iget-object v3, p0, Lb/a/e/ad;->f:Lc/f;

    iget-object v4, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v4}, Lc/f;->b()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lc/f;->a(Lc/f;J)J

    move-result-wide p1

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-wide v3, p3, Lb/a/e/ab;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lb/a/e/ab;->a:J

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-wide v3, p3, Lb/a/e/ab;->a:J

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object p3, p3, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-object p3, p3, Lb/a/e/j;->l:Lb/a/e/al;

    invoke-virtual {p3}, Lb/a/e/al;->d()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-ltz p3, :cond_1

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object p3, p3, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-object v3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget v3, v3, Lb/a/e/ab;->c:I

    iget-object v4, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-wide v4, v4, Lb/a/e/ab;->a:J

    invoke-virtual {p3, v3, v4, v5}, Lb/a/e/j;->a(IJ)V

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iput-wide v0, p3, Lb/a/e/ab;->a:J

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p3, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object p3, p3, Lb/a/e/ab;->d:Lb/a/e/j;

    monitor-enter p3

    :try_start_1
    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v2, v2, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-wide v3, v2, Lb/a/e/j;->j:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lb/a/e/j;->j:J

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v2, v2, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-wide v2, v2, Lb/a/e/j;->j:J

    iget-object v4, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v4, v4, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-object v4, v4, Lb/a/e/j;->l:Lb/a/e/al;

    invoke-virtual {v4}, Lb/a/e/al;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v2, v2, Lb/a/e/ab;->d:Lb/a/e/j;

    const/4 v3, 0x0

    iget-object v4, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v4, v4, Lb/a/e/ab;->d:Lb/a/e/j;

    iget-wide v4, v4, Lb/a/e/j;->j:J

    invoke-virtual {v2, v3, v4, v5}, Lb/a/e/j;->a(IJ)V

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v2, v2, Lb/a/e/ab;->d:Lb/a/e/j;

    iput-wide v0, v2, Lb/a/e/j;->j:J

    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

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

.method public a()Lc/ab;
    .locals 1

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    iget-object v0, v0, Lb/a/e/ab;->f:Lb/a/e/ae;

    return-object v0
.end method

.method a(Lc/j;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Lb/a/e/ad;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_8

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Lb/a/e/ad;->b:Z

    iget-object v4, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v4}, Lc/f;->b()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lb/a/e/ad;->g:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v4, v6

    if-lez v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    invoke-interface {p1, p2, p3}, Lc/j;->i(J)V

    iget-object p1, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    sget-object p2, Lb/a/e/b;->d:Lb/a/e/b;

    invoke-virtual {p1, p2}, Lb/a/e/ab;->b(Lb/a/e/b;)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {p1, p2, p3}, Lc/j;->i(J)V

    return-void

    :cond_4
    iget-object v2, p0, Lb/a/e/ad;->e:Lc/f;

    invoke-interface {p1, v2, p2, p3}, Lc/j;->a(Lc/f;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    sub-long/2addr p2, v2

    iget-object v2, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v3}, Lc/f;->b()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lb/a/e/ad;->f:Lc/f;

    iget-object v1, p0, Lb/a/e/ad;->e:Lc/f;

    invoke-virtual {v0, v1}, Lc/f;->a(Lc/aa;)J

    if-eqz v8, :cond_6

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_6
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_8
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lb/a/e/ad;->a:Z

    iget-object v1, p0, Lb/a/e/ad;->f:Lc/f;

    invoke-virtual {v1}, Lc/f;->t()V

    iget-object v1, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/e/ad;->d:Lb/a/e/ab;

    invoke-virtual {v0}, Lb/a/e/ab;->j()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
