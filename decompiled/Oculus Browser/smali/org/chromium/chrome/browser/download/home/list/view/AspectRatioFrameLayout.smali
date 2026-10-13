.class public Lorg/chromium/chrome/browser/download/home/list/view/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, LI90;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, LI90;-><init>(II)V

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, LI90;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, LI90;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, LI90;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LI90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, LI90;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LI90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, LI90;

    if-nez p4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, LI90;

    .line 6
    iget-boolean p4, p3, LI90;->b:Z

    if-eqz p4, :cond_1

    .line 7
    iget p4, p3, LI90;->d:I

    .line 8
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9
    :cond_1
    iget-boolean p4, p3, LI90;->c:Z

    if-eqz p4, :cond_2

    .line 10
    iget p4, p3, LI90;->e:I

    .line 11
    iput p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    :cond_2
    iput-boolean p1, p3, LI90;->b:Z

    .line 13
    iput-boolean p1, p3, LI90;->c:Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 4
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, LI90;

    if-nez v5, :cond_0

    goto :goto_5

    .line 6
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LI90;

    .line 7
    iget v5, v4, LI90;->f:I

    .line 8
    iput v5, v4, LI90;->d:I

    .line 9
    iget v6, v4, LI90;->g:I

    .line 10
    iput v6, v4, LI90;->e:I

    .line 11
    iget v6, v4, LI90;->a:F

    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_1

    goto :goto_5

    .line 12
    :cond_1
    iget-boolean v7, v4, LI90;->b:Z

    const/4 v8, 0x1

    if-nez v7, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 13
    :goto_2
    iget-boolean v7, v4, LI90;->c:Z

    if-nez v7, :cond_5

    .line 14
    iget v7, v4, LI90;->e:I

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v7, 0x1

    :goto_4
    const/4 v9, -0x1

    if-eqz v5, :cond_7

    .line 15
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v5, v9, :cond_6

    move v5, v1

    :cond_6
    int-to-float v5, v5

    mul-float v5, v5, v6

    .line 16
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    iput-boolean v8, v4, LI90;->b:Z

    :cond_7
    if-eqz v7, :cond_9

    .line 18
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v5, v9, :cond_8

    move v5, v0

    :cond_8
    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 19
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 20
    iput-boolean v8, v4, LI90;->c:Z

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
