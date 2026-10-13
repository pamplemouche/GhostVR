.class public Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;
.super Lep0;
.source "PG"


# instance fields
.field public V:Landroid/view/View;

.field public W:Landroid/view/View;

.field public a0:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0e00fa

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lep0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, LkM0;

    invoke-direct {p1, p0}, LkM0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lep0;->T:LkM0;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lep0;->H:Lk00;

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a0:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a0:Ljava/lang/Runnable;

    :cond_0
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lk00;->a()I

    move-result v1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    new-instance p2, Lgp0;

    invoke-direct {p2, p0, v0, p1}, Lgp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;Lk00;I)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->a0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    .line 7
    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, v0, Lk00;->a:Landroid/view/Window;

    invoke-virtual {p2, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(LMm0;)V
    .locals 0

    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public d(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lep0;->e(Z)V

    .line 4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->x()V

    .line 5
    invoke-super {p0, p1}, Lep0;->d(Z)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v2, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    int-to-float v3, v3

    .line 7
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return p2
.end method

.method public k()V
    .locals 2

    .line 1
    invoke-super {p0}, Lep0;->k()V

    .line 2
    iget-object v0, p0, Lep0;->C:LSJ0;

    .line 3
    invoke-interface {v0}, LSJ0;->a()Z

    move-result v0

    .line 4
    invoke-static {v0}, Lyp0;->a(Z)Z

    move-result v0

    .line 5
    iget-object v1, p0, Lep0;->F:LNq0;

    .line 6
    iget-object v1, v1, LNq0;->x:LFq0;

    .line 7
    iput-boolean v0, v1, LFq0;->h:Z

    .line 8
    invoke-virtual {v1}, LFq0;->b()V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->y()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lep0;->onFinishInflate()V

    const v0, 0x7f0b04d1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->W:Landroid/view/View;

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarPhone;->V:Landroid/view/View;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v1, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0xf

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 7
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lep0;->R:Landroid/widget/LinearLayout;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lep0;->T:LkM0;

    .line 9
    iget-object v0, v0, LkM0;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w()V
    .locals 1

    .line 1
    invoke-super {p0}, Lep0;->w()V

    .line 2
    iget v0, p0, Lep0;->Q:F

    invoke-virtual {p0, v0}, Lep0;->a(F)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lep0;->L:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lep0;->J:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    iget-object v1, p0, Lep0;->F:LNq0;

    .line 4
    iget-object v1, v1, LNq0;->x:LFq0;

    .line 5
    iget-object v1, v1, LFq0;->a:Lle1;

    sget-object v2, LGq0;->a:Lhe1;

    invoke-virtual {v1, v2, v0}, Lle1;->a(Lhe1;Z)V

    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lep0;->C:LSJ0;

    .line 2
    invoke-interface {v0}, LSJ0;->a()Z

    move-result v0

    .line 3
    invoke-static {v0}, Lyp0;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lep0;->C:LSJ0;

    invoke-static {v0}, Lyp0;->a(LPJ0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lep0;->F:LNq0;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    move-result v1

    .line 6
    iget-object v0, v0, LNq0;->x:LFq0;

    .line 7
    iget-object v0, v0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->f:Lhe1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lhe1;Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lep0;->F:LNq0;

    const/4 v1, 0x1

    .line 9
    iget-object v0, v0, LNq0;->x:LFq0;

    .line 10
    iget-object v0, v0, LFq0;->a:Lle1;

    sget-object v2, LGq0;->f:Lhe1;

    invoke-virtual {v0, v2, v1}, Lle1;->a(Lhe1;Z)V

    :goto_0
    return-void
.end method
