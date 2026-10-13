.class public Lorg/chromium/chrome/browser/history/HistoryManagerToolbar;
.super LpR0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, LpR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0f0003

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->b(I)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const p2, 0x7f0b03d6

    .line 4
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f130240

    .line 5
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1}, LJ/N;->MVEXC539(Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    const v1, 0x7f0b03d1

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 9
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->b()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p1}, LJ/N;->MXdDobzR(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->removeItem(I)V

    :cond_1
    return-void

    .line 12
    :cond_2
    throw v0

    .line 13
    :cond_3
    throw v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, LpR0;->m0:Z

    .line 2
    invoke-super {p0, p1}, LpR0;->a(Ljava/util/List;)V

    .line 3
    iget-boolean p1, p0, LpR0;->m0:Z

    if-eqz p1, :cond_5

    .line 4
    iget-object p1, p0, LpR0;->n0:LrR0;

    .line 5
    iget-object p1, p1, LrR0;->c:Ljava/util/Set;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const v1, 0x7f0b03d1

    .line 7
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110005

    new-array v6, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 10
    invoke-virtual {v4, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const v1, 0x7f0b03d0

    .line 11
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v4

    const/4 v5, 0x0

    .line 12
    :goto_0
    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_2

    .line 13
    invoke-interface {v4, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 14
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    if-ne v8, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v7

    :goto_1
    if-ne p1, v3, :cond_3

    const/4 v2, 0x1

    .line 15
    :cond_3
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    throw v7

    :cond_5
    :goto_2
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LpR0;->p0:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, LpR0;->u0:Z

    .line 3
    invoke-virtual {p0}, LpR0;->q()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-super {p0}, LpR0;->n()V

    const/4 v0, 0x0

    .line 2
    throw v0
.end method
