.class Lcom/oculus/horizon/widget/OculusMenuItem;
.super Ljava/lang/Object;
.source "OculusMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private final mGroupId:I

.field private final mItemCategoryOrder:I

.field private final mItemId:I

.field private mItemTitle:Ljava/lang/CharSequence;

.field private final mMenu:Lcom/oculus/horizon/widget/OculusMenu;

.field private mShowAsAction:I

.field private mVisible:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/OculusMenu;IIILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mVisible:Z

    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    .line 30
    iput p2, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mGroupId:I

    .line 31
    iput p3, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemId:I

    .line 32
    iput p4, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemCategoryOrder:I

    .line 33
    iput-object p5, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemTitle:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 2

    .prologue
    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlphabeticShortcut()C
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mGroupId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNumericShortcut()C
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemCategoryOrder:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasSubMenu()Z
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActionViewExpanded()Z
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mVisible:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 123
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 134
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 145
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 171
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 112
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 192
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stub"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowAsAction(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mShowAsAction:I

    .line 204
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/widget/OculusMenuItem;->setShowAsAction(I)V

    .line 209
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/OculusMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mItemTitle:Ljava/lang/CharSequence;

    .line 54
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 70
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mVisible:Z

    if-ne v0, p1, :cond_0

    .line 160
    :goto_0
    return-object p0

    .line 158
    :cond_0
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mVisible:Z

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusMenuItem;->mMenu:Lcom/oculus/horizon/widget/OculusMenu;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusMenu;->onItemVisibleChange()V

    goto :goto_0
.end method
