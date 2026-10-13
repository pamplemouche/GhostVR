.class public LjH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ll40;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/tab/Tab;

.field public b:Z

.field public c:LSG0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    new-instance p1, LiH0;

    invoke-direct {p1, p0}, LiH0;-><init>(LjH0;)V

    iput-object p1, p0, LjH0;->c:LSG0;

    .line 4
    iget-object v0, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 43
    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/chromium/ui/base/Clipboard;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "EphemeralTabUsingBottomSheet"

    .line 1
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->y0()Lp30;

    move-result-object v0

    iget-object v2, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 4
    iput-object p1, v0, Lp30;->D:Ljava/lang/String;

    .line 5
    iput-boolean v2, v0, Lp30;->C:Z

    .line 6
    iget-object v2, v0, Lp30;->B:Lr30;

    if-eqz v2, :cond_5

    .line 7
    invoke-virtual {v0}, Lp30;->a()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {v0}, Lp30;->a()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object p1

    .line 9
    iget-wide v3, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    .line 10
    invoke-static {v3, v4, p1, v2}, LJ/N;->Msf6mgl3(JLjava/lang/Object;Z)V

    .line 11
    iget-object p1, v0, Lp30;->A:Lg11;

    if-nez p1, :cond_0

    .line 12
    new-instance p1, Lk30;

    iget-object v1, v0, Lp30;->z:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 13
    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 14
    invoke-direct {p1, v0, v1}, Lk30;-><init>(Lp30;Lorg/chromium/content_public/browser/WebContents;)V

    .line 15
    iput-object p1, v0, Lp30;->A:Lg11;

    .line 16
    :cond_0
    iget-object p1, v0, Lp30;->B:Lr30;

    .line 17
    invoke-virtual {v0}, Lp30;->a()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 19
    invoke-virtual {v0}, Lp30;->a()Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    move-result-object v3

    .line 20
    iget-object v3, v3, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->b:Landroid/view/ViewGroup;

    .line 21
    check-cast v3, LnT0;

    .line 22
    iput-object v1, p1, Lr30;->c:Lorg/chromium/content_public/browser/WebContents;

    .line 23
    iput-object v3, p1, Lr30;->d:LnT0;

    .line 24
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p1, Lr30;->d:LnT0;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p1, Lr30;->d:LnT0;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    :cond_1
    iget-object v1, p1, Lr30;->e:LxJ0;

    iget-object v3, p1, Lr30;->c:Lorg/chromium/content_public/browser/WebContents;

    iget-object p1, p1, Lr30;->d:LnT0;

    check-cast v1, LAJ0;

    .line 27
    iput-object v3, v1, LAJ0;->x:Lorg/chromium/content_public/browser/WebContents;

    .line 28
    iget-object v3, v1, LAJ0;->y:Landroid/view/View;

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 30
    :cond_3
    iput-object p1, v1, LAJ0;->y:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 32
    :cond_4
    :goto_0
    iget-wide v3, v1, LAJ0;->w:J

    iget-object p1, v1, LAJ0;->x:Lorg/chromium/content_public/browser/WebContents;

    .line 33
    invoke-static {v3, v4, v1, p1}, LJ/N;->MwCiReoH(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 34
    iget-object p1, v1, LAJ0;->x:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->w()V

    .line 35
    iget-object p1, v0, Lp30;->B:Lr30;

    .line 36
    iget-object p1, p1, Lr30;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0b019c

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object p1, v0, Lp30;->x:LtQ0;

    iget-object p2, v0, Lp30;->B:Lr30;

    invoke-virtual {p1, p2, v2}, LtQ0;->b(LsQ0;Z)Z

    return-void

    .line 39
    :cond_5
    iget-object p1, v0, Lp30;->w:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->l0()V

    throw v1

    .line 40
    :cond_6
    iget-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->z0()V

    iget-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 41
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 42
    throw v1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    iget-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lw70;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    const-string p2, "com.google.android.apps.chrome.EXTRA_OPEN_NEW_INCOGNITO_TAB"

    .line 47
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object p2, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 49
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "com.android.browser.application_id"

    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {v0}, LqZ;->a(Landroid/content/Intent;)V

    const-string p2, "org.chromium.chrome.browser.tab_launch_type"

    .line 52
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    :cond_0
    iget-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-static {p1, v0}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .line 54
    invoke-static {}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->e()Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/net/spdyproxy/DataReductionProxySettings;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 57
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    .line 1
    iget-object p2, p0, LjH0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    invoke-static {p2}, LM70;->a(Lorg/chromium/chrome/browser/tab/Tab;)LM70;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "https"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, LB90;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 8
    :cond_1
    iget-object v3, p2, LM70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const-string v3, "application/vnd.oma.drm.message"

    .line 9
    invoke-static {p1, v2, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v3, Ln80;

    invoke-direct {v3}, Ln80;-><init>()V

    .line 11
    iput-object p1, v3, Ln80;->a:Ljava/lang/String;

    .line 12
    iput-object v2, v3, Ln80;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {v3}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 14
    iget-object v2, p2, LM70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 15
    iget-object v2, v2, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 16
    invoke-virtual {v2, v3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    iget-object v2, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 18
    iget-object v3, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 19
    iget-object v4, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->a:Ljava/lang/String;

    .line 20
    invoke-static {v3, v4, v2}, LM70;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v4, LL70;

    invoke-direct {v4, p2, p1, v3, v2}, LL70;-><init>(LM70;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {v4, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_1

    .line 23
    :cond_4
    invoke-virtual {v2, v3}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    new-instance v4, LK70;

    invoke-direct {v4, p2, p1}, LK70;-><init>(LM70;Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 25
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_1

    :goto_2
    if-nez p1, :cond_7

    goto :goto_3

    .line 26
    :cond_5
    throw v2

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :cond_7
    return v0
.end method
