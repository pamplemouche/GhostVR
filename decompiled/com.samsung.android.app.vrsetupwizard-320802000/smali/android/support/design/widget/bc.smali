.class Landroid/support/design/widget/bc;
.super Landroid/support/design/widget/at;


# instance fields
.field private p:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/cf;Landroid/support/design/widget/bi;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/at;-><init>(Landroid/support/design/widget/cf;Landroid/support/design/widget/bi;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v0}, Landroid/support/design/widget/cf;->getElevation()F

    move-result v0

    return v0
.end method

.method a(FF)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x0

    const/16 v5, 0x15

    if-ne v3, v5, :cond_3

    iget-object v3, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v3}, Landroid/support/design/widget/cf;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/cf;->setElevation(F)V

    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1}, Landroid/support/design/widget/cf;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1}, Landroid/support/design/widget/cf;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/cf;->setTranslationZ(F)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/cf;->setElevation(F)V

    :cond_2
    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/cf;->setTranslationZ(F)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/animation/StateListAnimator;

    invoke-direct {v3}, Landroid/animation/StateListAnimator;-><init>()V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    const/4 v7, 0x1

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const-string v10, "elevation"

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v11, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v8, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    sget-object v13, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v14, v7, [F

    aput v2, v14, v9

    invoke-static {v8, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v13, 0x64

    invoke-virtual {v8, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v6, Landroid/support/design/widget/bc;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v6, Landroid/support/design/widget/bc;->j:[I

    invoke-virtual {v3, v6, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v6, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    new-array v8, v7, [F

    aput v1, v8, v9

    invoke-static {v6, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    iget-object v8, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    sget-object v15, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v7, [F

    aput v2, v4, v9

    invoke-static {v8, v15, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/support/design/widget/bc;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/support/design/widget/bc;->k:[I

    invoke-virtual {v3, v2, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    new-array v6, v7, [F

    aput v1, v6, v9

    invoke-static {v5, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v1, v5, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-gt v1, v5, :cond_4

    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v7, [F

    iget-object v8, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v8}, Landroid/support/design/widget/cf;->getTranslationZ()F

    move-result v8

    aput v8, v6, v9

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v6, v7, [F

    const/4 v8, 0x0

    aput v8, v6, v9

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v9, [Landroid/animation/ObjectAnimator;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object v1, Landroid/support/design/widget/bc;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Landroid/support/design/widget/bc;->l:[I

    invoke-virtual {v3, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v9

    invoke-static {v2, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v4, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    sget-object v6, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v7, v7, [F

    aput v5, v7, v9

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/support/design/widget/bc;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Landroid/support/design/widget/bc;->m:[I

    invoke-virtual {v3, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object v1, v0, Landroid/support/design/widget/bc;->n:Landroid/support/design/widget/cf;

    invoke-virtual {v1, v3}, Landroid/support/design/widget/cf;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :goto_0
    iget-object v1, v0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    invoke-interface {v1}, Landroid/support/design/widget/bi;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/bc;->e()V

    :cond_5
    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bc;->e:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bc;->e:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/at;->a(I)V

    :goto_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    invoke-interface {v0}, Landroid/support/design/widget/bi;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    invoke-interface {v0}, Landroid/support/design/widget/bi;->a()F

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/bc;->a()F

    move-result v2

    iget v3, p0, Landroid/support/design/widget/bc;->i:F

    add-float/2addr v2, v3

    invoke-static {v2, v0, v1}, Landroid/support/design/widget/bh;->b(FFZ)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v2, v0, v1}, Landroid/support/design/widget/bh;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v3, v0, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method a([I)V
    .locals 0

    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    invoke-interface {v0}, Landroid/support/design/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Landroid/support/design/widget/bc;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/bc;->p:Landroid/graphics/drawable/InsetDrawable;

    iget-object p1, p0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    iget-object v0, p0, Landroid/support/design/widget/bc;->p:Landroid/graphics/drawable/InsetDrawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/design/widget/bc;->o:Landroid/support/design/widget/bi;

    iget-object v0, p0, Landroid/support/design/widget/bc;->e:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-interface {p1, v0}, Landroid/support/design/widget/bi;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method d()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/widget/bc;->e()V

    return-void
.end method

.method h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
