.class public Ljc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldf1;
.implements Lkc1;


# instance fields
.field public A:Landroid/view/View$OnLayoutChangeListener;

.field public B:Ljava/lang/CharSequence;

.field public C:Lef1;

.field public D:Landroid/widget/ListAdapter;

.field public final E:Landroid/widget/LinearLayout;

.field public final F:Landroid/widget/ListView;

.field public final G:Landroid/widget/FrameLayout;

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:I

.field public final w:Landroid/content/Context;

.field public final x:Landroid/view/View;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ljc1;->z:I

    .line 3
    iput-object p1, p0, Ljc1;->w:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ljc1;->x:Landroid/view/View;

    const v0, 0x7f0b0178

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 6
    iget-object p2, p0, Ljc1;->x:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lhc1;

    invoke-direct {p2, p0}, Lhc1;-><init>(Ljc1;)V

    iput-object p2, p0, Ljc1;->A:Landroid/view/View$OnLayoutChangeListener;

    .line 8
    iget-object v0, p0, Ljc1;->x:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 9
    new-instance p2, Lic1;

    invoke-direct {p2, p0}, Lic1;-><init>(Ljc1;)V

    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ljc1;->E:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0172

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    .line 12
    iget-object v0, p0, Ljc1;->E:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0173

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    .line 13
    new-instance v0, Lpf1;

    iget-object v1, p0, Ljc1;->x:Landroid/view/View;

    invoke-direct {v0, v1}, Lpf1;-><init>(Landroid/view/View;)V

    const/4 v7, 0x1

    .line 14
    iput-boolean v7, v0, Lpf1;->C:Z

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802ad

    .line 16
    invoke-static {v1, v2}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Ljc1;->H:Landroid/graphics/drawable/Drawable;

    .line 17
    new-instance v8, Lef1;

    iget-object v3, p0, Ljc1;->x:Landroid/view/View;

    iget-object v5, p0, Ljc1;->E:Landroid/widget/LinearLayout;

    move-object v1, v8

    move-object v2, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lef1;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/view/View;Lhf1;)V

    iput-object v8, p0, Ljc1;->C:Lef1;

    .line 18
    iget-object v1, v8, Lef1;->G:LWT;

    invoke-virtual {v1, p2}, LWT;->a(Ljava/lang/Object;)Z

    .line 19
    iget-object p2, p0, Ljc1;->C:Lef1;

    .line 20
    iput-object p0, p2, Lef1;->H:Ldf1;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070101

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 22
    iget-object p2, p2, Lef1;->B:Landroid/widget/PopupWindow;

    .line 23
    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 25
    iget-object p2, p0, Ljc1;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 26
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, v2, v1}, Lpf1;->a(IIII)V

    .line 27
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iput p2, p0, Ljc1;->I:I

    .line 28
    iget-object p1, p0, Ljc1;->C:Lef1;

    .line 29
    iput v7, p1, Lef1;->P:I

    .line 30
    iput-boolean v7, p1, Lef1;->V:Z

    .line 31
    iget-object p1, p1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 11
    iget-object v0, p0, Ljc1;->C:Lef1;

    invoke-virtual {v0}, Lef1;->c()Z

    move-result v0

    .line 12
    iget-object v1, p0, Ljc1;->C:Lef1;

    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v1, Lef1;->T:Z

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v1, Lef1;->U:Z

    .line 15
    iget-object v1, p0, Ljc1;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 16
    iget-object v3, p0, Ljc1;->D:Landroid/widget/ListAdapter;

    invoke-static {v3}, Lwc1;->a(Landroid/widget/ListAdapter;)I

    move-result v3

    .line 17
    iget-object v4, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 18
    iget-object v4, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_0

    .line 19
    iget-object v4, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    :cond_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 21
    iget-object v5, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 22
    iget-object v4, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 23
    :cond_1
    iget v4, p0, Ljc1;->I:I

    add-int v5, v3, v4

    if-ge v1, v5, :cond_2

    .line 24
    iget-object v3, p0, Ljc1;->C:Lef1;

    sub-int/2addr v1, v4

    .line 25
    iput v1, v3, Lef1;->N:I

    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p0, Ljc1;->x:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v3, :cond_3

    .line 27
    iget-object v1, p0, Ljc1;->C:Lef1;

    iget v4, p0, Ljc1;->I:I

    add-int/2addr v3, v4

    .line 28
    iput v3, v1, Lef1;->N:I

    goto :goto_0

    .line 29
    :cond_3
    iget-object v1, p0, Ljc1;->C:Lef1;

    iget-object v3, p0, Ljc1;->x:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Ljc1;->I:I

    add-int/2addr v3, v4

    .line 30
    iput v3, v1, Lef1;->N:I

    .line 31
    :goto_0
    iget-object v1, p0, Ljc1;->C:Lef1;

    invoke-virtual {v1}, Lef1;->d()V

    .line 32
    iget-object v1, p0, Ljc1;->F:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 33
    iget-boolean v1, p0, Ljc1;->y:Z

    .line 34
    iget-object v2, p0, Ljc1;->F:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutDirection(I)V

    if-nez v0, :cond_4

    .line 35
    iget-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    iget-object v1, p0, Ljc1;->B:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->sendAccessibilityEvent(I)V

    .line 37
    :cond_4
    iget v0, p0, Ljc1;->z:I

    if-ltz v0, :cond_5

    .line 38
    iget-object v1, p0, Ljc1;->F:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Ljc1;->z:I

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 10
    iput p1, p0, Ljc1;->z:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Ljc1;->E:Landroid/widget/LinearLayout;

    const v3, 0x7f0b0171

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 46
    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz v1, :cond_2

    .line 48
    iget-object v0, p0, Ljc1;->G:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ljc1;->D:Landroid/widget/ListAdapter;

    .line 2
    iget-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3
    iget-object p1, p0, Ljc1;->C:Lef1;

    .line 4
    invoke-virtual {p1}, Lef1;->e()V

    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 40
    iget-object v0, p0, Ljc1;->C:Lef1;

    .line 41
    iget-object v0, v0, Lef1;->G:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 43
    iput-object p1, p0, Ljc1;->B:Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Ljc1;->y:Z

    return-void
.end method

.method public a(ZIIIILandroid/graphics/Rect;)V
    .locals 0

    .line 5
    iget-object p1, p0, Ljc1;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    iget-object p1, p0, Ljc1;->C:Lef1;

    iget-object p2, p0, Ljc1;->w:Landroid/content/Context;

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0802ad

    .line 8
    invoke-static {p2, p3}, LdT;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 9
    iget-object p1, p1, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Ljc1;->F:Landroid/widget/ListView;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ljc1;->C:Lef1;

    invoke-virtual {v0}, Lef1;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljc1;->C:Lef1;

    invoke-virtual {v0}, Lef1;->d()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljc1;->C:Lef1;

    .line 2
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljc1;->C:Lef1;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lef1;->F:Z

    .line 3
    iget-object v0, v0, Lef1;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method
