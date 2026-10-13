.class public abstract LN10;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public A:Landroid/animation/Animator;

.field public B:I

.field public C:I

.field public D:I

.field public E:Z

.field public F:Lorg/chromium/content_public/browser/WebContents;

.field public final w:LI01;

.field public final x:Landroid/view/View$OnLayoutChangeListener;

.field public final y:Landroid/view/animation/Interpolator;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, LK10;

    invoke-direct {p1, p0}, LK10;-><init>(LN10;)V

    .line 3
    iput-object p1, p0, LN10;->w:LI01;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, LN10;->z:I

    .line 5
    new-instance p2, LL10;

    invoke-direct {p2, p0}, LL10;-><init>(LN10;)V

    .line 6
    iput-object p2, p0, LN10;->x:Landroid/view/View$OnLayoutChangeListener;

    .line 7
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, LN10;->y:Landroid/view/animation/Interpolator;

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(LN10;)Z
    .locals 1

    .line 21
    iget-boolean v0, p0, LN10;->E:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, LN10;->A:Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2

    .line 1
    iget-object v0, p0, LN10;->F:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v0

    .line 3
    iget-object v1, p0, LN10;->w:LI01;

    .line 4
    invoke-interface {v0, v1}, LH01;->b(LI01;)V

    .line 5
    :cond_0
    iput-object p1, p0, LN10;->F:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p1}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p1

    .line 7
    iget-object v0, p0, LN10;->w:LI01;

    invoke-interface {p1, v0}, LH01;->a(LI01;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 5

    .line 11
    iget-object v0, p0, LN10;->A:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_1
    iget p1, p0, LN10;->D:I

    int-to-float p1, p1

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, LN10;->D:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-wide/16 v1, 0x0

    const/high16 v3, 0x437a0000    # 250.0f

    mul-float v0, v0, v3

    float-to-long v3, v0

    .line 14
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 15
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 17
    iget-object v0, p0, LN10;->y:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 18
    iput-object p1, p0, LN10;->A:Landroid/animation/Animator;

    .line 19
    new-instance v0, LM10;

    invoke-direct {v0, p0}, LM10;-><init>(LN10;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 20
    iget-object p1, p0, LN10;->A:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, LN10;->x:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    sget-boolean v0, LNf0;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2
    :goto_0
    iget v2, p0, LN10;->B:I

    if-eq v2, v0, :cond_1

    .line 3
    iput v0, p0, LN10;->B:I

    .line 4
    iput v1, p0, LN10;->z:I

    .line 5
    iget-object v0, p0, LN10;->A:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p0, LN10;->D:I

    .line 8
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    sget-boolean p1, LNf0;->I:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method
