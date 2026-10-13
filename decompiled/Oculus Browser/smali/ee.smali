.class public Lee;
.super Lcd;
.source "PG"


# instance fields
.field public E:Lbe;

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:I

.field public K:I

.field public L:I

.field public M:Z

.field public N:I

.field public final O:Landroid/util/SparseBooleanArray;

.field public P:Landroid/view/View;

.field public Q:Lce;

.field public R:LXd;

.field public S:LZd;

.field public T:LYd;

.field public final U:Lde;

.field public V:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0e0003

    const v1, 0x7f0e0002

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcd;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lee;->O:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Lde;

    invoke-direct {p1, p0}, Lde;-><init>(Lee;)V

    iput-object p1, p0, Lee;->U:Lde;

    return-void
.end method


# virtual methods
.method public a(Ltd;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 29
    invoke-virtual {p1}, Ltd;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p1}, Ltd;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcd;->a(Ltd;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    :cond_1
    iget-boolean p1, p1, Ltd;->Y:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 36
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 37
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lhe;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public a(Landroid/content/Context;Lqd;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcd;->x:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcd;->y:Lqd;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 5
    iget-boolean v0, p0, Lee;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lee;->H:Z

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 8
    iput v0, p0, Lee;->J:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 10
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 11
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 12
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-gt p1, v3, :cond_6

    if-gt v0, v3, :cond_6

    const/16 p1, 0x2d0

    const/16 v3, 0x3c0

    if-le v0, v3, :cond_1

    if-gt v2, p1, :cond_6

    :cond_1
    if-le v0, p1, :cond_2

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_5

    const/16 p1, 0x1e0

    const/16 v3, 0x280

    if-le v0, v3, :cond_3

    if-gt v2, p1, :cond_5

    :cond_3
    if-le v0, p1, :cond_4

    if-le v2, v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x168

    if-lt v0, p1, :cond_7

    const/4 v1, 0x3

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x5

    .line 13
    :cond_7
    :goto_2
    iput v1, p0, Lee;->L:I

    .line 14
    iget p1, p0, Lee;->J:I

    .line 15
    iget-boolean v0, p0, Lee;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 16
    iget-object v0, p0, Lee;->E:Lbe;

    if-nez v0, :cond_9

    .line 17
    new-instance v0, Lbe;

    iget-object v2, p0, Lcd;->w:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lbe;-><init>(Lee;Landroid/content/Context;)V

    iput-object v0, p0, Lee;->E:Lbe;

    .line 18
    iget-boolean v2, p0, Lee;->G:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 19
    iget-object v2, p0, Lee;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iput-object v1, p0, Lee;->F:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-boolean v3, p0, Lee;->G:Z

    .line 22
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 23
    iget-object v2, p0, Lee;->E:Lbe;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 24
    :cond_9
    iget-object v0, p0, Lee;->E:Lbe;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    .line 25
    :cond_a
    iput-object v1, p0, Lee;->E:Lbe;

    .line 26
    :goto_3
    iput p1, p0, Lee;->K:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 27
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lee;->N:I

    .line 28
    iput-object v1, p0, Lee;->P:Landroid/view/View;

    return-void
.end method

.method public a(Lqd;Z)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lee;->a()Z

    .line 94
    iget-object v0, p0, Lcd;->A:LEd;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1, p2}, LEd;->a(Lqd;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Lcd;->a(Z)V

    .line 39
    iget-object p1, p0, Lcd;->D:LHd;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 40
    iget-object p1, p0, Lcd;->y:Lqd;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lqd;->a()V

    .line 42
    iget-object p1, p1, Lqd;->E:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 44
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd;

    .line 45
    iget-object v3, v3, Ltd;->W:Lj7;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcd;->y:Lqd;

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Lqd;->a()V

    .line 48
    iget-object p1, p1, Lqd;->F:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    iget-boolean v1, p0, Lee;->H:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltd;

    .line 52
    iget-boolean p1, p1, Ltd;->Y:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    .line 53
    iget-object p1, p0, Lee;->E:Lbe;

    if-nez p1, :cond_4

    .line 54
    new-instance p1, Lbe;

    iget-object v0, p0, Lcd;->w:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lbe;-><init>(Lee;Landroid/content/Context;)V

    iput-object p1, p0, Lee;->E:Lbe;

    .line 55
    :cond_4
    iget-object p1, p0, Lee;->E:Lbe;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 56
    iget-object v0, p0, Lcd;->D:LHd;

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_5

    .line 57
    iget-object v0, p0, Lee;->E:Lbe;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_5
    iget-object p1, p0, Lcd;->D:LHd;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    .line 59
    iget-object v0, p0, Lee;->E:Lbe;

    .line 60
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Lhe;

    move-result-object v1

    .line 61
    iput-boolean v2, v1, Lhe;->c:Z

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 63
    :cond_6
    iget-object p1, p0, Lee;->E:Lbe;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcd;->D:LHd;

    if-ne p1, v0, :cond_7

    .line 64
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lee;->E:Lbe;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_7
    :goto_3
    iget-object p1, p0, Lcd;->D:LHd;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v0, p0, Lee;->H:Z

    .line 66
    iput-boolean v0, p1, Landroid/support/v7/widget/ActionMenuView;->O:Z

    return-void
.end method

.method public a()Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lee;->b()Z

    move-result v0

    .line 92
    invoke-virtual {p0}, Lee;->c()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public a(LNd;)Z
    .locals 8

    .line 67
    invoke-virtual {p1}, Lqd;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 68
    :goto_0
    iget-object v2, v0, LNd;->W:Lqd;

    .line 69
    iget-object v3, p0, Lcd;->y:Lqd;

    if-eq v2, v3, :cond_1

    .line 70
    move-object v0, v2

    check-cast v0, LNd;

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, v0, LNd;->X:Ltd;

    .line 72
    iget-object v2, p0, Lcd;->D:LHd;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 74
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 75
    instance-of v7, v6, LGd;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, LGd;

    .line 76
    invoke-interface {v7}, LGd;->c()Ltd;

    move-result-object v7

    if-ne v7, v0, :cond_3

    move-object v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    return v1

    .line 77
    :cond_5
    iget-object v0, p1, LNd;->X:Ltd;

    .line 78
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    .line 79
    invoke-virtual {p1}, Lqd;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v0, :cond_7

    .line 80
    invoke-virtual {p1, v2}, Lqd;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 81
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    :cond_7
    :goto_4
    new-instance v0, LXd;

    iget-object v2, p0, Lcd;->x:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v3}, LXd;-><init>(Lee;Landroid/content/Context;LNd;Landroid/view/View;)V

    iput-object v0, p0, Lee;->R:LXd;

    .line 83
    iput-boolean v1, v0, LDd;->h:Z

    .line 84
    iget-object v0, v0, LDd;->j:LBd;

    if-eqz v0, :cond_8

    .line 85
    invoke-virtual {v0, v1}, LBd;->b(Z)V

    .line 86
    :cond_8
    iget-object v0, p0, Lee;->R:LXd;

    .line 87
    invoke-virtual {v0}, LDd;->d()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    iget-object v0, p0, Lcd;->A:LEd;

    if-eqz v0, :cond_9

    .line 89
    invoke-interface {v0, p1}, LEd;->a(Lqd;)Z

    :cond_9
    return v4

    .line 90
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lee;->S:LZd;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcd;->D:LHd;

    if-eqz v2, :cond_0

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lee;->S:LZd;

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lee;->Q:Lce;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, LDd;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, v0, LDd;->j:LBd;

    invoke-interface {v0}, LJd;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lee;->R:LXd;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, LDd;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, LDd;->j:LBd;

    invoke-interface {v0}, LJd;->dismiss()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcd;->y:Lqd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lqd;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, v0, Lee;->L:I

    .line 5
    iget v5, v0, Lee;->K:I

    .line 6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 7
    iget-object v7, v0, Lcd;->D:LHd;

    check-cast v7, Landroid/view/ViewGroup;

    move v11, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v4, v3, :cond_6

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltd;

    .line 9
    iget v15, v14, Ltd;->U:I

    and-int/2addr v15, v12

    if-ne v15, v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 10
    :cond_2
    iget v12, v14, Ltd;->U:I

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x1

    .line 11
    :goto_4
    iget-boolean v12, v0, Lee;->M:Z

    if-eqz v12, :cond_5

    .line 12
    iget-boolean v12, v14, Ltd;->Y:Z

    if-eqz v12, :cond_5

    const/4 v11, 0x0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_6
    iget-boolean v4, v0, Lee;->H:Z

    if-eqz v4, :cond_8

    if-nez v8, :cond_7

    add-int/2addr v9, v10

    if-le v9, v11, :cond_8

    :cond_7
    add-int/lit8 v11, v11, -0x1

    :cond_8
    sub-int/2addr v11, v10

    .line 14
    iget-object v4, v0, Lee;->O:Landroid/util/SparseBooleanArray;

    .line 15
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    move v8, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_5
    if-ge v5, v3, :cond_1c

    .line 16
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ltd;

    .line 17
    iget v14, v10, Ltd;->U:I

    and-int/2addr v14, v12

    if-ne v14, v12, :cond_9

    const/4 v14, 0x1

    goto :goto_6

    :cond_9
    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_d

    .line 18
    iget-object v14, v0, Lee;->P:Landroid/view/View;

    invoke-virtual {v0, v10, v14, v7}, Lee;->a(Ltd;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 19
    iget-object v15, v0, Lee;->P:Landroid/view/View;

    if-nez v15, :cond_a

    .line 20
    iput-object v14, v0, Lee;->P:Landroid/view/View;

    .line 21
    :cond_a
    invoke-virtual {v14, v6, v6}, Landroid/view/View;->measure(II)V

    .line 22
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v8, v14

    if-nez v9, :cond_b

    move v9, v14

    .line 23
    :cond_b
    iget v14, v10, Ltd;->x:I

    if-eqz v14, :cond_c

    .line 24
    invoke-virtual {v4, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 25
    :cond_c
    invoke-virtual {v10, v13}, Ltd;->b(Z)V

    goto/16 :goto_c

    .line 26
    :cond_d
    iget v14, v10, Ltd;->U:I

    and-int/2addr v14, v13

    if-ne v14, v13, :cond_e

    const/4 v14, 0x1

    goto :goto_7

    :cond_e
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_1b

    .line 27
    iget v14, v10, Ltd;->x:I

    .line 28
    invoke-virtual {v4, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v11, :cond_f

    if-eqz v15, :cond_10

    :cond_f
    if-lez v8, :cond_10

    const/16 v16, 0x1

    goto :goto_8

    :cond_10
    const/16 v16, 0x0

    :goto_8
    if-eqz v16, :cond_14

    .line 29
    iget-object v12, v0, Lee;->P:Landroid/view/View;

    invoke-virtual {v0, v10, v12, v7}, Lee;->a(Ltd;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 30
    iget-object v2, v0, Lee;->P:Landroid/view/View;

    if-nez v2, :cond_11

    .line 31
    iput-object v12, v0, Lee;->P:Landroid/view/View;

    .line 32
    :cond_11
    invoke-virtual {v12, v6, v6}, Landroid/view/View;->measure(II)V

    .line 33
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v8, v2

    if-nez v9, :cond_12

    move v9, v2

    :cond_12
    add-int v2, v8, v9

    if-lez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    and-int v16, v16, v2

    :cond_14
    move/from16 v2, v16

    if-eqz v2, :cond_15

    if-eqz v14, :cond_15

    .line 34
    invoke-virtual {v4, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b

    :cond_15
    if-eqz v15, :cond_19

    const/4 v12, 0x0

    .line 35
    invoke-virtual {v4, v14, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v12, v11

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v5, :cond_18

    .line 36
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ltd;

    .line 37
    iget v13, v15, Ltd;->x:I

    if-ne v13, v14, :cond_17

    .line 38
    invoke-virtual {v15}, Ltd;->d()Z

    move-result v13

    if-eqz v13, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    const/4 v13, 0x0

    .line 39
    invoke-virtual {v15, v13}, Ltd;->b(Z)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x1

    goto :goto_a

    :cond_18
    move v11, v12

    :cond_19
    :goto_b
    if-eqz v2, :cond_1a

    add-int/lit8 v11, v11, -0x1

    .line 40
    :cond_1a
    invoke-virtual {v10, v2}, Ltd;->b(Z)V

    const/4 v2, 0x0

    goto :goto_c

    .line 41
    :cond_1b
    invoke-virtual {v10, v2}, Ltd;->b(Z)V

    :goto_c
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_1c
    const/4 v5, 0x1

    return v5
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lee;->Q:Lce;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LDd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lee;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lee;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcd;->y:Lqd;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcd;->D:LHd;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lee;->S:LZd;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lqd;->a()V

    .line 3
    iget-object v0, v0, Lqd;->F:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lce;

    iget-object v3, p0, Lcd;->x:Landroid/content/Context;

    iget-object v4, p0, Lcd;->y:Lqd;

    iget-object v5, p0, Lee;->E:Lbe;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lce;-><init>(Lee;Landroid/content/Context;Lqd;Landroid/view/View;Z)V

    .line 6
    new-instance v1, LZd;

    invoke-direct {v1, p0, v0}, LZd;-><init>(Lee;Lce;)V

    iput-object v1, p0, Lee;->S:LZd;

    .line 7
    iget-object v0, p0, Lcd;->D:LHd;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 8
    invoke-super {p0, v0}, Lcd;->a(LNd;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
