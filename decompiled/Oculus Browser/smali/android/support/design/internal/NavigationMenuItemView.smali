.class public Landroid/support/design/internal/NavigationMenuItemView;
.super LN;
.source "PG"

# interfaces
.implements LGd;


# static fields
.field public static final a0:[I


# instance fields
.field public final R:I

.field public S:Z

.field public final T:Landroid/widget/CheckedTextView;

.field public U:Landroid/widget/FrameLayout;

.field public V:Ltd;

.field public final W:Lh7;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroid/support/design/internal/NavigationMenuItemView;->a0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, LN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p2, LO;

    invoke-direct {p2, p0}, LO;-><init>(Landroid/support/design/internal/NavigationMenuItemView;)V

    iput-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->W:Lh7;

    .line 3
    iget p2, p0, Lbg;->z:I

    if-eqz p2, :cond_0

    .line 4
    iput v0, p0, Lbg;->z:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e008e

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d5

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->R:I

    const p1, 0x7f0b0155

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    .line 9
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setDuplicateParentStateEnabled(Z)V

    .line 10
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->W:Lh7;

    invoke-static {p1, p2}, LA7;->a(Landroid/view/View;Lh7;)V

    return-void
.end method


# virtual methods
.method public a(Ltd;I)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    .line 2
    invoke-virtual {p1}, Ltd;->isVisible()Z

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_2

    .line 4
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f040096

    .line 7
    invoke-virtual {v4, v5, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 9
    sget-object v5, Landroid/support/design/internal/NavigationMenuItemView;->a0:[I

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    iget p2, p2, Landroid/util/TypedValue;->data:I

    invoke-direct {v6, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 10
    sget-object p2, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, p2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 11
    :goto_1
    invoke-static {p0, v4}, LA7;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Ltd;->isCheckable()Z

    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 14
    iget-boolean v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->S:Z

    if-eq v4, p2, :cond_4

    .line 15
    iput-boolean p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->S:Z

    .line 16
    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->W:Lh7;

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    const/16 v5, 0x800

    if-eqz p2, :cond_3

    .line 17
    sget-object p2, Lh7;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p2, v4, v5}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    throw v3

    .line 18
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ltd;->isChecked()Z

    move-result p2

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 20
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 21
    invoke-virtual {p1}, Ltd;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 22
    iget-object p2, p1, Ltd;->A:Ljava/lang/CharSequence;

    .line 23
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p1}, Ltd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 25
    iget v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->R:I

    invoke-virtual {p2, v1, v1, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    :cond_5
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    .line 27
    invoke-virtual {v4, p2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p1}, Ltd;->getActionView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 29
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    if-nez v3, :cond_6

    const v3, 0x7f0b0154

    .line 30
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    .line 31
    :cond_6
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    iget-object v3, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    :cond_7
    iget-object p2, p1, Ltd;->M:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p1, Ltd;->N:Ljava/lang/CharSequence;

    .line 36
    invoke-static {p0, p1}, LYh;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    .line 38
    iget-object p2, p1, Ltd;->A:Ljava/lang/CharSequence;

    if-nez p2, :cond_8

    .line 39
    invoke-virtual {p1}, Ltd;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    .line 40
    invoke-virtual {p1}, Ltd;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_9

    .line 41
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    .line 43
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lag;

    const/4 p2, -0x1

    .line 44
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 45
    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 46
    :cond_9
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->T:Landroid/widget/CheckedTextView;

    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    .line 48
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lag;

    const/4 p2, -0x2

    .line 49
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 50
    iget-object p2, p0, Landroid/support/design/internal/NavigationMenuItemView;->U:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ltd;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    return-object v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ltd;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuItemView;->V:Ltd;

    invoke-virtual {v0}, Ltd;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/support/design/internal/NavigationMenuItemView;->a0:[I

    invoke-static {p1, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method
