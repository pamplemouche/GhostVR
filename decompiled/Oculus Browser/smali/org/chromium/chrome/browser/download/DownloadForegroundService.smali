.class public Lorg/chromium/chrome/browser/download/DownloadForegroundService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public final w:Landroid/os/IBinder;

.field public x:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lf80;

    invoke-direct {v0, p0}, Lf80;-><init>(Lorg/chromium/chrome/browser/download/DownloadForegroundService;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->w:Landroid/os/IBinder;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, LSl0;->a:LTl0;

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/download/DownloadForegroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-static {p0, v1}, LR3;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "stopForegroundInternal flags: "

    .line 7
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DownloadFg"

    invoke-static {v2, v0, v1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-object v0, LSl0;->a:LTl0;

    .line 9
    invoke-virtual {v0, p0, p1}, LTl0;->a(Landroid/app/Service;I)V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->x:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public b(ILandroid/app/Notification;)V
    .locals 4

    const-string v0, "startForegroundInternal id: "

    .line 1
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DownloadFg"

    invoke-static {v3, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, LSl0;->a:LTl0;

    .line 3
    invoke-virtual {v0, p0, p1, p2, v1}, LTl0;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method

.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->w:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-string v1, "notification"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadForegroundService;->x:Landroid/app/NotificationManager;

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "PersistedNotificationId"

    .line 5
    invoke-static {v0, v1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0}, LX80;->a(IZ)V

    .line 2
    invoke-static {}, Ll80;->a()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ll80;->a(Ljava/lang/String;)Lk80;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lk80;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, LX80;->a(IZ)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 1
    invoke-static {p1, p2}, LX80;->a(IZ)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, LX80;->a(IZ)V

    .line 2
    invoke-static {}, Ll80;->a()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-static {v1}, Ll80;->a(Ljava/lang/String;)Lk80;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lk80;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
