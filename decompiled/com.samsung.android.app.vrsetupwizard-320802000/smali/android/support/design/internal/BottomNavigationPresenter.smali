.class public Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/af;


# instance fields
.field private a:Landroid/support/v7/view/menu/p;

.field private b:Landroid/support/design/internal/b;

.field private c:Z

.field private d:I


# virtual methods
.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/p;)V
    .locals 1

    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/v7/view/menu/p;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/b;->a(Landroid/support/v7/view/menu/p;)V

    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->a:Landroid/support/v7/view/menu/p;

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget p1, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    invoke-virtual {v0, p1}, Landroid/support/design/internal/b;->a(I)V

    :cond_0
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
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {p1}, Landroid/support/design/internal/b;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {p1}, Landroid/support/design/internal/b;->b()V

    :goto_0
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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->d:I

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->c:Z

    return-void
.end method

.method public b(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->b:Landroid/support/design/internal/b;

    invoke-virtual {v1}, Landroid/support/design/internal/b;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->a:I

    return-object v0
.end method
