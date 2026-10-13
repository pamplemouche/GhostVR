.class public Lid0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljd0;


# instance fields
.field public final a:Landroid/view/Window;

.field public final b:Landroid/os/Handler;

.field public final c:Lhd0;

.field public d:Lorg/chromium/content_public/browser/WebContents;

.field public e:Landroid/view/View;

.field public f:Lorg/chromium/chrome/browser/tab/Tab;

.field public g:Z

.field public h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

.field public i:Lmf1;

.field public j:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lhd0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lid0;->a:Landroid/view/Window;

    .line 3
    iput-object p2, p0, Lid0;->c:Lhd0;

    .line 4
    new-instance p1, Lgd0;

    invoke-direct {p1, p0}, Lgd0;-><init>(Lid0;)V

    iput-object p1, p0, Lid0;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    .line 3
    iget-object v0, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;->w:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1004

    if-nez v0, :cond_1

    const/16 v1, 0x1207

    :cond_1
    or-int/2addr p1, v1

    return p1
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lid0;->i:Lmf1;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lid0;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v2, v1, p1

    if-eqz v2, :cond_0

    not-int p1, p1

    and-int/2addr p1, v1

    .line 3
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    iget-object p1, p0, Lid0;->a:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p2, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 3
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    and-int/lit16 v2, v2, -0x1208

    .line 5
    invoke-virtual {p0, v2}, Lid0;->a(I)I

    move-result v2

    goto :goto_2

    :cond_1
    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Lid0;->a(I)I

    move-result v2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v3

    .line 8
    sget-object v5, Lpl0;->y:Lpl0;

    .line 9
    invoke-virtual {v5, v3}, Lpl0;->b(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 10
    sget-object v5, Lpl0;->y:Lpl0;

    .line 11
    invoke-virtual {v5, v3}, Lpl0;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    .line 12
    :goto_1
    iget-object v5, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    if-eqz v5, :cond_5

    .line 13
    iget-boolean v5, v5, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;->w:Z

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    const/high16 v3, 0x4000000

    .line 14
    iget-object v5, p0, Lid0;->a:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 15
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v6

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 16
    iget-object v3, p0, Lid0;->a:Landroid/view/Window;

    invoke-virtual {v3, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_5
    or-int/2addr v2, v4

    .line 17
    :goto_2
    iget-object v3, p0, Lid0;->j:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 19
    :cond_6
    new-instance v3, Led0;

    invoke-direct {v3, p0, v1}, Led0;-><init>(Lid0;Landroid/view/View;)V

    iput-object v3, p0, Lid0;->j:Landroid/view/View$OnLayoutChangeListener;

    .line 20
    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    iput-object p2, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 24
    iput-object v0, p0, Lid0;->d:Lorg/chromium/content_public/browser/WebContents;

    .line 25
    iput-object v1, p0, Lid0;->e:Landroid/view/View;

    .line 26
    iput-object p1, p0, Lid0;->f:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lid0;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lid0;->g:Z

    .line 4
    iget-object v1, p0, Lid0;->c:Lhd0;

    check-cast v1, LYc0;

    .line 5
    iget-object v2, v1, LYc0;->a:Lbd0;

    invoke-virtual {v2}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    .line 6
    iget-object v3, v1, LYc0;->a:Lbd0;

    .line 7
    iget v3, v3, Lbd0;->K:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 8
    iget-object v0, v1, LYc0;->a:Lbd0;

    invoke-virtual {v0}, Lkd0;->getHtmlApiHandler()Ljd0;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Ljd0;->enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, v1, LYc0;->a:Lbd0;

    .line 10
    iput-object p1, v1, Lbd0;->M:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 11
    iput-boolean v0, v1, Lbd0;->L:Z

    .line 12
    invoke-static {v2}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    :goto_1
    return-void
.end method

.method public exitPersistentFullscreenMode()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lid0;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lid0;->g:Z

    .line 3
    iget-object v1, p0, Lid0;->d:Lorg/chromium/content_public/browser/WebContents;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lid0;->f:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v3, :cond_2

    .line 4
    iget-object v0, p0, Lid0;->e:Landroid/view/View;

    .line 5
    invoke-virtual {p0}, Lid0;->a()V

    .line 6
    iget-object v4, p0, Lid0;->b:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v4, p0, Lid0;->b:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    and-int/lit16 v4, v4, -0x401

    and-int/lit16 v4, v4, -0x1208

    const/high16 v5, 0x4000000

    .line 9
    invoke-virtual {p0, v5}, Lid0;->b(I)V

    .line 10
    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 11
    iget-object v4, p0, Lid0;->j:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v0, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 13
    :cond_1
    new-instance v4, Ldd0;

    invoke-direct {v4, p0, v3, v0}, Ldd0;-><init>(Lid0;Lorg/chromium/chrome/browser/tab/Tab;Landroid/view/View;)V

    iput-object v4, p0, Lid0;->j:Landroid/view/View$OnLayoutChangeListener;

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->m()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->H()V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lid0;->c:Lhd0;

    check-cast v1, LYc0;

    .line 17
    iget-object v1, v1, LYc0;->a:Lbd0;

    .line 18
    iget-boolean v3, v1, Lbd0;->L:Z

    .line 19
    iput-boolean v0, v1, Lbd0;->L:Z

    .line 20
    iput-object v2, v1, Lbd0;->M:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    .line 21
    :cond_3
    :goto_0
    iput-object v2, p0, Lid0;->d:Lorg/chromium/content_public/browser/WebContents;

    .line 22
    iput-object v2, p0, Lid0;->e:Landroid/view/View;

    .line 23
    iput-object v2, p0, Lid0;->f:Lorg/chromium/chrome/browser/tab/Tab;

    .line 24
    iput-object v2, p0, Lid0;->h:Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    return-void
.end method

.method public getPersistentFullscreenMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lid0;->g:Z

    return v0
.end method

.method public onContentViewSystemUiVisibilityChange(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lid0;->f:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lid0;->g:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lid0;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lid0;->a()V

    .line 2
    :cond_0
    iget-object v0, p0, Lid0;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lid0;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lid0;->f:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lid0;->g:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lid0;->b:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
