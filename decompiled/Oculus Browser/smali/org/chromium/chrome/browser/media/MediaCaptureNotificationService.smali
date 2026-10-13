.class public Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public w:Lam0;

.field public x:Landroid/content/SharedPreferences;

.field public final y:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static a(Landroid/content/Context;ILorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_1
    invoke-static {p2}, LJ/N;->MDk3$bjp(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    .line 2
    :cond_2
    invoke-static {p2}, LJ/N;->MybJWOXK(Ljava/lang/Object;)Z

    move-result v2

    .line 3
    invoke-static {p2}, LJ/N;->MKIWbnaU(Ljava/lang/Object;)Z

    move-result p2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_0

    const/4 p2, 0x2

    :goto_0
    if-eqz p2, :cond_5

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    .line 4
    :cond_5
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "WebRTCNotificationIds"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    return-void

    .line 8
    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "org.chromium.chrome.browser.media.SCREEN_CAPTURE_UPDATE"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "NotificationId"

    .line 10
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const-string v1, "MediaCapture"

    const-string v3, "Error parsing the webrtc url, %s "

    .line 13
    invoke-static {v1, v3, v0}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const-string v0, "NotificationMediaUrl"

    .line 14
    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "NotificationMediaType"

    .line 15
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object p2

    invoke-virtual {p2, p1}, LdJ0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 17
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object p2

    invoke-virtual {p2, p1}, LdJ0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 18
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    const-string p2, "NotificationIsIncognito"

    .line 19
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    :cond_8
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static b()V
    .locals 3

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "WebRTCNotificationIds"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->x:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "WebRTCNotificationIds"

    .line 22
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->w:Lam0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    check-cast v1, Lbm0;

    .line 26
    iget-object v1, v1, Lbm0;->b:Landroid/app/NotificationManager;

    const-string v4, "MediaCaptureNotificationService"

    invoke-virtual {v1, v4, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->x:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(IZ)V
    .locals 4

    .line 30
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->x:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "WebRTCNotificationIds"

    .line 31
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->x:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 37
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    new-instance v0, Lbm0;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, Lbm0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->w:Lam0;

    .line 4
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    .line 5
    iput-object v0, p0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->x:Landroid/content/SharedPreferences;

    .line 6
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1c

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const-string v4, "NotificationId"

    .line 3
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x0

    const-string v6, "NotificationMediaType"

    .line 4
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "NotificationMediaUrl"

    .line 5
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NotificationIsIncognito"

    .line 6
    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "org.chromium.chrome.browser.media.SCREEN_CAPTURE_UPDATE"

    .line 7
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "org.chromium.chrome.browser.media.SCREEN_CAPTURE_STOP"

    if-eqz v9, :cond_1a

    .line 8
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v9, 0x1

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 9
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-eq v2, v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    goto/16 :goto_c

    .line 10
    :cond_3
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const-string v11, "MediaCaptureNotificationService"

    if-eqz v2, :cond_5

    .line 11
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->w:Lam0;

    check-cast v2, Lbm0;

    .line 12
    iget-object v2, v2, Lbm0;->b:Landroid/app/NotificationManager;

    invoke-virtual {v2, v11, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 13
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->delete(I)V

    .line 14
    invoke-virtual {v0, v3, v9}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a(IZ)V

    :cond_5
    if-eqz v6, :cond_19

    const/4 v2, 0x4

    if-ne v6, v2, :cond_6

    const-string v12, "screen_capture"

    goto :goto_3

    :cond_6
    const-string v12, "media"

    :goto_3
    const/4 v13, 0x0

    .line 15
    new-instance v14, Lcm0;

    invoke-direct {v14, v2, v11, v3}, Lcm0;-><init>(ILjava/lang/String;I)V

    .line 16
    invoke-static {v9, v12, v13, v14}, LXl0;->a(ZLjava/lang/String;Ljava/lang/String;Lcm0;)LPl0;

    move-result-object v11

    .line 17
    invoke-interface {v11, v5}, LPl0;->f(Z)LPl0;

    move-result-object v11

    .line 18
    invoke-interface {v11, v9}, LPl0;->d(Z)LPl0;

    move-result-object v11

    const v12, 0x7f0802f6

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v6, v9, :cond_7

    goto :goto_4

    :cond_7
    if-ne v6, v14, :cond_8

    goto :goto_4

    :cond_8
    if-ne v6, v13, :cond_9

    const v12, 0x7f0802f5

    goto :goto_4

    :cond_9
    if-ne v6, v2, :cond_a

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    .line 19
    :goto_4
    invoke-interface {v11, v12}, LPl0;->c(I)LPl0;

    move-result-object v11

    .line 20
    invoke-interface {v11, v9}, LPl0;->c(Z)LPl0;

    move-result-object v11

    .line 21
    invoke-static {v3}, LzO0;->a(I)Landroid/content/Intent;

    move-result-object v12

    .line 22
    sget-object v13, LzT;->a:Landroid/content/Context;

    .line 23
    new-instance v14, Lpm0;

    .line 24
    invoke-static {v13, v3, v12, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-direct {v14, v12, v5}, Lpm0;-><init>(Landroid/app/PendingIntent;I)V

    .line 25
    invoke-interface {v11, v14}, LPl0;->b(Lpm0;)LPl0;

    if-ne v6, v2, :cond_b

    .line 26
    invoke-interface {v11, v9}, LPl0;->b(I)LPl0;

    new-array v12, v5, [J

    .line 27
    invoke-interface {v11, v12}, LPl0;->a([J)LPl0;

    const v12, 0x7f08021d

    .line 28
    sget-object v13, LzT;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f1300fa

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 30
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;

    invoke-direct {v14, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {v14, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v14, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    sget-object v4, LzT;->a:Landroid/content/Context;

    const/high16 v10, 0x8000000

    .line 34
    invoke-static {v4, v3, v14, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 35
    invoke-interface {v11, v12, v13, v4}, LPl0;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)LPl0;

    .line 36
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    if-ne v6, v2, :cond_d

    .line 37
    sget-object v10, LzT;->a:Landroid/content/Context;

    .line 38
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v8, :cond_c

    const v12, 0x7f13054c

    goto :goto_5

    :cond_c
    const v12, 0x7f13054d

    :goto_5
    new-array v13, v9, [Ljava/lang/Object;

    aput-object v7, v13, v5

    invoke-virtual {v10, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_d
    if-ne v6, v9, :cond_f

    if-eqz v8, :cond_e

    const v10, 0x7f13064f

    goto :goto_6

    :cond_e
    const v10, 0x7f130650

    goto :goto_6

    :cond_f
    const/4 v10, 0x2

    if-ne v6, v10, :cond_11

    if-eqz v8, :cond_10

    const v10, 0x7f130651

    goto :goto_6

    :cond_10
    const v10, 0x7f130652

    goto :goto_6

    :cond_11
    const/4 v10, 0x3

    if-ne v6, v10, :cond_13

    if-eqz v8, :cond_12

    const v10, 0x7f130150

    goto :goto_6

    :cond_12
    const v10, 0x7f130151

    goto :goto_6

    :cond_13
    const/4 v10, 0x0

    .line 39
    :goto_6
    sget-object v12, LzT;->a:Landroid/content/Context;

    .line 40
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 41
    :goto_7
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x2e

    .line 42
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v10, 0x7f13014c

    const/16 v12, 0x18

    if-eqz v8, :cond_16

    .line 43
    sget-object v7, LzT;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130429

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, LPl0;->a(Ljava/lang/CharSequence;)LPl0;

    .line 45
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v12, :cond_14

    goto :goto_8

    :cond_14
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_15

    const-string v7, ""

    goto :goto_9

    .line 46
    :cond_15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    :goto_9
    invoke-static {v7}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 50
    sget-object v4, LzT;->a:Landroid/content/Context;

    .line 51
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1303b2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_16
    if-eq v6, v2, :cond_17

    const-string v8, " "

    .line 52
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    sget-object v8, LzT;->a:Landroid/content/Context;

    .line 54
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f1303b1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v5

    invoke-virtual {v8, v13, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_17
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v12, :cond_18

    .line 57
    sget-object v7, LzT;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 59
    invoke-interface {v11, v7}, LPl0;->d(Ljava/lang/CharSequence;)LPl0;

    .line 60
    :cond_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    :goto_a
    invoke-interface {v11, v4}, LPl0;->c(Ljava/lang/CharSequence;)LPl0;

    .line 62
    invoke-interface {v11, v4}, LPl0;->d(Ljava/lang/String;)LOl0;

    move-result-object v4

    .line 63
    iget-object v7, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->w:Lam0;

    check-cast v7, Lbm0;

    invoke-virtual {v7, v4}, Lbm0;->a(LOl0;)V

    .line 64
    iget-object v7, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    invoke-virtual {v0, v3, v5}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a(IZ)V

    .line 66
    sget-object v3, Lnm0;->a:Lom0;

    .line 67
    iget-object v4, v4, LOl0;->a:Landroid/app/Notification;

    .line 68
    invoke-virtual {v3, v2, v4}, Lom0;->a(ILandroid/app/Notification;)V

    .line 69
    :cond_19
    iget-object v2, v0, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->y:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_c

    .line 70
    :cond_1a
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 71
    invoke-static {}, LdJ0;->a()LdJ0;

    move-result-object v2

    invoke-virtual {v2, v3}, LdJ0;->a(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 72
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v2, :cond_1b

    goto :goto_c

    .line 73
    :cond_1b
    invoke-static {v2}, LJ/N;->M3xnlzVW(Ljava/lang/Object;)V

    goto :goto_c

    .line 74
    :cond_1c
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a()V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V

    .line 76
    :cond_1d
    :goto_c
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
