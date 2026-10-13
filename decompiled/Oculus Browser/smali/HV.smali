.class public LHV;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFV;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Intent;

.field public final c:I

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:LGV;

.field public final g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;LGV;Ljava/lang/String;LyV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LHV;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LHV;->b:Landroid/content/Intent;

    .line 4
    iput p3, p0, LHV;->c:I

    .line 5
    iput-object p4, p0, LHV;->d:Landroid/os/Handler;

    .line 6
    iput-object p5, p0, LHV;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, LHV;->f:LGV;

    .line 8
    iput-object p7, p0, LHV;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 9

    const-string v0, "ChildProcessConnection.ChildServiceConnectionImpl.bind"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, LHV;->a:Landroid/content/Context;

    iget-object v3, p0, LHV;->b:Landroid/content/Intent;

    iget v5, p0, LHV;->c:I

    iget-object v6, p0, LHV;->d:Landroid/os/Handler;

    iget-object v7, p0, LHV;->e:Ljava/util/concurrent/Executor;

    iget-object v8, p0, LHV;->g:Ljava/lang/String;

    move-object v4, p0

    invoke-static/range {v2 .. v8}, LiV;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, LHV;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, LHV;->h:Z

    return v0

    :catchall_0
    move-exception v1

    .line 5
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LHV;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LHV;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LHV;->h:Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, LHV;->f:LGV;

    check-cast p1, LBV;

    .line 2
    iget-object v0, p1, LBV;->a:LLV;

    .line 3
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p1, LBV;->a:LLV;

    invoke-virtual {p1, p2}, LLV;->a(Landroid/os/IBinder;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, LBV;->a:LLV;

    .line 7
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 8
    new-instance v1, LzV;

    invoke-direct {v1, p1, p2}, LzV;-><init>(LBV;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, LHV;->f:LGV;

    check-cast p1, LBV;

    .line 2
    iget-object v0, p1, LBV;->a:LLV;

    .line 3
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p1, LBV;->a:LLV;

    invoke-virtual {p1}, LLV;->i()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, LBV;->a:LLV;

    .line 7
    iget-object v0, v0, LLV;->a:Landroid/os/Handler;

    .line 8
    new-instance v1, LAV;

    invoke-direct {v1, p1}, LAV;-><init>(LBV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
