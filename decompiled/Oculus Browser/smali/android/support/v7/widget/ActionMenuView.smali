.class public Landroid/support/v7/widget/ActionMenuView;
.super Lbg;
.source "PG"

# interfaces
.implements Lpd;
.implements LHd;


# instance fields
.field public L:Lqd;

.field public M:Landroid/content/Context;

.field public N:I

.field public O:Z

.field public P:Lee;

.field public Q:LEd;

.field public R:Lod;

.field public S:Z

.field public T:I

.field public U:I

.field public V:I

.field public W:Lje;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lbg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-boolean v0, p0, Lbg;->w:Z

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    .line 4
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->U:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 5
    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->V:I

    .line 6
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->M:Landroid/content/Context;

    .line 7
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->N:I

    return-void
.end method

.method public static b(Landroid/view/View;IIII)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lhe;

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 4
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 5
    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    .line 7
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 10
    div-int v4, p2, p1

    .line 11
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 12
    :goto_2
    iget-boolean p2, v0, Lhe;->c:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 13
    :goto_3
    iput-boolean v1, v0, Lhe;->f:Z

    .line 14
    iput v3, v0, Lhe;->d:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 15
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method


# virtual methods
.method public a(Lqd;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    return-void
.end method

.method public a(Ltd;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lqd;->a(Landroid/view/MenuItem;LFd;I)Z

    move-result p1

    return p1
.end method

.method public b(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 16
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 17
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Lfe;

    if-eqz v3, :cond_1

    .line 19
    check-cast v1, Lfe;

    invoke-interface {v1}, Lfe;->a()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-lez p1, :cond_2

    .line 20
    instance-of p1, v2, Lfe;

    if-eqz p1, :cond_2

    .line 21
    check-cast v2, Lfe;

    invoke-interface {v2}, Lfe;->d()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->N:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->N:I

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->M:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->M:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lhe;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, Lqd;

    invoke-direct {v1, v0}, Lqd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    .line 4
    new-instance v2, Lie;

    invoke-direct {v2, p0}, Lie;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    .line 5
    iput-object v2, v1, Lqd;->A:Lod;

    .line 6
    new-instance v1, Lee;

    invoke-direct {v1, v0}, Lee;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, Lee;->H:Z

    .line 8
    iput-boolean v0, v1, Lee;->I:Z

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->Q:LEd;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lge;

    invoke-direct {v0}, Lge;-><init>()V

    .line 10
    :goto_0
    iput-object v0, v1, Lcd;->A:LEd;

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->M:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lqd;->a(LFd;Landroid/content/Context;)V

    .line 12
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    .line 13
    iput-object p0, v0, Lcd;->D:LHd;

    .line 14
    iget-object v0, v0, Lcd;->y:Lqd;

    .line 15
    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    .line 16
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Lag;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lhe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lhe;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Lhe;
    .locals 2

    .line 3
    new-instance v0, Lhe;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lhe;-><init>(II)V

    const/16 v1, 0x10

    .line 4
    iput v1, v0, Lag;->b:I

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lag;
    .locals 2

    .line 3
    new-instance v0, Lhe;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lag;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lhe;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Lhe;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lhe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lhe;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lhe;
    .locals 1

    if-eqz p1, :cond_2

    .line 5
    instance-of v0, p1, Lhe;

    if-eqz v0, :cond_0

    new-instance v0, Lhe;

    check-cast p1, Lhe;

    invoke-direct {v0, p1}, Lhe;-><init>(Lhe;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lhe;

    invoke-direct {v0, p1}, Lhe;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :goto_0
    iget p1, v0, Lag;->b:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 7
    iput p1, v0, Lag;->b:I

    :cond_1
    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lhe;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lee;->a(Z)V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    invoke-virtual {p1}, Lee;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    invoke-virtual {p1}, Lee;->b()Z

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    invoke-virtual {p1}, Lee;->f()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lee;->a()Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->S:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Lbg;->onLayout(ZIIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 4
    div-int/lit8 v2, v2, 0x2

    .line 5
    iget v3, v0, Lbg;->H:I

    sub-int v4, p4, p2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-static/range {p0 .. p0}, Lki;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_5

    .line 8
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lhe;

    .line 11
    iget-boolean v14, v11, Lhe;->c:Z

    if-eqz v14, :cond_4

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 13
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->b(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v8, v3

    .line 14
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 17
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 18
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    const/4 v8, 0x1

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 20
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->b(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v8, :cond_6

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 24
    div-int/lit8 v4, v4, 0x2

    .line 25
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    .line 26
    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    .line 27
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_7

    .line 28
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_4
    if-ge v3, v1, :cond_d

    .line 30
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 31
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lhe;

    .line 32
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v7, Lhe;->c:Z

    if-eqz v8, :cond_8

    goto :goto_5

    .line 33
    :cond_8
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 34
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 35
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 36
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 37
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 38
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    :goto_6
    if-ge v3, v1, :cond_d

    .line 40
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lhe;

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v7, Lhe;->c:Z

    if-eqz v8, :cond_b

    goto :goto_7

    .line 43
    :cond_b
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 44
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 46
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 47
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 48
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v8, v5

    move v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public onMeasure(II)V
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->S:Z

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->S:Z

    if-eq v1, v2, :cond_1

    .line 3
    iput v4, v0, Landroid/support/v7/widget/ActionMenuView;->T:I

    .line 4
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 5
    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->S:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    if-eqz v2, :cond_2

    iget v6, v0, Landroid/support/v7/widget/ActionMenuView;->T:I

    if-eq v1, v6, :cond_2

    .line 6
    iput v1, v0, Landroid/support/v7/widget/ActionMenuView;->T:I

    .line 7
    invoke-virtual {v2, v5}, Lqd;->b(Z)V

    .line 8
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9
    iget-boolean v2, v0, Landroid/support/v7/widget/ActionMenuView;->S:Z

    if-eqz v2, :cond_27

    if-lez v1, :cond_27

    .line 10
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 12
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v7

    const/4 v7, -0x2

    move/from16 v10, p2

    .line 15
    invoke-static {v10, v9, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    sub-int/2addr v2, v8

    .line 16
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->U:I

    div-int v10, v2, v8

    .line 17
    rem-int v11, v2, v8

    if-nez v10, :cond_3

    .line 18
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto/16 :goto_17

    .line 19
    :cond_3
    div-int/2addr v11, v10

    add-int/2addr v11, v8

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move/from16 v16, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    :goto_1
    if-ge v10, v8, :cond_b

    .line 21
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 22
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_4

    move/from16 v20, v6

    goto :goto_5

    .line 23
    :cond_4
    instance-of v4, v13, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v15, v15, 0x1

    if-eqz v4, :cond_5

    .line 24
    iget v5, v0, Landroid/support/v7/widget/ActionMenuView;->V:I

    move/from16 v20, v6

    const/4 v6, 0x0

    invoke-virtual {v13, v5, v6, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    move/from16 v20, v6

    const/4 v6, 0x0

    .line 25
    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lhe;

    .line 26
    iput-boolean v6, v5, Lhe;->h:Z

    .line 27
    iput v6, v5, Lhe;->e:I

    .line 28
    iput v6, v5, Lhe;->d:I

    .line 29
    iput-boolean v6, v5, Lhe;->f:Z

    .line 30
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 31
    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v4, :cond_6

    .line 32
    move-object v4, v13

    check-cast v4, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/ActionMenuItemView;->f()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v5, Lhe;->g:Z

    .line 33
    iget-boolean v4, v5, Lhe;->c:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    move/from16 v4, v16

    .line 34
    :goto_4
    invoke-static {v13, v11, v4, v7, v9}, Landroid/support/v7/widget/ActionMenuView;->b(Landroid/view/View;IIII)I

    move-result v4

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 36
    iget-boolean v6, v5, Lhe;->f:Z

    if-eqz v6, :cond_8

    add-int/lit8 v17, v17, 0x1

    .line 37
    :cond_8
    iget-boolean v5, v5, Lhe;->c:Z

    if-eqz v5, :cond_9

    const/4 v14, 0x1

    :cond_9
    sub-int v16, v16, v4

    .line 38
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    shl-int v4, v6, v10

    int-to-long v12, v4

    or-long v18, v18, v12

    :cond_a
    move v12, v5

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v20

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    move/from16 v20, v6

    const/4 v4, 0x2

    if-eqz v14, :cond_c

    if-ne v15, v4, :cond_c

    const/4 v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    move/from16 v6, v16

    const/4 v9, 0x0

    :goto_7
    const-wide/16 v21, 0x1

    if-lez v17, :cond_16

    if-lez v6, :cond_16

    const v10, 0x7fffffff

    const v4, 0x7fffffff

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v23, 0x0

    :goto_8
    if-ge v10, v8, :cond_10

    .line 39
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 40
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v26, v9

    move-object/from16 v9, v25

    check-cast v9, Lhe;

    move/from16 v25, v12

    .line 41
    iget-boolean v12, v9, Lhe;->f:Z

    if-nez v12, :cond_d

    goto :goto_9

    .line 42
    :cond_d
    iget v9, v9, Lhe;->d:I

    if-ge v9, v4, :cond_e

    shl-long v12, v21, v10

    move v4, v9

    move-wide/from16 v23, v12

    const/4 v13, 0x1

    goto :goto_9

    :cond_e
    if-ne v9, v4, :cond_f

    shl-long v27, v21, v10

    or-long v23, v23, v27

    add-int/lit8 v13, v13, 0x1

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v25

    move/from16 v9, v26

    goto :goto_8

    :cond_10
    move/from16 v26, v9

    move/from16 v25, v12

    or-long v18, v18, v23

    if-le v13, v6, :cond_11

    move v13, v1

    move/from16 v27, v2

    goto/16 :goto_d

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move v9, v6

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v8, :cond_15

    .line 43
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lhe;

    move/from16 v27, v2

    const/4 v13, 0x1

    shl-int v2, v13, v6

    move v13, v1

    int-to-long v1, v2

    and-long v21, v23, v1

    const-wide/16 v28, 0x0

    cmp-long v26, v21, v28

    if-nez v26, :cond_13

    .line 45
    iget v10, v12, Lhe;->d:I

    if-ne v10, v4, :cond_12

    or-long v18, v18, v1

    :cond_12
    move/from16 v21, v4

    goto :goto_c

    :cond_13
    if-eqz v5, :cond_14

    .line 46
    iget-boolean v1, v12, Lhe;->g:Z

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    if-ne v9, v1, :cond_14

    .line 47
    iget v2, v0, Landroid/support/v7/widget/ActionMenuView;->V:I

    add-int v1, v2, v11

    move/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_14
    move/from16 v21, v4

    .line 48
    :goto_b
    iget v1, v12, Lhe;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v12, Lhe;->d:I

    .line 49
    iput-boolean v2, v12, Lhe;->h:Z

    add-int/lit8 v9, v9, -0x1

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move v1, v13

    move/from16 v4, v21

    move/from16 v2, v27

    goto :goto_a

    :cond_15
    move v6, v9

    move/from16 v12, v25

    const/4 v4, 0x2

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_16
    move v13, v1

    move/from16 v27, v2

    move/from16 v26, v9

    move/from16 v25, v12

    :goto_d
    const/4 v1, 0x1

    if-nez v14, :cond_17

    if-ne v15, v1, :cond_17

    const/4 v2, 0x1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_e
    if-lez v6, :cond_23

    const-wide/16 v4, 0x0

    cmp-long v9, v18, v4

    if-eqz v9, :cond_23

    sub-int/2addr v15, v1

    if-lt v6, v15, :cond_18

    if-nez v2, :cond_18

    if-le v3, v1, :cond_23

    .line 50
    :cond_18
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1a

    and-long v2, v18, v21

    const/high16 v4, 0x3f000000    # 0.5f

    const-wide/16 v9, 0x0

    cmp-long v5, v2, v9

    if-eqz v5, :cond_19

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lhe;

    .line 52
    iget-boolean v2, v2, Lhe;->g:Z

    if-nez v2, :cond_19

    sub-float/2addr v1, v4

    :cond_19
    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x1

    shl-int v5, v3, v2

    int-to-long v9, v5

    and-long v9, v18, v9

    const-wide/16 v14, 0x0

    cmp-long v3, v9, v14

    if-eqz v3, :cond_1a

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lhe;

    .line 54
    iget-boolean v2, v2, Lhe;->g:Z

    if-nez v2, :cond_1a

    sub-float/2addr v1, v4

    :cond_1a
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1b

    mul-int v6, v6, v11

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v4, v2

    goto :goto_f

    :cond_1b
    const/4 v4, 0x0

    :goto_f
    move/from16 v5, v26

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v8, :cond_22

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v18, v2

    const-wide/16 v9, 0x0

    cmp-long v6, v2, v9

    if-nez v6, :cond_1c

    const/4 v6, 0x1

    const/4 v12, 0x2

    goto :goto_12

    .line 55
    :cond_1c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lhe;

    .line 57
    instance-of v2, v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_1e

    .line 58
    iput v4, v3, Lhe;->e:I

    const/4 v2, 0x1

    .line 59
    iput-boolean v2, v3, Lhe;->h:Z

    if-nez v1, :cond_1d

    .line 60
    iget-boolean v2, v3, Lhe;->g:Z

    if-nez v2, :cond_1d

    neg-int v2, v4

    const/4 v5, 0x2

    .line 61
    div-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1d
    const/4 v6, 0x1

    const/4 v12, 0x2

    goto :goto_11

    .line 62
    :cond_1e
    iget-boolean v2, v3, Lhe;->c:Z

    if-eqz v2, :cond_1f

    .line 63
    iput v4, v3, Lhe;->e:I

    const/4 v6, 0x1

    .line 64
    iput-boolean v6, v3, Lhe;->h:Z

    neg-int v2, v4

    const/4 v12, 0x2

    .line 65
    div-int/2addr v2, v12

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_11
    const/4 v5, 0x1

    goto :goto_12

    :cond_1f
    const/4 v6, 0x1

    const/4 v12, 0x2

    if-eqz v1, :cond_20

    .line 66
    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_20
    add-int/lit8 v2, v8, -0x1

    if-eq v1, v2, :cond_21

    .line 67
    div-int/lit8 v2, v4, 0x2

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_21
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_22
    move/from16 v26, v5

    :cond_23
    if-eqz v26, :cond_25

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v8, :cond_25

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lhe;

    .line 70
    iget-boolean v4, v3, Lhe;->h:Z

    if-nez v4, :cond_24

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_14

    .line 71
    :cond_24
    iget v4, v3, Lhe;->d:I

    mul-int v4, v4, v11

    iget v3, v3, Lhe;->e:I

    add-int/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 72
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/view/View;->measure(II)V

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    const/high16 v3, 0x40000000    # 2.0f

    move v1, v13

    if-eq v1, v3, :cond_26

    move/from16 v1, v25

    goto :goto_15

    :cond_26
    move/from16 v1, v20

    :goto_15
    move/from16 v2, v27

    .line 73
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_17

    :cond_27
    move/from16 v10, p2

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_28

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lhe;

    const/4 v4, 0x0

    .line 76
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 77
    :cond_28
    invoke-super/range {p0 .. p2}, Lbg;->onMeasure(II)V

    :goto_17
    return-void
.end method
