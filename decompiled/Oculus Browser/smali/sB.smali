.class public abstract LsB;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LuB;

.field public final b:Landroid/content/IntentFilter;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/Set;

.field public e:LtB;

.field public volatile f:Z


# direct methods
.method public constructor <init>(LuB;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LsB;->d:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, LsB;->e:LtB;

    const/4 v0, 0x0

    iput-boolean v0, p0, LsB;->f:Z

    iput-object p1, p0, LsB;->a:LuB;

    iput-object p2, p0, LsB;->b:Landroid/content/IntentFilter;

    .line 1
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    .line 2
    :goto_0
    iput-object p1, p0, LsB;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, LsB;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LsB;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, LsB;->e:LtB;

    if-nez v0, :cond_1

    new-instance v0, LtB;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LtB;-><init>(LsB;B)V

    iput-object v0, p0, LsB;->e:LtB;

    iget-object v1, p0, LsB;->c:Landroid/content/Context;

    iget-object v2, p0, LsB;->b:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    iget-boolean v0, p0, LsB;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LsB;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LsB;->e:LtB;

    if-eqz v0, :cond_2

    iget-object v1, p0, LsB;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, LsB;->e:LtB;

    :cond_2
    return-void
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, LsB;->d:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LrB;

    invoke-interface {v1, p1}, LrB;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(LrB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LsB;->a:LuB;

    const-string v1, "registerListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    .line 1
    invoke-virtual {v0, v3, v1, v2}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, LsB;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LsB;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(LrB;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LsB;->a:LuB;

    const-string v1, "unregisterListener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    .line 1
    invoke-virtual {v0, v3, v1, v2}, LuB;->a(ILjava/lang/String;[Ljava/lang/Object;)I

    .line 2
    iget-object v0, p0, LsB;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LsB;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
