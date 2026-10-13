.class public final Lsg;
.super Lug;
.source "PG"


# direct methods
.method public constructor <init>(LQg;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lug;-><init>(LQg;Lsg;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lug;->a:LQg;

    .line 2
    iget v0, v0, LQg;->o:I

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 5
    iget-object v1, p0, Lug;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->g(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lug;->a:LQg;

    invoke-virtual {v0, p1}, LQg;->c(I)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lug;->a:LQg;

    .line 2
    iget v1, v0, LQg;->o:I

    .line 3
    invoke-virtual {v0}, LQg;->k()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 5
    iget-object v1, p0, Lug;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->f(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    .line 3
    iget-object v0, p0, Lug;->a:LQg;

    invoke-virtual {v0}, LQg;->k()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 2
    iget-object v1, p0, Lug;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->e(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public d()I
    .locals 1

    .line 3
    iget-object v0, p0, Lug;->a:LQg;

    .line 4
    iget v0, v0, LQg;->m:I

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LRg;

    .line 2
    iget-object v1, p0, Lug;->a:LQg;

    invoke-virtual {v1, p1}, LQg;->d(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public e()I
    .locals 1

    .line 3
    iget-object v0, p0, Lug;->a:LQg;

    .line 4
    iget v0, v0, LQg;->n:I

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lug;->a:LQg;

    iget-object v1, p0, Lug;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, LQg;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lug;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lug;->a:LQg;

    invoke-virtual {v0}, LQg;->j()I

    move-result v0

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 3

    .line 2
    iget-object v0, p0, Lug;->a:LQg;

    iget-object v1, p0, Lug;->c:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, LQg;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lug;->c:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lug;->a:LQg;

    .line 2
    iget v1, v0, LQg;->o:I

    .line 3
    invoke-virtual {v0}, LQg;->j()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lug;->a:LQg;

    .line 4
    invoke-virtual {v0}, LQg;->k()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method
