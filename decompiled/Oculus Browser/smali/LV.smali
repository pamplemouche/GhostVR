.class public LLV;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final B:Ljava/lang/Object;

.field public static final C:[I


# instance fields
.field public A:Z

.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroid/content/ComponentName;

.field public final d:Landroid/os/Bundle;

.field public final e:Z

.field public f:LKV;

.field public g:LJV;

.field public h:LIV;

.field public i:LbW;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public final n:LFV;

.field public final o:LFV;

.field public final p:LFV;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:[I

.field public z:LNU;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LLV;->B:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    sput-object v0, LLV;->C:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, v0, LLV;->a:Landroid/os/Handler;

    .line 3
    new-instance v4, LtV;

    invoke-direct {v4, p0}, LtV;-><init>(LLV;)V

    iput-object v4, v0, LLV;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object v1, v0, LLV;->c:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 5
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v4, v0, LLV;->d:Landroid/os/Bundle;

    const-string v5, "org.chromium.base.process_launcher.extra.bind_to_caller"

    .line 6
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iput-boolean v2, v0, LLV;->e:Z

    .line 8
    new-instance v2, LBV;

    invoke-direct {v2, p0}, LBV;-><init>(LLV;)V

    .line 9
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 10
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    if-eqz p4, :cond_2

    const/high16 v1, -0x80000000

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    or-int/lit8 v1, v1, 0x1

    .line 12
    new-instance v3, LHV;

    .line 13
    iget-object v10, v0, LLV;->a:Landroid/os/Handler;

    .line 14
    iget-object v11, v0, LLV;->b:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    move-object v6, v3

    move-object/from16 v7, p1

    move-object v8, v4

    move v9, v1

    move-object v12, v2

    move-object/from16 v13, p6

    .line 15
    invoke-direct/range {v6 .. v14}, LHV;-><init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;LGV;Ljava/lang/String;LyV;)V

    .line 16
    iput-object v3, v0, LLV;->o:LFV;

    or-int/lit8 v9, v1, 0x40

    .line 17
    new-instance v3, LHV;

    .line 18
    iget-object v10, v0, LLV;->a:Landroid/os/Handler;

    .line 19
    iget-object v11, v0, LLV;->b:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    move-object v6, v3

    move-object/from16 v7, p1

    move-object v8, v4

    move-object v12, v2

    move-object/from16 v13, p6

    .line 20
    invoke-direct/range {v6 .. v14}, LHV;-><init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;LGV;Ljava/lang/String;LyV;)V

    .line 21
    iput-object v3, v0, LLV;->n:LFV;

    or-int/lit8 v9, v1, 0x20

    .line 22
    new-instance v1, LHV;

    .line 23
    iget-object v10, v0, LLV;->a:Landroid/os/Handler;

    .line 24
    iget-object v11, v0, LLV;->b:Ljava/util/concurrent/Executor;

    const/4 v14, 0x0

    move-object v6, v1

    move-object/from16 v7, p1

    move-object v8, v4

    move-object v12, v2

    move-object/from16 v13, p6

    .line 25
    invoke-direct/range {v6 .. v14}, LHV;-><init>(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Handler;Ljava/util/concurrent/Executor;LGV;Ljava/lang/String;LyV;)V

    .line 26
    iput-object v1, v0, LLV;->p:LFV;

    return-void
.end method

.method public static n()Z
    .locals 1

    .line 1
    invoke-static {}, LiV;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 37
    invoke-virtual {p0}, LLV;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 38
    iget v2, p0, LLV;->m:I

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ChildProcessConn"

    const-string v2, "The connection is not bound for %d"

    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_0
    iget v0, p0, LLV;->r:I

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, LLV;->o:LFV;

    check-cast v0, LHV;

    invoke-virtual {v0}, LHV;->a()Z

    .line 42
    invoke-virtual {p0}, LLV;->m()V

    .line 43
    :cond_1
    iget v0, p0, LLV;->r:I

    add-int/2addr v0, v1

    iput v0, p0, LLV;->r:I

    return-void
.end method

