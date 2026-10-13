.class public Lorg/chromium/chrome/browser/tracing/TracingNotificationService;
.super Landroid/app/IntentService;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "tracing_notification"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.chromium.chrome.browser.tracing.SHARE_TRACE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Landroid/content/Intent;)V
    .locals 6

    .line 4
    sget-object v0, LPL0;->f:LPL0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object v0

    .line 6
    iget v0, v0, LPL0;->c:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 7
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 8
    new-instance v0, Lbm0;

    invoke-direct {v0, p0}, Lbm0;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x64

    .line 9
    iget-object v0, v0, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v1, "tracing_status"

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 10
    sput-object v2, LQL0;->a:LPl0;

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "org.chromium.chrome.browser.tracing.STOP_RECORDING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object p0

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, LPL0;->a(I)V

    .line 14
    invoke-static {}, LQL0;->b()LPl0;

    move-result-object v0

    const-string v2, "Chrome trace is stopping"

    .line 15
    invoke-interface {v0, v2}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    const-string v2, "Trace data is being collected and compressed."

    .line 16
    invoke-interface {v0, v2}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    move-result-object v0

    .line 17
    invoke-interface {v0, v1}, LPl0;->d(Z)LPl0;

    move-result-object v0

    .line 18
    invoke-interface {v0}, LPl0;->a()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, LQL0;->a(Landroid/app/Notification;)V

    .line 19
    iget-object v0, p0, LPL0;->a:LY01;

    new-instance v1, LIL0;

    invoke-direct {v1, p0}, LIL0;-><init>(LPL0;)V

    invoke-interface {v0, v1}, LY01;->b(Lorg/chromium/base/Callback;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "org.chromium.chrome.browser.tracing.SHARE_TRACE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, LPL0;->e:Ljava/io/File;

    invoke-static {v3}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/gzip"

    .line 24
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    .line 25
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    sget-object v3, LzT;->a:Landroid/content/Context;

    const-string v4, "Share trace"

    .line 28
    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v4, 0x10000000

    .line 29
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    sget-object v0, LZ01;->a:LFW;

    new-instance v3, LJL0;

    invoke-direct {v3, p0}, LJL0;-><init>(LPL0;)V

    const-wide/32 v4, 0x36ee80

    invoke-static {v0, v3, v4, v5}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    .line 32
    iput-object v2, p0, LPL0;->e:Ljava/io/File;

    .line 33
    invoke-virtual {p0, v1}, LPL0;->a(I)V

    goto :goto_2

    .line 34
    :cond_4
    throw v2

    .line 35
    :cond_5
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.chromium.chrome.browser.tracing.DISCARD_TRACE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 36
    invoke-static {}, LPL0;->a()LPL0;

    move-result-object p0

    .line 37
    invoke-virtual {p0, v1}, LPL0;->a(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.chromium.chrome.browser.tracing.STOP_RECORDING"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/IntentService;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, LRL0;

    invoke-direct {v1, p1}, LRL0;-><init>(Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->b(LFW;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method
