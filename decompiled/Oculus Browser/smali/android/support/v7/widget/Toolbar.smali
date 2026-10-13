.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field public A:Landroid/widget/ImageView;

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:Ljava/lang/CharSequence;

.field public D:Landroid/widget/ImageButton;

.field public E:Landroid/view/View;

.field public F:Landroid/content/Context;

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:Lhh;

.field public Q:I

.field public R:I

.field public S:I

.field public T:Ljava/lang/CharSequence;

.field public U:Ljava/lang/CharSequence;

.field public V:I

.field public W:I

.field public a0:Z

.field public b0:Z

.field public final c0:Ljava/util/ArrayList;

.field public final d0:Ljava/util/ArrayList;

.field public final e0:[I

.field public f0:LTh;

.field public final g0:Lje;

.field public h0:LXh;

.field public i0:Lee;

.field public j0:LRh;

.field public k0:Z

.field public final l0:Ljava/lang/Runnable;

.field public w:Landroid/support/v7/widget/ActionMenuView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, 0x7f040266

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x800013

    .line 2
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->S:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 5
    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->e0:[I

    .line 6
    new-instance v1, LOh;

    invoke-direct {v1, p0}, LOh;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->g0:Lje;

    .line 7
    new-instance v1, LPh;

    invoke-direct {v1, p0}, LPh;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->l0:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LeS;->V0:[I

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v0, v3}, LNh;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)LNh;

    move-result-object p2

    const/16 v0, 0x1b

    .line 9
    invoke-virtual {p2, v0, v3}, LNh;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->H:I

    const/16 v0, 0x12

    .line 10
    invoke-virtual {p2, v0, v3}, LNh;->f(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar;->I:I

    .line 11
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->S:I

    .line 12
    iget-object v1, p2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 13
    iput v0, p0, Landroid/support/v7/widget/Toolbar;->S:I

    const/16 v0, 0x30

    .line 14
    iget-object v1, p2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    .line 15
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->J:I

    const/16 p1, 0x15

    .line 16
    invoke-virtual {p2, p1, v3}, LNh;->b(II)I

    move-result p1

    const/16 v0, 0x1a

    .line 17
    invoke-virtual {p2, v0}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {p2, v0, p1}, LNh;->b(II)I

    move-result p1

    .line 19
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->O:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->N:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->M:I

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->L:I

    const/16 p1, 0x18

    const/4 v0, -0x1

    .line 20
    invoke-virtual {p2, p1, v0}, LNh;->b(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 21
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->L:I

    :cond_1
    const/16 p1, 0x17

    .line 22
    invoke-virtual {p2, p1, v0}, LNh;->b(II)I

    move-result p1

    if-ltz p1, :cond_2

    .line 23
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->M:I

    :cond_2
    const/16 p1, 0x19

    .line 24
    invoke-virtual {p2, p1, v0}, LNh;->b(II)I

    move-result p1

    if-ltz p1, :cond_3

    .line 25
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->N:I

    :cond_3
    const/16 p1, 0x16

    .line 26
    invoke-virtual {p2, p1, v0}, LNh;->b(II)I

    move-result p1

    if-ltz p1, :cond_4

    .line 27
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->O:I

    :cond_4
    const/16 p1, 0xd

    .line 28
    invoke-virtual {p2, p1, v0}, LNh;->c(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->K:I

    const/16 p1, 0x9

    const/high16 v1, -0x80000000

    .line 29
    invoke-virtual {p2, p1, v1}, LNh;->b(II)I

    move-result p1

    const/4 v2, 0x5

    .line 30
    invoke-virtual {p2, v2, v1}, LNh;->b(II)I

    move-result v2

    const/4 v4, 0x7

    .line 31
    invoke-virtual {p2, v4, v3}, LNh;->c(II)I

    move-result v4

    const/16 v5, 0x8

    .line 32
    invoke-virtual {p2, v5, v3}, LNh;->c(II)I

    move-result v5

    .line 33
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->a()V

    .line 34
    iget-object v6, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    .line 35
    iput-boolean v3, v6, Lhh;->h:Z

    if-eq v4, v1, :cond_5

    .line 36
    iput v4, v6, Lhh;->e:I

    iput v4, v6, Lhh;->a:I

    :cond_5
    if-eq v5, v1, :cond_6

    .line 37
    iput v5, v6, Lhh;->f:I

    iput v5, v6, Lhh;->b:I

    :cond_6
    if-ne p1, v1, :cond_7

    if-eq v2, v1, :cond_8

    .line 38
    :cond_7
    iget-object v4, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    invoke-virtual {v4, p1, v2}, Lhh;->a(II)V

    :cond_8
    const/16 p1, 0xa

    .line 39
    invoke-virtual {p2, p1, v1}, LNh;->b(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->Q:I

    const/4 p1, 0x6

    .line 40
    invoke-virtual {p2, p1, v1}, LNh;->b(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/Toolbar;->R:I

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p2, p1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->B:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x3

    .line 42
    invoke-virtual {p2, p1}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->C:Ljava/lang/CharSequence;

    const/16 p1, 0x14

    .line 43
    invoke-virtual {p2, p1}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 45
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    :cond_9
    const/16 p1, 0x11

    .line 46
    invoke-virtual {p2, p1}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 48
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 49
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/content/Context;

    const/16 p1, 0x10

    .line 50
    invoke-virtual {p2, p1, v3}, LNh;->f(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->d(I)V

    const/16 p1, 0xf

    .line 51
    invoke-virtual {p2, p1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 52
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 p1, 0xe

    .line 53
    invoke-virtual {p2, p1}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 55
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    :cond_c
    const/16 p1, 0xb

    .line 56
    invoke-virtual {p2, p1}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    const/16 p1, 0xc

    .line 58
    invoke-virtual {p2, p1}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 61
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    if-nez v1, :cond_e

    .line 62
    new-instance v1, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    .line 63
    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    .line 65
    :cond_e
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 66
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_f
    const/16 p1, 0x1c

    .line 67
    invoke-virtual {p2, p1}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 68
    invoke-virtual {p2, p1, v0}, LNh;->a(II)I

    move-result p1

    .line 69
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->V:I

    .line 70
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 71
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    const/16 p1, 0x13

    .line 72
    invoke-virtual {p2, p1}, LNh;->e(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 73
    invoke-virtual {p2, p1, v0}, LNh;->a(II)I

    move-result p1

    .line 74
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->W:I

    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    :cond_11
    iget-object p1, p2, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    .line 90
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result v0

    .line 91
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    :cond_0
    return v2

    :cond_1
    return p1
.end method

.method public final a(Landroid/view/View;)I
    .locals 1

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/view/View;I)I
    .locals 6

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LSh;

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    .line 63
    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 64
    :goto_0
    iget v2, v0, Ly8;->a:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    .line 65
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->S:I

    and-int/lit8 v2, v2, 0x70

    :cond_1
    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_4

    .line 66
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v4, v3, p2

    sub-int/2addr v4, v2

    sub-int/2addr v4, p1

    .line 69
    div-int/lit8 v4, v4, 0x2

    .line 70
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v4, v5, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    .line 71
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge v3, p1, :cond_3

    sub-int/2addr p1, v3

    sub-int/2addr v4, p1

    .line 72
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3
    :goto_1
    add-int/2addr p2, v4

    return p2

    .line 73
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    return v1

    .line 74
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public final a(Landroid/view/View;IIII[I)I
    .locals 7

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 42
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 43
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    neg-int v1, v1

    .line 45
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    .line 46
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p6

    add-int/2addr v1, v6

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 48
    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p6

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p6, p3

    add-int/2addr p6, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 50
    invoke-static {p4, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 51
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p1, v6

    return p1
.end method

.method public final a(Landroid/view/View;I[II)I
    .locals 4

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LSh;

    .line 54
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 55
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p2

    neg-int p2, v1

    .line 56
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v2

    .line 57
    invoke-virtual {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, v3, p3

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v3, p2, p4, v1}, Landroid/view/View;->layout(IIII)V

    .line 60
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p1

    add-int/2addr p3, v3

    return p3
.end method

.method public final a()V
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lhh;

    invoke-direct {v0}, Lhh;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 12
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->H:I

    .line 13
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v7/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 20
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;IIIII)V
    .locals 3

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 33
    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    add-int/2addr v1, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 35
    invoke-static {p4, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 36
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p4

    const/high16 p5, 0x40000000    # 2.0f

    if-eq p4, p5, :cond_1

    if-ltz p6, :cond_1

    if-eqz p4, :cond_0

    .line 37
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p3, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 38
    :cond_0
    invoke-static {p6, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 39
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object v0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)LSh;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    check-cast v0, LSh;

    :goto_0
    const/4 v1, 0x1

    .line 26
    iput v1, v0, LSh;->b:I

    if-eqz p2, :cond_2

    .line 27
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 5

    .line 75
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    .line 78
    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    .line 79
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    .line 80
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LSh;

    .line 82
    iget v2, v1, LSh;->b:I

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Ly8;->a:I

    .line 83
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    .line 85
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LSh;

    .line 87
    iget v4, v2, LSh;->b:I

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Ly8;->a:I

    .line 88
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->a(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 89
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final b(Landroid/view/View;I[II)I
    .locals 5

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LSh;

    .line 42
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    .line 43
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    .line 44
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    .line 45
    invoke-virtual {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I)I

    move-result p3

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    sub-int v1, p2, p4

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1, v1, p3, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 48
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p4, p1

    sub-int/2addr p2, p4

    return p2
.end method

.method public final b()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->c()V

    .line 30
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    .line 31
    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lqd;

    .line 33
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, LRh;

    invoke-direct {v1, p0}, LRh;-><init>(Landroid/support/v7/widget/Toolbar;)V

    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    .line 35
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v2, 0x1

    .line 36
    iget-object v1, v1, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    .line 37
    iput-boolean v2, v1, Lee;->M:Z

    .line 38
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lqd;->a(LFd;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 39
    new-instance v0, LVc;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, LVc;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 22
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, LSe;

    const v2, 0x1010084

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v0, v3, v2}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->I:I

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->W:I

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->U:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c()V
    .locals 3

    .line 30
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 32
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    .line 34
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->G:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->c(I)V

    .line 35
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->g0:Lje;

    .line 36
    iput-object v1, v0, Landroid/support/v7/widget/ActionMenuView;->W:Lje;

    .line 37
    iput-object v2, v0, Landroid/support/v7/widget/ActionMenuView;->Q:LEd;

    .line 38
    iput-object v2, v0, Landroid/support/v7/widget/ActionMenuView;->R:Lod;

    .line 39
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object v0

    const v1, 0x800005

    .line 40
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->J:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Ly8;->a:I

    .line 41
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 22
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()V

    .line 23
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    .line 24
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Landroid/view/Menu;

    .line 25
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    .line 26
    iget-object v1, v0, Lee;->E:Lbe;

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, v0, Lee;->G:Z

    .line 29
    iput-object p1, v0, Lee;->F:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, LSe;

    const v2, 0x1010084

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, v0, v3, v2}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput-object v1, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 9
    iget v1, p0, Landroid/support/v7/widget/Toolbar;->H:I

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->V:I

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->T:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c(Landroid/view/View;)Z
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->d0:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, LSh;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()V
    .locals 4

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, LBe;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f040265

    invoke-direct {v0, v1, v2, v3}, LBe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object v0

    const v1, 0x800003

    .line 8
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->J:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Ly8;->a:I

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->G:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->G:I

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/content/Context;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->F:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lqd;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v2, v0, Lhh;->g:Z

    if-eqz v2, :cond_1

    iget v0, v0, Lhh;->a:I

    goto :goto_1

    :cond_1
    iget v0, v0, Lhh;->b:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->R:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    .line 7
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    if-eqz v0, :cond_5

    .line 8
    iget-boolean v1, v0, Lhh;->g:Z

    if-eqz v1, :cond_4

    iget v0, v0, Lhh;->a:I

    goto :goto_2

    :cond_4
    iget v0, v0, Lhh;->b:I

    :goto_2
    move v1, v0

    :cond_5
    :goto_3
    return v1
.end method

.method public f()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v2, v0, Lhh;->g:Z

    if-eqz v2, :cond_0

    iget v0, v0, Lhh;->b:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lhh;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/Toolbar;->Q:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    if-eqz v0, :cond_4

    .line 6
    iget-boolean v1, v0, Lhh;->g:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lhh;->b:I

    goto :goto_1

    :cond_3
    iget v0, v0, Lhh;->a:I

    :goto_1
    move v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method public g()Landroid/view/Menu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->b()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->e()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()LSh;
    .locals 2

    .line 2
    new-instance v0, LSh;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, LSh;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->generateDefaultLayoutParams()LSh;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)LSh;
    .locals 1

    .line 3
    instance-of v0, p1, LSh;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, LSh;

    check-cast p1, LSh;

    invoke-direct {v0, p1}, LSh;-><init>(LSh;)V

    return-object v0

    .line 5
    :cond_0
    instance-of v0, p1, Ly8;

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, LSh;

    check-cast p1, Ly8;

    invoke-direct {v0, p1}, LSh;-><init>(Ly8;)V

    return-object v0

    .line 7
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, LSh;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, LSh;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 9
    :cond_2
    new-instance v0, LSh;

    invoke-direct {v0, p1}, LSh;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, LSh;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LSh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)LSh;

    move-result-object p1

    return-object p1
.end method

.method public h()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lee;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lee;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lee;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->l0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->b0:Z

    .line 3
    :cond_0
    iget-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->b0:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v4, p0, Landroid/support/v7/widget/Toolbar;->b0:Z

    :cond_1
    const/16 p1, 0xa

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->b0:Z

    :cond_3
    return v4
.end method

.method public onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    .line 8
    iget-object v11, v0, Landroid/support/v7/widget/Toolbar;->e0:[I

    .line 9
    aput v3, v11, v2

    aput v3, v11, v3

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v12

    if-ltz v12, :cond_1

    sub-int v13, p5, p3

    .line 11
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 12
    :goto_1
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v1, :cond_2

    .line 13
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v10, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_3

    .line 14
    :cond_2
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v6, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    move v14, v10

    .line 15
    :goto_3
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz v1, :cond_4

    .line 16
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_4

    .line 17
    :cond_4
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    .line 18
    :cond_5
    :goto_4
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v1, :cond_6

    .line 19
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 20
    :cond_6
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v14

    .line 21
    :cond_7
    :goto_5
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v15

    if-ne v15, v2, :cond_8

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->e()I

    move-result v15

    goto :goto_6

    .line 23
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->f()I

    move-result v15

    .line 24
    :goto_6
    invoke-static/range {p0 .. p0}, LA7;->i(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->f()I

    move-result v3

    goto :goto_7

    .line 26
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->e()I

    move-result v3

    :goto_7
    sub-int v2, v15, v13

    move/from16 p4, v7

    const/4 v7, 0x0

    .line 27
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v11, v7

    sub-int v2, v10, v14

    sub-int v2, v3, v2

    .line 28
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v7, 0x1

    aput v2, v11, v7

    .line 29
    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v10, v3

    .line 30
    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 31
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v1, :cond_a

    .line 32
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v0, v7, v3, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_8

    .line 33
    :cond_a
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v0, v7, v2, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 34
    :cond_b
    :goto_8
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v1, :cond_c

    .line 35
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v7, v3, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_9

    .line 36
    :cond_c
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v7, v2, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v2

    .line 37
    :cond_d
    :goto_9
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v7

    .line 38
    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_e

    .line 39
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LSh;

    .line 40
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v13

    const/4 v13, 0x0

    add-int/lit8 v14, v15, 0x0

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    if-eqz v10, :cond_f

    .line 41
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LSh;

    .line 42
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v4

    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    iget v13, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v13

    add-int/2addr v14, v4

    goto :goto_b

    :cond_f
    move/from16 v16, v4

    :goto_b
    if-nez v7, :cond_11

    if-eqz v10, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v17, v6

    move/from16 p3, v12

    goto/16 :goto_18

    :cond_11
    :goto_c
    if-eqz v7, :cond_12

    .line 43
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    goto :goto_d

    :cond_12
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    :goto_d
    if-eqz v10, :cond_13

    .line 44
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    goto :goto_e

    :cond_13
    iget-object v13, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    .line 45
    :goto_e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, LSh;

    .line 46
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, LSh;

    if-eqz v7, :cond_14

    .line 47
    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_15

    :cond_14
    if-eqz v10, :cond_16

    iget-object v15, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_16

    :cond_15
    move/from16 v17, v6

    const/4 v15, 0x1

    goto :goto_f

    :cond_16
    move/from16 v17, v6

    const/4 v15, 0x0

    .line 49
    :goto_f
    iget v6, v0, Landroid/support/v7/widget/Toolbar;->S:I

    and-int/lit8 v6, v6, 0x70

    move/from16 p3, v12

    const/16 v12, 0x30

    if-eq v6, v12, :cond_1a

    const/16 v12, 0x50

    if-eq v6, v12, :cond_19

    sub-int v6, v5, v8

    sub-int/2addr v6, v9

    sub-int/2addr v6, v14

    .line 50
    div-int/lit8 v6, v6, 0x2

    .line 51
    iget v12, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p5, v2

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->N:I

    move/from16 v18, v10

    add-int v10, v12, v2

    if-ge v6, v10, :cond_17

    add-int v6, v12, v2

    goto :goto_10

    :cond_17
    sub-int/2addr v5, v9

    sub-int/2addr v5, v14

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    .line 52
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->O:I

    add-int/2addr v2, v4

    if-ge v5, v2, :cond_18

    .line 53
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    sub-int/2addr v6, v2

    const/4 v2, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_18
    :goto_10
    add-int/2addr v8, v6

    goto :goto_11

    :cond_19
    move/from16 p5, v2

    move/from16 v18, v10

    sub-int/2addr v5, v9

    .line 54
    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Landroid/support/v7/widget/Toolbar;->O:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v14

    goto :goto_11

    :cond_1a
    move/from16 p5, v2

    move/from16 v18, v10

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/support/v7/widget/Toolbar;->N:I

    add-int v8, v2, v4

    :goto_11
    if-eqz v1, :cond_1f

    if-eqz v15, :cond_1b

    .line 56
    iget v1, v0, Landroid/support/v7/widget/Toolbar;->L:I

    goto :goto_12

    :cond_1b
    const/4 v1, 0x0

    :goto_12
    const/4 v2, 0x1

    aget v4, v11, v2

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    .line 57
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v1, v1

    .line 58
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_1c

    .line 59
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LSh;

    .line 60
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v3, v2

    .line 61
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    .line 62
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 63
    iget v5, v0, Landroid/support/v7/widget/Toolbar;->M:I

    sub-int/2addr v2, v5

    .line 64
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_13

    :cond_1c
    move v2, v3

    :goto_13
    if-eqz v18, :cond_1d

    .line 65
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LSh;

    .line 66
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v4

    .line 67
    iget-object v4, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    .line 68
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 69
    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v3, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 70
    iget v4, v0, Landroid/support/v7/widget/Toolbar;->M:I

    sub-int v4, v3, v4

    .line 71
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_14

    :cond_1d
    move v4, v3

    :goto_14
    if-eqz v15, :cond_1e

    .line 72
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v3, v1

    :cond_1e
    move/from16 v2, p5

    goto/16 :goto_18

    :cond_1f
    if-eqz v15, :cond_20

    .line 73
    iget v1, v0, Landroid/support/v7/widget/Toolbar;->L:I

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    aget v4, v11, v2

    sub-int/2addr v1, v4

    .line 74
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v4, v4, p5

    neg-int v1, v1

    .line 75
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v7, :cond_21

    .line 76
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LSh;

    .line 77
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v4

    .line 78
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    .line 79
    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v8, v2, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 80
    iget v6, v0, Landroid/support/v7/widget/Toolbar;->M:I

    add-int/2addr v2, v6

    .line 81
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_16

    :cond_21
    move v2, v4

    :goto_16
    if-eqz v18, :cond_22

    .line 82
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LSh;

    .line 83
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v5

    .line 84
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 85
    iget-object v6, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    .line 86
    iget-object v7, v0, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v8, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 87
    iget v6, v0, Landroid/support/v7/widget/Toolbar;->M:I

    add-int/2addr v5, v6

    .line 88
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_17

    :cond_22
    move v5, v4

    :goto_17
    if-eqz v15, :cond_23

    .line 89
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_18

    :cond_23
    move v2, v4

    .line 90
    :goto_18
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 91
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_24

    .line 92
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v12, p3

    invoke-virtual {v0, v5, v4, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    move/from16 v12, p3

    .line 93
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 94
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_25

    .line 95
    iget-object v5, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5, v3, v11, v12}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;I[II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 96
    :cond_25
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->a(Ljava/util/List;I)V

    .line 97
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 98
    aget v6, v11, v5

    .line 99
    aget v2, v11, v2

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v8, v2

    move v7, v6

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1b
    if-ge v2, v5, :cond_26

    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 102
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, LSh;

    .line 103
    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v13, v7

    .line 104
    iget v7, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    .line 105
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 106
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v13, v13

    .line 107
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    neg-int v7, v7

    .line 108
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 109
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v10

    add-int/2addr v9, v14

    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    move v8, v7

    move v7, v13

    goto :goto_1b

    :cond_26
    const/4 v8, 0x0

    sub-int v1, v16, v17

    sub-int v1, v1, p4

    .line 110
    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v17

    .line 111
    div-int/lit8 v2, v6, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v6, v1

    if-ge v1, v4, :cond_27

    goto :goto_1c

    :cond_27
    if-le v6, v3, :cond_28

    sub-int/2addr v6, v3

    sub-int v4, v1, v6

    goto :goto_1c

    :cond_28
    move v4, v1

    .line 112
    :goto_1c
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1d
    if-ge v8, v1, :cond_29

    .line 113
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v4, v11, v12}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 114
    :cond_29
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 17

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Landroid/support/v7/widget/Toolbar;->e0:[I

    .line 2
    invoke-static/range {p0 .. p0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 3
    :goto_0
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/support/v7/widget/Toolbar;->K:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 5
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 8
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9
    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    .line 10
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    .line 11
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 12
    :goto_1
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Landroid/support/v7/widget/Toolbar;->K:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 14
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    .line 15
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    .line 17
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 18
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 19
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->D:Landroid/widget/ImageButton;

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    .line 21
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 22
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->f()I

    move-result v1

    .line 23
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v15, v2, 0x0

    sub-int/2addr v1, v0

    .line 24
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    .line 25
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Landroid/support/v7/widget/Toolbar;->K:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIIII)V

    .line 27
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    .line 29
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 30
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 31
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    .line 32
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredState()I

    move-result v1

    .line 33
    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 34
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->e()I

    move-result v1

    .line 35
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v11, v2, v15

    sub-int/2addr v1, v0

    .line 36
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v12

    .line 37
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 39
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    .line 40
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 41
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 42
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->E:Landroid/view/View;

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    .line 44
    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 45
    :cond_4
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    .line 47
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 49
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 50
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->A:Landroid/widget/ImageView;

    .line 51
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    .line 52
    invoke-static {v14, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    .line 53
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v15, v13

    move v13, v11

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_8

    .line 54
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LSh;

    .line 56
    iget v0, v0, LSh;->b:I

    if-nez v0, :cond_7

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v8

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    .line 58
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v15, v0

    move v14, v1

    :cond_7
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 60
    :cond_8
    iget v0, v7, Landroid/support/v7/widget/Toolbar;->N:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->O:I

    add-int v11, v0, v1

    .line 61
    iget v0, v7, Landroid/support/v7/widget/Toolbar;->L:I

    iget v1, v7, Landroid/support/v7/widget/Toolbar;->M:I

    add-int v12, v0, v1

    .line 62
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v11

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    .line 64
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    iget-object v2, v7, Landroid/support/v7/widget/Toolbar;->x:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v16, v1

    move v6, v14

    move v14, v0

    goto :goto_5

    :cond_9
    move v6, v14

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 67
    :goto_5
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v16, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v11, v6

    move-object v6, v8

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 69
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    .line 70
    invoke-virtual {v7, v1}, Landroid/support/v7/widget/Toolbar;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    add-int v16, v1, v16

    .line 71
    iget-object v0, v7, Landroid/support/v7/widget/Toolbar;->y:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    .line 73
    invoke-static {v11, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_6

    :cond_a
    move v11, v6

    :goto_6
    move/from16 v0, v16

    add-int/2addr v13, v14

    .line 74
    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v13

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v6

    move/from16 v2, p1

    .line 78
    invoke-static {v0, v2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    .line 80
    invoke-static {v1, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    .line 81
    iget-boolean v2, v7, Landroid/support/v7/widget/Toolbar;->k0:Z

    if-nez v2, :cond_b

    :goto_7
    const/4 v9, 0x0

    goto :goto_9

    .line 82
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_d

    .line 83
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 84
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/Toolbar;->d(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_c

    .line 85
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    if-eqz v9, :cond_e

    const/4 v1, 0x0

    .line 86
    :cond_e
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/v7/widget/Toolbar$SavedState;

    .line 4
    iget-object v0, p1, Landroid/support/v4/view/AbsSavedState;->w:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->w:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->L:Lqd;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget v1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->y:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 11
    :cond_2
    iget-boolean p1, p1, Landroid/support/v7/widget/Toolbar$SavedState;->z:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->l0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->l0:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->a()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->P:Lhh;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-boolean p1, v0, Lhh;->g:Z

    if-ne v1, p1, :cond_1

    goto :goto_5

    .line 5
    :cond_1
    iput-boolean v1, v0, Lhh;->g:Z

    .line 6
    iget-boolean p1, v0, Lhh;->h:Z

    if-eqz p1, :cond_7

    const/high16 p1, -0x80000000

    if-eqz v1, :cond_4

    .line 7
    iget v1, v0, Lhh;->d:I

    if-eq v1, p1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, v0, Lhh;->e:I

    :goto_1
    iput v1, v0, Lhh;->a:I

    .line 8
    iget v1, v0, Lhh;->c:I

    if-eq v1, p1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v0, Lhh;->f:I

    :goto_2
    iput v1, v0, Lhh;->b:I

    goto :goto_5

    .line 9
    :cond_4
    iget v1, v0, Lhh;->c:I

    if-eq v1, p1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, v0, Lhh;->e:I

    :goto_3
    iput v1, v0, Lhh;->a:I

    .line 10
    iget v1, v0, Lhh;->d:I

    if-eq v1, p1, :cond_6

    goto :goto_4

    :cond_6
    iget v1, v0, Lhh;->f:I

    :goto_4
    iput v1, v0, Lhh;->b:I

    goto :goto_5

    .line 11
    :cond_7
    iget p1, v0, Lhh;->e:I

    iput p1, v0, Lhh;->a:I

    .line 12
    iget p1, v0, Lhh;->f:I

    iput p1, v0, Lhh;->b:I

    :goto_5
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->j0:LRh;

    if-eqz v1, :cond_0

    iget-object v1, v1, LRh;->x:Ltd;

    if-eqz v1, :cond_0

    .line 3
    iget v1, v1, Ltd;->w:I

    .line 4
    iput v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->y:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()Z

    move-result v1

    iput-boolean v1, v0, Landroid/support/v7/widget/Toolbar$SavedState;->z:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->a0:Z

    .line 3
    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/Toolbar;->a0:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Landroid/support/v7/widget/Toolbar;->a0:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/Toolbar;->a0:Z

    :cond_3
    return v3
.end method
