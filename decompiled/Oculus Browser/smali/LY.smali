.class public final synthetic LLY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ChromeBackgroundService;

.field public final x:Ljava/lang/String;

.field public final y:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeBackgroundService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLY;->w:Lorg/chromium/chrome/browser/ChromeBackgroundService;

    iput-object p2, p0, LLY;->x:Ljava/lang/String;

    iput-object p3, p0, LLY;->y:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LLY;->w:Lorg/chromium/chrome/browser/ChromeBackgroundService;

    iget-object v1, p0, LLY;->x:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "OfflinePageUtils"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "Servicification Startup Task"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "BackgroundSync Event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "FetchSnippetsFallback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "FetchSnippetsWifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    const-string v0, "Unknown task tag "

    .line 2
    invoke-static {v0, v1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "BackgroundService"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->b()V

    goto :goto_3

    .line 4
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;->c:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsLauncher;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_4

    .line 5
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeBackgroundService;->b()V

    .line 6
    :cond_4
    invoke-static {}, LJ/N;->M5J1okbp()V

    goto :goto_3

    .line 7
    :cond_5
    sget-object v0, Lan0;->a:Lbn0;

    .line 8
    invoke-virtual {v0}, Lbn0;->a()V

    goto :goto_3

    .line 9
    :cond_6
    invoke-static {}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->getInstance()Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;

    move-result-object v0

    const-wide/32 v1, 0x57e40

    .line 10
    invoke-virtual {v0, v1, v2, v7}, Lorg/chromium/chrome/browser/background_sync/BackgroundSyncBackgroundTaskScheduler;->a(JI)Z

    :goto_3
    return-void

    :cond_7
    const/4 v0, 0x0

    .line 11
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x56dec11b -> :sswitch_4
        0x245cceb2 -> :sswitch_3
        0x296054a3 -> :sswitch_2
        0x2962f3da -> :sswitch_1
        0x35c444df -> :sswitch_0
    .end sparse-switch
.end method
