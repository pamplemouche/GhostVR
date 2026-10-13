.class public Lorg/chromium/chrome/browser/notifications/NotificationService;
.super Landroid/app/IntentService;
.source "PG"


# static fields
.field public static final w:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/notifications/NotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p0 .. p0}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object v1

    invoke-virtual {v1}, LUg0;->b()V

    .line 2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3
    :try_start_0
    sget-object v2, LFP0;->a:Lorg/chromium/chrome/browser/webapps/WebappRegistry;

    .line 4
    invoke-static {}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 6
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    const-string v2, "NotificationPlatformBridge"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, LJ/N;->MMmsCv9_()V

    .line 8
    sget-object v1, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Unable to initialize the native NotificationPlatformBridge."

    .line 9
    invoke-static {v2, v1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string v1, "notification_job_scheduled_time_ms"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "notification_job_started_time_ms"

    .line 11
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, -0x1

    .line 12
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 13
    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v7, v4

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Notifications.Android.JobStartDelay"

    .line 14
    invoke-static {v1, v7, v8}, LfV;->b(Ljava/lang/String;J)V

    :cond_2
    :goto_0
    const-string v1, "notification_id"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "notification_type"

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "notification_info_origin"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "notification_info_scope"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-nez v1, :cond_3

    move-object v10, v4

    goto :goto_1

    :cond_3
    move-object v10, v1

    :goto_1
    const-string v1, "notification_info_profile_id"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "notification_info_profile_incognito"

    .line 20
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    const-string v5, "Dispatching notification event to native: "

    .line 21
    invoke-static {v5, v7}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.chromium.chrome.browser.notifications.CLICK_NOTIFICATION"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v16, 0x1

    if-eqz v5, :cond_6

    const-string v2, "notification_info_webapk_package"

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v13, v4

    goto :goto_2

    :cond_4
    move-object v13, v2

    :goto_2
    const-string v2, "notification_info_action_index"

    const/4 v3, -0x1

    .line 24
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 25
    sget-object v6, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    .line 26
    invoke-static/range {p1 .. p1}, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v15

    if-eqz v6, :cond_5

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->c:J

    .line 28
    iget-wide v4, v6, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a:J

    move-object v11, v1

    .line 29
    invoke-static/range {v4 .. v15}, LJ/N;->MLnX7Uof(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 30
    throw v0

    .line 31
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.chromium.chrome.browser.notifications.CLOSE_NOTIFICATION"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 32
    sget-object v6, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->f:Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;

    const/4 v0, 0x1

    .line 33
    iget-wide v4, v6, Lorg/chromium/chrome/browser/notifications/NotificationPlatformBridge;->a:J

    move-object v10, v1

    move v11, v12

    move v12, v0

    .line 34
    invoke-static/range {v4 .. v12}, LJ/N;->Mu4UlKd1(JLjava/lang/Object;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_4

    :cond_7
    const-string v1, "Unrecognized Notification action: "

    .line 35
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    const/16 v16, 0x0

    :goto_4
    if-nez v16, :cond_8

    .line 36
    sget-object v0, Lorg/chromium/chrome/browser/notifications/NotificationService;->w:Ljava/lang/String;

    const-string v1, "Unable to dispatch the notification event to Chrome."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 37
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
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

    const-string v0, "notification_id"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "notification_info_origin"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, LZ01;->a:LFW;

    new-instance v1, Lhm0;

    invoke-direct {v1, p0, p1}, Lhm0;-><init>(Lorg/chromium/chrome/browser/notifications/NotificationService;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/IntentService;->setTheme(I)V

    return-void
.end method
