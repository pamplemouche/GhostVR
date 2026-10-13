.class public LTZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LZZ0;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Landroid/view/View;

.field public final E:I

.field public final F:I

.field public final G:I

.field public final w:Landroid/view/View;

.field public final x:LYZ0;

.field public final y:Landroid/content/Context;

.field public final z:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;LYZ0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LTZ0;->w:Landroid/view/View;

    .line 3
    iput-object p3, p0, LTZ0;->x:LYZ0;

    .line 4
    iput-object p1, p0, LTZ0;->y:Landroid/content/Context;

    .line 5
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, LTZ0;->y:Landroid/content/Context;

    const/4 p3, 0x0

    const v0, 0x10102c8

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 7
    iget-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 8
    iget-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 9
    iget-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10
    iget-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-array p1, p2, [I

    const v0, 0x1010314

    aput v0, p1, p3

    .line 11
    iget-object v0, p0, LTZ0;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, LTZ0;->E:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iget-object p1, p0, LTZ0;->y:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p3, 0x40a00000    # 5.0f

    .line 16
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LTZ0;->F:I

    .line 17
    iget-object p1, p0, LTZ0;->y:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p3, 0x41f00000    # 30.0f

    .line 19
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, LTZ0;->G:I

    .line 20
    iget-object p1, p0, LTZ0;->y:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "dimen"

    const-string p3, "android"

    const-string v0, "status_bar_height"

    invoke-static {p1, v0, p2, p3}, LbY;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 22
    iget-object p2, p0, LTZ0;->y:Landroid/content/Context;

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LTZ0;->C:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 8

    .line 2
    iget-object v0, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget-object v0, p0, LTZ0;->D:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, LTZ0;->y:Landroid/content/Context;

    const-string v2, "layout_inflater"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz v0, :cond_0

    .line 6
    iget v2, p0, LTZ0;->E:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LTZ0;->D:Landroid/view/View;

    .line 7
    :cond_0
    iget-object v0, p0, LTZ0;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9
    iget-object v2, p0, LTZ0;->D:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v2, p0, LTZ0;->D:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object v0, p0, LTZ0;->D:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to inflate TextEdit paste window"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    iget-object v2, p0, LTZ0;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 14
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 15
    iget v2, p0, LTZ0;->A:I

    if-ne v2, v0, :cond_3

    iget v2, p0, LTZ0;->B:I

    if-ne v2, p1, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    iput v0, p0, LTZ0;->A:I

    .line 17
    iput p1, p0, LTZ0;->B:I

    .line 18
    iget-object v2, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr p1, v2

    .line 21
    iget v5, p0, LTZ0;->F:I

    sub-int/2addr p1, v5

    .line 22
    iget-object v5, p0, LTZ0;->w:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 23
    iget v5, p0, LTZ0;->C:I

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 24
    :goto_1
    iget-object v6, p0, LTZ0;->y:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v7, 0x2

    if-ge p1, v5, :cond_6

    add-int/2addr p1, v2

    .line 25
    iget v2, p0, LTZ0;->F:I

    add-int/2addr p1, v2

    .line 26
    iget v2, p0, LTZ0;->G:I

    div-int/2addr v2, v7

    add-int/2addr v0, v3

    if-ge v0, v6, :cond_5

    .line 27
    div-int/2addr v3, v7

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    goto :goto_2

    .line 28
    :cond_5
    div-int/2addr v3, v7

    add-int/2addr v3, v2

    sub-int v3, v4, v3

    goto :goto_2

    .line 29
    :cond_6
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v6, v3

    .line 30
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    new-array v0, v7, [I

    .line 31
    iget-object v2, p0, LTZ0;->w:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 32
    aget v2, v0, v1

    add-int/2addr v3, v2

    const/4 v2, 0x1

    .line 33
    aget v0, v0, v2

    add-int/2addr p1, v0

    .line 34
    iget-object v0, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    iget-object v2, p0, LTZ0;->w:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LTZ0;->x:LYZ0;

    check-cast p1, Lf01;

    .line 2
    iget-object v0, p1, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 3
    iget-object v0, v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->z:Lorg/chromium/content/browser/webcontents/WebContentsImpl;

    invoke-virtual {v0}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->r()V

    .line 4
    iget-object p1, p1, Lf01;->a:Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    .line 5
    invoke-virtual {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->q()V

    .line 6
    iget-object p1, p0, LTZ0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
