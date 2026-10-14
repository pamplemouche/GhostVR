.class public Landroid/support/v7/widget/fv;
.super Landroid/support/v4/view/b;


# instance fields
.field final a:Landroid/support/v7/widget/fu;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/fu;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/b;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a/b;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    invoke-virtual {v0}, Landroid/support/v7/widget/fu;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    iget-object v0, v0, Landroid/support/v7/widget/fu;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/et;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    iget-object v0, v0, Landroid/support/v7/widget/fu;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/et;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/et;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    invoke-virtual {v0}, Landroid/support/v7/widget/fu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    iget-object v0, v0, Landroid/support/v7/widget/fu;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/et;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/fv;->a:Landroid/support/v7/widget/fu;

    iget-object v0, v0, Landroid/support/v7/widget/fu;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/et;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/et;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
