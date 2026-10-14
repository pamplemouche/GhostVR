.class Landroid/support/v7/widget/kz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field a:Landroid/support/v7/view/menu/p;

.field b:Landroid/support/v7/view/menu/t;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/p;)V
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/kz;->a:Landroid/support/v7/view/menu/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/p;->d(Landroid/support/v7/view/menu/t;)Z

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/kz;->a:Landroid/support/v7/view/menu/p;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/ag;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Z)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object p1, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/kz;->a:Landroid/support/v7/view/menu/p;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/p;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/kz;->a:Landroid/support/v7/view/menu/p;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/p;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/kz;->a:Landroid/support/v7/view/menu/p;

    iget-object v0, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/kz;->b(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/ap;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z
    .locals 2

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->i()V

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/t;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_3

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->j()Landroid/support/v7/widget/la;

    move-result-object p1

    const v0, 0x800003

    iget-object v1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->c:I

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    iput v0, p1, Landroid/support/v7/widget/la;->a:I

    const/4 v0, 0x2

    iput v0, p1, Landroid/support/v7/widget/la;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()V

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/t;->e(Z)V

    iget-object p2, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of p2, p2, Landroid/support/v7/view/d;

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast p2, Landroid/support/v7/view/d;

    invoke-interface {p2}, Landroid/support/v7/view/d;->a()V

    :cond_4
    return p1
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z
    .locals 1

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    instance-of p1, p1, Landroid/support/v7/view/d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    check-cast p1, Landroid/support/v7/view/d;

    invoke-interface {p1}, Landroid/support/v7/view/d;->b()V

    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->a:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->l()V

    iput-object v0, p0, Landroid/support/v7/widget/kz;->b:Landroid/support/v7/view/menu/t;

    iget-object p1, p0, Landroid/support/v7/widget/kz;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/t;->e(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
