.class public Las0;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field public A:Z

.field public final synthetic B:Lbs0;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Z

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lbs0;

    return-void
.end method

.method public constructor <init>(Lbs0;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iput-object p1, p0, Las0;->B:Lbs0;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 4
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    .line 5
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 7
    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    .line 8
    iget v0, p1, Lbs0;->w:I

    const/4 v1, -0x1

    .line 9
    invoke-direct {p3, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance p3, LYr0;

    invoke-direct {p3, p0, p1}, LYr0;-><init>(Las0;Lbs0;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance p3, LZr0;

    invoke-direct {p3, p0, p1}, LZr0;-><init>(Las0;Lbs0;)V

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Las0;->y:Landroid/widget/TextView;

    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    iget v1, p1, Lbs0;->w:I

    const/4 v2, -0x2

    .line 15
    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p3, p0, Las0;->y:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->setSingleLine()V

    .line 18
    iget-object p3, p0, Las0;->y:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 19
    iget-object p3, p0, Las0;->y:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Las0;->z:Landroid/widget/TextView;

    .line 21
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 22
    iget p1, p1, Lbs0;->w:I

    .line 23
    invoke-direct {p2, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 26
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 28
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Las0;->A:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public onCreateDrawableState(I)[I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Las0;->A:Z

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 3
    iput-boolean v1, p0, Las0;->A:Z

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Las0;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-object v0, p0, Las0;->B:Lbs0;

    .line 5
    iget v1, v0, Lbs0;->D:I

    .line 6
    iget v0, v0, Lbs0;->F:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Las0;->B:Lbs0;

    .line 9
    iget v3, v3, Lbs0;->D:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Las0;->B:Lbs0;

    .line 11
    iget v3, v3, Lbs0;->G:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v0, p0, Las0;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 2
    iget-object p5, p0, Las0;->y:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 3
    iget-object v0, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int v2, p1, p5

    sub-int/2addr v2, v0

    .line 4
    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0xa

    if-eq p5, v0, :cond_1

    sub-int v4, v0, p5

    .line 5
    div-int/2addr v4, v3

    add-int/2addr v4, v2

    move v2, v4

    :cond_1
    add-int v4, v2, p5

    add-int v5, v4, v0

    if-le v5, p1, :cond_2

    sub-int v4, p1, v0

    const/4 v2, 0x0

    :cond_2
    add-int/2addr v2, p3

    add-int/2addr p5, v2

    add-int/2addr p3, v4

    add-int/2addr v0, p3

    .line 6
    iget-object p1, p0, Las0;->B:Lbs0;

    .line 7
    iget-object v4, p1, Lbs0;->x:Lcs0;

    .line 8
    iget-object v5, p0, Las0;->y:Landroid/widget/TextView;

    sub-int/2addr p4, p2

    .line 9
    iget p1, p1, Lbs0;->D:I

    sub-int p1, p4, p1

    .line 10
    check-cast v4, Lhr0;

    .line 11
    iget-object p2, v4, Lhr0;->c:Lmr0;

    .line 12
    iget-object p2, p2, Lmr0;->w:Landroid/content/Context;

    .line 13
    invoke-static {p2}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    .line 14
    :cond_3
    iget-object p2, v4, Lhr0;->a:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 15
    iget v6, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->a:I

    if-eq v6, v3, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->h:Ljava/lang/String;

    .line 17
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, p2, v1, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p2

    .line 18
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v1, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v3

    .line 20
    iget-object v5, v4, Lhr0;->c:Lmr0;

    .line 21
    iget v6, v5, Lmr0;->X:F

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lmr0;->X:F

    .line 22
    iget v6, v5, Lmr0;->Y:F

    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v5, Lmr0;->Y:F

    .line 23
    iget-object v4, v4, Lhr0;->c:Lmr0;

    .line 24
    iget v5, v4, Lmr0;->X:F

    .line 25
    iget v4, v4, Lmr0;->Y:F

    int-to-float p1, p1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    sub-float/2addr p2, v3

    goto :goto_2

    :cond_5
    sub-float/2addr p1, v4

    const/4 p2, 0x0

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :goto_2
    float-to-int p1, p2

    .line 27
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_6

    .line 28
    iget-object p2, p0, Las0;->B:Lbs0;

    .line 29
    iget p2, p2, Lbs0;->D:I

    sub-int/2addr p4, p2

    .line 30
    iget-object p2, p0, Las0;->y:Landroid/widget/TextView;

    sub-int p1, p4, p1

    invoke-virtual {p2, v1, v2, p1, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 31
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v1, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_4

    .line 32
    :cond_6
    iget-object p2, p0, Las0;->y:Landroid/widget/TextView;

    iget-object v1, p0, Las0;->B:Lbs0;

    .line 33
    iget v1, v1, Lbs0;->D:I

    add-int/2addr v1, p1

    .line 34
    invoke-virtual {p2, v1, v2, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 35
    iget-object p1, p0, Las0;->z:Landroid/widget/TextView;

    iget-object p2, p0, Las0;->B:Lbs0;

    .line 36
    iget p2, p2, Lbs0;->D:I

    .line 37
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    :goto_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Las0;->B:Lbs0;

    .line 2
    iget v1, v1, Lbs0;->D:I

    sub-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Las0;->y:Landroid/widget/TextView;

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Las0;->B:Lbs0;

    .line 4
    iget v4, v4, Lbs0;->w:I

    .line 5
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 6
    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 7
    iget-object v1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Las0;->B:Lbs0;

    .line 8
    iget v3, v3, Lbs0;->w:I

    .line 9
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 10
    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->measure(II)V

    .line 11
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 12
    iget-object v0, p0, Las0;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Las0;->z:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v1, v0

    .line 14
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 16
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void
.end method
