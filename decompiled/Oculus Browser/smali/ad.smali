.class public Lad;
.super Lyf;
.source "PG"


# instance fields
.field public final synthetic F:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad;->F:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 2
    invoke-direct {p0, p1}, Lyf;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()LJd;
    .locals 2

    .line 1
    iget-object v0, p0, Lad;->F:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->E:Lbd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, LYd;

    .line 3
    iget-object v0, v0, LYd;->a:Lee;

    iget-object v0, v0, Lee;->R:LXd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LDd;->a()LBd;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lad;->F:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->C:Lpd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->z:Ltd;

    invoke-interface {v1, v0}, Lpd;->a(Ltd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lad;->b()LJd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, LJd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
