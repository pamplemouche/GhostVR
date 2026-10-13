.class public LK;
.super Lpe;
.source "PG"


# instance fields
.field public A:Landroid/graphics/PorterDuff$Mode;

.field public B:Landroid/content/res/ColorStateList;

.field public C:Landroid/graphics/drawable/Drawable;

.field public D:I

.field public E:I

.field public F:I

.field public final y:LM;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f04017a

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-direct {v0, v2, v3, v1}, Lpe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object v4, LeS;->j0:[I

    const/4 v1, 0x0

    new-array v7, v1, [I

    const v6, 0x7f1402ff

    const v5, 0x7f04017a

    .line 3
    invoke-static/range {v2 .. v7}, LP;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x9

    .line 4
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, LK;->z:I

    const/4 v3, -0x1

    const/16 v4, 0xc

    .line 5
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 6
    invoke-static {v4, v5}, LQ;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, v0, LK;->A:Landroid/graphics/PorterDuff$Mode;

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0xb

    .line 8
    invoke-static {v4, v2, v5}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, LK;->B:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v4, v2, v5}, LS;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, LK;->C:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    const/16 v5, 0x8

    .line 10
    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v0, LK;->F:I

    const/16 v5, 0xa

    .line 11
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, LK;->D:I

    .line 12
    new-instance v5, LM;

    invoke-direct {v5, v0}, LM;-><init>(LK;)V

    iput-object v5, v0, LK;->y:LM;

    .line 13
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, LM;->b:I

    .line 14
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, LM;->c:I

    const/4 v6, 0x2

    .line 15
    invoke-virtual {v2, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v5, LM;->d:I

    const/4 v7, 0x3

    .line 16
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, v5, LM;->e:I

    const/4 v7, 0x6

    .line 17
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, LM;->f:I

    const/16 v7, 0xf

    .line 18
    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v5, LM;->g:I

    const/4 v7, 0x5

    .line 19
    invoke-virtual {v2, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 20
    invoke-static {v7, v8}, LQ;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iput-object v7, v5, LM;->h:Landroid/graphics/PorterDuff$Mode;

    .line 21
    iget-object v7, v5, LM;->a:LK;

    .line 22
    invoke-virtual {v7}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x4

    .line 23
    invoke-static {v7, v2, v8}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v5, LM;->i:Landroid/content/res/ColorStateList;

    .line 24
    iget-object v7, v5, LM;->a:LK;

    .line 25
    invoke-virtual {v7}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xe

    .line 26
    invoke-static {v7, v2, v8}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v5, LM;->j:Landroid/content/res/ColorStateList;

    .line 27
    iget-object v7, v5, LM;->a:LK;

    .line 28
    invoke-virtual {v7}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xd

    .line 29
    invoke-static {v7, v2, v8}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, v5, LM;->k:Landroid/content/res/ColorStateList;

    .line 30
    iget-object v7, v5, LM;->l:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v7, v5, LM;->l:Landroid/graphics/Paint;

    iget v8, v5, LM;->g:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v7, v5, LM;->l:Landroid/graphics/Paint;

    iget-object v8, v5, LM;->j:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_0

    iget-object v9, v5, LM;->a:LK;

    .line 33
    invoke-virtual {v9}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 34
    :goto_0
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v7, v5, LM;->a:LK;

    invoke-static {v7}, LA7;->m(Landroid/view/View;)I

    move-result v7

    .line 36
    iget-object v8, v5, LM;->a:LK;

    invoke-virtual {v8}, Landroid/widget/Button;->getPaddingTop()I

    move-result v8

    .line 37
    iget-object v9, v5, LM;->a:LK;

    .line 38
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    .line 39
    iget-object v10, v5, LM;->a:LK;

    invoke-virtual {v10}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v10

    .line 40
    iget-object v11, v5, LM;->a:LK;

    .line 41
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v12, v5, LM;->o:Landroid/graphics/drawable/GradientDrawable;

    .line 42
    iget v13, v5, LM;->f:I

    int-to-float v13, v13

    const v14, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43
    iget-object v12, v5, LM;->o:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44
    invoke-virtual {v5}, LM;->a()V

    .line 45
    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v12, v5, LM;->p:Landroid/graphics/drawable/GradientDrawable;

    .line 46
    iget v13, v5, LM;->f:I

    int-to-float v13, v13

    add-float/2addr v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 47
    iget-object v12, v5, LM;->p:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    iget-object v12, v5, LM;->p:Landroid/graphics/drawable/GradientDrawable;

    iget v13, v5, LM;->g:I

    iget-object v15, v5, LM;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v12, v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    .line 49
    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    iget-object v13, v5, LM;->o:Landroid/graphics/drawable/GradientDrawable;

    aput-object v13, v6, v1

    iget-object v1, v5, LM;->p:Landroid/graphics/drawable/GradientDrawable;

    aput-object v1, v6, v4

    invoke-direct {v12, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget v4, v5, LM;->b:I

    iget v6, v5, LM;->d:I

    iget v13, v5, LM;->c:I

    iget v15, v5, LM;->e:I

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v13

    move/from16 v21, v15

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 51
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v4, v5, LM;->q:Landroid/graphics/drawable/GradientDrawable;

    .line 52
    iget v6, v5, LM;->f:I

    int-to-float v6, v6

    add-float/2addr v6, v14

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 53
    iget-object v4, v5, LM;->q:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 54
    new-instance v3, LL;

    iget-object v4, v5, LM;->k:Landroid/content/res/ColorStateList;

    .line 55
    invoke-static {v4}, LT;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    iget-object v6, v5, LM;->q:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3, v4, v1, v6}, LL;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v11, v3}, LK;->a(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v1, v5, LM;->a:LK;

    iget v3, v5, LM;->b:I

    add-int/2addr v7, v3

    iget v3, v5, LM;->d:I

    add-int/2addr v8, v3

    iget v3, v5, LM;->c:I

    add-int/2addr v9, v3

    iget v3, v5, LM;->e:I

    add-int/2addr v10, v3

    .line 58
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    iget v1, v0, LK;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 61
    invoke-virtual/range {p0 .. p0}, LK;->d()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/res/ColorStateList;
    .locals 1

    .line 9
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, LK;->y:LM;

    .line 11
    iget-object v0, v0, LM;->i:Landroid/content/res/ColorStateList;

    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lpe;->w:Loe;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Loe;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LK;->y:LM;

    .line 3
    iget-object v1, v0, LM;->i:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    .line 4
    iput-object p1, v0, LM;->i:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {v0}, LM;->a()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, LK;->y:LM;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lpe;->w:Loe;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Loe;->b(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 14
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, LK;->y:LM;

    .line 16
    iget-object v1, v0, LM;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    .line 17
    iput-object p1, v0, LM;->h:Landroid/graphics/PorterDuff$Mode;

    .line 18
    invoke-virtual {v0}, LM;->a()V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, LK;->y:LM;

    if-eqz v0, :cond_1

    .line 20
    iget-object v0, p0, Lpe;->w:Loe;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, p1}, Loe;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lpe;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LK;->y:LM;

    .line 3
    iget-object v0, v0, LM;->h:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lpe;->w:Loe;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Loe;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, LK;->y:LM;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, LM;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v1, p0, LK;->B:Landroid/content/res/ColorStateList;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v0, p0, LK;->A:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    :cond_0
    iget v0, p0, LK;->D:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 9
    :goto_0
    iget v1, p0, LK;->D:I

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 10
    :goto_1
    iget-object v2, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    iget v3, p0, LK;->E:I

    const/4 v4, 0x0

    add-int/2addr v0, v3

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    :cond_3
    iget-object v0, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, LK;->a()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    invoke-virtual {p0}, LK;->b()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lpe;->onLayout(ZIIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 2
    iget-object p1, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget p1, p0, LK;->F:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 5
    iget v0, p0, LK;->D:I

    if-nez v0, :cond_1

    iget-object v0, p0, LK;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, p1

    .line 7
    invoke-static {p0}, LA7;->l(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    iget p1, p0, LK;->z:I

    sub-int/2addr v1, p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    sub-int/2addr v1, p1

    .line 9
    div-int/2addr v1, p2

    .line 10
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    neg-int v1, v1

    .line 11
    :cond_3
    iget p1, p0, LK;->E:I

    if-eq p1, v1, :cond_4

    .line 12
    iput v1, p0, LK;->E:I

    .line 13
    invoke-virtual {p0}, LK;->d()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LK;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LK;->y:LM;

    .line 3
    iget-object v0, v0, LM;->o:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, LK;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "Setting a custom background is not supported."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, LK;->y:LM;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, LM;->r:Z

    .line 6
    iget-object v1, v0, LM;->a:LK;

    iget-object v2, v0, LM;->i:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, LK;->a(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v1, v0, LM;->a:LK;

    iget-object v0, v0, LM;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0}, LK;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 8
    invoke-super {p0, p1}, Lpe;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-super {p0, p1}, Lpe;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, LK;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LK;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LK;->a(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
