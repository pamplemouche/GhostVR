.class public Lorg/chromium/chrome/browser/ChromeBackgroundService;
.super LDq;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LDq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIq;)I
    .locals 2

    .line 1
    iget-object p1, p1, LIq;->a:Ljava/lang/String;

    .line 2
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LLY;

    invoke-direct {v1, p0, p1, p0}, LLY;-><init>(Lorg/chromium/chrome/browser/ChromeBackgroundService;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public a()V
    .locals 4

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->getInstance()Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    move-result-object v0

    const-wide/32 v1, 0x57e40

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a(JI)Z

    .line 5
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "ntp_snippets.is_scheduled"

    .line 6
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->b()V

    .line 9
    :cond_1
    invoke-static {}, LJ/N;->MtldKr1J()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BackgroundService"

    const-string v2, "Launching browser"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v0

    invoke-virtual {v0}, LUg0;->b()V

    return-void
.end method
