.class public LHh0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:LHh0;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Lorg/chromium/chrome/browser/DevToolsServer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LHh0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final e()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    sget-object v1, LFW;->j:LFW;

    new-instance v2, Lqh0;

    invoke-direct {v2, v0}, Lqh0;-><init>(Landroid/content/Context;)V

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public static f()LHh0;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 2
    sget-object v0, LHh0;->f:LHh0;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, LHh0;

    invoke-direct {v0}, LHh0;-><init>()V

    .line 5
    sput-object v0, LHh0;->f:LHh0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    :goto_0
    sget-object v0, LHh0;->f:LHh0;

    return-object v0
.end method

.method public static final synthetic g()V
    .locals 9

    .line 1
    invoke-static {}, LcS0;->a()LXR0;

    move-result-object v0

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    check-cast v0, LjS0;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const-string v3, "bts_last_sdk_version"

    const-string v4, "BackgroundTaskScheduler.checkForOSUpgrade"

    .line 4
    invoke-static {v4}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v4

    .line 5
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v5, "BackgroundTaskSchedulerPrefs.getLastSdkVersion"

    .line 6
    invoke-static {v5}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 7
    :try_start_1
    sget-object v6, LyT;->a:Landroid/content/SharedPreferences;

    .line 8
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_0

    .line 9
    :try_start_2
    invoke-static {v2, v5}, LqS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    .line 10
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    invoke-static {}, LqS0;->d()V

    if-eq v6, v5, :cond_2

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BackgroundTaskSchedulerPrefs.setLastSdkVersion"

    .line 13
    invoke-static {v8, v7}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 14
    :try_start_3
    sget-object v8, LyT;->a:Landroid/content/SharedPreferences;

    .line 15
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 16
    invoke-interface {v8, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 17
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    .line 18
    :try_start_4
    invoke-static {v2, v7}, LqS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v7, :cond_1

    .line 20
    :try_start_6
    invoke-static {v0, v7}, LqS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_1
    throw v1

    :cond_2
    :goto_0
    if-eq v6, v5, :cond_8

    const/16 v3, 0x17

    if-ge v6, v3, :cond_3

    if-lt v5, v3, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    goto :goto_5

    .line 21
    :cond_4
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 22
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 23
    sget-object v5, LyT;->a:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "bts_cached_uma"

    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-lt v6, v3, :cond_5

    .line 25
    new-instance v3, LnS0;

    invoke-direct {v3}, LnS0;-><init>()V

    goto :goto_2

    .line 26
    :cond_5
    new-instance v3, LgS0;

    invoke-direct {v3}, LgS0;-><init>()V

    .line 27
    :goto_2
    invoke-static {}, LqS0;->a()Ljava/util/Set;

    move-result-object v5

    .line 28
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 29
    invoke-interface {v3, v1, v6}, LaS0;->a(Landroid/content/Context;I)V

    goto :goto_3

    .line 30
    :cond_6
    invoke-virtual {v0, v1}, LjS0;->a(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v4, :cond_9

    .line 31
    :goto_4
    invoke-static {v2, v4}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    goto :goto_6

    .line 32
    :cond_7
    :try_start_7
    throw v2

    .line 33
    :cond_8
    :goto_5
    invoke-static {}, LsS0;->b()LsS0;

    move-result-object v0

    invoke-virtual {v0}, LsS0;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    :goto_6
    return-void

    :catchall_2
    move-exception v0

    .line 34
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    if-eqz v5, :cond_a

    .line 35
    :try_start_9
    invoke-static {v0, v5}, LqS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_a
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    .line 36
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v1

    if-eqz v4, :cond_b

    .line 37
    invoke-static {v0, v4}, LjS0;->a(Ljava/lang/Throwable;Lorg/chromium/base/TraceEvent;)V

    :cond_b
    throw v1

    .line 38
    :cond_c
    throw v2
.end method

.method public static final synthetic h()V
    .locals 4

    .line 1
    sget-object v0, LFW;->j:LFW;

    sget-object v1, LJi0;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic i()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/incognito/IncognitoTabLauncher;->a()V

    return-void
.end method

.method public static final synthetic j()V
    .locals 1

    .line 1
    invoke-static {}, Lym0;->b()Lym0;

    move-result-object v0

    invoke-virtual {v0}, Lym0;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-static {}, LG01;->a()V

    const-string v0, "prioritize_bootstrap_tasks"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    sput-boolean v0, LG01;->c:Z

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 6
    new-instance v2, LdV0;

    invoke-direct {v2}, LdV0;-><init>()V

    .line 7
    invoke-static {v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LnU0;)V

    .line 8
    new-instance v2, LDe0;

    const-string v4, "chromium.invalidations.uuid"

    invoke-direct {v2, v0, v4}, LDe0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    new-instance v4, LUh0;

    invoke-direct {v4, v2}, LUh0;-><init>(LBe0;)V

    .line 10
    invoke-static {}, LsV0;->b()LsV0;

    move-result-object v2

    .line 11
    iput-object v4, v2, LsV0;->b:LrV0;

    const/4 v2, 0x5

    .line 12
    sput v2, LgC;->d:I

    .line 13
    new-instance v2, LDe0;

    const-string v4, "chromium.sync.sessions.id"

    invoke-direct {v2, v0, v4}, LDe0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "SYNC"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, LCe0;->a(Ljava/lang/String;LBe0;Z)V

    .line 14
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lorg/chromium/components/download/DownloadCollectionBridge;->a(Lorg/chromium/components/download/DownloadCollectionBridge;)V

    .line 17
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enable_de_jelly_for_chrome"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 19
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "enable-de-jelly"

    invoke-virtual {v0, v1}, LwT;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 20
    :cond_2
    throw v3

    .line 21
    :cond_3
    throw v3
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 2
    iget-boolean v0, p0, LHh0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LHh0;->c:Z

    .line 4
    sget-object v0, LdZ;->a:LeZ;

    .line 5
    new-instance v1, Lyh0;

    invoke-direct {v1, p0}, Lyh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 6
    new-instance v1, Lzh0;

    invoke-direct {v1, p0}, Lzh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 7
    new-instance v1, LAh0;

    invoke-direct {v1, p0}, LAh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 8
    new-instance v1, LBh0;

    invoke-direct {v1, p0}, LBh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 9
    new-instance v1, LCh0;

    invoke-direct {v1, p0}, LCh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 10
    new-instance v1, LDh0;

    invoke-direct {v1, p0}, LDh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 11
    new-instance v1, LGh0;

    invoke-direct {v1, p0}, LGh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 12
    new-instance v1, Lrh0;

    invoke-direct {v1, p0}, Lrh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 13
    new-instance v1, Lsh0;

    invoke-direct {v1, p0}, Lsh0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 14
    new-instance v1, Lth0;

    invoke-direct {v1, p0}, Lth0;-><init>(LHh0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 15
    sget-object v1, Lih0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 16
    sget-object v1, Ljh0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 17
    sget-object v1, Lkh0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 18
    sget-object v1, Llh0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 19
    invoke-static {}, LKY;->c()LR60;

    move-result-object v1

    check-cast v1, LY60;

    invoke-virtual {v1}, LY60;->i()Le20;

    move-result-object v1

    .line 20
    new-instance v2, Lmh0;

    invoke-direct {v2, v1}, Lmh0;-><init>(Le20;)V

    .line 21
    invoke-virtual {v0, v2}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 22
    sget-object v1, Lnh0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    .line 23
    sget-object v1, Loh0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 4

    const-string v0, "ProcessInitializationHandler.initializePreNative()"

    .line 1
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 3
    iget-boolean v1, p0, LHh0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {p0}, LHh0;->a()V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, LHh0;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 9
    :try_start_3
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 10
    sget-object v3, LRB;->a:LLB;

    invoke-virtual {v3, v1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11
    :cond_3
    :goto_0
    throw v2
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, LHh0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "snapshot_database_removed"

    const/4 v3, 0x0

    .line 3
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "snapshots.db"

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "snapshot_database_removed"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
