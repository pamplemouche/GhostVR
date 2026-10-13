.class public LAW;
.super LEW;
.source "PG"

# interfaces
.implements LzW;


# instance fields
.field public final k:Landroid/os/Handler;

.field public final l:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;LFW;)V
    .locals 2

    const-string v0, "SingleThreadTaskRunnerImpl"

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, p2, v0, v1}, LEW;-><init>(LFW;Ljava/lang/String;I)V

    .line 2
    iput-object p1, p0, LAW;->k:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LAW;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;LFW;Z)V
    .locals 2

    const-string v0, "SingleThreadTaskRunnerImpl"

    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, p2, v0, v1}, LEW;-><init>(LFW;Ljava/lang/String;I)V

    .line 5
    iput-object p1, p0, LAW;->k:Landroid/os/Handler;

    .line 6
    iput-boolean p3, p0, LAW;->l:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 6

    .line 1
    iget-object v0, p0, LEW;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, LEW;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    iget-wide v1, p0, LEW;->e:J

    .line 4
    invoke-static {v1, v2}, LJ/N;->MdFi6sVQ(J)Z

    move-result v1

    .line 5
    monitor-exit v0

    return v1

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, LAW;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, LAW;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, LAW;->l:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, LEW;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5
    iget-object v1, p0, LAW;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, LEW;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
