.class public final Ltd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LI4;


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Ljava/lang/CharSequence;

.field public C:Landroid/content/Intent;

.field public D:C

.field public E:I

.field public F:C

.field public G:I

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:I

.field public J:Lqd;

.field public K:LNd;

.field public L:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public M:Ljava/lang/CharSequence;

.field public N:Ljava/lang/CharSequence;

.field public O:Landroid/content/res/ColorStateList;

.field public P:Landroid/graphics/PorterDuff$Mode;

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:I

.field public U:I

.field public V:Landroid/view/View;

.field public W:Lj7;

.field public X:Landroid/view/MenuItem$OnActionExpandListener;

.field public Y:Z

.field public Z:Landroid/view/ContextMenu$ContextMenuInfo;

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Lqd;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 2
    iput v0, p0, Ltd;->E:I

    .line 3
    iput v0, p0, Ltd;->G:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ltd;->I:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ltd;->O:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v1, p0, Ltd;->P:Landroid/graphics/PorterDuff$Mode;

    .line 7
    iput-boolean v0, p0, Ltd;->Q:Z

    .line 8
    iput-boolean v0, p0, Ltd;->R:Z

    .line 9
    iput-boolean v0, p0, Ltd;->S:Z

    const/16 v1, 0x10

    .line 10
    iput v1, p0, Ltd;->T:I

    .line 11
    iput v0, p0, Ltd;->U:I

    .line 12
    iput-boolean v0, p0, Ltd;->Y:Z

    .line 13
    iput-object p1, p0, Ltd;->J:Lqd;

    .line 14
    iput p3, p0, Ltd;->w:I

    .line 15
    iput p2, p0, Ltd;->x:I

    .line 16
    iput p4, p0, Ltd;->y:I

    .line 17
    iput p5, p0, Ltd;->z:I

    .line 18
    iput-object p6, p0, Ltd;->A:Ljava/lang/CharSequence;

    .line 19
    iput p7, p0, Ltd;->U:I

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lj7;)LI4;
    .locals 2

    .line 16
    iget-object v0, p0, Ltd;->W:Lj7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 17
    iput-object v1, v0, Lj7;->a:Li7;

    .line 18
    :cond_0
    iput-object v1, p0, Ltd;->V:Landroid/view/View;

    .line 19
    iput-object p1, p0, Ltd;->W:Lj7;

    .line 20
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    .line 21
    iget-object p1, p0, Ltd;->W:Lj7;

    if-eqz p1, :cond_1

    .line 22
    new-instance v0, Lsd;

    invoke-direct {v0, p0}, Lsd;-><init>(Ltd;)V

    invoke-virtual {p1, v0}, Lj7;->a(Li7;)V

    :cond_1
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 2
    iget-boolean v0, p0, Ltd;->S:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ltd;->Q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ltd;->R:Z

    if-eqz v0, :cond_3

    .line 3
    :cond_0
    invoke-static {p1}, Lx4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Ltd;->Q:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ltd;->O:Landroid/content/res/ColorStateList;

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Ltd;->R:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Ltd;->P:Landroid/graphics/PorterDuff$Mode;

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Ltd;->S:Z

    :cond_3
    return-object p1
.end method

.method public a()Lj7;
    .locals 1

    .line 15
    iget-object v0, p0, Ltd;->W:Lj7;

    return-object v0
.end method

.method public a(Z)V
    .locals 3

    .line 12
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v1

    .line 13
    iput p1, p0, Ltd;->T:I

    if-eq v0, p1, :cond_1

    .line 14
    iget-object p1, p0, Ltd;->J:Lqd;

    invoke-virtual {p1, v2}, Lqd;->b(Z)V

    :cond_1
    return-void
.end method

