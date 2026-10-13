.class public LUg0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static h:LUg0;

.field public static i:LF01;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Locale;

.field public c:Ljava/util/List;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, LUg0;->b:Ljava/util/Locale;

    .line 3
    iput-object p1, p0, LUg0;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)LUg0;
    .locals 1

    .line 1
    sget-object v0, LUg0;->h:LUg0;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, LUg0;

    invoke-direct {v0, p0}, LUg0;-><init>(Landroid/content/Context;)V

    sput-object v0, LUg0;->h:LUg0;

    .line 3
    :cond_0
    sget-object p0, LUg0;->h:LUg0;

    return-object p0
.end method

.method public static e()LUg0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()LF01;
    .locals 1

    .line 58
    sget-object v0, LUg0;->i:LF01;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    sput-object v0, LUg0;->i:LF01;

    .line 60
    :cond_0
    sget-object v0, LUg0;->i:LF01;

    return-object v0
.end method

.method public a(LCg0;)V
    .locals 3

    .line 9
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 10
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v0

    invoke-virtual {v0}, LHh0;->c()V

    const-string v0, "ChromeBrowserInitializer.preInflationStartup"

    .line 11
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {p0}, LUg0;->d()V

    .line 13
    invoke-interface {p1}, LCg0;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-interface {p1}, LCg0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {}, LwT;->c()LwT;

    move-result-object v0

    const-string v1, "disable-domain-reliability"

    invoke-virtual {v0, v1}, LwT;->a(Ljava/lang/String;)V

    .line 18
    :cond_2
    new-instance v0, LHg0;

    invoke-direct {v0, p0, p1}, LHg0;-><init>(LUg0;LCg0;)V

    invoke-interface {p1, v0}, LCg0;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 20
    :try_start_2
    iget-object v0, v0, Lorg/chromium/base/TraceEvent;->w:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 21
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, p1, v0}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 22
    :cond_3
    :goto_0
    throw v1
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    iget-boolean v0, p0, LUg0;->f:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, LUg0;->c:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LUg0;->c:Ljava/util/List;

    .line 8
    :cond_1
    iget-object v0, p0, LUg0;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(ZLCg0;)V
    .locals 4

    .line 23
    iget-boolean v0, p0, LUg0;->e:Z

    if-eqz v0, :cond_5

    .line 24
    new-instance v0, LFg0;

    invoke-direct {v0}, LFg0;-><init>()V

    .line 25
    invoke-interface {p2}, LCg0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {}, LHh0;->f()LHh0;

    move-result-object v1

    .line 27
    iget-boolean v1, v1, LHh0;->b:Z

    if-nez v1, :cond_0

    .line 28
    sget-object v1, LZ01;->e:LFW;

    sget-object v2, LJg0;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    iget-boolean v1, p0, LUg0;->g:Z

    if-nez v1, :cond_1

    .line 30
    sget-object v1, LZ01;->e:LFW;

    new-instance v2, LKg0;

    invoke-direct {v2, p0}, LKg0;-><init>(LUg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 31
    :cond_1
    sget-object v1, LZ01;->e:LFW;

    new-instance v2, LLg0;

    invoke-direct {v2, p0, p2}, LLg0;-><init>(LUg0;LCg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 32
    sget-object v1, LZ01;->e:LFW;

    new-instance v2, LMg0;

    invoke-direct {v2, p2}, LMg0;-><init>(LCg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 33
    sget-object v1, LZ01;->e:LFW;

    new-instance v2, LNg0;

    invoke-direct {v2, p2}, LNg0;-><init>(LCg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 34
    sget-object v1, LZ01;->e:LFW;

    new-instance v2, LOg0;

    invoke-direct {v2, p2}, LOg0;-><init>(LCg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 35
    iget-boolean v1, p0, LUg0;->f:Z

    if-nez v1, :cond_2

    .line 36
    sget-object v1, LZ01;->a:LFW;

    new-instance v2, LPg0;

    invoke-direct {v2, p0}, LPg0;-><init>(LUg0;)V

    invoke-virtual {v0, v1, v2}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    .line 37
    :cond_2
    invoke-virtual {p0}, LUg0;->a()LF01;

    move-result-object v1

    invoke-interface {p2}, LCg0;->p()Z

    move-result v2

    invoke-interface {v1, v2}, LF01;->a(Z)I

    move-result v1

    .line 38
    sget-object v2, LZ01;->a:LFW;

    new-instance v3, LQg0;

    invoke-direct {v3, v1}, LQg0;-><init>(I)V

    invoke-virtual {v0, v2, v3}, LFg0;->a(LFW;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 39
    invoke-interface {p2}, LCg0;->m()Z

    move-result p1

    .line 40
    invoke-interface {p2}, LCg0;->p()Z

    move-result v2

    new-instance v3, LSg0;

    invoke-direct {v3, p0, p2, v0}, LSg0;-><init>(LUg0;LCg0;LFg0;)V

    const-string p2, "ChromeBrowserInitializer.startChromeBrowserProcessesAsync"

    .line 41
    :try_start_0
    invoke-static {p2, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, LUg0;->a()LF01;

    move-result-object v0

    invoke-interface {v0, p1, v2, v3}, LF01;->a(ZZLE01;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {p2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "ChromeBrowserInitializer.startChromeBrowserProcessesSync"

    .line 44
    :try_start_1
    invoke-static {p1, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 46
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    .line 47
    sget-object v1, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Lorg/chromium/base/library_loader/LibraryLoader;->a(I)V

    .line 49
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 50
    invoke-static {}, LHU;->a()V

    .line 51
    invoke-virtual {p0}, LUg0;->a()LF01;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, LF01;->b(Z)V

    .line 52
    sget-object p2, LBD0;->c:LBD0;

    if-nez p2, :cond_4

    .line 53
    new-instance p2, LBD0;

    invoke-direct {p2}, LBD0;-><init>()V

    sput-object p2, LBD0;->c:LBD0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    :cond_4
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v2}, LFg0;->a(Z)V

    :goto_0
    return-void

    :catchall_1
    move-exception p2

    .line 56
    invoke-static {p1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ChromeBrowserInitializer.handlePostNativeStartup called before ChromeBrowserInitializer.postInflationStartup has been run."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->c()V

    .line 2
    iget-object v0, p0, LUg0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/browser/OculusUser;->prefetchUserID(Landroid/content/Context;)V

    .line 3
    new-instance v0, LRg0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LRg0;-><init>(LUg0;Z)V

    .line 4
    invoke-virtual {p0, v0}, LUg0;->a(LCg0;)V

    .line 5
    invoke-virtual {p0, v1, v0}, LUg0;->a(ZLCg0;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LUg0;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LUg0;->g:Z

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v1, 0x0

    const-string v2, "NetworkChangeNotifier.init"

    .line 4
    invoke-static {v2, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->init()Lorg/chromium/net/NetworkChangeNotifier;

    .line 6
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifier;->a(Z)V

    .line 7
    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, LUg0;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-boolean v0, LRY;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sput-boolean v1, LRY;->a:Z

    .line 5
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 6
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 7
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 8
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 9
    invoke-static {}, LwT;->c()LwT;

    move-result-object v3

    .line 10
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v5, "eng"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "strict-mode"

    if-nez v4, :cond_2

    .line 11
    invoke-virtual {v3, v5}, LwT;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    :cond_2
    invoke-static {v0, v2}, LRY;->a(Landroid/os/StrictMode$ThreadPolicy$Builder;Landroid/os/StrictMode$VmPolicy$Builder;)V

    .line 13
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 14
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 15
    invoke-virtual {v3, v5}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "death"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 17
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v3, v5}, LwT;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "testing"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 20
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 21
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 22
    :goto_1
    sget-object v0, LZO0;->a:[B

    sget-object v2, LZO0;->b:[B

    .line 23
    sget-object v3, LHf1;->a:[B

    if-nez v3, :cond_5

    .line 24
    sput-object v0, LHf1;->a:[B

    .line 25
    :cond_5
    sget-object v0, LHf1;->b:[B

    if-nez v0, :cond_6

    .line 26
    sput-object v2, LHf1;->b:[B

    .line 27
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_7

    .line 28
    sget-object v0, LFW;->j:LFW;

    sget-object v2, LIg0;->w:Ljava/lang/Runnable;

    const-wide/16 v3, 0x0

    .line 29
    invoke-static {v0, v2, v3, v4}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 30
    :cond_7
    invoke-static {}, LWO0;->a()V

    .line 31
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->e()Landroid/content/SharedPreferences;

    .line 32
    invoke-static {}, LqS0;->f()V

    .line 33
    :goto_2
    invoke-static {}, LlW0;->a()V

    .line 34
    new-instance v0, LTg0;

    invoke-direct {v0, p0}, LTg0;-><init>(LUg0;)V

    .line 35
    sget-object v2, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {v2, v0}, LWT;->a(Ljava/lang/Object;)Z

    .line 36
    iput-boolean v1, p0, LUg0;->d:Z

    return-void
.end method
