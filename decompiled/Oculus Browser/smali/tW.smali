.class public LtW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LBW;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LtW;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()LoW;
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, LsW;->a:Ljava/util/concurrent/Callable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->b(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LFW;)LuW;
    .locals 2

    .line 1
    iget-boolean v0, p1, LFW;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LtW;->a()LoW;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-boolean v0, p1, LFW;->e:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lorg/chromium/base/task/PostTask;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, LAW;

    invoke-direct {v1, v0, p1}, LAW;-><init>(Landroid/os/Handler;LFW;)V

    return-object v1

    .line 5
    :cond_2
    new-instance v0, LwW;

    invoke-direct {v0, p1}, LwW;-><init>(LFW;)V

    return-object v0
.end method

.method public declared-synchronized a(LFW;Ljava/lang/Runnable;J)V
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-byte v0, p1, LFW;->f:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, LtW;->c(LFW;)LCW;

    move-result-object p1

    .line 9
    invoke-interface {p1, p2, p3, p4}, LCW;->a(Ljava/lang/Runnable;J)V

    .line 10
    invoke-interface {p1}, LCW;->destroy()V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, LtW;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCW;

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, LtW;->c(LFW;)LCW;

    move-result-object v0

    .line 13
    invoke-interface {v0}, LCW;->c()V

    .line 14
    iget-object v1, p0, LtW;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_2
    invoke-interface {v0, p2, p3, p4}, LCW;->a(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(LFW;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(LFW;)LCW;
    .locals 3

    .line 1
    iget-boolean v0, p1, LFW;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LtW;->a()LoW;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-boolean v0, p1, LFW;->e:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lorg/chromium/base/task/PostTask;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->d()Landroid/os/Handler;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, LAW;

    invoke-direct {v1, v0, p1}, LAW;-><init>(Landroid/os/Handler;LFW;)V

    return-object v1

    .line 5
    :cond_2
    new-instance v0, LEW;

    const-string v1, "TaskRunnerImpl"

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, p1, v1, v2}, LEW;-><init>(LFW;Ljava/lang/String;I)V

    return-object v0
.end method
