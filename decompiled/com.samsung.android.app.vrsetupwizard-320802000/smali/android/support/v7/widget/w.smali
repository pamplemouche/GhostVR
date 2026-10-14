.class Landroid/support/v7/widget/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/q;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/p;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/q;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/q;->a(Landroid/support/v7/view/menu/p;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/support/v7/widget/x;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/w;->a:Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->b:Landroid/support/v7/widget/x;

    invoke-interface {p1, p2}, Landroid/support/v7/widget/x;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
