.class public final LKB;
.super LyB;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LIB;

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LyB;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LKB;->a:Ljava/lang/Object;

    new-instance v0, LIB;

    invoke-direct {v0}, LIB;-><init>()V

    iput-object v0, p0, LKB;->b:LIB;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LKB;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(LvB;)LyB;
    .locals 3

    sget-object v0, LAB;->a:Ljava/util/concurrent/Executor;

    .line 6
    iget-object v1, p0, LKB;->b:LIB;

    new-instance v2, LCB;

    invoke-direct {v2, v0, p1}, LCB;-><init>(Ljava/util/concurrent/Executor;LvB;)V

    invoke-virtual {v1, v2}, LIB;->a(LGB;)V

    invoke-virtual {p0}, LKB;->d()V

    return-object p0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, LXA;->a(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v2, p0, LKB;->c:Z

    iput-object p1, p0, LKB;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LKB;->b:LIB;

    invoke-virtual {p1, p0}, LIB;->a(LyB;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Exception must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    invoke-static {v1, v3}, LXA;->a(ZLjava/lang/Object;)V

    .line 5
    iput-boolean v2, p0, LKB;->c:Z

    iput-object p1, p0, LKB;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LKB;->b:LIB;

    invoke-virtual {p1, p0}, LIB;->a(LyB;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, LXA;->a(ZLjava/lang/Object;)V

    .line 3
    iget-object v1, p0, LKB;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, LKB;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, LxB;

    iget-object v2, p0, LKB;->e:Ljava/lang/Exception;

    invoke-direct {v1, v2}, LxB;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/Exception;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LKB;->c:Z

    iput-object p1, p0, LKB;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LKB;->b:LIB;

    invoke-virtual {p1, p0}, LIB;->a(LyB;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Exception must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, LKB;->c:Z

    iput-object p1, p0, LKB;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LKB;->b:LIB;

    invoke-virtual {p1, p0}, LIB;->a(LyB;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, LKB;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, LKB;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LKB;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LKB;->b:LIB;

    invoke-virtual {v0, p0}, LIB;->a(LyB;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
