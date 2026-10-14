.class public Landroid/support/design/internal/e;
.super Landroid/support/v7/view/menu/p;


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/internal/e;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/t;

    new-instance p2, Landroid/support/design/internal/r;

    invoke-virtual {p0}, Landroid/support/design/internal/e;->e()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0, p1}, Landroid/support/design/internal/r;-><init>(Landroid/content/Context;Landroid/support/design/internal/e;Landroid/support/v7/view/menu/t;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/t;->a(Landroid/support/v7/view/menu/ap;)V

    return-object p2
.end method
