.class public Lrr0;
.super Landroid/widget/ListView;
.source "PG"


# instance fields
.field public A:Lor0;

.field public B:Landroid/view/View;

.field public C:Landroid/view/View;

.field public D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public E:Landroid/view/View$OnLayoutChangeListener;

.field public final w:[I

.field public final x:Landroid/graphics/Rect;

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lrr0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x101006d

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lrr0;->w:[I

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lrr0;->x:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v2

    iput v2, p0, Lrr0;->y:I

    .line 9
    invoke-static {p1, v0}, LAO0;->a(Landroid/content/res/Resources;Z)I

    move-result v0

    iput v0, p0, Lrr0;->z:I

    const v0, 0x7f070228

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 11
    invoke-static {p0, v1, v1, v1, p1}, LA7;->a(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrr0;->C:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lrr0;->B:Landroid/view/View;

    iget-object v2, p0, Lrr0;->w:[I

    invoke-static {v1, v0, v2}, LGO0;->b(Landroid/view/View;Landroid/view/View;[I)V

    .line 3
    iget-object v0, p0, Lrr0;->w:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lrr0;->B:Landroid/view/View;

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lrr0;->C:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lrr0;->w:[I

    aget v1, v4, v1

    sub-int/2addr v3, v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    .line 6
    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    return-void
.end method

.method public layoutChildren()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lrr0;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lrr0;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    iget-object v0, p0, Lrr0;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lrr0;->a()V

    .line 5
    iget-object v0, p0, Lrr0;->C:Landroid/view/View;

    iget-object v1, p0, Lrr0;->E:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->reclaimViews(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lrr0;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lrr0;->D:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    iget-object v0, p0, Lrr0;->C:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lrr0;->E:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 4
    invoke-static {p2}, LDO0;->b(Landroid/view/KeyEvent;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    if-ne v0, v4, :cond_4

    .line 5
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return p1

    .line 7
    :cond_2
    invoke-static {p2}, LDO0;->c(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eq v0, v4, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 10
    :cond_3
    invoke-static {p2}, LDO0;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v0, v4, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1

    .line 13
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lrr0;->A:Lor0;

    .line 2
    check-cast p1, LYo0;

    .line 3
    iget-object p1, p1, LYo0;->a:Lep0;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b04a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lrr0;->B:Landroid/view/View;

    iget-object v0, p0, Lrr0;->w:[I

    invoke-static {p1, p2, v0}, LGO0;->b(Landroid/view/View;Landroid/view/View;[I)V

    .line 6
    iget-object p1, p0, Lrr0;->w:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    .line 7
    iget-object p2, p0, Lrr0;->B:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 11
    :cond_0
    iget-object p1, p0, Lrr0;->A:Lor0;

    check-cast p1, LYo0;

    .line 12
    iget-object p1, p1, LYo0;->a:Lep0;

    .line 13
    iget-object p1, p1, Lep0;->H:Lk00;

    .line 14
    iget-object v0, p0, Lrr0;->x:Landroid/graphics/Rect;

    .line 15
    iget-object p1, p1, Lk00;->a:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 16
    iget-object p1, p0, Lrr0;->x:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, p2

    .line 17
    iget-object p2, p0, Lrr0;->B:Landroid/view/View;

    .line 18
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 19
    iget-object v1, p0, Lrr0;->A:Lor0;

    check-cast v1, LYo0;

    .line 20
    iget-object v1, v1, LYo0;->a:Lep0;

    .line 21
    iget-boolean v1, v1, Lep0;->z:Z

    if-eqz v1, :cond_1

    const/high16 v0, -0x80000000

    .line 22
    :cond_1
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 23
    invoke-super {p0, p2, p1}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
