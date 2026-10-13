.class public Lh30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;


# instance fields
.field public final w:Lxa0;

.field public final synthetic x:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lh30;->x:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lxa0;

    invoke-direct {v0, p1}, Lxa0;-><init>(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-object v0, p0, Lh30;->w:Lxa0;

    return-void
.end method


# virtual methods
.method public shouldIgnoreNavigation(Lorg/chromium/components/navigation_interception/NavigationParams;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh30;->w:Lxa0;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lh30;->x:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
