.class public LZK0;
.super LGM0;
.source "PG"


# instance fields
.field public final synthetic x:Z

.field public final synthetic y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean p2, p0, LZK0;->x:Z

    invoke-direct {p0}, LGM0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LZK0;->x:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g0:Z

    .line 2
    :cond_0
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    iget-boolean p1, p0, LZK0;->x:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g0:Z

    .line 3
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->h0:Z

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 5
    :cond_0
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    iget-boolean v1, p0, LZK0;->x:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    if-nez v1, :cond_1

    .line 6
    new-instance v3, Lfp0;

    invoke-direct {v3, p1}, Lfp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p1, v3, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 7
    invoke-virtual {p1, v3, v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a(IZ)V

    .line 8
    iget-object v3, p1, Lep0;->R:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    .line 9
    invoke-virtual {p1, v3, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a(IZ)V

    .line 10
    iget-object v3, p1, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 11
    invoke-virtual {v3}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object v3

    iget-object v4, p1, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    invoke-virtual {v3, v4}, Lrc1;->b(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v3, p1, Lep0;->F:LNq0;

    .line 13
    iget-object v3, v3, LNq0;->x:LFq0;

    .line 14
    iget-object v4, v3, LFq0;->r:LEq0;

    iget-object v5, v3, LFq0;->t:LPJ0;

    invoke-interface {v5}, LPJ0;->a()Z

    move-result v5

    if-eqz v4, :cond_5

    .line 15
    invoke-static {v5}, Lyp0;->a(Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 16
    iget v1, v3, LFq0;->x:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, LEO0;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v3, LFq0;->t:LPJ0;

    .line 17
    invoke-static {v1}, Lyp0;->a(LPJ0;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {v3, v0}, LFq0;->a(Z)V

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Lep0;->e(Z)V

    .line 20
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->x()V

    .line 21
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->c0:Z

    .line 22
    iget-object p1, p1, LQK0;->B:LSJ0;

    .line 23
    invoke-interface {p1}, LSJ0;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->J:Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    invoke-virtual {p1}, Lep0;->l()V

    :cond_4
    return-void

    .line 25
    :cond_5
    throw v2

    .line 26
    :cond_6
    throw v2
.end method

.method public c(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LZK0;->x:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->g0:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, LZK0;->y:Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;

    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarPhone;->h0:Z

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :goto_0
    return-void
.end method
