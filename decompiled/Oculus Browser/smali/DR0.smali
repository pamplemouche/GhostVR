.class public LDR0;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field public final A:Z

.field public final w:Landroid/content/Context;

.field public final x:Ljava/util/Set;

.field public final y:Z

.field public final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0e0030

    goto :goto_0

    :cond_0
    const v0, 0x7f0e002f

    .line 1
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, LDR0;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 4
    iput-object p3, p0, LDR0;->x:Ljava/util/Set;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec1;

    .line 7
    invoke-interface {v0}, Lec1;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lec1;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    .line 8
    :goto_2
    iput-boolean p2, p0, LDR0;->y:Z

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070055

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, LDR0;->z:I

    .line 10
    iput-boolean p4, p0, LDR0;->A:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Lec1;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    invoke-interface {p2}, Lec1;->g()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, -0x2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, LDR0;->w:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 7
    :goto_0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-object p1
.end method

.method public final a(Lec1;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0175

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-interface {p1}, Lec1;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    invoke-interface {p1}, Lec1;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LDR0;->y:Z

    return v0
.end method

.method public final b(Landroid/widget/ImageView;Lec1;)Landroid/widget/ImageView;
    .locals 1

    .line 7
    invoke-interface {p2}, Lec1;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p2, 0x8

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, LDR0;->w:Landroid/content/Context;

    invoke-interface {p2}, Lec1;->k()I

    move-result p2

    invoke-static {v0, p2}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p1
.end method

.method public final b(Lec1;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0b0179

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-interface {p1}, Lec1;->c()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 1
    iget-object p2, p0, LDR0;->w:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, LDR0;->A:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e0030

    goto :goto_0

    :cond_0
    const v0, 0x7f0e002f

    .line 3
    :goto_0
    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance v0, Ldc1;

    invoke-direct {v0, p3}, Ldc1;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lec1;

    .line 6
    iget-boolean v1, p0, LDR0;->A:Z

    const v2, 0x7f0b0176

    const v3, 0x7f0b0194

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0, v0, p2}, LDR0;->a(Lec1;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p2}, LDR0;->b(Lec1;Landroid/view/View;)Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0, p3, v0}, LDR0;->b(Landroid/widget/ImageView;Lec1;)Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p0, p3, v0}, LDR0;->a(Landroid/widget/ImageView;Lec1;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_2
    invoke-interface {v0}, Lec1;->b()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 13
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 14
    iget-object p3, p0, LDR0;->w:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07005d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 15
    invoke-virtual {p1, v4, p3, v4, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_3
    return-object p2

    .line 16
    :cond_4
    iget-object v1, p0, LDR0;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f070054

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Ldc1;

    if-nez p1, :cond_5

    .line 18
    iget-object p1, v5, Ldc1;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 19
    :cond_5
    iget-object v6, p0, LDR0;->w:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 20
    iget-object v7, v5, Ldc1;->b:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v4, v4, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    iget-object v6, p0, LDR0;->x:Ljava/util/Set;

    if-eqz v6, :cond_6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, LDR0;->w:Landroid/content/Context;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600b0

    .line 24
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    .line 25
    :cond_6
    iget-object p1, p0, LDR0;->w:Landroid/content/Context;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f0600b1

    .line 27
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 28
    :goto_1
    iget-object v5, v5, Ldc1;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    :goto_2
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 30
    invoke-interface {v0}, Lec1;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, -0x2

    :cond_7
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0, v0, p2}, LDR0;->a(Lec1;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    .line 34
    invoke-interface {v0}, Lec1;->b()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 35
    invoke-interface {v0}, Lec1;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 36
    invoke-static {p1}, LA7;->m(Landroid/view/View;)I

    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    .line 38
    iget v6, p0, LDR0;->z:I

    .line 39
    invoke-virtual {p1, v1, v6, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 40
    :cond_8
    invoke-interface {v0}, Lec1;->a()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {v0}, Lec1;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    .line 41
    :cond_9
    invoke-virtual {p1, p3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 42
    :cond_a
    :goto_3
    invoke-virtual {p1, p3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 43
    :goto_4
    iget-object p3, p0, LDR0;->w:Landroid/content/Context;

    .line 44
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {v0}, Lec1;->h()I

    move-result v1

    .line 45
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 46
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    iget-object p3, p0, LDR0;->w:Landroid/content/Context;

    .line 48
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0702f6

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 49
    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    invoke-virtual {p0, v0, p2}, LDR0;->b(Lec1;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 51
    iget-object p3, p0, LDR0;->w:Landroid/content/Context;

    .line 52
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-interface {v0}, Lec1;->j()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 53
    invoke-virtual {p1, v4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_b
    const p1, 0x7f0b0431

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 56
    invoke-interface {v0}, Lec1;->i()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_c

    .line 57
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 58
    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    :goto_5
    invoke-interface {v0}, Lec1;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    move-object p1, p3

    :goto_6
    invoke-virtual {p0, p1, v0}, LDR0;->b(Landroid/widget/ImageView;Lec1;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 60
    invoke-virtual {p0, p1, v0}, LDR0;->a(Landroid/widget/ImageView;Lec1;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p3

    .line 61
    iget-object v1, p0, LDR0;->w:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0}, Lec1;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 62
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 63
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 64
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lec1;

    .line 3
    invoke-interface {p1}, Lec1;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lec1;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
