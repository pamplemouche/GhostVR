.class public abstract Lyd;
.super Ldd;
.source "PG"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field public A:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;LI4;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ldd;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/ActionProvider;)Lud;
.end method

.method public collapseActionView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->a()Lj7;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lud;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lud;

    iget-object v0, v0, Lud;->b:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lvd;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lvd;

    .line 4
    iget-object v0, v0, Lvd;->w:Landroid/view/CollapsibleActionView;

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, LI4;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lyd;->a(Landroid/view/ActionProvider;)Lud;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0, p1}, LI4;->a(Lj7;)LI4;

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2

    .line 4
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setActionView(I)Landroid/view/MenuItem;

    .line 5
    iget-object p1, p0, Led;->w:Ljava/lang/Object;

    check-cast p1, LI4;

    invoke-interface {p1}, LI4;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    new-instance v1, Lvd;

    invoke-direct {v1, p1}, Lvd;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, LI4;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lvd;

    invoke-direct {v0, p1}, Lvd;-><init>(Landroid/view/View;)V

    move-object p1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1, p2}, LI4;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setContentDescription(Ljava/lang/CharSequence;)LI4;

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1, p2}, LI4;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    if-eqz p1, :cond_0

    new-instance v1, Lwd;

    invoke-direct {v1, p0, p1}, Lwd;-><init>(Lyd;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    if-eqz p1, :cond_0

    new-instance v1, Lxd;

    invoke-direct {v1, p0, p1}, Lxd;-><init>(Lyd;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1, p2, p3, p4}, LI4;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setShowAsAction(I)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 2
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, LI4;->setTooltipText(Ljava/lang/CharSequence;)LI4;

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Led;->w:Ljava/lang/Object;

    check-cast v0, LI4;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method
