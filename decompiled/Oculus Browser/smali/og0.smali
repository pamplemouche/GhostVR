.class public Log0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/widget/ListPopupWindow;

.field public C:Z

.field public final w:Lng0;

.field public final x:Lkg0;

.field public y:Landroid/view/ContextThemeWrapper;

.field public z:Lmg0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Log0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lkg0;Lng0;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f14011d

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Log0;->y:Landroid/view/ContextThemeWrapper;

    .line 3
    iput-object p2, p0, Log0;->A:Landroid/view/View;

    .line 4
    iput-object p3, p0, Log0;->x:Lkg0;

    .line 5
    iput-object p4, p0, Log0;->w:Lng0;

    .line 6
    iput-boolean p5, p0, Log0;->C:Z

    return-void
.end method

.method public static synthetic a(Log0;I)Ljava/util/List;
    .locals 6

    if-eqz p0, :cond_5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-boolean p0, p0, Log0;->C:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v3, Llg0;

    invoke-direct {v3, v2, v1, v2}, Llg0;-><init>(IIZ)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p0, :cond_0

    .line 5
    new-instance p0, Llg0;

    invoke-direct {p0, v2, v2, v1}, Llg0;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    new-instance p0, Llg0;

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3, v1}, Llg0;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p0, Llg0;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1}, Llg0;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance p0, Llg0;

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v1}, Llg0;-><init>(IIZ)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    .line 10
    :goto_0
    iget-object v4, p0, Log0;->x:Lkg0;

    .line 11
    iget-object v4, v4, Lkg0;->c:Ljava/util/ArrayList;

    .line 12
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 13
    iget-object v4, p0, Log0;->x:Lkg0;

    .line 14
    iget-object v4, v4, Lkg0;->c:Ljava/util/ArrayList;

    .line 15
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljg0;

    iget-object v4, v4, Ljg0;->a:Ljava/lang/String;

    .line 16
    iget-object v5, p0, Log0;->x:Lkg0;

    .line 17
    iget-object v5, v5, Lkg0;->a:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-ne p1, v2, :cond_2

    iget-object v5, p0, Log0;->x:Lkg0;

    .line 19
    iget-object v5, v5, Lkg0;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 21
    :cond_2
    new-instance v5, Llg0;

    invoke-direct {v5, v1, v3, v4}, Llg0;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0

    :cond_5
    const/4 p0, 0x0

    .line 22
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 59
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 13

    .line 23
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v5, 0x1010300

    invoke-direct {v0, v4, v2, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    .line 25
    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 26
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Log0;->A:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 28
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Log0;->y:Landroid/view/ContextThemeWrapper;

    const v5, 0x7f0802ad

    .line 29
    invoke-static {v4, v5}, LR3;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 30
    invoke-virtual {v0, v4}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    iget-object v0, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    iget-object v0, p0, Log0;->A:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 33
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    .line 34
    iget-object v4, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v4, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    neg-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 36
    :goto_0
    new-instance v0, Lmg0;

    invoke-direct {v0, p0, p1}, Lmg0;-><init>(Log0;I)V

    iput-object v0, p0, Log0;->z:Lmg0;

    .line 37
    iget-object v4, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Log0;->z:Lmg0;

    invoke-static {v0, p1}, Lmg0;->a(Lmg0;I)V

    :goto_1
    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 40
    iget-object v4, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 41
    iget-object v4, p0, Log0;->z:Lmg0;

    .line 42
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 44
    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    move-object v11, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v7, :cond_3

    .line 45
    invoke-virtual {v4, v8}, Lmg0;->getItemViewType(I)I

    move-result v12

    if-eq v12, v10, :cond_2

    move-object v11, v2

    move v10, v12

    .line 46
    :cond_2
    invoke-virtual {v4, v8, v11, v2}, Lmg0;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 47
    invoke-virtual {v11, v5, v6}, Landroid/view/View;->measure(II)V

    .line 48
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 49
    :cond_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v2

    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v9

    .line 50
    iget-object v2, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    if-lez p2, :cond_4

    if-le p1, p2, :cond_4

    move p1, p2

    :cond_4
    invoke-virtual {v2, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_3

    .line 51
    :cond_5
    iget-object p1, p0, Log0;->y:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070162

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 52
    iget-object p2, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {p2, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 53
    :goto_3
    iget-object p1, p0, Log0;->A:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_6

    new-array p1, v1, [I

    .line 54
    iget-object p2, p0, Log0;->A:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 55
    iget-object p2, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    aget p1, p1, v0

    neg-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 56
    :cond_6
    iget-object p1, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 57
    iget-object p1, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    .line 58
    iget-object p1, p0, Log0;->B:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Log0;->a()V

    .line 2
    iget-object p1, p0, Log0;->z:Lmg0;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llg0;

    .line 3
    iget-object p2, p0, Log0;->z:Lmg0;

    .line 4
    iget p2, p2, Lmg0;->x:I

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Log0;->w:Lng0;

    iget-object p1, p1, Llg0;->c:Ljava/lang/String;

    invoke-interface {p2, p1}, Lng0;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object p2, p0, Log0;->w:Lng0;

    iget-object p1, p1, Llg0;->c:Ljava/lang/String;

    invoke-interface {p2, p1}, Lng0;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    iget-object p2, p0, Log0;->w:Lng0;

    iget p1, p1, Llg0;->b:I

    invoke-interface {p2, p1}, Lng0;->a(I)V

    return-void
.end method
