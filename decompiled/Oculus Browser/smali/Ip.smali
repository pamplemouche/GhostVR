.class public final LIp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Set;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Ldp;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:LHp;


# direct methods
.method public constructor <init>(LHp;Ldp;)V
    .locals 0

    iput-object p1, p0, LIp;->g:LHp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LIp;->e:Ldp;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LIp;->a:Ljava/util/Set;

    const/4 p1, 0x2

    iput p1, p0, LIp;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, LIp;->g:LHp;

    .line 1
    iget-object v0, p2, LHp;->f:LLp;

    .line 2
    iget-object p2, p2, LHp;->d:Landroid/content/Context;

    .line 3
    iget-object p2, p0, LIp;->e:Ldp;

    invoke-virtual {p2}, Ldp;->a()Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p2, p0, LIp;->a:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    iput v0, p0, LIp;->b:I

    iget-object v0, p0, LIp;->g:LHp;

    .line 5
    iget-object v1, v0, LHp;->f:LLp;

    .line 6
    iget-object v2, v0, LHp;->d:Landroid/content/Context;

    .line 7
    iget-object v0, p0, LIp;->e:Ldp;

    invoke-virtual {v0}, Ldp;->a()Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, LIp;->e:Ldp;

    .line 8
    iget v6, v0, Ldp;->d:I

    move-object v3, p1

    move-object v5, p0

    .line 9
    invoke-virtual/range {v1 .. v6}, LLp;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, LIp;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LIp;->g:LHp;

    .line 10
    iget-object p1, p1, LHp;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 11
    iget-object v1, p0, LIp;->e:Ldp;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, LIp;->g:LHp;

    .line 12
    iget-object v1, v0, LHp;->e:Landroid/os/Handler;

    .line 13
    iget-wide v2, v0, LHp;->h:J

    .line 14
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, LIp;->b:I

    :try_start_0
    iget-object p1, p0, LIp;->g:LHp;

    .line 15
    iget-object p1, p1, LHp;->f:LLp;

    .line 16
    iget-object v0, p0, LIp;->g:LHp;

    .line 17
    iget-object v0, v0, LHp;->d:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, LIp;->g:LHp;

    .line 1
    iget-object v0, v0, LHp;->c:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LIp;->g:LHp;

    .line 3
    iget-object v1, v1, LHp;->e:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, LIp;->e:Ldp;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, LIp;->d:Landroid/os/IBinder;

    iput-object p1, p0, LIp;->f:Landroid/content/ComponentName;

    iget-object v1, p0, LIp;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, LIp;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, LIp;->g:LHp;

    .line 1
    iget-object v0, v0, LHp;->c:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LIp;->g:LHp;

    .line 3
    iget-object v1, v1, LHp;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, LIp;->e:Ldp;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LIp;->d:Landroid/os/IBinder;

    iput-object p1, p0, LIp;->f:Landroid/content/ComponentName;

    iget-object v1, p0, LIp;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, LIp;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
