.class public Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;
.super Lep0;
.source "PG"


# instance fields
.field public final V:Landroid/util/Property;

.field public final W:Landroid/util/Property;

.field public final a0:Ljava/lang/Runnable;

.field public b0:Landroid/view/View;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/animation/Animator;

.field public f0:[Landroid/view/View;

.field public final g0:Landroid/graphics/Rect;

.field public h0:Z

.field public final i0:I

.field public final j0:I

.field public k0:Z

.field public l0:F

.field public m0:F

.field public n0:F

.field public o0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Float;

    const v1, 0x7f0e00fa

    .line 2
    invoke-direct {p0, p1, p2, v1}, Lep0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, LkM0;

    invoke-direct {p1, p0}, LkM0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lep0;->T:LkM0;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 5
    new-instance p1, Lhp0;

    const-string p2, ""

    invoke-direct {p1, p0, v0, p2}, Lhp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->V:Landroid/util/Property;

    .line 6
    new-instance p1, Lip0;

    invoke-direct {p1, p0, v0, p2}, Lip0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->W:Landroid/util/Property;

    .line 7
    new-instance p1, Ljp0;

    invoke-direct {p1, p0}, Ljp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a0:Ljava/lang/Runnable;

    .line 8
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->g0:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07031a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->i0:I

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070187

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->j0:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lep0;->x:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 22
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 23
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 25
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 27
    iget-object v0, p0, Lep0;->x:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 28
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 29
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 30
    iget-object p0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;F)V
    .locals 0

    .line 2
    iput p1, p0, Lep0;->Q:F

    .line 3
    iget-object p0, p0, Lep0;->C:LSJ0;

    .line 4
    invoke-interface {p0}, LSJ0;->d()LMm0;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 5
    throw p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->f(Z)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(F)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 18
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 19
    sget-object v0, Lvd1;->h:Lvd1;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x96

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 6
    invoke-super {p0, p1}, Lep0;->a(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lep0;->F:LNq0;

    iget-object v0, p0, Lep0;->B:LPq0;

    .line 8
    check-cast v0, Lar0;

    .line 9
    iget-object v0, v0, Lar0;->x:Lmr0;

    invoke-virtual {v0}, Lmr0;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 10
    iget-object v0, p0, Lep0;->B:LPq0;

    .line 11
    check-cast v0, Lar0;

    .line 12
    iget-object v0, v0, Lar0;->x:Lmr0;

    .line 13
    iget-object v0, v0, Lmr0;->A:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llr0;

    iget-object v0, v0, Llr0;->b:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 14
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->b:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget-object p1, p1, LNq0;->x:LFq0;

    .line 16
    iput-boolean v1, p1, LFq0;->d:Z

    .line 17
    invoke-virtual {p1}, LFq0;->b()V

    return-void
.end method

.method public b(Landroid/view/View;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 5
    sget-object v0, Lvd1;->i:Lvd1;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x4b

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x96

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public final b(F)V
    .locals 3

    .line 8
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->l0:F

    .line 9
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->i0:I

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->o0:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 10
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->n0:F

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setRight(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->m0:F

    sub-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 13
    :goto_0
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->j0:I

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    float-to-int v0, v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 15
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 16
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p0, Lep0;->x:Landroid/widget/ImageButton;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTranslationX(F)V

    .line 18
    :goto_1
    iget-object v1, p0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 19
    iget-object v1, p0, Lep0;->w:Landroid/widget/ImageButton;

    add-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 21
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b0:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    iget-object v1, p0, Lep0;->y:LKp0;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTranslationX(F)V

    .line 23
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, p0, Lep0;->w:Landroid/widget/ImageButton;

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setTranslationX(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public c(Z)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lep0;->c(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    .line 6
    :cond_0
    iget-object v0, p0, Lep0;->C:LSJ0;

    .line 7
    invoke-interface {v0}, LSJ0;->d()LMm0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->f(Z)V

    return-void

    .line 9
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 13
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->V:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    aput v5, v3, v4

    .line 14
    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    const/high16 v3, 0x43480000    # 200.0f

    mul-float v1, v1, v3

    float-to-long v3, v1

    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    new-instance v1, Lkp0;

    invoke-direct {v1, p0, p1}, Lkp0;-><init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    invoke-virtual {p0, v2}, Lep0;->e(Z)V

    .line 18
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->e0:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lep0;->F:LNq0;

    .line 2
    iget-object v1, v0, LNq0;->x:LFq0;

    .line 3
    iget-boolean v2, v1, LFq0;->c:Z

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean p1, v1, LFq0;->c:Z

    .line 5
    invoke-virtual {v1}, LFq0;->c()V

    .line 6
    invoke-virtual {v1}, LFq0;->b()V

    .line 7
    :goto_0
    iput-boolean p1, v0, LNq0;->B:Z

    .line 8
    invoke-virtual {v0}, LNq0;->b()V

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lep0;->H:Lk00;

    .line 10
    invoke-virtual {p1}, Lk00;->a()I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lep0;->H:Lk00;

    .line 12
    iget-object p1, p1, Lk00;->a:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 13
    :cond_1
    iget-object p1, p0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 14
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object p1

    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {p1, v0}, Lrc1;->b(Landroid/view/View;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Lep0;->G:Lorg/chromium/ui/base/WindowAndroid;

    .line 16
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getKeyboardDelegate()Lrc1;

    move-result-object p1

    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {p1, v0}, Lrc1;->a(Landroid/view/View;)Z

    .line 17
    iget-object p1, p0, Lep0;->H:Lk00;

    .line 18
    invoke-virtual {p1}, Lk00;->a()I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    .line 19
    iget-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a0:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lep0;->e(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lep0;->onFinishInflate()V

    const v0, 0x7f0b024a

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b0:Landroid/view/View;

    const v0, 0x7f0b0067

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    const v0, 0x7f0b0392

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 5
    iget-object v1, p0, Lep0;->y:LKp0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lep0;->w:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->f0:[Landroid/view/View;

    .line 6
    iget-object v0, p0, Lep0;->F:LNq0;

    .line 7
    iget-object v0, v0, LNq0;->x:LFq0;

    .line 8
    iput-boolean v2, v0, LFq0;->h:Z

    .line 9
    invoke-virtual {v0}, LFq0;->b()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    int-to-float p1, p2

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->m0:F

    int-to-float p1, p4

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->n0:F

    .line 4
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->k0:Z

    if-eqz p1, :cond_0

    .line 5
    iget p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->l0:F

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->b(F)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-super {p0, p1, p2}, Lep0;->onMeasure(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lep0;->a(I)V

    .line 5
    invoke-super {p0, p1, p2}, Lep0;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->f0:[Landroid/view/View;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v3, 0x0

    .line 2
    array-length v4, v2

    const/4 v5, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v3, v4, :cond_8

    aget-object v11, v2, v3

    .line 3
    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_3

    .line 4
    :cond_1
    iget-object v12, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->g0:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v14

    invoke-virtual {v12, v5, v5, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 5
    iget-object v12, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->g0:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v12}, Landroid/widget/FrameLayout;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 8
    iget-object v14, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->g0:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    iget v14, v14, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    cmpg-float v16, v12, v15

    if-gez v16, :cond_2

    sub-float v14, v15, v12

    goto :goto_1

    :cond_2
    cmpl-float v15, v12, v14

    if-lez v15, :cond_3

    sub-float/2addr v14, v12

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 9
    :goto_1
    iget-object v15, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->g0:Landroid/graphics/Rect;

    iget v6, v15, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    cmpg-float v17, v13, v6

    if-gez v17, :cond_4

    sub-float/2addr v6, v13

    goto :goto_2

    :cond_4
    cmpl-float v6, v13, v15

    if-lez v6, :cond_5

    sub-float v6, v15, v13

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    add-float v17, v17, v15

    if-eqz v7, :cond_6

    cmpg-float v15, v17, v10

    if-gez v15, :cond_7

    :cond_6
    add-float/2addr v12, v14

    add-float/2addr v13, v6

    move-object v7, v11

    move v8, v12

    move v9, v13

    move/from16 v10, v17

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-nez v7, :cond_9

    return v5

    .line 11
    :cond_9
    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 12
    invoke-virtual {v7, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public w()V
    .locals 6

    .line 1
    invoke-super {p0}, Lep0;->w()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->c0:Landroid/view/View;

    const/16 v4, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_2
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const/16 v5, 0x8

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->d0:Landroid/view/View;

    .line 9
    iget-object v3, p0, Lep0;->C:LSJ0;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    .line 10
    :cond_4
    invoke-interface {v3}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v3

    .line 11
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    :cond_5
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->h0:Z

    if-nez v0, :cond_6

    .line 13
    iget v0, p0, Lep0;->Q:F

    invoke-virtual {p0, v0}, Lep0;->a(F)V

    goto :goto_7

    .line 14
    :cond_6
    iget-object v0, p0, Lep0;->x:Landroid/widget/ImageButton;

    .line 15
    iget-object v3, p0, Lep0;->S:Lsp0;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lsp0;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lep0;->K:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lep0;->y:LKp0;

    .line 16
    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lep0;->J:Z

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_5
    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    const/16 v2, 0x8

    .line 17
    :goto_6
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lep0;->K:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lep0;->y:LKp0;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lep0;->J:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final z()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lep0;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lep0;->C:LSJ0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, LSJ0;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->y()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method
