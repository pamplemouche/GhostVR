.class public Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;
.super LhR0;
.source "PG"


# instance fields
.field public N:Landroid/content/Context;

.field public O:LTx0;

.field public P:LrR0;

.field public Q:LLx0;

.field public R:Landroid/widget/ImageView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/ImageView;

.field public V:Landroid/widget/ImageView;

.field public W:Landroid/widget/ImageView;

.field public a0:Landroid/view/View;

.field public b0:Landroid/widget/ImageView;

.field public c0:Landroid/widget/TextView;

.field public d0:Z

.field public e0:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LhR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(LLx0;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->S:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->W:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iput-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 71
    iput-object p1, p0, LiR0;->A:Ljava/lang/Object;

    .line 72
    iget-object v0, p0, LiR0;->z:LrR0;

    .line 73
    iget-object v0, v0, LrR0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 74
    invoke-virtual {p0, p1}, LiR0;->setChecked(Z)V

    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a(Ljava/util/List;Ljava/lang/String;)Z

    xor-int/lit8 p1, p4, 0x1

    .line 77
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    goto :goto_2

    .line 78
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const p2, 0x7f080207

    .line 80
    iget-object p4, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    .line 81
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 82
    invoke-static {p1, p2, p4}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object v1

    const p1, 0x7f1304eb

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f08010f

    .line 84
    iget-object p4, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    .line 85
    invoke-virtual {p4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    .line 86
    invoke-static {p1, p2, p4}, LY0;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)LY0;

    move-result-object v1

    const p1, 0x7f1304ea

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 87
    :goto_1
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    iget-object p4, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    const v1, 0x7f060083

    .line 89
    invoke-static {p4, v1}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p4

    .line 90
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 92
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 93
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->c0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 94
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a0:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->c0:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    .line 98
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->h()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 18

    move-object/from16 v0, p0

    .line 4
    iget-object v1, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, LiR0;->z:LrR0;

    iget-object v2, v0, LiR0;->A:Ljava/lang/Object;

    invoke-virtual {v1, v2}, LrR0;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, LiR0;->setChecked(Z)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->h()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->g()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 9
    invoke-super/range {p0 .. p0}, LiR0;->isChecked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x2

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 10
    iget-object v1, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 11
    iget v1, v1, LTx0;->O:I

    .line 12
    iget v2, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e0:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 14
    iget v1, v1, LTx0;->O:I

    :goto_1
    if-eqz v5, :cond_5

    .line 15
    iget-object v2, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 16
    iget v2, v2, LTx0;->O:I

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f4ccccd    # 0.8f

    if-eq v1, v2, :cond_4

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v5, v1

    neg-float v1, v5

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f4ccccd    # 0.8f

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v13, 0x3f800000    # 1.0f

    .line 18
    :goto_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v9, v2

    move v10, v12

    move v11, v13

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v7, 0x64

    .line 19
    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 20
    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 21
    iget-object v9, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 22
    iget-object v2, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->S:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v4, [F

    aput v1, v10, v3

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 23
    iget-object v2, v0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->S:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v4, [F

    aput v5, v10, v3

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 24
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v3

    aput-object v2, v6, v4

    .line 25
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 26
    invoke-virtual {v5, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 27
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, LLx0;

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LiR0;->z:LrR0;

    invoke-virtual {v0, p1}, LrR0;->b(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 28
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 29
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->S:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance p2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v1, 0x0

    .line 31
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 32
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0xfa

    .line 34
    invoke-virtual {p2, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 36
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 38
    :goto_2
    invoke-super {p0}, LiR0;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 39
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 40
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 41
    iget p2, p2, LTx0;->O:I

    .line 42
    iget v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e0:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 43
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 45
    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 46
    iget p2, p2, LTx0;->O:I

    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e0:I

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr p2, v1

    .line 48
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 49
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_3

    .line 53
    :cond_3
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 54
    iget p2, p2, LTx0;->O:I

    .line 55
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 56
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 57
    iget p2, p2, LTx0;->O:I

    .line 58
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    :goto_3
    iget-boolean p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    .line 60
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    .line 61
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->h()V

    return p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, v1, v2}, LTx0;->a(I[Landroid/net/Uri;I)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    const/4 v2, 0x2

    .line 7
    invoke-virtual {v0, v2, v1, v2}, LTx0;->a(I[Landroid/net/Uri;I)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0, p0}, LiR0;->onLongClick(Landroid/view/View;)Z

    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 2
    iget v0, v0, LLx0;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 2
    iget v0, v0, LLx0;->y:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 2
    iget v0, v0, LLx0;->y:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    invoke-super {p0}, LiR0;->isChecked()Z

    move-result v2

    .line 3
    iget-object v3, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->P:LrR0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, LrR0;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->N:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-nez v0, :cond_1

    const v6, 0x7f060149

    goto :goto_1

    :cond_1
    const v6, 0x7f060147

    .line 6
    iget-object v7, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->c0:Landroid/widget/TextView;

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7
    iget-object v7, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    xor-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    xor-int/lit8 v7, v3, 0x1

    .line 8
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 9
    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 10
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 11
    iget-object v5, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->V:Landroid/widget/ImageView;

    const/16 v6, 0x8

    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 12
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    .line 13
    iget-boolean v0, v0, LTx0;->A:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 14
    :goto_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->W:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->U:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->T:Landroid/widget/ImageView;

    .line 17
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->d0:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 18
    iget v1, v1, LLx0;->y:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    goto :goto_6

    :cond_6
    const/16 v4, 0x8

    .line 19
    :goto_6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->T:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 3
    iget-object v0, v0, LLx0;->w:Landroid/net/Uri;

    const v1, 0x7f0b0355

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b00d0

    .line 5
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v1, LPx0;

    iget-object v3, p1, LTx0;->y:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {v1, p1, v3, v2}, LPx0;-><init>(LTx0;Landroid/content/Context;Z)V

    iput-object v1, p1, LTx0;->U:Landroid/widget/MediaController;

    .line 7
    iget-object v3, p1, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {v3, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 8
    iget-object v1, p1, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 9
    iget-object v1, p1, LTx0;->T:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 10
    iget-object v0, p1, LTx0;->T:Landroid/widget/VideoView;

    new-instance v1, LNx0;

    invoke-direct {v1, p1}, LNx0;-><init>(LTx0;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0, p1}, LiR0;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, LhR0;->onFinishInflate()V

    const v0, 0x7f0b0060

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->R:Landroid/widget/ImageView;

    const v0, 0x7f0b0395

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->U:Landroid/widget/ImageView;

    const v0, 0x7f0b03ca

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->V:Landroid/widget/ImageView;

    const v0, 0x7f0b04cc

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->W:Landroid/widget/ImageView;

    const v0, 0x7f0b041a

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->a0:Landroid/view/View;

    const v0, 0x7f0b041b

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->b0:Landroid/widget/ImageView;

    const v0, 0x7f0b041c

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->c0:Landroid/widget/TextView;

    const v0, 0x7f0b04ea

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->S:Landroid/widget/TextView;

    const v0, 0x7f0b0354

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->T:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 4
    invoke-virtual {p0}, LiR0;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    .line 6
    iget-object v2, v2, LLx0;->w:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v0

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->Q:LLx0;

    if-eqz v0, :cond_2

    .line 10
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v0, LLx0;->x:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 13
    throw p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/chromium/ui/widget/OptimizedFrameLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->O:LTx0;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p1, LTx0;->O:I

    .line 4
    invoke-virtual {p0, p1, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, LiR0;->setChecked(Z)V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;->h()V

    return-void
.end method
