.class public LwW;
.super LEW;
.source "PG"

# interfaces
.implements LuW;


# instance fields
.field public k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:I


# direct methods
.method public constructor <init>(LFW;)V
    .locals 2

    const-string v0, "SequencedTaskRunnerImpl"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, LEW;-><init>(LFW;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LwW;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, LEW;->e()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic b(Ljava/lang/Runnable;)V
    .locals 5

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-object p1, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_0
    iget v0, p0, LwW;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LwW;->l:I

    if-nez v0, :cond_1

    .line 11
    iget-wide v0, p0, LEW;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 12
    iget-wide v0, p0, LEW;->e:J

    .line 13
    invoke-static {v0, v1}, LJ/N;->MERCiIV8(J)V

    .line 14
    :cond_0
    iput-wide v2, p0, LEW;->e:J

    .line 15
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 4

    .line 1
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, LwW;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LwW;->l:I

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, LEW;->d()V

    .line 4
    :cond_0
    new-instance v1, LvW;

    invoke-direct {v1, p0, p1}, LvW;-><init>(LwW;Ljava/lang/Runnable;)V

    .line 5
    iget-wide v2, p0, LEW;->e:J

    .line 6
    invoke-static {v2, v3, v1, p2, p3}, LJ/N;->MGnQU$47(JLjava/lang/Object;J)V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-super {p0}, LEW;->f()V

    .line 2
    iget-object v0, p0, LwW;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-super {p0}, LEW;->g()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, LwW;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, LEW;->g()V

    :cond_0
    return-void
.end method
