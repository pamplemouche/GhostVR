.class public Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMP0;


# instance fields
.field public a:J

.field public b:Lorg/chromium/chrome/browser/tab/Tab;

.field public c:Lle1;

.field public d:Z


# direct methods
.method public constructor <init>(JLorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    .line 3
    iput-object p3, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public static create(JLorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;-><init>(JLorg/chromium/chrome/browser/tab/Tab;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->d:Z

    return-void
.end method

.method private installOrOpenNativeApp(Lorg/chromium/chrome/browser/banners/AppData;)Z
    .locals 4

    .line 1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {v0, v1}, LYT;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/chromium/chrome/browser/ChromeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p1, v2, v0

    const-string p1, "AppBannerUi"

    const-string v0, "Failed to install or open app : %s!"

    .line 6
    invoke-static {p1, v0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    :goto_1
    return v0

    .line 7
    :cond_2
    throw v1
.end method

.method private showAppDetails(Lorg/chromium/chrome/browser/banners/AppData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, v1, v1, v1}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/app/PendingIntent;LWc1;Ljava/lang/Integer;)Z

    return-void

    .line 4
    :cond_0
    throw v1
.end method

.method private showNativeAppDialog(Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/chrome/browser/banners/AppData;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c()Lle1;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    .line 2
    sget-object v1, LKP0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object v0, LKP0;->c:Lke1;

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object p2, LKP0;->d:Lje1;

    invoke-virtual {p1, p2, v2}, Lle1;->a(Lje1;I)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object p2, LKP0;->e:Lhe1;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lle1;->a(Lhe1;Z)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object p2, LKP0;->g:Lie1;

    .line 7
    iget p3, p3, Lorg/chromium/chrome/browser/banners/AppData;->a:F

    .line 8
    invoke-virtual {p1, p2, p3}, Lle1;->a(Lie1;F)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object p2, LKP0;->f:Lke1;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return v0
.end method

.method private showWebAppDialog(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c()Lle1;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    .line 2
    sget-object v1, LKP0;->a:Lke1;

    invoke-virtual {v0, v1, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object v0, LKP0;->d:Lje1;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lje1;I)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object v0, LKP0;->e:Lhe1;

    invoke-virtual {p1, v0, v1}, Lle1;->a(Lhe1;Z)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object v0, LKP0;->b:Lke1;

    invoke-virtual {p1, v0, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-static {p2, p1}, Lorg/chromium/chrome/browser/ShortcutHelper;->createHomeScreenIconFromWebIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 8
    :cond_1
    iget-object p3, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    sget-object p4, LKP0;->c:Lke1;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p4, v0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->d:Z

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    .line 4
    invoke-static {v0, v1, p0}, LJ/N;->MQzZ4I$D(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 5

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    .line 7
    invoke-static {v0, v1, p0}, LJ/N;->M6p6K33$(JLjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->d:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->a:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MVxGQmRp(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->c:Lle1;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->d:Z

    return-void
.end method

.method public final c()Lle1;
    .locals 5

    .line 1
    sget-object v0, LKP0;->h:[LUd1;

    .line 2
    invoke-static {v0}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Lle1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 4
    new-instance v0, LIP0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/banners/AppBannerUiDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    invoke-virtual {v3}, LBg0;->o()LBd1;

    move-result-object v3

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->b()I

    move-result v4

    invoke-direct {v0, v2, v3, v4, p0}, LIP0;-><init>(Landroid/content/Context;LBd1;ILMP0;)V

    sget-object v2, LI10;->a:Lne1;

    .line 8
    invoke-static {v1, v0, v2}, Loe1;->a(Lqe1;Ljava/lang/Object;Lne1;)Loe1;

    return-object v1
.end method
