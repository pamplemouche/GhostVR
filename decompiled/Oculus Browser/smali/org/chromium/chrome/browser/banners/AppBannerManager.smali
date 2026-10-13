.class public Lorg/chromium/chrome/browser/banners/AppBannerManager;
.super LSG0;
.source "PG"


# static fields
.field public static y:LJ10;

.field public static z:Ljava/lang/Boolean;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public x:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->w:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 6
    invoke-interface {p1}, LlH0;->a()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->x:Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->c()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->x:Z

    :goto_0
    return-void
.end method

.method public static b()I
    .locals 2

    .line 1
    invoke-static {}, LJ/N;->M6NVPSCv()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f1303b5

    return v0

    :cond_0
    const v0, 0x7f1303b4

    return v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->z:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/chrome/browser/ShortcutHelper;->b()Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->z:Ljava/lang/Boolean;

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public static create(Lorg/chromium/chrome/browser/tab/Tab;J)Lorg/chromium/chrome/browser/banners/AppBannerManager;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/banners/AppBannerManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/banners/AppBannerManager;-><init>(Lorg/chromium/chrome/browser/tab/Tab;J)V

    return-object v0
.end method

.method private destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->w:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private fetchAppDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method private isEnabledForTab()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/banners/AppBannerManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onActivityAttachmentChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->D:LlH0;

    .line 3
    invoke-interface {p1}, LlH0;->a()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/chrome/browser/banners/AppBannerManager;->x:Z

    :cond_0
    return-void
.end method
