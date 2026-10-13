.class public Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lorg/chromium/content_public/browser/WebContents;

.field public b:Landroid/view/ViewGroup;

.field public c:J

.field public final d:Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;

.field public e:Lorg/chromium/chrome/browser/ChromeActivity;

.field public f:Lg11;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lc30;

.field public m:Ljava/lang/String;

.field public n:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

.field public o:Z

.field public final p:I

.field public q:I


# direct methods
.method private clearNativePanelContentPtr()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->b()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 12
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->o:Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj00;->a(ZZ)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 13
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-static {v2, v0}, LnT0;->a(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)LnT0;

    move-result-object v0

    .line 14
    new-instance v5, Li30;

    invoke-direct {v5, p0, v0}, Li30;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Landroid/view/ViewGroup;)V

    .line 15
    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 16
    invoke-virtual {v2}, LBg0;->Q()LDc1;

    move-result-object v7

    .line 17
    new-instance v8, Lc11;

    invoke-direct {v8}, Lc11;-><init>()V

    const-string v4, "79.0.3945.126"

    move-object v6, v0

    .line 18
    invoke-interface/range {v3 .. v8}, Lorg/chromium/content_public/browser/WebContents;->a(Ljava/lang/String;Lorg/chromium/ui/base/ViewAndroidDelegate;La11;Lorg/chromium/ui/base/WindowAndroid;Ld11;)V

    .line 19
    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 20
    invoke-static {v2}, LJ/N;->Mt4iWzCb(Ljava/lang/Object;)V

    .line 21
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->d:Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;

    .line 22
    invoke-static {v2, v3, p0, v4, v5}, LJ/N;->MzHfGFwX(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    new-instance v2, Lg30;

    iget-object v3, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v2, p0, v3}, Lg30;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->f:Lg11;

    .line 24
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->b:Landroid/view/ViewGroup;

    .line 25
    new-instance v0, Lh30;

    invoke-direct {v0, p0}, Lh30;-><init>(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->n:Lorg/chromium/components/navigation_interception/InterceptNavigationDelegate;

    .line 26
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    iget-object v4, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 27
    invoke-static {v2, v3, p0, v0, v4}, LJ/N;->MhbyyKle(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz v0, :cond_4

    .line 29
    iget-object v5, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    if-nez v5, :cond_3

    goto :goto_2

    .line 30
    :cond_3
    iget-wide v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    .line 31
    invoke-static/range {v2 .. v7}, LJ/N;->M7MukokD(JLjava/lang/Object;Ljava/lang/Object;II)V

    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    .line 33
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->e:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->r0()Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 34
    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->m:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->m:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a()V

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->g:Ljava/lang/String;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->h:Z

    .line 6
    iget-object p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p2

    new-instance v0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p1, v1}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-interface {p2, v0}, Lorg/chromium/content_public/browser/NavigationController;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_5

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->Mgx0E3X8(JLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->f:Lg11;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lg11;->destroy()V

    .line 7
    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->f:Lg11;

    :cond_0
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->h:Z

    .line 9
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->i:Z

    .line 10
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->k:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->k:Z

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->a:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->n()V

    .line 13
    :cond_2
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz v1, :cond_4

    .line 14
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanelContent;->l:Lc30;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    throw v0

    .line 16
    :cond_4
    throw v0

    :cond_5
    :goto_1
    return-void
.end method