.method public b()C
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->J:Lqd;

    invoke-virtual {v0}, Lqd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Ltd;->F:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Ltd;->D:C

    :goto_0
    return v0
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Ltd;->T:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Ltd;->T:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Ltd;->T:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Ltd;->T:I

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 3
    iget v0, p0, Ltd;->U:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ltd;->V:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Ltd;->W:Lj7;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p0}, Lj7;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltd;->V:Landroid/view/View;

    .line 6
    :cond_0
    iget-object v0, p0, Ltd;->V:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    .line 2
    iput p1, p0, Ltd;->T:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public collapseActionView()Z
    .locals 2

    .line 1
    iget v0, p0, Ltd;->U:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ltd;->V:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Ltd;->X:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Ltd;->J:Lqd;

    invoke-virtual {v0, p0}, Lqd;->a(Ltd;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget v0, p0, Ltd;->T:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->J:Lqd;

    invoke-virtual {v0}, Lqd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ltd;->b()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public expandActionView()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltd;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ltd;->X:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Ltd;->J:Lqd;

    invoke-virtual {v0, p0}, Lqd;->b(Ltd;)Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->V:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ltd;->W:Lj7;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Lj7;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ltd;->V:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticModifiers()I
    .locals 1

    .line 1
    iget v0, p0, Ltd;->G:I

    return v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 1
    iget-char v0, p0, Ltd;->F:C

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->M:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Ltd;->x:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Ltd;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Ltd;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget v0, p0, Ltd;->I:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Ltd;->J:Lqd;

    .line 5
    iget-object v1, v1, Lqd;->w:Landroid/content/Context;

    .line 6
    invoke-static {v1, v0}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Ltd;->I:I

    .line 8
    iput-object v0, p0, Ltd;->H:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p0, v0}, Ltd;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->O:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->P:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->C:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Ltd;->w:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->Z:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericModifiers()I
    .locals 1

    .line 1
    iget v0, p0, Ltd;->E:I

    return v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 1
    iget-char v0, p0, Ltd;->D:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Ltd;->y:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->K:LNd;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Ltd;->A:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->B:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltd;->A:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->N:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->K:LNd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltd;->Y:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 1
    iget v0, p0, Ltd;->T:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    .line 1
    iget v0, p0, Ltd;->T:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ltd;->W:Lj7;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj7;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Ltd;->W:Lj7;

    invoke-virtual {v0}, Lj7;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setActionView(Landroid/view/View;)LI4;
    .locals 2

    .line 2
    iput-object p1, p0, Ltd;->V:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ltd;->W:Lj7;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ltd;->w:I

    if-lez v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lqd;->G:Z

    .line 8
    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 9
    iget-object v0, p0, Ltd;->J:Lqd;

    .line 10
    iget-object v0, v0, Lqd;->w:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 12
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltd;->setActionView(Landroid/view/View;)LI4;

    return-object p0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd;->setActionView(Landroid/view/View;)LI4;

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Ltd;->F:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Ltd;->F:C

    .line 3
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Ltd;->F:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Ltd;->G:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Ltd;->F:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Ltd;->G:I

    .line 7
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 2
    iput p1, p0, Ltd;->T:I

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 7

    .line 1
    iget v0, p0, Ltd;->T:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Ltd;->J:Lqd;

    if-eqz p1, :cond_6

    .line 3
    invoke-interface {p0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 4
    iget-object v1, p1, Lqd;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lqd;->i()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    .line 6
    iget-object v4, p1, Lqd;->B:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltd;

    .line 7
    iget v5, v4, Ltd;->x:I

    if-ne v5, v0, :cond_4

    .line 8
    iget v5, v4, Ltd;->T:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {v4}, Ltd;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-ne v4, p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 10
    :goto_2
    invoke-virtual {v4, v6}, Ltd;->a(Z)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lqd;->h()V

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 12
    throw p1

    .line 13
    :cond_7
    invoke-virtual {p0, p1}, Ltd;->a(Z)V

    :goto_4
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)LI4;
    .locals 1

    .line 1
    iput-object p1, p0, Ltd;->M:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 3
    iput-object p1, p0, Ltd;->M:Ljava/lang/CharSequence;

    .line 4
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Ltd;->T:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Ltd;->T:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Ltd;->T:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Ltd;->T:I

    .line 3
    :goto_0
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ltd;->H:Landroid/graphics/drawable/Drawable;

    .line 6
    iput p1, p0, Ltd;->I:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Ltd;->S:Z

    .line 8
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ltd;->I:I

    .line 2
    iput-object p1, p0, Ltd;->H:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Ltd;->S:Z

    .line 4
    iget-object p1, p0, Ltd;->J:Lqd;

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Ltd;->O:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ltd;->Q:Z

    .line 3
    iput-boolean p1, p0, Ltd;->S:Z

    .line 4
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Ltd;->P:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ltd;->R:Z

    .line 3
    iput-boolean p1, p0, Ltd;->S:Z

    .line 4
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Ltd;->C:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Ltd;->D:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-char p1, p0, Ltd;->D:C

    .line 3
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 4
    iget-char v0, p0, Ltd;->D:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Ltd;->E:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 5
    :cond_0
    iput-char p1, p0, Ltd;->D:C

    .line 6
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Ltd;->E:I

    .line 7
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Ltd;->X:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Ltd;->L:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Ltd;->D:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Ltd;->F:C

    .line 3
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 4
    iput-char p1, p0, Ltd;->D:C

    .line 5
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Ltd;->E:I

    .line 6
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Ltd;->F:C

    .line 7
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Ltd;->G:I

    .line 8
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 3

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Ltd;->U:I

    .line 3
    iget-object p1, p0, Ltd;->J:Lqd;

    .line 4
    iput-boolean v1, p1, Lqd;->G:Z

    .line 5
    invoke-virtual {p1, v1}, Lqd;->b(Z)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 5
    iget-object v0, p0, Ltd;->J:Lqd;

    .line 6
    iget-object v0, v0, Lqd;->w:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltd;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Ltd;->A:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Ltd;->J:Lqd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lqd;->b(Z)V

    .line 3
    iget-object v0, p0, Ltd;->K:LNd;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, LNd;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Ltd;->B:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)LI4;
    .locals 1

    .line 1
    iput-object p1, p0, Ltd;->N:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 3
    iput-object p1, p0, Ltd;->N:Ljava/lang/CharSequence;

    .line 4
    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ltd;->c(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltd;->J:Lqd;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lqd;->D:Z

    .line 3
    invoke-virtual {p1, v0}, Lqd;->b(Z)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
