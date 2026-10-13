.class public Lorg/chromium/chrome/browser/download/DownloadController;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:LW70;


# direct methods
.method public static a()LH90;
    .locals 2

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 2
    instance-of v1, v0, LH90;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, LH90;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/content/ContextWrapper;

    .line 6
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, LH90;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 5

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/download/DownloadItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    if-eqz v0, :cond_0

    .line 8
    new-instance p0, Ly80;

    invoke-direct {p0}, Ly80;-><init>()V

    .line 9
    iget-object v3, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 10
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->a:Ljava/lang/String;

    .line 11
    iput-object v4, p0, Ly80;->a:Ljava/lang/String;

    .line 12
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 13
    iput-object v4, p0, Ly80;->b:Ljava/lang/String;

    .line 14
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->f:Ljava/lang/String;

    .line 15
    iput-object v4, p0, Ly80;->c:Ljava/lang/String;

    .line 16
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 17
    iput-object v4, p0, Ly80;->d:Ljava/lang/String;

    .line 18
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->d:Ljava/lang/String;

    .line 19
    iput-object v4, p0, Ly80;->e:Ljava/lang/String;

    .line 20
    iget-object v4, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    .line 21
    iput-object v4, p0, Ly80;->f:Ljava/lang/String;

    .line 22
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->b:Ljava/lang/String;

    .line 23
    iput-object v3, p0, Ly80;->g:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Ly80;->h:Z

    .line 25
    new-instance v2, LH80;

    invoke-direct {v2, v0, v1}, LH80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    invoke-static {p0, v2}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(Ly80;Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 26
    throw p0
.end method

.method public static closeTabIfBlank(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/NavigationController;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    .line 3
    invoke-static {p0}, LoI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LpI0;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 4
    :cond_3
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 5
    check-cast v1, LrI0;

    invoke-virtual {v1, v3}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v3

    invoke-interface {v3}, LdI0;->getCount()I

    move-result v3

    if-ne v3, v0, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-virtual {v1, p0}, LrI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    return v0

    :cond_5
    return v2
.end method

.method public static enqueueAndroidDownloadManagerRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ln80;

    invoke-direct {v0}, Ln80;-><init>()V

    .line 2
    iput-object p0, v0, Ln80;->a:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Ln80;->b:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Ln80;->e:Ljava/lang/String;

    .line 5
    iput-object p3, v0, Ln80;->c:Ljava/lang/String;

    .line 6
    iput-object p4, v0, Ln80;->d:Ljava/lang/String;

    .line 7
    iput-object p5, v0, Ln80;->h:Ljava/lang/String;

    const/4 p0, 0x1

    .line 8
    iput-boolean p0, v0, Ln80;->l:Z

    .line 9
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadController;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    return-void
.end method

.method public static hasFileAccess()Z
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/components/download/DownloadCollectionBridge;->a()Lorg/chromium/components/download/DownloadCollectionBridge;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 3
    instance-of v1, v0, Lorg/chromium/chrome/browser/ChromeActivity;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    invoke-virtual {v0}, LBg0;->Q()LDc1;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadController;->a()LH90;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, LH90;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public static onDownloadCancelled(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0}, LW70;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    return-void
.end method

.method public static onDownloadCompleted(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ld80;->a:Le80;

    .line 4
    new-instance v2, LS80;

    invoke-direct {v2, v0}, LS80;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le80;->a(Lorg/chromium/base/Callback;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    const-string v2, "DownloadLocationShowImageInGallery"

    .line 7
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object v1, Ld80;->a:Le80;

    .line 11
    new-instance v2, Ln90;

    invoke-direct {v2, v0}, Ln90;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le80;->a(Lorg/chromium/base/Callback;)V

    .line 12
    :cond_3
    :goto_1
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    if-nez v0, :cond_4

    return-void

    .line 13
    :cond_4
    invoke-interface {v0, p0}, LW70;->c(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    return-void
.end method

.method public static onDownloadInterrupted(Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0, p1}, LW70;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V

    return-void
.end method

.method public static onDownloadStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 2
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onDownloadUpdated(Lorg/chromium/chrome/browser/download/DownloadInfo;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadController;->a:LW70;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p0}, LW70;->b(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    return-void
.end method

.method public static requestFileAccess(J)V
    .locals 6

    .line 1
    new-instance v0, LS70;

    invoke-direct {v0, p0, p1}, LS70;-><init>(J)V

    .line 2
    sget-object p0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 3
    new-instance p1, LT70;

    invoke-direct {p1, v0}, LT70;-><init>(Lorg/chromium/base/Callback;)V

    .line 4
    instance-of v1, p0, Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eqz v1, :cond_5

    .line 5
    move-object v1, p0

    check-cast v1, Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v1}, LBg0;->Q()LDc1;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {v1, v4}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 p0, 0x1

    .line 8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v1, v4}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 11
    invoke-virtual {v1, v4}, Lorg/chromium/ui/base/WindowAndroid;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    .line 12
    :goto_1
    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const v2, 0x7f1303e2

    .line 13
    new-instance v3, LU70;

    invoke-direct {v3, v1, p1}, LU70;-><init>(LEc1;LKc1;)V

    new-instance p1, LV70;

    invoke-direct {p1, v0}, LV70;-><init>(Lorg/chromium/base/Callback;)V

    invoke-static {p0, v2, v3, p1}, Lix0;->a(Landroid/app/Activity;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadController;->a()LH90;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 15
    invoke-interface {p0}, LH90;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    invoke-interface {p0}, LH90;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p0

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_2

    .line 17
    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