.method public a(II)V
    .locals 8

    .line 28
    iget v0, p0, LLV;->s:I

    if-ne v0, p1, :cond_0

    iget v0, p0, LLV;->t:I

    if-eq v0, p2, :cond_1

    .line 29
    :cond_0
    iput p1, p0, LLV;->s:I

    .line 30
    iput p2, p0, LLV;->t:I

    .line 31
    iget-object v0, p0, LLV;->p:LFV;

    move-object v3, v0

    check-cast v3, LHV;

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 32
    invoke-static {}, LiV;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v1, v3, LHV;->a:Landroid/content/Context;

    .line 34
    :try_start_0
    sget-object v2, LiV;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v3, v4, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :catch_0
    iget-object v1, v3, LHV;->a:Landroid/content/Context;

    iget-object v2, v3, LHV;->b:Landroid/content/Intent;

    iget v4, v3, LHV;->c:I

    iget-object v5, v3, LHV;->d:Landroid/os/Handler;

    iget-object v6, v3, LHV;->e:Ljava/util/concurrent/Executor;

    iget-object v7, v3, LHV;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, LiV;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/lang/String;)Z

    :cond_1
    return-void

    .line 36
    :cond_2
    throw v0
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "ChildProcessConn"

    const-string v1, "ChildProcessConnection.ChildServiceConnection.onServiceConnected"

    .line 1
    iget-boolean v2, p0, LLV;->j:Z

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, LLV;->c:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ChildProcessConnection: process launch"

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    .line 4
    invoke-static {v2, v4, v5}, Lorg/chromium/base/EarlyTraceEvent;->a(Ljava/lang/String;J)V

    .line 5
    sget-boolean v6, Lorg/chromium/base/TraceEvent;->x:Z

    if-eqz v6, :cond_1

    .line 6
    invoke-static {v2, v4, v5}, LJ/N;->MffNhCLU(Ljava/lang/String;J)V

    :cond_1
    const/4 v2, 0x0

    .line 7
    invoke-static {v1, v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, LLV;->j:Z

    .line 9
    invoke-static {p1}, LaW;->a(Landroid/os/IBinder;)LbW;

    move-result-object p1

    iput-object p1, p0, LLV;->i:LbW;

    .line 10
    iget-boolean v4, p0, LLV;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 11
    :try_start_1
    invoke-interface {p1}, LbW;->h()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, LLV;->f:LKV;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, LLV;->f:LKV;

    invoke-interface {p1, p0}, LKV;->b(LLV;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, LLV;->l()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v4, "Failed to bind service to connection."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 16
    invoke-static {v0, v4, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    .line 18
    :cond_3
    :try_start_3
    iget-object p1, p0, LLV;->f:LKV;

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, LLV;->f:LKV;

    invoke-interface {p1}, LKV;->a()V

    .line 20
    :cond_4
    iput-boolean v2, p0, LLV;->k:Z

    .line 21
    iget-object p1, p0, LLV;->z:LNU;

    if-nez p1, :cond_5

    .line 22
    new-instance p1, LuV;

    invoke-direct {p1, p0}, LuV;-><init>(LLV;)V

    .line 23
    new-instance v0, LvV;

    invoke-direct {v0, p1}, LvV;-><init>(LNU;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 24
    iput-object p1, p0, LLV;->z:LNU;

    .line 25
    :cond_5
    iget-object p1, p0, LLV;->g:LJV;

    if-eqz p1, :cond_6

    .line 26
    invoke-virtual {p0}, LLV;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :cond_6
    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 2

    .line 1
    sget-object v0, LLV;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, LLV;->w:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()V
    .locals 7

    const-string v0, "ChildProcessConnection.doConnectionSetup"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, LEV;

    invoke-direct {v2, p0}, LEV;-><init>(LLV;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v3, p0, LLV;->i:LbW;

    iget-object v4, p0, LLV;->g:LJV;

    iget-object v4, v4, LJV;->a:Landroid/os/Bundle;

    iget-object v5, p0, LLV;->g:LJV;

    iget-object v5, v5, LJV;->b:Ljava/util/List;

    invoke-interface {v3, v4, v2, v5}, LbW;->a(Landroid/os/Bundle;LeW;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "ChildProcessConn"

    const-string v4, "Failed to setup connection."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 4
    invoke-static {v3, v4, v5}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    iput-object v1, p0, LLV;->g:LJV;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw v1
.end method

.method public d()Z
    .locals 2

    .line 1
    sget-object v0, LLV;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, LLV;->A:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LLV;->i:LbW;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    sget-object v0, LLV;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, LLV;->x:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, LLV;->i:LbW;

    .line 2
    invoke-virtual {p0}, LLV;->l()V

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0}, LbW;->y()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    :cond_0
    sget-object v0, LLV;->B:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 5
    :try_start_1
    iput-boolean v1, p0, LLV;->x:Z

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {p0}, LLV;->h()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, LLV;->f:LKV;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, LLV;->f:LKV;

    .line 3
    invoke-interface {v0, p0}, LKV;->a(LLV;)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LLV;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LLV;->l:Z

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget v2, p0, LLV;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ChildProcessConn"

    const-string v2, "onServiceDisconnected (crash or killed by oom): pid=%d"

    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, LLV;->l()V

    .line 5
    invoke-virtual {p0}, LLV;->h()V

    .line 6
    iget-object v0, p0, LLV;->h:LIV;

    if-eqz v0, :cond_1

    .line 7
    check-cast v0, LPV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LPV;->a(LLV;)V

    .line 8
    iput-object v1, p0, LLV;->h:LIV;

    :cond_1
    return-void
.end method

.method public j()[I
    .locals 4

    .line 1
    sget-object v0, LLV;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LLV;->y:[I

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, LLV;->y:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, LLV;->C:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 5
    iget v2, p0, LLV;->v:I

    if-eqz v2, :cond_1

    .line 6
    iget v2, p0, LLV;->v:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    .line 7
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, LLV;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget v2, p0, LLV;->m:I

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "ChildProcessConn"

    const-string v2, "The connection is not bound for %d"

    invoke-static {v1, v2, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, LLV;->r:I

    sub-int/2addr v0, v1

    iput v0, p0, LLV;->r:I

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, LLV;->o:LFV;

    check-cast v0, LHV;

    invoke-virtual {v0}, LHV;->b()V

    .line 6
    invoke-virtual {p0}, LLV;->m()V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LLV;->i:LbW;

    .line 2
    iput-object v0, p0, LLV;->g:LJV;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, LLV;->u:Z

    .line 4
    iget-object v1, p0, LLV;->n:LFV;

    check-cast v1, LHV;

    invoke-virtual {v1}, LHV;->b()V

    .line 5
    iget-object v1, p0, LLV;->p:LFV;

    check-cast v1, LHV;

    invoke-virtual {v1}, LHV;->b()V

    .line 6
    iget-object v1, p0, LLV;->o:LFV;

    check-cast v1, LHV;

    invoke-virtual {v1}, LHV;->b()V

    .line 7
    invoke-virtual {p0}, LLV;->m()V

    .line 8
    sget-object v1, LLV;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, LLV;->C:[I

    const/4 v3, 0x4

    .line 10
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, LLV;->y:[I

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, LLV;->z:LNU;

    if-eqz v1, :cond_0

    .line 13
    new-instance v2, LwV;

    invoke-direct {v2, v1}, LwV;-><init>(LNU;)V

    invoke-static {v2}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 14
    iput-object v0, p0, LLV;->z:LNU;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final m()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LLV;->u:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LLV;->n:LFV;

    check-cast v0, LHV;

    .line 3
    iget-boolean v0, v0, LHV;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, LLV;->o:LFV;

    check-cast v0, LHV;

    .line 5
    iget-boolean v0, v0, LHV;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 6
    :goto_0
    sget-object v2, LLV;->B:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    iget v3, p0, LLV;->v:I

    if-eq v0, v3, :cond_4

    .line 8
    iget v3, p0, LLV;->v:I

    if-eqz v3, :cond_3

    .line 9
    sget-object v3, LLV;->C:[I

    iget v4, p0, LLV;->v:I

    aget v5, v3, v4

    sub-int/2addr v5, v1

    aput v5, v3, v4

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    sget-object v3, LLV;->C:[I

    aget v4, v3, v0

    add-int/2addr v4, v1

    aput v4, v3, v0

    .line 11
    :cond_4
    iput v0, p0, LLV;->v:I

    .line 12
    iget-boolean v1, p0, LLV;->u:Z

    if-nez v1, :cond_5

    .line 13
    iput v0, p0, LLV;->w:I

    .line 14
    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
