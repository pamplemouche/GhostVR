.class public Lorg/chromium/base/task/PostTask;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:Ljava/util/Set;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:[LBW;

.field public static e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    .line 4
    new-instance v0, LrW;

    invoke-direct {v0}, LrW;-><init>()V

    sput-object v0, Lorg/chromium/base/task/PostTask;->c:Ljava/util/concurrent/Executor;

    const/4 v0, 0x5

    new-array v0, v0, [LBW;

    .line 5
    new-instance v1, LtW;

    invoke-direct {v1}, LtW;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6
    sput-object v0, Lorg/chromium/base/task/PostTask;->d:[LBW;

    return-void
.end method

.method public static a(LFW;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 13
    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(LFW;)LuW;
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->d:[LBW;

    iget-byte v2, p0, LFW;->f:B

    aget-object v1, v1, v2

    .line 3
    invoke-interface {v1, p0}, LBW;->a(LFW;)LuW;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(ILBW;)V
    .locals 2

    .line 16
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->d:[LBW;

    aput-object p1, v1, p0

    .line 18
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0
.end method

.method public static a(LFW;Ljava/lang/Runnable;)V
    .locals 2

    .line 19
    sget-object v0, Lorg/chromium/base/task/PostTask;->d:[LBW;

    iget-byte v1, p0, LFW;->f:B

    aget-object v0, v0, v1

    .line 20
    invoke-interface {v0, p0}, LBW;->b(LFW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    invoke-static {p0, p1, v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public static a(LFW;Ljava/lang/Runnable;J)V
    .locals 12

    .line 5
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    if-nez v1, :cond_1

    iget-boolean v1, p0, LFW;->h:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v2, p0, LFW;->a:Z

    iget v3, p0, LFW;->b:I

    iget-boolean v4, p0, LFW;->c:Z

    iget-boolean v5, p0, LFW;->d:Z

    iget-boolean v6, p0, LFW;->e:Z

    iget-byte v7, p0, LFW;->f:B

    iget-object v8, p0, LFW;->g:[B

    move-object v9, p1

    move-wide v10, p2

    .line 8
    invoke-static/range {v2 .. v11}, LJ/N;->MTILOhAQ(ZIZZZB[BLjava/lang/Object;J)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->d:[LBW;

    iget-byte v2, p0, LFW;->f:B

    aget-object v1, v1, v2

    .line 10
    invoke-interface {v1, p0, p1, p2, p3}, LBW;->a(LFW;Ljava/lang/Runnable;J)V

    .line 11
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()Z
    .locals 2

    .line 23
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-boolean v1, Lorg/chromium/base/task/PostTask;->e:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(LFW;)LCW;
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->d:[LBW;

    iget-byte v2, p0, LFW;->f:B

    aget-object v1, v1, v2

    .line 3
    invoke-interface {v1, p0}, LBW;->c(LFW;)LCW;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 2

    .line 9
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->c:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-object v1

    .line 11
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(LFW;Ljava/lang/Runnable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 6
    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static onNativeSchedulerReady()V
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    const/4 v2, 0x0

    .line 3
    sput-object v2, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    const/4 v2, 0x1

    .line 4
    sput-boolean v2, Lorg/chromium/base/task/PostTask;->e:Z

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCW;

    .line 6
    invoke-interface {v2}, LCW;->a()V

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onNativeSchedulerShutdown()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/task/PostTask;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lorg/chromium/base/task/PostTask;->e:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
