.class public Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;
.super LpR0;
.source "PG"

# interfaces
.implements LW10;
.implements LTh;
.implements Landroid/view/View$OnClickListener;
.implements LTM0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, LpR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->d()V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->z:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p1, 0x7f0f0000

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(I)V

    .line 5
    iput-object p0, p0, Landroid/support/v7/widget/Toolbar;->f0:LTh;

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d2

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f1302f2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d4

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f1301a7

    .line 8
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 9
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f1301a5

    .line 10
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 11
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d9

    .line 12
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f130240

    .line 13
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 14
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d3

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LpR0;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    const v2, 0x7f0b03d3

    invoke-interface {v0, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p0

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 4
    :goto_1
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->f0:LTh;

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LpR0;->o0:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, LpR0;->m()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public n()V
    .locals 3

    .line 1
    invoke-super {p0}, LpR0;->n()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0b03ad

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0b017a

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->i()Z

    .line 2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b017a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b00d8

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b03ad

    if-ne p1, v0, :cond_1

    .line 6
    throw v2

    .line 7
    :cond_1
    throw v2

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 9
    throw v2
.end method
