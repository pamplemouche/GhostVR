.class public LnK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LqK0;


# direct methods
.method public constructor <init>(LqK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnK0;->w:LqK0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LnK0;->w:LqK0;

    .line 2
    iget-boolean v1, v0, LqK0;->A:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, LqK0;->C:LpK0;

    .line 4
    iget v2, v0, LjM0;->y:F

    .line 5
    check-cast v1, LLJ0;

    .line 6
    iput v2, v1, LLJ0;->a:F

    const/4 v2, 0x0

    .line 7
    iput v2, v1, LLJ0;->b:F

    .line 8
    iget-object v0, v0, LqK0;->P:Landroid/animation/TimeAnimator;

    .line 9
    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 10
    iget-object v0, p0, LnK0;->w:LqK0;

    .line 11
    iget-object v1, v0, LqK0;->I:LrK0;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, LnK0;->w:LqK0;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 13
    iget-object v1, p0, LnK0;->w:LqK0;

    .line 14
    iget-object v3, v1, LqK0;->I:LrK0;

    .line 15
    iget v1, v1, LjM0;->y:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    .line 16
    invoke-virtual {v3, v1}, LrK0;->a(F)V

    .line 17
    iget-object v0, p0, LnK0;->w:LqK0;

    .line 18
    iget-object v0, v0, LqK0;->I:LrK0;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v0, LrK0;->z:Z

    .line 20
    iget-object v1, v0, LrK0;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-virtual {v0}, LrK0;->a()V

    .line 22
    iget-object v1, v0, LrK0;->y:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 25
    iget-object v1, v0, LrK0;->y:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 26
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lvd1;->i:Lvd1;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    return-void
.end method
