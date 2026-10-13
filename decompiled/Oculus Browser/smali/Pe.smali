.class public LPe;
.super Lmg;
.source "PG"


# instance fields
.field public b0:Ljava/lang/CharSequence;

.field public c0:Landroid/widget/ListAdapter;

.field public final d0:Landroid/graphics/Rect;

.field public final synthetic e0:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    iput-object p1, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p3, p4, v0}, Lmg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, LPe;->d0:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lmg;->N:Landroid/view/View;

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p2}, Lmg;->a(Z)V

    .line 6
    iput v0, p0, Lmg;->L:I

    .line 7
    new-instance p2, LMe;

    invoke-direct {p2, p0, p1}, LMe;-><init>(LPe;Landroid/support/v7/widget/AppCompatSpinner;)V

    .line 8
    iput-object p2, p0, Lmg;->O:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static synthetic a(LPe;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lmg;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 4
    invoke-virtual {p0}, Lmg;->c()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, LPe;->e()V

    .line 6
    iget-object v1, p0, Lmg;->X:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 7
    invoke-super {p0}, Lmg;->a()V

    .line 8
    iget-object v1, p0, Lmg;->y:Lpf;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 10
    iget-object v1, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 11
    iget-object v3, p0, Lmg;->y:Lpf;

    .line 12
    invoke-virtual {p0}, Lmg;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 13
    iput-boolean v4, v3, Lpf;->E:Z

    .line 14
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 15
    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 16
    invoke-virtual {v3, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 17
    :cond_1
    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    new-instance v1, LNe;

    invoke-direct {v1, p0}, LNe;-><init>(LPe;)V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    new-instance v0, LOe;

    invoke-direct {v0, p0, v1}, LOe;-><init>(LPe;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    iget-object v1, p0, Lmg;->X:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lmg;->a(Landroid/widget/ListAdapter;)V

    .line 3
    iput-object p1, p0, LPe;->c0:Landroid/widget/ListAdapter;

    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lmg;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    :goto_0
    move v1, v0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 5
    :goto_1
    iget-object v0, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v0

    .line 6
    iget-object v2, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v2

    .line 7
    iget-object v3, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getWidth()I

    move-result v3

    .line 8
    iget-object v4, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget v5, v4, Landroid/support/v7/widget/AppCompatSpinner;->C:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    .line 9
    iget-object v5, p0, LPe;->c0:Landroid/widget/ListAdapter;

    check-cast v5, Landroid/widget/SpinnerAdapter;

    .line 10
    invoke-virtual {p0}, Lmg;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v4

    .line 12
    iget-object v5, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 13
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatSpinner;->D:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    sub-int v5, v3, v0

    sub-int/2addr v5, v2

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lmg;->a(I)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    if-ne v5, v4, :cond_4

    sub-int v4, v3, v0

    sub-int/2addr v4, v2

    .line 15
    invoke-virtual {p0, v4}, Lmg;->a(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p0, v5}, Lmg;->a(I)V

    .line 17
    :goto_2
    iget-object v4, p0, LPe;->e0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v4}, Lki;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    sub-int/2addr v3, v2

    .line 18
    iget v0, p0, Lmg;->A:I

    sub-int/2addr v3, v0

    add-int/2addr v3, v1

    goto :goto_3

    :cond_5
    add-int v3, v1, v0

    .line 19
    :goto_3
    iput v3, p0, Lmg;->B:I

    return-void
.end method
