.class public LWe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LVe;

.field public final b:LUe;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(LVe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LWe;->a:LVe;

    .line 3
    new-instance p1, LUe;

    invoke-direct {p1}, LUe;-><init>()V

    iput-object p1, p0, LWe;->b:LUe;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LWe;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 37
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0}, Lzg;->a()I

    move-result v0

    iget-object v1, p0, LWe;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 4

    .line 38
    invoke-virtual {p0, p1}, LWe;->c(I)I

    move-result p1

    .line 39
    iget-object v0, p0, LWe;->b:LUe;

    invoke-virtual {v0, p1}, LUe;->d(I)Z

    .line 40
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    .line 41
    iget-object v1, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 42
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Ldh;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ldh;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 45
    invoke-static {v0, v2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x100

    .line 46
    invoke-virtual {v1, v2}, Ldh;->a(I)V

    .line 47
    :cond_2
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, LWe;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    iget v1, p1, Ldh;->M:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    iput v1, p1, Ldh;->L:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Ldh;->w:Landroid/view/View;

    .line 8
    invoke-static {v1}, LA7;->g(Landroid/view/View;)I

    move-result v1

    iput v1, p1, Ldh;->L:I

    :goto_0
    const/4 v1, 0x4

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;I)Z

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 10
    throw p1
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    if-gez p2, :cond_0

    .line 25
    iget-object p2, p0, LWe;->a:LVe;

    check-cast p2, Lzg;

    invoke-virtual {p2}, Lzg;->a()I

    move-result p2

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, p2}, LWe;->c(I)I

    move-result p2

    .line 27
    :goto_0
    iget-object v0, p0, LWe;->b:LUe;

    invoke-virtual {v0, p2, p4}, LUe;->a(IZ)V

    if-eqz p4, :cond_1

    .line 28
    invoke-virtual {p0, p1}, LWe;->a(Landroid/view/View;)V

    .line 29
    :cond_1
    iget-object p4, p0, LWe;->a:LVe;

    check-cast p4, Lzg;

    if-eqz p4, :cond_5

    .line 30
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 31
    invoke-virtual {v0}, Ldh;->k()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ldh;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Called attach on a child which is not detached: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 33
    invoke-static {p3, p2}, LZi;->a(Landroid/support/v7/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_3
    :goto_1
    iget v1, v0, Ldh;->F:I

    and-int/lit16 v1, v1, -0x101

    iput v1, v0, Ldh;->F:I

    .line 35
    :cond_4
    iget-object p4, p4, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p4, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 36
    throw p1
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 11
    iget-object p2, p0, LWe;->a:LVe;

    check-cast p2, Lzg;

    invoke-virtual {p2}, Lzg;->a()I

    move-result p2

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p2}, LWe;->c(I)I

    move-result p2

    .line 13
    :goto_0
    iget-object v0, p0, LWe;->b:LUe;

    invoke-virtual {v0, p2, p3}, LUe;->a(IZ)V

    if-eqz p3, :cond_1

    .line 14
    invoke-virtual {p0, p1}, LWe;->a(Landroid/view/View;)V

    .line 15
    :cond_1
    iget-object p3, p0, LWe;->a:LVe;

    check-cast p3, Lzg;

    .line 16
    iget-object v0, p3, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 17
    iget-object p2, p3, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 18
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    .line 19
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView;->H:LBg;

    .line 20
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 22
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView;->b0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSg;

    check-cast v0, Lxi;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    throw p3

    :cond_3
    return-void

    .line 24
    :cond_4
    throw p3
.end method

.method public b()I
    .locals 1

    .line 3
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0}, Lzg;->a()I

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .line 4
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    .line 5
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object v1, p0, LWe;->b:LUe;

    invoke-virtual {v1, p1}, LUe;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object v0, p0, LWe;->b:LUe;

    invoke-virtual {v0, p1}, LUe;->b(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, LWe;->c(I)I

    move-result p1

    .line 2
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    invoke-virtual {v0, p1}, Lzg;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final c(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, LWe;->a:LVe;

    check-cast v1, Lzg;

    invoke-virtual {v1}, Lzg;->a()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2
    iget-object v3, p0, LWe;->b:LUe;

    invoke-virtual {v3, v2}, LUe;->b(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 3
    :goto_1
    iget-object p1, p0, LWe;->b:LUe;

    invoke-virtual {p1, v2}, LUe;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    .line 4
    iget-object v0, p0, LWe;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    .line 9
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, LWe;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, LWe;->a:LVe;

    check-cast v0, Lzg;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Ldh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, v0, Lzg;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5
    iget v2, p1, Ldh;->L:I

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(Ldh;I)Z

    .line 6
    iput v1, p1, Ldh;->L:I

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LWe;->b:LUe;

    invoke-virtual {v1}, LUe;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LWe;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
