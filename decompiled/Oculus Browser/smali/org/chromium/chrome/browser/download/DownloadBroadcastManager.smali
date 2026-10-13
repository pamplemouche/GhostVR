.class public Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public final w:Lh90;

.field public final x:LW80;

.field public final y:Landroid/os/Handler;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    sget-object v0, Lf90;->a:Lh90;

    .line 3
    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->w:Lh90;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->y:Landroid/os/Handler;

    .line 5
    new-instance v0, LQ70;

    invoke-direct {v0, p0}, LQ70;-><init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->z:Ljava/lang/Runnable;

    .line 6
    sget-object v0, LV80;->a:LW80;

    .line 7
    iput-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->x:LW80;

    return-void
.end method

.method public static a(Landroid/content/Intent;)LbU0;
    .locals 3

    const-string v0, "org.chromium.chrome.browser.download.DownloadContentId_Id"

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.chromium.chrome.browser.download.DownloadContentId_Namespace"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, LbU0;

    .line 7
    invoke-static {p0, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {p0, v0}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, p0}, LbU0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(LbU0;)Lc90;
    .locals 0

    .line 9
    invoke-static {p0}, LcU0;->a(LbU0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "UseDownloadOfflineContentProvider"

    .line 10
    invoke-static {p0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 11
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-static {}, Lca0;->a()Lba0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    :goto_0
    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;

    invoke-direct {p1, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;JLbU0;)V
    .locals 13

    move-object v0, p2

    const-string v1, "DownloadFilePath"

    .line 13
    invoke-static {p2, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const-string v2, "IsSupportedMimeType"

    .line 14
    invoke-static {p2, v2, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    const-string v2, "org.chromium.chrome.browser.download.IS_OFF_THE_RECORD"

    .line 15
    invoke-static {p2, v2, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v5

    const-string v1, "android.intent.extra.ORIGINATING_URI"

    .line 16
    invoke-static {p2, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "android.intent.extra.REFERRER"

    .line 17
    invoke-static {p2, v1}, LCO0;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    .line 18
    iget-object v6, v0, LbU0;->b:Ljava/lang/String;

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v2, p1

    move-wide/from16 v7, p3

    invoke-static/range {v2 .. v12}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

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

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    const-string v3, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    const-string v4, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 2
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "org.chromium.chrome.browser.download.DOWNLOAD_OPEN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    .line 4
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x2

    if-nez v7, :cond_3

    goto/16 :goto_9

    .line 5
    :cond_3
    iget-object v7, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->y:Landroid/os/Handler;

    iget-object v9, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->z:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lb90;->c()Lb90;

    move-result-object v7

    invoke-virtual {v7}, Lb90;->a()V

    .line 7
    sget-object v7, LyT;->a:Landroid/content/SharedPreferences;

    .line 8
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "ResumptionAttemptLeft"

    .line 9
    invoke-interface {v7, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 10
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 13
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_6

    goto/16 :goto_8

    .line 14
    :cond_6
    iget-object v9, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->w:Lh90;

    .line 15
    invoke-static/range {p1 .. p1}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Intent;)LbU0;

    move-result-object v10

    .line 16
    invoke-virtual {v9, v10}, Lh90;->a(LbU0;)Ld90;

    move-result-object v9

    if-nez v9, :cond_7

    goto/16 :goto_8

    :cond_7
    const/4 v10, -0x1

    .line 17
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x42732667

    if-eq v11, v12, :cond_a

    const v3, -0x222410e9

    if-eq v11, v3, :cond_9

    const v3, -0x8507736

    if-eq v11, v3, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v10, 0x2

    goto :goto_5

    :cond_9
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v10, 0x0

    :cond_b
    :goto_5
    if-eqz v10, :cond_10

    if-eq v10, v5, :cond_f

    if-eq v10, v8, :cond_c

    goto/16 :goto_8

    .line 18
    :cond_c
    iget-boolean v2, v9, Ld90;->c:Z

    if-nez v2, :cond_e

    .line 19
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 20
    invoke-static {v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v14, 0x1

    .line 21
    :goto_7
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->w:Lh90;

    new-instance v3, Ld90;

    iget-object v11, v9, Ld90;->f:LbU0;

    iget v12, v9, Ld90;->a:I

    iget-boolean v13, v9, Ld90;->b:Z

    iget-object v15, v9, Ld90;->d:Ljava/lang/String;

    const/16 v16, 0x1

    iget-boolean v4, v9, Ld90;->g:Z

    move-object v10, v3

    move/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Ld90;-><init>(LbU0;IZZLjava/lang/String;ZZ)V

    .line 22
    invoke-virtual {v2, v3, v6}, Lh90;->a(Ld90;Z)V

    .line 23
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->x:LW80;

    iget-object v3, v9, Ld90;->f:LbU0;

    iget-object v4, v9, Ld90;->d:Ljava/lang/String;

    iget-boolean v6, v9, Ld90;->b:Z

    iget-boolean v7, v9, Ld90;->c:Z

    iget-boolean v9, v9, Ld90;->g:Z

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v9

    invoke-virtual/range {v17 .. v27}, LW80;->a(LbU0;Ljava/lang/String;ZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZI)V

    goto :goto_8

    .line 24
    :cond_f
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->x:LW80;

    iget-object v3, v9, Ld90;->f:LbU0;

    invoke-virtual {v2, v3}, LW80;->b(LbU0;)V

    goto :goto_8

    .line 25
    :cond_10
    iget-object v2, v0, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->x:LW80;

    iget-object v10, v9, Ld90;->f:LbU0;

    iget-object v11, v9, Ld90;->d:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-boolean v14, v9, Ld90;->b:Z

    iget-boolean v15, v9, Ld90;->g:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v9, v2

    invoke-virtual/range {v9 .. v21}, LW80;->a(LbU0;Ljava/lang/String;ZZZZLandroid/graphics/Bitmap;Ljava/lang/String;ZZZI)V

    .line 26
    :goto_8
    invoke-static {v5}, LD01;->a(I)LF01;

    move-result-object v2

    .line 27
    invoke-interface {v2}, LF01;->a()Z

    move-result v2

    .line 28
    invoke-static/range {p1 .. p1}, Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;->a(Landroid/content/Intent;)LbU0;

    move-result-object v3

    .line 29
    new-instance v4, LR70;

    invoke-direct {v4, v0, v1, v3, v2}, LR70;-><init>(Lorg/chromium/chrome/browser/download/DownloadBroadcastManager;Landroid/content/Intent;LbU0;Z)V

    .line 30
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v1

    invoke-virtual {v1, v4}, LUg0;->a(LCg0;)V

    .line 31
    invoke-static {}, LUg0;->e()LUg0;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, LUg0;->a(ZLCg0;)V

    :goto_9
    return v8
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
