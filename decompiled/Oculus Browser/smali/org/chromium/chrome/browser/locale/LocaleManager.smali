.class public Lorg/chromium/chrome/browser/locale/LocaleManager;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:Lorg/chromium/chrome/browser/locale/LocaleManager;


# instance fields
.field public a:Z

.field public b:Ljava/lang/ref/WeakReference;

.field public c:LXF0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/locale/LocaleManager;->b:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, LBi0;

    invoke-direct {v0, p0}, LBi0;-><init>(Lorg/chromium/chrome/browser/locale/LocaleManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/locale/LocaleManager;->c:LXF0;

    .line 4
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 5
    :try_start_0
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "com.android.chrome.SEARCH_ENGINE_PROMO_SHOWN"

    const/4 v3, -0x1

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x1

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/locale/LocaleManager;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/locale/LocaleManager;->d:Lorg/chromium/chrome/browser/locale/LocaleManager;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/chrome/browser/locale/LocaleManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/locale/LocaleManager;-><init>()V

    .line 4
    sput-object v0, Lorg/chromium/chrome/browser/locale/LocaleManager;->d:Lorg/chromium/chrome/browser/locale/LocaleManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/chrome/browser/locale/LocaleManager;->d:Lorg/chromium/chrome/browser/locale/LocaleManager;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lorg/chromium/base/Callback;)V
    .locals 2

    .line 3
    invoke-static {}, LcD0;->a()Lorg/chromium/components/search_engines/TemplateUrlService;

    move-result-object v0

    new-instance v1, LCi0;

    invoke-direct {v1, p0, p1, p2}, LCi0;-><init>(Lorg/chromium/chrome/browser/locale/LocaleManager;Landroid/app/Activity;Lorg/chromium/base/Callback;)V

    .line 4
    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v1}, LCi0;->run()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, LjU0;

    invoke-direct {p1, v0, v1}, LjU0;-><init>(Lorg/chromium/components/search_engines/TemplateUrlService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lorg/chromium/components/search_engines/TemplateUrlService;->a(LkU0;)V

    .line 7
    invoke-virtual {v0}, Lorg/chromium/components/search_engines/TemplateUrlService;->e()V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    sget-object v0, LyT;->a:Landroid/content/SharedPreferences;

    const-string v1, "LocaleManager_PREF_AUTO_SWITCH"

    .line 2
    invoke-static {v0, v1, p1}, LZi;->b(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public a()Z
    .locals 5

    .line 8
    invoke-static {}, LPY;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "SearchEnginePromo.ExistingDevice"

    .line 9
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 11
    :try_start_0
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v3, "com.android.chrome.SEARCH_ENGINE_PROMO_SHOWN"

    const/4 v4, -0x1

    .line 12
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 14
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/locale/LocaleManager;->a:Z

    if-nez v0, :cond_1

    if-ne v2, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public getMailRUReferralId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getYandexReferralId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public recordUserTypeMetrics()V
    .locals 0

    return-void
.end method
