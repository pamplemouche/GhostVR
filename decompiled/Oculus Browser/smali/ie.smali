.class public Lie;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lod;


# instance fields
.field public final synthetic w:Landroid/support/v7/widget/ActionMenuView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lie;->w:Landroid/support/v7/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lie;->w:Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->R:Lod;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lod;->a(Lqd;)V

    :cond_0
    return-void
.end method

.method public a(Lqd;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lie;->w:Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->W:Lje;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    check-cast p1, LOh;

    .line 3
    iget-object p1, p1, LOh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->f0:LTh;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, LTh;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
