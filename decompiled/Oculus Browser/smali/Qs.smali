.class public final LQs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final f:LJs;

.field public static final g:Ljava/lang/Object;


# instance fields
.field public a:J

.field public final b:Landroid/os/Handler;

.field public c:J

.field public d:LPs;

.field public e:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LJs;

    const-string v1, "RequestTracker"

    invoke-direct {v0, v1}, LJs;-><init>(Ljava/lang/String;)V

    sput-object v0, LQs;->f:LJs;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQs;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, LQs;->a:J

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, LQs;->c:J

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LQs;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 37
    sget-object v0, LQs;->f:LJs;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, LJs;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v0, p3, v1}, LJs;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    :cond_0
    sget-object p3, LQs;->g:Ljava/lang/Object;

    monitor-enter p3

    .line 41
    :try_start_0
    iget-object v0, p0, LQs;->d:LPs;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, LQs;->d:LPs;

    iget-wide v1, p0, LQs;->c:J

    invoke-interface {v0, v1, v2, p1, p2}, LPs;->a(JILjava/lang/Object;)V

    :cond_1
    const-wide/16 p1, -0x1

    .line 43
    iput-wide p1, p0, LQs;->c:J

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, LQs;->d:LPs;

    .line 45
    sget-object p2, LQs;->g:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    iget-object v0, p0, LQs;->e:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    .line 47
    monitor-exit p2

    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p0, LQs;->b:Landroid/os/Handler;

    iget-object v1, p0, LQs;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 49
    iput-object p1, p0, LQs;->e:Ljava/lang/Runnable;

    .line 50
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :goto_0
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 52
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 53
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final a(JLPs;)V
    .locals 4

    .line 1
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, LQs;->d:LPs;

    .line 3
    iget-wide v2, p0, LQs;->c:J

    .line 4
    iput-wide p1, p0, LQs;->c:J

    .line 5
    iput-object p3, p0, LQs;->d:LPs;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, v2, v3}, LPs;->a(J)V

    .line 8
    :cond_0
    sget-object p1, LQs;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 9
    :try_start_1
    iget-object p2, p0, LQs;->e:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, LQs;->b:Landroid/os/Handler;

    iget-object p3, p0, LQs;->e:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    new-instance p2, LRs;

    invoke-direct {p2, p0}, LRs;-><init>(LQs;)V

    iput-object p2, p0, LQs;->e:Ljava/lang/Runnable;

    .line 12
    iget-object p3, p0, LQs;->b:Landroid/os/Handler;

    iget-wide v0, p0, LQs;->a:J

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final a()Z
    .locals 6

    .line 15
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-wide v1, p0, LQs;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)Z
    .locals 9

    .line 29
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-wide v1, p0, LQs;->c:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    .line 31
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "clearing request %d"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    iget-wide v7, p0, LQs;->c:J

    .line 32
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p0, p1, v1, v2}, LQs;->a(ILjava/lang/Object;Ljava/lang/String;)V

    .line 34
    monitor-exit v0

    return v4

    .line 35
    :cond_0
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(J)Z
    .locals 6

    .line 18
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-wide v1, p0, LQs;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v1, p0, LQs;->c:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(JILjava/lang/Object;)Z
    .locals 7

    .line 21
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-wide v1, p0, LQs;->c:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    iget-wide v1, p0, LQs;->c:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 23
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "request %d completed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p3, p4, p1}, LQs;->a(ILjava/lang/Object;Ljava/lang/String;)V

    .line 26
    monitor-exit v0

    return v3

    .line 27
    :cond_0
    monitor-exit v0

    return v5

    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic b()V
    .locals 6

    .line 1
    sget-object v0, LQs;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, LQs;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0xf

    .line 4
    invoke-virtual {p0, v1}, LQs;->a(I)Z

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
