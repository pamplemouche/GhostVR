.class public Landroid/support/design/internal/b;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v7/view/menu/ah;


# instance fields
.field private final a:Landroid/support/transition/TransitionSet;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Landroid/support/v4/k/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/k/s<",
            "Landroid/support/design/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:[Landroid/support/design/internal/a;

.field private j:I

.field private k:I

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/content/res/ColorStateList;

.field private n:I

.field private o:[I

.field private p:Landroid/support/design/internal/BottomNavigationPresenter;

.field private q:Landroid/support/v7/view/menu/p;

.field private r:Z

.field private s:Landroid/content/ContentResolver;

.field private t:F

.field private u:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method private a(Z)Landroid/support/design/internal/a;
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/support/v4/k/s;

    invoke-interface {v0}, Landroid/support/v4/k/s;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/a;

    iput-boolean p1, p0, Landroid/support/design/internal/b;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/internal/a;

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/a;-><init>(Landroid/content/Context;Z)V

    :cond_0
    return-object v0
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Landroid/support/design/internal/b;->s:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "show_button_background"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private d()Z
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/b/b;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private getNewItem()Landroid/support/design/internal/a;
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/b;->g:Landroid/support/v4/k/s;

    invoke-interface {v0}, Landroid/support/v4/k/s;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/internal/a;

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/a;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/design/internal/b;->removeAllViews()V

    iget-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Landroid/support/design/internal/b;->g:Landroid/support/v4/k/s;

    invoke-interface {v5, v4}, Landroid/support/v4/k/s;->a(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Landroid/support/design/internal/b;->j:I

    iput v1, p0, Landroid/support/design/internal/b;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/design/internal/a;

    iput-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/internal/b;->getShiftMode()Z

    move-result v2

    and-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/support/design/internal/b;->h:Z

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/p;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Landroid/support/design/internal/b;->p:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    iget-object v2, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Landroid/support/design/internal/b;->p:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    invoke-direct {p0}, Landroid/support/design/internal/b;->getNewItem()Landroid/support/design/internal/a;

    iget-object v2, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/t;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/t;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-direct {p0, v1}, Landroid/support/design/internal/b;->a(Z)Landroid/support/design/internal/a;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-direct {p0, v3}, Landroid/support/design/internal/b;->a(Z)Landroid/support/design/internal/a;

    move-result-object v2

    :goto_3
    iget-object v4, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    aput-object v2, v4, v0

    iget-object v4, p0, Landroid/support/design/internal/b;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Landroid/support/design/internal/b;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Landroid/support/design/internal/b;->n:I

    invoke-virtual {v2, v4}, Landroid/support/design/internal/a;->setItemBackground(I)V

    iget-boolean v4, p0, Landroid/support/design/internal/b;->h:Z

    invoke-virtual {v2, v4}, Landroid/support/design/internal/a;->setShiftingMode(Z)V

    iget-object v4, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v4, v0}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/t;

    invoke-virtual {v2, v4, v1}, Landroid/support/design/internal/a;->a(Landroid/support/v7/view/menu/t;I)V

    invoke-virtual {v2, v0}, Landroid/support/design/internal/a;->setItemPosition(I)V

    iget-object v4, p0, Landroid/support/design/internal/b;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/support/design/internal/b;->addView(Landroid/view/View;)V

    iget-object v4, p0, Landroid/support/design/internal/b;->m:Landroid/content/res/ColorStateList;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-le v5, v6, :cond_6

    invoke-direct {p0}, Landroid/support/design/internal/b;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/design/internal/b;->u:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v5

    goto :goto_5

    :cond_4
    invoke-direct {p0}, Landroid/support/design/internal/b;->d()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/c;->sesl_bottom_navigation_background_light:I

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/design/c;->sesl_bottom_navigation_background_dark:I

    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_5
    invoke-virtual {v2, v5, v4}, Landroid/support/design/internal/a;->a(ILandroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_6
    invoke-direct {p0}, Landroid/support/design/internal/b;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v2, v1, v4}, Landroid/support/design/internal/a;->a(ILandroid/content/res/ColorStateList;)V

    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Landroid/support/design/internal/b;->k:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/b;->k:I

    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    iget v1, p0, Landroid/support/design/internal/b;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method a(I)V
    .locals 4

    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput p1, p0, Landroid/support/design/internal/b;->j:I

    iput v1, p0, Landroid/support/design/internal/b;->k:I

    const/4 p1, 0x1

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v0, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/p;->size()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/b;->a()V

    return-void

    :cond_0
    iget v1, p0, Landroid/support/design/internal/b;->j:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Landroid/support/design/internal/b;->j:I

    iput v3, p0, Landroid/support/design/internal/b;->k:I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/support/design/internal/b;->j:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Landroid/support/design/internal/b;->a:Landroid/support/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Landroid/support/design/internal/b;->p:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    iget-object v3, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    aget-object v3, v3, v1

    iget-object v4, p0, Landroid/support/design/internal/b;->q:Landroid/support/v7/view/menu/p;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/t;

    invoke-virtual {v3, v4, v2}, Landroid/support/design/internal/a;->a(Landroid/support/v7/view/menu/t;I)V

    iget-object v3, p0, Landroid/support/design/internal/b;->p:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->b(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getBackgroundColorDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/b;->u:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/b;->l:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/b;->n:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/b;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/b;->j:I

    return v0
.end method

.method public getShiftMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/internal/b;->h:Z

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, p0, Landroid/support/design/internal/b;->t:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroid/support/design/internal/b;->d:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-boolean p2, p0, Landroid/support/design/internal/b;->r:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/design/d;->sesl_bottom_navigation_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/be;->e(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    sub-int v3, p4, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    sub-int/2addr v4, p2

    sub-int/2addr v3, p2

    invoke-virtual {v2, v4, p3, v3, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_2
    add-int v3, v1, p2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    sub-int/2addr v4, p2

    invoke-virtual {v2, v3, p3, v4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroid/support/design/internal/b;->t:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getChildCount()I

    move-result p2

    iget-boolean v0, p0, Landroid/support/design/internal/b;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/d;->sesl_bottom_navigation_height:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/d;->sesl_bottom_navigation_height_text:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/b;->e:I

    iget v0, p0, Landroid/support/design/internal/b;->e:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-boolean v2, p0, Landroid/support/design/internal/b;->h:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    iget v5, p0, Landroid/support/design/internal/b;->c:I

    mul-int v5, v5, v2

    sub-int v5, p1, v5

    iget v6, p0, Landroid/support/design/internal/b;->d:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr p1, v5

    div-int v6, p1, v2

    iget v7, p0, Landroid/support/design/internal/b;->b:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v2, v2, v6

    sub-int/2addr p1, v2

    move v2, p1

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p2, :cond_7

    iget-object v7, p0, Landroid/support/design/internal/b;->o:[I

    iget v8, p0, Landroid/support/design/internal/b;->k:I

    if-ne p1, v8, :cond_1

    move v8, v5

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    aput v8, v7, p1

    if-lez v2, :cond_2

    iget-object v7, p0, Landroid/support/design/internal/b;->o:[I

    aget v8, v7, p1

    add-int/2addr v8, v4

    aput v8, v7, p1

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    move v2, p2

    :goto_3
    div-int v2, p1, v2

    const/4 v5, 0x2

    if-eq p2, v5, :cond_5

    iget v5, p0, Landroid/support/design/internal/b;->d:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_5
    mul-int v5, v2, p2

    sub-int/2addr p1, v5

    move v5, p1

    const/4 p1, 0x0

    :goto_4
    if-ge p1, p2, :cond_7

    iget-object v6, p0, Landroid/support/design/internal/b;->o:[I

    aput v2, v6, p1

    if-lez v5, :cond_6

    aget v7, v6, p1

    add-int/2addr v7, v4

    aput v7, v6, p1

    add-int/lit8 v5, v5, -0x1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    const/4 p1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge p1, p2, :cond_9

    invoke-virtual {p0, p1}, Landroid/support/design/internal/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_8

    goto :goto_6

    :cond_8
    iget-object v5, p0, Landroid/support/design/internal/b;->o:[I

    aget v5, v5, p1

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_9
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v2, p1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Landroid/support/design/internal/b;->e:I

    invoke-static {p2, v0, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/b;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColorDrawable(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/b;->u:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Landroid/support/design/internal/b;->l:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    iput p1, p0, Landroid/support/design/internal/b;->n:I

    iget-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Landroid/support/design/internal/b;->m:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/design/internal/b;->i:[Landroid/support/design/internal/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/support/design/internal/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/internal/b;->p:Landroid/support/design/internal/BottomNavigationPresenter;

    return-void
.end method

.method public setShiftMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/b;->h:Z

    return-void
.end method
