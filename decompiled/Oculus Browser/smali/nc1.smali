.class public Lnc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkc1;


# instance fields
.field public A:Landroid/view/View$OnLayoutChangeListener;

.field public B:Landroid/widget/PopupWindow$OnDismissListener;

.field public C:Ljava/lang/CharSequence;

.field public D:Landroid/widget/ListPopupWindow;

.field public E:Landroid/view/View;

.field public F:Landroid/widget/ListAdapter;

.field public final w:Landroid/view/View;

.field public final x:Landroid/content/Context;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnc1;->z:I

    .line 3
    new-instance v0, Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    const v2, 0x7f1400f4

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    .line 4
    iput-object p2, p0, Lnc1;->w:Landroid/view/View;

    const v0, 0x7f0b0178

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 6
    iget-object p2, p0, Lnc1;->w:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iput-object p1, p0, Lnc1;->x:Landroid/content/Context;

    .line 8
    new-instance p1, Llc1;

    invoke-direct {p1, p0}, Llc1;-><init>(Lnc1;)V

    iput-object p1, p0, Lnc1;->A:Landroid/view/View$OnLayoutChangeListener;

    .line 9
    iget-object p2, p0, Lnc1;->w:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 10
    iget-object p1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    new-instance p2, Lmc1;

    invoke-direct {p2, p0}, Lmc1;-><init>(Lnc1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 11
    iget-object p1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    iget-object p2, p0, Lnc1;->w:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 13
    iget-object p2, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 14
    iget-object p2, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 4
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 5
    iget-object v0, p0, Lnc1;->F:Landroid/widget/ListAdapter;

    invoke-static {v0}, Lwc1;->a(Landroid/widget/ListAdapter;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lnc1;->E:Landroid/view/View;

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lnc1;->E:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_0
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10
    iget-object v4, p0, Lnc1;->E:Landroid/view/View;

    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object v1, p0, Lnc1;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    :cond_1
    iget-object v1, p0, Lnc1;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    .line 13
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object v5, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    int-to-float v4, v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    .line 16
    iget-object v1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v1, p0, Lnc1;->w:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 19
    iget-object v1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 20
    iget-object v1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 22
    :cond_3
    :goto_0
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 23
    iget-object v1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 24
    iget-object v1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 25
    iget-boolean v1, p0, Lnc1;->y:Z

    .line 26
    iget-object v2, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutDirection(I)V

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnc1;->C:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->sendAccessibilityEvent(I)V

    .line 29
    :cond_4
    iget v0, p0, Lnc1;->z:I

    if-ltz v0, :cond_5

    .line 30
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lnc1;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lnc1;->z:I

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lnc1;->z:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 36
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 37
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v1, p0, Lnc1;->x:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e00a8

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnc1;->E:Landroid/view/View;

    const v1, 0x7f0b0173

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 41
    :cond_0
    iput-object v0, p0, Lnc1;->E:Landroid/view/View;

    .line 42
    :goto_0
    iget-object p1, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lnc1;->E:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lnc1;->F:Landroid/widget/ListAdapter;

    .line 2
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lnc1;->B:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lnc1;->C:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lnc1;->y:Z

    return-void
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->postShow()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    const-class v2, Landroid/widget/ListPopupWindow;

    const-string v3, "setForceIgnoreOutsideTouch"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2
    iget-object v3, p0, Lnc1;->D:Landroid/widget/ListPopupWindow;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "AutofillPopup"

    const-string v2, "ListPopupWindow.setForceIgnoreOutsideTouch not found"

    .line 3
    invoke-static {v0, v2, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
