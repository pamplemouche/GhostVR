.class public Lorg/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/Object;

.field public static volatile c:I

.field public static d:Ljava/util/List;

.field public static e:Ljava/util/Map;

.field public static f:Ljava/util/List;

.field public static g:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->c()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 3
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->c:I

    .line 4
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->f()V

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

.method public static a(Ljava/lang/String;)V
    .locals 4

    .line 6
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v0, LET;

    invoke-direct {v0, p0}, LET;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->c()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    .line 10
    :cond_1
    sget-object v2, Lorg/chromium/base/EarlyTraceEvent;->e:Ljava/util/Map;

    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LET;

    .line 11
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    return-void

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multiple pending trace events can\'t have the same name: "

    invoke-static {v1, p0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 2

    .line 14
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance v0, LDT;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LDT;-><init>(Ljava/lang/String;JZ)V

    .line 16
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 17
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit p1

    return-void

    .line 18
    :cond_1
    sget-object p2, Lorg/chromium/base/EarlyTraceEvent;->g:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    monitor-exit p1

    return-void

    .line 19
    :cond_2
    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget p0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    const/4 p2, 0x2

    if-ne p0, p2, :cond_3

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->f()V

    .line 21
    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lorg/chromium/base/EarlyTraceEvent;->c:I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->e:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->g:Ljava/util/List;

    const/4 v1, 0x1

    .line 7
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->c:I

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 9
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->d()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 12
    :cond_1
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->e:Ljava/util/Map;

    invoke-static {p0}, Lorg/chromium/base/EarlyTraceEvent;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LET;

    if-nez p0, :cond_2

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 15
    iput-wide v1, p0, LET;->e:J

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, LET;->f:J

    .line 17
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget p0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->f()V

    .line 19
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 2

    .line 20
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, LDT;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, LDT;-><init>(Ljava/lang/String;JZ)V

    .line 22
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->c()Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit p1

    return-void

    .line 24
    :cond_1
    sget-object p2, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p2, Lorg/chromium/base/EarlyTraceEvent;->g:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "@"

    .line 2
    invoke-static {p0, v0}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static d()Z
    .locals 3

    .line 1
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static e()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {}, LwT;->c()LwT;

    move-result-object v1

    const-string v2, "trace-startup"

    invoke-virtual {v1, v2}, LwT;->c(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/local/chrome-trace-config.json"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    :try_start_2
    sget-object v4, LyT;->a:Landroid/content/SharedPreferences;

    const-string v5, "bg_startup_tracing"

    .line 7
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v3}, Lorg/chromium/base/EarlyTraceEvent;->setBackgroundStartupTracingFlag(Z)V

    .line 9
    sput-boolean v3, Lorg/chromium/base/EarlyTraceEvent;->a:Z

    goto :goto_1

    .line 10
    :cond_2
    sput-boolean v2, Lorg/chromium/base/EarlyTraceEvent;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    .line 11
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v1, :cond_4

    .line 12
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->b()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static f()V
    .locals 16

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    .line 3
    invoke-static {}, LJ/N;->MklbOJun()J

    move-result-wide v3

    mul-long v3, v3, v1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LET;

    .line 6
    iget-object v6, v5, LET;->a:Ljava/lang/String;

    iget-wide v7, v5, LET;->c:J

    add-long/2addr v7, v3

    iget-wide v9, v5, LET;->e:J

    add-long/2addr v9, v3

    iget v11, v5, LET;->b:I

    iget-wide v12, v5, LET;->f:J

    iget-wide v14, v5, LET;->d:J

    sub-long/2addr v12, v14

    .line 7
    invoke-static/range {v6 .. v13}, LJ/N;->MDy_VEWN(Ljava/lang/String;JJIJ)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    .line 11
    invoke-static {}, LJ/N;->MklbOJun()J

    move-result-wide v3

    mul-long v3, v3, v1

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    sub-long/2addr v3, v1

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDT;

    .line 14
    iget-boolean v2, v1, LDT;->a:Z

    if-eqz v2, :cond_2

    .line 15
    iget-object v2, v1, LDT;->b:Ljava/lang/String;

    iget-wide v5, v1, LDT;->c:J

    iget-wide v7, v1, LDT;->d:J

    add-long/2addr v7, v3

    .line 16
    invoke-static {v2, v5, v6, v7, v8}, LJ/N;->M8HhsiE6(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v2, v1, LDT;->b:Ljava/lang/String;

    iget-wide v5, v1, LDT;->c:J

    iget-wide v7, v1, LDT;->d:J

    add-long/2addr v7, v3

    .line 18
    invoke-static {v2, v5, v6, v7, v8}, LJ/N;->MCm4GHjn(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 19
    :cond_3
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 20
    :cond_4
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 21
    sput v0, Lorg/chromium/base/EarlyTraceEvent;->c:I

    const/4 v0, 0x0

    .line 22
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->e:Ljava/util/Map;

    .line 23
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->d:Ljava/util/List;

    .line 24
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->g:Ljava/util/List;

    .line 25
    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->f:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public static getBackgroundStartupTracingFlag()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->a:Z

    return v0
.end method

.method public static setBackgroundStartupTracingFlag(Z)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "bg_startup_tracing"

    .line 2
    invoke-static {v0, v1, p0}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method
