.class public Lg30;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public didFinishNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->j:Z

    .line 5
    iget-object v1, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    .line 6
    iget-object v2, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->g:Ljava/lang/String;

    .line 8
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    iget v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->i:I

    .line 10
    iget-boolean p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 11
    check-cast v1, Lm30;

    .line 12
    iput-boolean p1, v1, Lm30;->a:Z

    :cond_0
    return-void
.end method

.method public didStartLoading(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public didStartNavigation(Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p1, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez v0, :cond_3

    .line 3
    iget-object p1, p1, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 5
    iget-object v1, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    .line 6
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->g:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    check-cast v1, Lm30;

    .line 9
    iget-object v0, v1, Lm30;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, v1, Lm30;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, LMm0;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object p1, v1, Lm30;->c:Lp30;

    .line 12
    iget-object v0, p1, Lp30;->x:LtQ0;

    .line 13
    iget-object p1, p1, Lp30;->B:Lr30;

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v0, p1, v3}, LtQ0;->a(LsQ0;Z)V

    .line 15
    iput-object v2, v1, Lm30;->b:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_1
    iput-object p1, v1, Lm30;->b:Ljava/lang/String;

    .line 17
    iget-object v0, v1, Lm30;->c:Lp30;

    .line 18
    iget-object v0, v0, Lp30;->y:Lo30;

    .line 19
    new-instance v3, Ll30;

    invoke-direct {v3, v1}, Ll30;-><init>(Lm30;)V

    if-eqz v0, :cond_2

    .line 20
    new-instance v1, Ln30;

    invoke-direct {v1, v0, v3}, Ln30;-><init>(Lo30;Lorg/chromium/base/Callback;)V

    .line 21
    iget-object v2, v0, Lo30;->b:LDa0;

    .line 22
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    iget v0, v0, Lo30;->d:I

    .line 23
    invoke-virtual {v2, v3, p1, v0, v1}, LDa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;)Z

    goto :goto_0

    .line 24
    :cond_2
    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method public navigationEntryCommitted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public titleWasSet(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lg30;->a:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
