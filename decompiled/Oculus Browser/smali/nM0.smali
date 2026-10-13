.class public LnM0;
.super LiM0;
.source "PG"


# instance fields
.field public final A:F

.field public B:F

.field public C:F

.field public D:I

.field public final w:Landroid/app/Activity;

.field public final x:Landroid/view/View;

.field public final y:F

.field public final z:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;IFFFLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LiM0;-><init>(Landroid/app/Activity;I)V

    .line 2
    iput-object p1, p0, LnM0;->w:Landroid/app/Activity;

    .line 3
    iput p3, p0, LnM0;->y:F

    .line 4
    iput p4, p0, LnM0;->z:F

    .line 5
    iput p5, p0, LnM0;->A:F

    .line 6
    iput-object p6, p0, LnM0;->x:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(LnM0;)V
    .locals 0

    .line 1
    invoke-super {p0}, LiM0;->dismiss()V

    return-void
.end method


# virtual methods
.method public a(ZFF)Landroid/view/animation/Animation;
    .locals 11

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 2
    :goto_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move v3, v5

    move v4, v6

    move v8, p2

    move v10, p3

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    if-eqz p1, :cond_2

    const-wide/16 p1, 0xfa

    goto :goto_2

    :cond_2
    const-wide/16 p1, 0x96

    .line 3
    :goto_2
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 4
    sget-object p1, LNM0;->e:Ld8;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, LnM0;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2
    iget v1, p0, LnM0;->C:F

    iget v2, p0, LnM0;->D:I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    add-float/2addr v1, v0

    .line 3
    iget v0, p0, LnM0;->B:F

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2, v0, v1}, LnM0;->a(ZFF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 5
    new-instance v1, LmM0;

    invoke-direct {v1, p0}, LmM0;-><init>(LnM0;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    iget-object v1, p0, LnM0;->x:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, LnM0;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 4
    iget-object v0, p0, LnM0;->x:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, LnM0;->x:Landroid/view/View;

    new-instance v1, LlM0;

    invoke-direct {v1, p0}, LlM0;-><init>(LnM0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
