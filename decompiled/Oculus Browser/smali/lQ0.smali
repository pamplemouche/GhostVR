.class public LlQ0;
.super Landroid/view/View;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/animation/ObjectAnimator;

.field public B:Landroid/animation/Animator;

.field public C:LjQ0;

.field public D:I

.field public E:Z

.field public final w:LkQ0;

.field public final x:Landroid/view/ViewGroup;

.field public final y:I

.field public z:Landroid/animation/ObjectAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LlQ0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LkQ0;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, LlQ0;->w:LkQ0;

    .line 3
    iput-object p3, p0, LlQ0;->x:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060140

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 6
    iput p1, p0, LlQ0;->y:I

    const/16 p1, 0x12c

    .line 7
    iput p1, p0, LlQ0;->D:I

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p1, 0x2

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, LlQ0;->setAlpha(F)V

    const/16 p1, 0x8

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget p1, p0, LlQ0;->y:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/animation/Animator;)V
    .locals 1

    .line 30
    iget-object v0, p0, LlQ0;->B:Landroid/animation/Animator;

    if-ne v0, p1, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, LlQ0;->B:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 33
    :cond_1
    iput-object p1, p0, LlQ0;->B:Landroid/animation/Animator;

    .line 34
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public final a(LjQ0;)V
    .locals 4

    .line 1
    iput-object p1, p0, LlQ0;->C:LjQ0;

    .line 2
    invoke-static {p0}, Lwc1;->a(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, LjQ0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p1, LjQ0;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, LlQ0;->y:I

    .line 8
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    if-eqz p1, :cond_5

    .line 9
    iget-object v0, p1, LjQ0;->c:Landroid/view/View;

    if-nez v0, :cond_2

    goto :goto_4

    .line 10
    :cond_2
    iget-boolean v1, p1, LjQ0;->d:Z

    .line 11
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, LlQ0;->x:Landroid/view/ViewGroup;

    if-eq v2, v3, :cond_3

    .line 12
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2

    .line 14
    :cond_3
    invoke-static {p0}, Lwc1;->a(Landroid/view/View;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, LlQ0;->x:Landroid/view/ViewGroup;

    invoke-static {v1, p0, v0}, Lwc1;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)I

    goto :goto_3

    .line 16
    :cond_4
    iget-object v1, p0, LlQ0;->x:Landroid/view/ViewGroup;

    .line 17
    invoke-static {v1, p0, v0, v2}, Lwc1;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)I

    .line 18
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, LjQ0;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 21
    iget-object p1, p1, LjQ0;->h:LC30;

    iput-boolean v2, p0, LlQ0;->E:Z

    :cond_5
    :goto_4
    return-void
.end method

.method public a(Z)V
    .locals 6

    .line 22
    iget-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    aput v1, v4, v3

    invoke-static {p0, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    .line 24
    iget v4, p0, LlQ0;->D:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    iget-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    sget-object v4, Lvd1;->h:Lvd1;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    new-instance v4, LhQ0;

    invoke-direct {v4, p0}, LhQ0;-><init>(LlQ0;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    :cond_0
    iget-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v4, v3

    aput v1, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 28
    iget-object v0, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, LlQ0;->a(Landroid/animation/Animator;)V

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, LlQ0;->A:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_1
    return-void
.end method

.method public b(LjQ0;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, LlQ0;->a(LjQ0;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, LlQ0;->C:LjQ0;

    iget-object v0, v0, LjQ0;->e:LiQ0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, LiQ0;->c(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, LlQ0;->z:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, LlQ0;->z:Landroid/animation/ObjectAnimator;

    .line 7
    iget v0, p0, LlQ0;->D:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    iget-object p1, p0, LlQ0;->z:Landroid/animation/ObjectAnimator;

    sget-object v0, Lvd1;->i:Lvd1;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    :cond_1
    iget-object p1, p0, LlQ0;->z:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, LlQ0;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LlQ0;->C:LjQ0;

    if-eqz p1, :cond_1

    iget-object p1, p1, LjQ0;->e:LiQ0;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, LiQ0;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, LlQ0;->C:LjQ0;

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, LlQ0;->C:LjQ0;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, LjQ0;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LlQ0;->w:LkQ0;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, LZL0;

    .line 4
    iget-object v0, v0, LZL0;->a:LcM0;

    .line 5
    iput p1, v0, LcM0;->J:F

    .line 6
    iget-object p1, v0, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p1}, LcM0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, LlQ0;->B:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, LlQ0;->setAlpha(F)V

    :cond_1
    return-void
.end method
