.class public LUV;
.super LaW;
.source "PG"


# instance fields
.field public final synthetic a:LWV;


# direct methods
.method public constructor <init>(LWV;)V
    .locals 0

    .line 1
    iput-object p1, p0, LUV;->a:LWV;

    invoke-direct {p0}, LaW;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;LeW;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, LUV;->a:LWV;

    .line 2
    iget-object v0, v0, LWV;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LUV;->a:LWV;

    .line 5
    iget-boolean v1, v1, LWV;->f:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, LUV;->a:LWV;

    .line 7
    iget v1, v1, LWV;->g:I

    if-nez v1, :cond_0

    const-string p1, "ChildProcessService"

    const-string p3, "Service has not been bound with bindToCaller()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p1, p3, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 9
    invoke-interface {p2, p1}, LeW;->c(I)V

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-interface {p2, v0}, LeW;->c(I)V

    .line 13
    iget-object v0, p0, LUV;->a:LWV;

    .line 14
    iput-object p2, v0, LWV;->m:LeW;

    .line 15
    invoke-virtual {v0, p1, p3}, LWV;->a(Landroid/os/Bundle;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g(I)V
    .locals 1

    .line 1
    new-instance v0, LTV;

    invoke-direct {v0, p1}, LTV;-><init>(I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()Z
    .locals 8

    .line 1
    iget-object v0, p0, LUV;->a:LWV;

    .line 2
    iget-object v0, v0, LWV;->d:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5
    iget-object v2, p0, LUV;->a:LWV;

    .line 6
    iget v2, v2, LWV;->g:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, LUV;->a:LWV;

    .line 8
    iput v1, v2, LWV;->g:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, LUV;->a:LWV;

    .line 10
    iget v2, v2, LWV;->g:I

    if-eq v2, v1, :cond_1

    const-string v2, "ChildProcessService"

    const-string v4, "Service is already bound by pid %d, cannot bind for pid %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    iget-object v6, p0, LUV;->a:LWV;

    .line 12
    iget v6, v6, LWV;->g:I

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    .line 14
    invoke-static {v2, v4, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    monitor-exit v0

    return v7

    .line 16
    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, LUV;->a:LWV;

    .line 2
    iget-object v0, v0, LWV;->e:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, LUV;->a:LWV;

    .line 5
    iget-boolean v1, v1, LWV;->k:Z

    if-nez v1, :cond_0

    const-string v1, "ChildProcessService"

    const-string v2, "Cannot dump process stack before native is loaded"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v1, v2, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, LJ/N;->M6Y7Jzgj()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public y()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
