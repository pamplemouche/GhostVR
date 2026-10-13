.class public final LDx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LFx;


# direct methods
.method public synthetic constructor <init>(LFx;Lzx;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDx;->w:LFx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, LDx;->w:LFx;

    invoke-virtual {v0}, LFx;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LDx;->w:LFx;

    invoke-virtual {v0}, LFx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "TaskQueue"

    const-string v3, " * Starvation checks being turned off"

    .line 2
    invoke-static {v2, v3, v0}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, LDx;->w:LFx;

    .line 4
    iget-object v0, v0, LFx;->a:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, LDx;->w:LFx;

    .line 7
    iput-object v1, v2, LFx;->g:Lvx;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_0
    iget-object v0, p0, LDx;->w:LFx;

    .line 10
    iget-object v0, v0, LFx;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {v3, v4}, Liy;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "TaskQueue"

    const-string v7, " * Starvation Check, last task %s"

    .line 13
    invoke-static {v6, v7, v5}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v5, p0, LDx;->w:LFx;

    .line 15
    iget-object v5, v5, LFx;->l:Lky;

    .line 16
    check-cast v5, Lly;

    if-eqz v5, :cond_4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 18
    sget-wide v7, LFx;->y:J

    add-long/2addr v3, v7

    cmp-long v7, v5, v3

    if-ltz v7, :cond_3

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "TaskQueue"

    const-string v5, " - Starvation check failed, stopping the delay and running tasks"

    .line 19
    invoke-static {v4, v5, v3}, Lhy;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v3, p0, LDx;->w:LFx;

    .line 21
    iget-object v3, v3, LFx;->j:Lrw;

    const/16 v4, 0xc

    .line 22
    check-cast v3, Lmb0;

    invoke-virtual {v3, v4}, Lmb0;->a(I)V

    .line 23
    iget-object v3, p0, LDx;->w:LFx;

    .line 24
    iget-object v3, v3, LFx;->a:Ljava/lang/Object;

    .line 25
    monitor-enter v3

    .line 26
    :try_start_1
    iget-object v4, p0, LDx;->w:LFx;

    .line 27
    iget-boolean v4, v4, LFx;->e:Z

    if-eqz v4, :cond_1

    .line 28
    iget-object v4, p0, LDx;->w:LFx;

    .line 29
    iput-boolean v2, v4, LFx;->e:Z

    .line 30
    :cond_1
    iget-object v2, p0, LDx;->w:LFx;

    .line 31
    iget-boolean v2, v2, LFx;->f:Z

    if-nez v2, :cond_2

    .line 32
    iget-object v2, p0, LDx;->w:LFx;

    .line 33
    iput-boolean v0, v2, LFx;->f:Z

    .line 34
    :cond_2
    iget-object v0, p0, LDx;->w:LFx;

    .line 35
    iput-object v1, v0, LFx;->g:Lvx;

    .line 36
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    iget-object v0, p0, LDx;->w:LFx;

    .line 38
    invoke-virtual {v0}, LFx;->c()V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 39
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 40
    :cond_3
    iget-object v0, p0, LDx;->w:LFx;

    .line 41
    iget-object v0, v0, LFx;->a:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_3
    iget-object v1, p0, LDx;->w:LFx;

    iget-object v2, p0, LDx;->w:LFx;

    .line 44
    iget-object v2, v2, LFx;->m:Lxx;

    const-string v3, "StarvationChecks"

    .line 45
    sget-wide v4, LFx;->z:J

    invoke-virtual {v2, v3, p0, v4, v5}, Lxx;->a(Ljava/lang/String;Ljava/lang/Runnable;J)Lvx;

    move-result-object v2

    .line 46
    iput-object v2, v1, LFx;->g:Lvx;

    .line 47
    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 48
    :cond_4
    throw v1
.end method
