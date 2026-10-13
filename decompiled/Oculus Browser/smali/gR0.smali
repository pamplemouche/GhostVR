.class public LgR0;
.super LfR0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, LfR0;-><init>(Landroid/content/Context;IILjava/util/List;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, LfR0;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_1

    .line 3
    iget-object p1, p0, LfR0;->x:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 4
    iget p1, p0, LfR0;->w:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LfR0;->x:Landroid/widget/TextView;

    .line 5
    :cond_0
    iget-object p1, p0, LfR0;->x:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0802a8

    const v1, 0x7f06007a

    .line 7
    invoke-static {p3, v0, v1}, LDM0;->a(Landroid/content/Context;II)LDM0;

    move-result-object p3

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10
    iget-object p3, p0, LfR0;->x:Landroid/widget/TextView;

    const v0, 0x7f07010b

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 12
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 13
    iget-object p1, p0, LfR0;->x:Landroid/widget/TextView;

    const p3, 0x7f1401ed

    invoke-static {p1, p3}, LdT;->a(Landroid/widget/TextView;I)V

    .line 14
    iget-object p1, p0, LfR0;->x:Landroid/widget/TextView;

    invoke-static {}, Lwc1;->a()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 15
    invoke-static {p2}, LA7;->m(Landroid/view/View;)I

    move-result p1

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 19
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-object p2
.end method
