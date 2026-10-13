.class public Landroid/support/v7/view/menu/ActionMenuItemView;
.super LSe;
.source "PG"

# interfaces
.implements LGd;
.implements Landroid/view/View$OnClickListener;
.implements Lfe;


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:Lpd;

.field public D:Lyf;

.field public E:Lbd;

.field public F:Z

.field public G:I

.field public H:I

.field public I:I

.field public z:Ltd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->g()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->F:Z

    .line 4
    sget-object v2, LeS;->d:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->G:I

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42000000    # 32.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 8
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->I:I

    .line 9
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->H:I

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSaveEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(Ltd;I)V
    .locals 5

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 2
    invoke-virtual {p1}, Ltd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 3
    iput-object p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->B:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 6
    iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->I:I

    if-le v1, v3, :cond_0

    int-to-float v4, v3

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v1, v2

    mul-float v1, v1, v4

    float-to-int v2, v1

    move v1, v3

    .line 7
    :cond_0
    iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->I:I

    if-le v2, v3, :cond_1

    int-to-float v4, v3

    int-to-float v2, v2

    div-float/2addr v4, v2

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    move v2, v3

    .line 8
    :cond_1
    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->h()V

    .line 11
    invoke-interface {p0}, LGd;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p1}, Ltd;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_3
    iget-object p2, p1, Ltd;->A:Ljava/lang/CharSequence;

    .line 14
    :goto_0
    iput-object p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->A:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->h()V

    .line 16
    iget p2, p1, Ltd;->w:I

    .line 17
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setId(I)V

    .line 18
    invoke-virtual {p1}, Ltd;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Ltd;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    invoke-virtual {p1}, Ltd;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->D:Lyf;

    if-nez p1, :cond_5

    .line 22
    new-instance p1, Lad;

    invoke-direct {p1, p0}, Lad;-><init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->D:Lyf;

    :cond_5
    return-void
.end method

.method public a()Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ltd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    invoke-virtual {v0}, Ltd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LSe;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_0

    if-ge v2, v3, :cond_2

    .line 4
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->A:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->B:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 3
    iget v2, v2, Ltd;->U:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-boolean v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->F:Z

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->A:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 7
    iget-object v2, v2, Ltd;->M:Ljava/lang/CharSequence;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    move-object v2, v1

    goto :goto_2

    .line 9
    :cond_4
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 10
    iget-object v2, v2, Ltd;->A:Ljava/lang/CharSequence;

    .line 11
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 12
    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    :goto_3
    iget-object v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 14
    iget-object v2, v2, Ltd;->N:Ljava/lang/CharSequence;

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    .line 17
    iget-object v1, v0, Ltd;->A:Ljava/lang/CharSequence;

    .line 18
    :goto_4
    invoke-static {p0, v1}, LYh;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 19
    :cond_7
    invoke-static {p0, v2}, LYh;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->C:Lpd;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    invoke-interface {p1, v0}, Lpd;->a(Ltd;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->g()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->F:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->h()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->H:I

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 5
    invoke-super {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, LSe;->onMeasure(II)V

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 10
    iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->G:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->G:I

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v3, :cond_2

    .line 11
    iget v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->G:I

    if-lez v1, :cond_2

    if-ge v2, p1, :cond_2

    .line 12
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, LSe;->onMeasure(II)V

    :cond_2
    if-nez v0, :cond_3

    .line 13
    iget-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->B:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    .line 15
    iget-object p2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    .line 16
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-super {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    invoke-virtual {v0}, Ltd;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->D:Lyf;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lyf;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->H:I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method
