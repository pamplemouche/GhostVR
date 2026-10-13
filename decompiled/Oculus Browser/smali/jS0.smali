.class public LjS0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXR0;


# instance fields
.field public final a:LaS0;

.field public final b:LaS0;


# direct methods
.method public constructor <init>(LaS0;LaS0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LjS0;->a:LaS0;

    .line 3
    iput-object p2, p0, LjS0;->b:LaS0;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 63
    :try_start_0
    iget-object p1, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 64
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p0, p1, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {p0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    const-string v0, "BackgroundTaskScheduler.reschedule"

    .line 43
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 44
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 45
    invoke-static {}, LqS0;->b()Ljava/util/Map;

    move-result-object v1

    .line 46
    invoke-static {}, LqS0;->e()V

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, LcS0;->a(I)LLR0;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "BkgrdTaskScheduler"

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot reschedule task for task id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Could not instantiate BackgroundTask class."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 51
    invoke-static {v3, v4, v5}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LES0;

    .line 53
    iget v3, v3, LES0;->A:I

    invoke-static {v3}, LDS0;->a(I)LDS0;

    move-result-object v3

    if-nez v3, :cond_0

    .line 54
    sget-object v3, LDS0;->A:LDS0;

    .line 55
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 56
    sget-object v4, LDS0;->z:LDS0;

    if-ne v3, v4, :cond_1

    .line 57
    iget-object v3, p0, LjS0;->b:LaS0;

    invoke-interface {v3, p1, v2}, LaS0;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v3, p0, LjS0;->a:LaS0;

    invoke-interface {v3, p1, v2}, LaS0;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v3, p1}, LLR0;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x0

    .line 60
    invoke-static {p1, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 61
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_5

    .line 62
    invoke-static {p1, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_5
    throw v1
.end method

.method public a(Landroid/content/Context;I)V
    .locals 4

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundTaskScheduler.cancel"

    .line 26
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 27
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 28
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v1

    .line 29
    invoke-static {p2}, LsS0;->a(I)I

    move-result v2

    const-string v3, "Android.BackgroundTaskScheduler.TaskCanceled"

    .line 30
    invoke-virtual {v1, v3, v2}, LsS0;->a(Ljava/lang/String;I)V

    .line 31
    invoke-static {p2}, LqS0;->a(I)LES0;

    move-result-object v1

    .line 32
    invoke-static {p2}, LqS0;->b(I)V

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p1, "BkgrdTaskScheduler"

    const-string p2, "Task cannot be canceled because no data was found instorage or data was invalid"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {p1, p2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {v2, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_0
    return-void

    .line 35
    :cond_1
    :try_start_1
    iget v1, v1, LES0;->A:I

    invoke-static {v1}, LDS0;->a(I)LDS0;

    move-result-object v1

    if-nez v1, :cond_2

    .line 36
    sget-object v1, LDS0;->A:LDS0;

    .line 37
    :cond_2
    sget-object v3, LDS0;->z:LDS0;

    if-ne v1, v3, :cond_3

    .line 38
    iget-object v1, p0, LjS0;->b:LaS0;

    invoke-interface {v1, p1, p2}, LaS0;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 39
    :cond_3
    iget-object v1, p0, LjS0;->a:LaS0;

    invoke-interface {v1, p1, p2}, LaS0;->a(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    .line 40
    invoke-static {v2, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_5

    .line 42
    invoke-static {p1, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_5
    throw p2
.end method

.method public a(Landroid/content/Context;LOS0;)Z
    .locals 5

    .line 1
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "ignore-background-tasks"

    invoke-virtual {v0, v1}, LwT;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget v0, p2, LOS0;->a:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundTaskScheduler.schedule"

    .line 4
    invoke-static {v1, v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    new-instance v2, LiS0;

    invoke-direct {v2, p0, p1, p2}, LiS0;-><init>(LjS0;Landroid/content/Context;LOS0;)V

    .line 7
    iget-object p1, p2, LOS0;->g:LMS0;

    .line 8
    invoke-interface {p1, v2}, LMS0;->a(LNS0;)V

    .line 9
    iget-boolean p1, v2, LiS0;->c:Z

    .line 10
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v2

    .line 11
    iget v3, p2, LOS0;->a:I

    if-eqz p1, :cond_1

    .line 12
    invoke-static {v3}, LsS0;->a(I)I

    move-result v3

    const-string v4, "Android.BackgroundTaskScheduler.TaskScheduled.Success"

    .line 13
    invoke-virtual {v2, v4, v3}, LsS0;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {v3}, LsS0;->a(I)I

    move-result v3

    const-string v4, "Android.BackgroundTaskScheduler.TaskScheduled.Failure"

    .line 15
    invoke-virtual {v2, v4, v3}, LsS0;->a(Ljava/lang/String;I)V

    .line 16
    :goto_0
    new-instance v2, LhS0;

    .line 17
    iget v3, p2, LOS0;->a:I

    .line 18
    invoke-direct {v2, p0, v3}, LhS0;-><init>(LjS0;I)V

    .line 19
    iget-object v3, p2, LOS0;->g:LMS0;

    .line 20
    invoke-interface {v3, v2}, LMS0;->a(LNS0;)V

    if-eqz p1, :cond_2

    .line 21
    invoke-static {p2}, LqS0;->a(LOS0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 22
    invoke-static {v1, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_3
    return p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_4

    .line 24
    invoke-static {p1, v0}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_4
    throw p2
.end method
