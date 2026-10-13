.class public LEW;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LCW;


# instance fields
.field public final a:LFW;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public e:J

.field public final f:Ljava/lang/Runnable;

.field public g:Z

.field public final h:LKT;

.field public i:Ljava/util/LinkedList;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>(LFW;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LEW;->d:Ljava/lang/Object;

    .line 3
    new-instance v0, LDW;

    invoke-direct {v0, p0}, LDW;-><init>(LEW;)V

    iput-object v0, p0, LEW;->f:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LEW;->h:LKT;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LEW;->i:Ljava/util/LinkedList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LEW;->j:Ljava/util/List;

    .line 7
    iput-object p1, p0, LEW;->a:LFW;

    const-string p1, ".PreNativeTask.run"

    .line 8
    invoke-static {p2, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LEW;->b:Ljava/lang/String;

    .line 9
    iput p3, p0, LEW;->c:I

    .line 10
    sget-object p1, Lorg/chromium/base/task/PostTask;->b:Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 11
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0}, LEW;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 11
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    invoke-virtual {p0}, LEW;->d()V

    .line 13
    invoke-virtual {p0}, LEW;->e()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, LEW;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 4

    .line 2
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, LEW;->i:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, LEW;->b(Ljava/lang/Runnable;J)V

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 6
    iget-object p2, p0, LEW;->i:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, LEW;->g()V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Landroid/util/Pair;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, LEW;->j:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method public b(Ljava/lang/Runnable;J)V
    .locals 2

    .line 1
    iget-wide v0, p0, LEW;->e:J

    .line 2
    invoke-static {v0, v1, p1, p2, p3}, LJ/N;->MGnQU$47(JLjava/lang/Object;J)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 13

    .line 1
    iget-wide v0, p0, LEW;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget v5, p0, LEW;->c:I

    iget-object v0, p0, LEW;->a:LFW;

    iget-boolean v6, v0, LFW;->a:Z

    iget v7, v0, LFW;->b:I

    iget-boolean v8, v0, LFW;->c:Z

    iget-boolean v9, v0, LFW;->d:Z

    iget-boolean v10, v0, LFW;->e:Z

    iget-byte v11, v0, LFW;->f:B

    iget-object v12, v0, LFW;->g:[B

    .line 3
    invoke-static/range {v5 .. v12}, LJ/N;->M5_IQXaH(IZIZZZB[B)J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, LEW;->e:J

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 6

    .line 1
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, LEW;->g:Z

    .line 3
    iget-wide v1, p0, LEW;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4
    iget-wide v1, p0, LEW;->e:J

    .line 5
    invoke-static {v1, v2}, LJ/N;->MERCiIV8(J)V

    .line 6
    :cond_0
    iput-wide v3, p0, LEW;->e:J

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, LEW;->i:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p0, v1, v2, v3}, LEW;->b(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LEW;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 5
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, LEW;->b(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LEW;->i:Ljava/util/LinkedList;

    .line 7
    iput-object v0, p0, LEW;->j:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, LEW;->b:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-object v2, p0, LEW;->i:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_2
    iget-object v2, p0, LEW;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    iget-object v1, p0, LEW;->a:LFW;

    iget v1, v1, LFW;->b:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/16 v1, 0xa

    .line 8
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    .line 9
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 10
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 11
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    .line 13
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    .line 14
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_5

    .line 15
    :try_start_7
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 16
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 17
    :cond_5
    :goto_1
    throw v2
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/task/PostTask;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, LEW;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
