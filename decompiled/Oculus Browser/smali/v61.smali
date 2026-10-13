.class public Lv61;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements LG71;


# instance fields
.field public final a:Lx71;

.field public final b:Lx71;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Object;

.field public final e:LH71;


# direct methods
.method public constructor <init>(Lj71;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lj71;->a()LH71;

    move-result-object v0

    iput-object v0, p0, Lv61;->e:LH71;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv61;->d:Ljava/lang/Object;

    .line 4
    new-instance v0, Lt71;

    invoke-direct {v0}, Lt71;-><init>()V

    invoke-interface {p1, v0}, Lj71;->a(Lt71;)Lz71;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lz71;->a:Ljava/lang/Object;

    check-cast v0, Lx71;

    iput-object v0, p0, Lv61;->b:Lx71;

    .line 6
    iget-object p1, p1, Lz71;->b:Ljava/lang/Object;

    check-cast p1, Lx71;

    iput-object p1, p0, Lv61;->a:Lx71;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv61;->c:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lv61;->e:LH71;

    iget-object v0, p0, Lv61;->b:Lx71;

    sget-object v1, Li71;->c:Li71;

    invoke-interface {p1, v0, v1, p0}, LH71;->a(Lq71;Li71;LG71;)I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv61;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv61;->a:Lx71;

    invoke-interface {v1}, Lq71;->close()V

    .line 3
    iget-object v1, p0, Lv61;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lv61;->e:LH71;

    invoke-interface {v0}, LH71;->cancel()V

    .line 6
    iget-object v0, p0, Lv61;->e:LH71;

    invoke-interface {v0}, LH71;->destroy()V

    .line 7
    iget-object v0, p0, Lv61;->b:Lx71;

    invoke-interface {v0}, Lq71;->close()V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 9
    :try_start_0
    iget-object p1, p0, Lv61;->b:Lx71;

    sget-object v0, Lu71;->c:Lu71;

    .line 10
    invoke-interface {p1, v0}, Lx71;->a(Lu71;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p1

    .line 11
    iget p1, p1, Lorg/chromium/mojo/system/ResultAnd;->a:I
    :try_end_0
    .catch Ly71; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lv61;->b()V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0}, Lv61;->a()V

    :goto_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv61;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv61;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv61;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv61;->a:Lx71;

    invoke-interface {v1}, Lq71;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lv61;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lv61;->a:Lx71;

    sget-object v1, Lw71;->c:Lw71;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v2, v1}, Lx71;->a(Ljava/nio/ByteBuffer;Ljava/util/List;Lw71;)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to execute an action on a closed executor."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
