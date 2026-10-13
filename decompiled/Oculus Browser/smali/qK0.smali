.class public LqK0;
.super LjM0;
.source "PG"


# instance fields
.field public A:Z

.field public B:F

.field public C:LpK0;

.field public D:I

.field public E:Landroid/view/ViewGroup;

.field public F:I

.field public G:I

.field public H:Z

.field public I:LrK0;

.field public J:Z

.field public K:Landroid/view/View;

.field public final L:I

.field public M:Landroid/animation/Animator;

.field public final N:Landroid/view/View$OnLayoutChangeListener;

.field public final O:Ljava/lang/Runnable;

.field public final P:Landroid/animation/TimeAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LqK0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LjM0;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p1, LlK0;

    invoke-direct {p1, p0}, LlK0;-><init>(LqK0;)V

    iput-object p1, p0, LqK0;->N:Landroid/view/View$OnLayoutChangeListener;

    .line 3
    new-instance p1, LnK0;

    invoke-direct {p1, p0}, LnK0;-><init>(LqK0;)V

    iput-object p1, p0, LqK0;->O:Ljava/lang/Runnable;

    .line 4
    new-instance p1, Landroid/animation/TimeAnimator;

    invoke-direct {p1}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object p1, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    .line 5
    new-instance v0, LoK0;

    invoke-direct {v0, p0}, LoK0;-><init>(LqK0;)V

    invoke-virtual {p1, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 6
    iput p2, p0, LqK0;->L:I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, LqK0;->setAlpha(F)V

    .line 8
    iget-object p1, p0, LqK0;->K:Landroid/view/View;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, LqK0;->N:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    :cond_1
    iput-object p3, p0, LqK0;->K:Landroid/view/View;

    .line 11
    invoke-virtual {p0}, LqK0;->c()V

    .line 12
    iget-object p1, p0, LqK0;->K:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 13
    iget-object p2, p0, LqK0;->N:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 14
    :cond_2
    :goto_0
    iput-boolean p4, p0, LqK0;->H:Z

    .line 15
    new-instance p1, LLJ0;

    invoke-direct {p1}, LLJ0;-><init>()V

    iput-object p1, p0, LqK0;->C:LpK0;

    const/4 p1, 0x1

    .line 16
    invoke-static {p0, p1}, LA7;->e(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(LqK0;F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LjM0;->a(F)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 26
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 27
    iget-boolean v0, p0, LqK0;->A:Z

    if-eqz v0, :cond_3

    iget v0, p0, LqK0;->B:F

    invoke-static {v0, p1}, LEO0;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iput p1, p0, LqK0;->B:F

    .line 29
    iget-object v0, p0, LqK0;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    iget-object v0, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, LqK0;->O:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    iget v0, p0, LqK0;->B:F

    invoke-super {p0, v0}, LjM0;->a(F)V

    :cond_1
    const/4 v0, 0x4

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    invoke-static {p1, v0}, LEO0;->a(FF)Z

    move-result v1

    if-nez v1, :cond_2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LqK0;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .line 2
    iget-object v0, p0, LjM0;->w:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 3
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const v2, 0x3ecccccd    # 0.4f

    .line 4
    invoke-static {p1, v1, v2}, LAO0;->a(IIF)I

    move-result p1

    .line 5
    iget-object v0, v0, LrK0;->w:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 3

    .line 35
    iput p1, p0, LqK0;->G:I

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, LqK0;->G:I

    invoke-static {v0, p2, v1}, LAO0;->a(Landroid/content/res/Resources;ZI)Z

    move-result v0

    .line 37
    iget-boolean v1, p0, LqK0;->H:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/high16 p1, -0x1000000

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060111

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 40
    invoke-virtual {p0, p2}, LqK0;->a(I)V

    .line 41
    invoke-static {p1}, LAO0;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, LjM0;->setBackgroundColor(I)V

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 42
    invoke-static {p1}, LAO0;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-nez p2, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060156

    .line 44
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 45
    invoke-virtual {p0, p1}, LqK0;->a(I)V

    .line 46
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060155

    .line 47
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 48
    invoke-virtual {p0, p1}, LjM0;->setBackgroundColor(I)V

    return-void

    .line 49
    :cond_3
    invoke-static {p1}, LAO0;->d(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    const v0, 0x3f23d70a    # 0.64f

    .line 50
    invoke-static {p1, v2, v0}, LAO0;->a(IIF)I

    move-result v0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    .line 51
    :goto_1
    invoke-virtual {p0, v0}, LqK0;->a(I)V

    .line 52
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_7

    .line 53
    invoke-static {p1}, LAO0;->d(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_7

    .line 54
    :cond_6
    iget-object p2, p0, LqK0;->I:LrK0;

    const v0, 0x3ecccccd    # 0.4f

    .line 55
    invoke-static {p1, v1, v0}, LAO0;->a(IIF)I

    move-result v0

    .line 56
    iget-object p2, p2, LrK0;->w:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_7
    const p2, 0x3e4ccccd    # 0.2f

    .line 57
    invoke-static {p1, v1, p2}, LAO0;->a(IIF)I

    move-result p1

    invoke-virtual {p0, p1}, LjM0;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 6
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 7
    iget v0, p0, LjM0;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    invoke-static {v0, v1}, LEO0;->a(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0, v1}, LqK0;->a(F)V

    .line 10
    iget-object v0, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, LqK0;->A:Z

    const/4 v1, 0x0

    .line 12
    iput v1, p0, LqK0;->B:F

    .line 13
    iget-object v2, p0, LqK0;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    iget-object v2, p0, LqK0;->I:LrK0;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 15
    iput-boolean v3, v2, LrK0;->z:Z

    .line 16
    iget-object v3, v2, LrK0;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 19
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 21
    iput v1, v2, LrK0;->A:F

    .line 22
    iput v1, v2, LrK0;->x:F

    .line 23
    :cond_1
    iget-object v1, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->cancel()V

    if-eqz p1, :cond_2

    .line 24
    new-instance p1, LmK0;

    invoke-direct {p1, p0}, LmK0;-><init>(LqK0;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0, v0}, LqK0;->b(Z)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LqK0;->A:Z

    .line 3
    iget v1, p0, LqK0;->F:I

    add-int/2addr v1, v0

    iput v1, p0, LqK0;->F:I

    .line 4
    iget-object v0, p0, LqK0;->O:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    iget-object v0, p0, LqK0;->O:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, LjM0;->a(F)V

    .line 7
    iget-object v1, p0, LqK0;->C:LpK0;

    check-cast v1, LLJ0;

    .line 8
    iput v0, v1, LLJ0;->a:F

    .line 9
    iput v0, v1, LLJ0;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p0, v0}, LqK0;->b(F)V

    return-void
.end method

.method public final b(F)V
    .locals 10

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x430c0000    # 140.0f

    mul-float v2, v2, v0

    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-long v2, v2

    .line 18
    sget-object v4, Lvd1;->i:Lvd1;

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 19
    sget-object v4, Lvd1;->h:Lvd1;

    .line 20
    :cond_1
    iget-object v0, p0, LqK0;->M:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 21
    :cond_2
    sget-object v0, Landroid/widget/ImageView;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v5, v1, [F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x1

    aput p1, v5, v6

    invoke-static {p0, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 24
    iput-object v0, p0, LqK0;->M:Landroid/animation/Animator;

    .line 25
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_3

    .line 26
    sget-object v5, Landroid/widget/ImageView;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    .line 27
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v9

    aput v9, v8, v7

    aput p1, v8, v6

    .line 28
    invoke-static {v0, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 30
    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 31
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    .line 32
    iget-object v2, p0, LqK0;->M:Landroid/animation/Animator;

    aput-object v2, v1, v7

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 33
    iput-object v0, p0, LqK0;->M:Landroid/animation/Animator;

    .line 34
    :cond_3
    iget-object p1, p0, LqK0;->M:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 11
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 12
    iget-boolean v0, p0, LqK0;->A:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, LqK0;->b(F)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, LqK0;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, LqK0;->K:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LqK0;->L:I

    sub-int/2addr v0, v1

    .line 2
    iget v1, p0, LqK0;->D:I

    if-eq v1, v0, :cond_1

    .line 3
    iput v0, p0, LqK0;->D:I

    .line 4
    iget-boolean v0, p0, LqK0;->J:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, LqK0;->D:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, LqK0;->I:LrK0;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, LqK0;->D:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LqK0;->J:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, LqK0;->D:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LqK0;->J:Z

    .line 3
    iget-object v0, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 4
    iget-object v0, p0, LqK0;->P:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget v0, p0, LqK0;->B:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    const/16 v0, 0x64

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iget-object p2, p0, LqK0;->I:LrK0;

    if-eqz p2, :cond_0

    int-to-float p1, p1

    .line 3
    iget p3, p0, LjM0;->y:F

    mul-float p1, p1, p3

    .line 4
    invoke-virtual {p2, p1}, LrK0;->a(F)V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_1

    .line 2
    iput p1, p0, LjM0;->z:I

    .line 3
    invoke-virtual {p0}, LjM0;->a()V

    .line 4
    iget-object v0, p0, LqK0;->I:LrK0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
