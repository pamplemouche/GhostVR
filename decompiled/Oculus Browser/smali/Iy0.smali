.class public abstract LIy0;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/view/MenuItem;Landroid/app/Activity;)V
    .locals 3

    .line 19
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 22
    invoke-interface {p0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 23
    invoke-static {p0, v2, p1}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5

    .line 24
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/SearchView;

    const v0, 0x7f0b03a8

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, ""

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_c

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const p0, 0x7f0b0016

    .line 27
    invoke-virtual {p2, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    add-int/lit8 p2, p1, -0x1

    const/4 v2, 0x0

    if-lez p1, :cond_4

    .line 29
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ActionMenuView;

    goto :goto_4

    :cond_3
    move p1, p2

    goto :goto_3

    :cond_4
    move-object p0, v2

    :goto_4
    if-nez p0, :cond_5

    goto :goto_8

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    .line 32
    :cond_6
    instance-of v3, p1, Landroid/widget/ImageView;

    if-nez v3, :cond_7

    goto :goto_6

    .line 33
    :cond_7
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    .line 34
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->e()Landroid/view/Menu;

    .line 36
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->P:Lee;

    .line 37
    iget-object v4, p0, Lee;->E:Lbe;

    if-eqz v4, :cond_8

    .line 38
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5

    .line 39
    :cond_8
    iget-boolean v4, p0, Lee;->G:Z

    if-eqz v4, :cond_9

    .line 40
    iget-object v2, p0, Lee;->F:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_5
    if-ne v3, v2, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-nez p2, :cond_b

    goto :goto_8

    .line 41
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_8
    return-void
.end method

.method public static a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;LHy0;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    .line 2
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->a(Z)V

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 6
    invoke-static {p0, p1, p2}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V

    .line 7
    :cond_0
    new-instance p1, LCy0;

    invoke-direct {p1, p0, p2, p3}, LCy0;-><init>(Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const p1, 0x7f0b03a8

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LDy0;

    invoke-direct {v2, v0, p0, p2, p3}, LDy0;-><init>(Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V

    .line 9
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 11
    new-instance v1, LEy0;

    invoke-direct {v1, p0, v0, p2}, LEy0;-><init>(Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;Landroid/app/Activity;)V

    .line 12
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 13
    new-instance p1, LFy0;

    invoke-direct {p1, p0, p2, p3}, LFy0;-><init>(Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V

    .line 14
    iput-object p1, v0, Landroid/support/v7/widget/SearchView;->k0:Landroid/view/View$OnClickListener;

    .line 15
    new-instance p1, LGy0;

    invoke-direct {p1, p0, p2, p3}, LGy0;-><init>(Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V

    .line 16
    iput-object p1, v0, Landroid/support/v7/widget/SearchView;->h0:Lwh;

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 1

    .line 17
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x102002c

    if-ne p0, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1, p3}, LIy0;->a(Landroid/view/MenuItem;Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
