.class public abstract LpR0;
.super Landroid/support/v7/widget/Toolbar;
.source "PG"

# interfaces
.implements LqR0;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements LOM0;
.implements LSO0;


# instance fields
.field public A0:Landroid/graphics/drawable/Drawable;

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:I

.field public G0:I

.field public H0:I

.field public I0:I

.field public J0:Landroid/content/res/ColorStateList;

.field public K0:Landroid/content/res/ColorStateList;

.field public L0:LRM0;

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:Z

.field public R0:I

.field public S0:I

.field public m0:Z

.field public n0:LrR0;

.field public o0:Z

.field public p0:Z

.field public q0:Landroid/widget/LinearLayout;

.field public r0:Landroid/widget/EditText;

.field public s0:Landroid/widget/ImageButton;

.field public t0:LoR0;

.field public u0:Z

.field public v0:Z

.field public w0:Z

.field public x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

.field public y0:Landroid/graphics/drawable/Drawable;

.field public z0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LpR0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(LQM0;)V
    .locals 6

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/widget/selection/SelectableListLayout;->a(LQM0;Landroid/content/res/Resources;)I

    move-result v0

    .line 57
    iget-boolean v1, p0, LpR0;->o0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LpR0;->m0:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 59
    iget v4, p1, LQM0;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, LpR0;->o0:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, LpR0;->m0:Z

    if-nez v4, :cond_1

    iget v4, p0, LpR0;->B0:I

    if-nez v4, :cond_1

    .line 60
    iget v4, p0, LpR0;->M0:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 61
    :goto_1
    iget p1, p1, LQM0;->a:I

    if-ne p1, v5, :cond_2

    if-eqz v1, :cond_2

    .line 62
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v0, p1, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v0, 0x0

    goto :goto_2

    .line 63
    :cond_2
    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v2, p1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 64
    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget p1, p0, LpR0;->B0:I

    if-eqz p1, :cond_3

    iget v2, p0, LpR0;->N0:I

    .line 66
    :cond_3
    iget-boolean p1, p0, LpR0;->m0:Z

    if-eqz p1, :cond_4

    iget p1, p0, LpR0;->O0:I

    goto :goto_3

    .line 67
    :cond_4
    iget p1, p0, LpR0;->P0:I

    :goto_3
    add-int/2addr v4, v0

    add-int/2addr v4, v2

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, p1

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    .line 70
    invoke-static {p0, v4, v1, v0, p1}, LA7;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public a(LRM0;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LpR0;->M0:I

    .line 53
    iput-object p1, p0, LpR0;->L0:LRM0;

    .line 54
    iget-object v0, p1, LRM0;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p1, LRM0;->a:LQM0;

    invoke-interface {p0, p1}, LOM0;->a(LQM0;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4

    .line 40
    iget-boolean v0, p0, LpR0;->m0:Z

    .line 41
    iget-object v1, p0, LpR0;->n0:LrR0;

    invoke-virtual {v1}, LrR0;->c()Z

    move-result v1

    iput-boolean v1, p0, LpR0;->m0:Z

    .line 42
    iget-object v1, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    if-nez v1, :cond_0

    const v1, 0x7f0b03d5

    .line 43
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/NumberRollView;

    iput-object v1, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    .line 44
    :cond_0
    iget-boolean v1, p0, LpR0;->m0:Z

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p0, p1, v0}, LpR0;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 46
    :cond_1
    iget-boolean v1, p0, LpR0;->o0:Z

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p0}, LpR0;->o()V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, LpR0;->n()V

    .line 49
    :goto_0
    iget-boolean v1, p0, LpR0;->m0:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    const v0, 0x7f130123

    goto :goto_1

    :cond_3
    const v0, 0x7f130124

    .line 50
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 5

    .line 71
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->E0:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 72
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->F0:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 73
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->F0:I

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-interface {v0, v1, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 74
    iget-boolean v0, p0, LpR0;->p0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LpR0;->q0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x2

    .line 75
    invoke-virtual {p0, v0}, LpR0;->e(I)V

    .line 76
    iget v0, p0, LpR0;->H0:I

    .line 77
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 78
    invoke-virtual {p0, v0}, LpR0;->f(I)V

    .line 79
    iget-object v0, p0, LpR0;->z0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, LpR0;->c(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p2, :cond_1

    .line 82
    iget-object p2, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {p2, v2, v2}, Lorg/chromium/chrome/browser/widget/NumberRollView;->a(IZ)V

    .line 83
    :cond_1
    iget-object p2, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1, v3}, Lorg/chromium/chrome/browser/widget/NumberRollView;->a(IZ)V

    .line 84
    iget-boolean p1, p0, LpR0;->o0:Z

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Lrc1;->x:Lrc1;

    .line 86
    iget-object p2, p0, LpR0;->r0:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lrc1;->a(Landroid/view/View;)Z

    .line 87
    :cond_2
    invoke-virtual {p0}, LpR0;->p()V

    return-void
.end method

.method public a(LrR0;IIIZ)V
    .locals 0

    .line 1
    iput p2, p0, LpR0;->C0:I

    .line 2
    iput p3, p0, LpR0;->E0:I

    .line 3
    iput p4, p0, LpR0;->F0:I

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, LpR0;->w0:Z

    .line 5
    iput-object p1, p0, LpR0;->n0:LrR0;

    .line 6
    iget-object p1, p1, LrR0;->d:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07029e

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LpR0;->N0:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07029b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LpR0;->O0:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f07029d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LpR0;->P0:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f06011e

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 12
    iput p1, p0, LpR0;->G0:I

    .line 13
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 14
    invoke-virtual {p0, p1}, LpR0;->f(I)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0600ee

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 17
    iput p1, p0, LpR0;->H0:I

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p3, 0x7f060169

    invoke-static {p1, p3}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, LpR0;->J0:Landroid/content/res/ColorStateList;

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f06007e

    .line 20
    invoke-static {p1, p4}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, LpR0;->K0:Landroid/content/res/ColorStateList;

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p5, 0x7f1401bf

    invoke-virtual {p0, p1, p5}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 22
    iget p1, p0, LpR0;->C0:I

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p5, 0x7f080171

    .line 25
    invoke-static {p1, p5, p3}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LpR0;->y0:Landroid/graphics/drawable/Drawable;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 27
    invoke-static {p1, p5, p4}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LpR0;->z0:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f0800fb

    .line 29
    invoke-static {p1, p4, p3}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LpR0;->A0:Landroid/graphics/drawable/Drawable;

    .line 30
    sget-object p1, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->d:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object p1

    check-cast p1, LKO0;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, LpR0;->Q0:Z

    const p1, 0x7f130581

    .line 33
    iput p1, p0, LpR0;->R0:I

    const p1, 0x7f130340

    .line 34
    iput p1, p0, LpR0;->S0:I

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 37
    invoke-static {p2, p5, p3}, Lwc1;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 38
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 39
    throw p1
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LpR0;->p0:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, LpR0;->u0:Z

    .line 3
    invoke-virtual {p0}, LpR0;->q()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iput p1, p0, LpR0;->B0:I

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget p1, p0, LpR0;->B0:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LpR0;->A0:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, LpR0;->K0:Landroid/content/res/ColorStateList;

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f1300d5

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, LpR0;->A0:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, LpR0;->J0:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const p1, 0x7f130113

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, LpR0;->A0:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->c(I)V

    .line 11
    invoke-virtual {p0}, LpR0;->p()V

    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LpR0;->w0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5
    invoke-static {v0, p1}, LdT;->a(Landroid/view/Window;I)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-static {p1}, LAO0;->d(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 8
    invoke-static {v0, p1}, LdT;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, LpR0;->o0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LpR0;->o0:Z

    .line 3
    iget-object v1, p0, LpR0;->r0:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget-object v1, Lrc1;->x:Lrc1;

    .line 5
    iget-object v3, p0, LpR0;->r0:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Lrc1;->a(Landroid/view/View;)Z

    .line 6
    invoke-virtual {p0}, LpR0;->n()V

    .line 7
    iget-object v1, p0, LpR0;->t0:LoR0;

    check-cast v1, LS30;

    .line 8
    iget-object v3, v1, LS30;->E:LP30;

    invoke-virtual {v3, v2}, LP30;->a(Ljava/lang/String;)V

    .line 9
    iget-object v2, v1, LS30;->E:LP30;

    .line 10
    iput-boolean v0, v2, LP30;->E:Z

    .line 11
    iget-object v2, v2, LBg;->w:LCg;

    invoke-virtual {v2}, LCg;->b()V

    .line 12
    iget-object v2, v1, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    .line 13
    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 14
    iget-object v2, v2, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v2, v1, LS30;->L:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    iget-object v2, v1, LS30;->J:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    iget-object v2, v1, LS30;->H:LrR0;

    .line 19
    iget-object v2, v2, LrR0;->c:Ljava/util/Set;

    .line 20
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF30;

    .line 21
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v2, v1, LS30;->B:Lorg/chromium/chrome/browser/contacts_picker/ContactsPickerToolbar;

    invoke-virtual {v2}, LpR0;->l()V

    .line 23
    iget-object v2, v1, LS30;->K:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LF30;

    .line 24
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_2
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, LQ30;

    invoke-direct {v3, v1, v0}, LQ30;-><init>(LS30;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LpR0;->p0:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, LpR0;->o0:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, LpR0;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public n()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Z

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->E0:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->F0:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 4
    iget-boolean v0, p0, LpR0;->p0:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, LpR0;->q0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, LpR0;->q()V

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, LpR0;->e(I)V

    .line 8
    iget v0, p0, LpR0;->G0:I

    .line 9
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {p0, v0}, LpR0;->f(I)V

    .line 11
    iget-object v0, p0, LpR0;->y0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget v0, p0, LpR0;->C0:I

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    iget-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    invoke-virtual {v0, v2, v2}, Lorg/chromium/chrome/browser/widget/NumberRollView;->a(IZ)V

    .line 16
    invoke-virtual {p0}, LpR0;->p()V

    return-void
.end method

.method public final o()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->E0:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->F0:I

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 3
    iget-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, LpR0;->q0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, LpR0;->e(I)V

    const v0, 0x7f0802b8

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 7
    iget v0, p0, LpR0;->I0:I

    invoke-virtual {p0, v0}, LpR0;->f(I)V

    .line 8
    invoke-virtual {p0}, LpR0;->p()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, LpR0;->B0:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, LpR0;->n0:LrR0;

    invoke-virtual {p1}, LrR0;->a()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, LpR0;->m()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, LpR0;->n0:LrR0;

    invoke-virtual {v0}, LrR0;->a()V

    .line 3
    iget-boolean v0, p0, LpR0;->o0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LpR0;->l()V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 1
    sget-object p2, Lrc1;->x:Lrc1;

    .line 2
    invoke-virtual {p2, p1}, Lrc1;->a(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0139

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b03d5

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/widget/NumberRollView;

    iput-object v0, p0, LpR0;->x0:Lorg/chromium/chrome/browser/widget/NumberRollView;

    const v1, 0x7f110019

    .line 4
    iput v1, v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->A:I

    const v1, 0x7f130560

    .line 5
    iput v1, v0, Lorg/chromium/chrome/browser/widget/NumberRollView;->B:I

    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, LpR0;->L0:LRM0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, LRM0;->a:LQM0;

    .line 3
    invoke-virtual {p0, v0}, LpR0;->a(LQM0;)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-boolean v0, p0, LpR0;->p0:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    iget v1, p0, LpR0;->D0:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, LpR0;->u0:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, LpR0;->m0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, LpR0;->o0:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, LpR0;->v0:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 2
    invoke-virtual {p0, p1}, LpR0;->f(I)V

    return-void
.end method
