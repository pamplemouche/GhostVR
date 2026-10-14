.class Landroid/support/design/internal/i;
.super Landroid/support/v7/widget/ej;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/ej<",
        "Landroid/support/design/internal/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/g;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/internal/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/view/menu/t;

.field private d:Z


# direct methods
.method private d(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/m;->a:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/design/internal/i;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/internal/i;->d:Z

    iget-object v2, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    new-instance v3, Landroid/support/design/internal/j;

    invoke-direct {v3}, Landroid/support/design/internal/j;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    iget-object v3, v0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v3, v3, Landroid/support/design/internal/g;->b:Landroid/support/v7/view/menu/p;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v3, :cond_f

    iget-object v8, v0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v8, v8, Landroid/support/design/internal/g;->b:Landroid/support/v7/view/menu/p;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/p;->i()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/view/menu/t;

    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0, v8}, Landroid/support/design/internal/i;->a(Landroid/support/v7/view/menu/t;)V

    :cond_1
    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8, v4}, Landroid/support/v7/view/menu/t;->a(Z)V

    :cond_2
    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v2, :cond_3

    iget-object v10, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    new-instance v11, Landroid/support/design/internal/l;

    iget-object v12, v0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget v12, v12, Landroid/support/design/internal/g;->j:I

    invoke-direct {v11, v12, v4}, Landroid/support/design/internal/l;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v10, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    new-instance v11, Landroid/support/design/internal/m;

    invoke-direct {v11, v8}, Landroid/support/design/internal/m;-><init>(Landroid/support/v7/view/menu/t;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroid/support/v7/view/menu/t;

    invoke-virtual {v14}, Landroid/support/v7/view/menu/t;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    invoke-virtual {v14}, Landroid/support/v7/view/menu/t;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    invoke-virtual {v14}, Landroid/support/v7/view/menu/t;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v14, v4}, Landroid/support/v7/view/menu/t;->a(Z)V

    :cond_5
    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v0, v8}, Landroid/support/design/internal/i;->a(Landroid/support/v7/view/menu/t;)V

    :cond_6
    iget-object v15, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/design/internal/m;

    invoke-direct {v1, v14}, Landroid/support/design/internal/m;-><init>(Landroid/support/v7/view/menu/t;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    iget-object v1, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Landroid/support/design/internal/i;->d(II)V

    goto :goto_4

    :cond_9
    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->getGroupId()I

    move-result v1

    if-eq v1, v5, :cond_c

    iget-object v5, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_b

    add-int/lit8 v7, v7, 0x1

    iget-object v6, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    new-instance v9, Landroid/support/design/internal/l;

    iget-object v10, v0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget v10, v10, Landroid/support/design/internal/g;->j:I

    iget-object v11, v0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget v11, v11, Landroid/support/design/internal/g;->j:I

    invoke-direct {v9, v10, v11}, Landroid/support/design/internal/l;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v6, v5

    goto :goto_3

    :cond_c
    if-nez v6, :cond_d

    invoke-virtual {v8}, Landroid/support/v7/view/menu/t;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v7, v5}, Landroid/support/design/internal/i;->d(II)V

    const/4 v6, 0x1

    :cond_d
    :goto_3
    new-instance v5, Landroid/support/design/internal/m;

    invoke-direct {v5, v8}, Landroid/support/design/internal/m;-><init>(Landroid/support/v7/view/menu/t;)V

    iput-boolean v6, v5, Landroid/support/design/internal/m;->a:Z

    iget-object v8, v0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_f
    iput-boolean v4, v0, Landroid/support/design/internal/i;->d:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/q;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Landroid/support/design/internal/h;

    iget-object p2, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object p2, p2, Landroid/support/design/internal/g;->a:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/support/design/internal/h;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    new-instance p2, Landroid/support/design/internal/o;

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Landroid/support/design/internal/o;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_2
    new-instance p2, Landroid/support/design/internal/p;

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Landroid/support/design/internal/p;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    :cond_3
    new-instance p2, Landroid/support/design/internal/n;

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->d:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v1, v1, Landroid/support/design/internal/g;->k:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v0, p1, v1}, Landroid/support/design/internal/n;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "android:menu:checked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/design/internal/i;->d:Z

    iget-object v2, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/k;

    instance-of v5, v4, Landroid/support/design/internal/m;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/support/design/internal/m;

    invoke-virtual {v4}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/view/menu/t;->getItemId()I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-virtual {p0, v4}, Landroid/support/design/internal/i;->a(Landroid/support/v7/view/menu/t;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Landroid/support/design/internal/i;->d:Z

    invoke-direct {p0}, Landroid/support/design/internal/i;->g()V

    :cond_2
    const-string v1, "android:menu:action_views"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v2, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/k;

    instance-of v3, v2, Landroid/support/design/internal/m;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    check-cast v2, Landroid/support/design/internal/m;

    invoke-virtual {v2}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/view/menu/t;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/view/menu/t;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/internal/ParcelableSparseArray;

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(Landroid/support/design/internal/q;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/internal/n;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/support/design/internal/q;->d:Landroid/view/View;

    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Landroid/support/design/internal/NavigationMenuItemView;->b()V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/internal/q;I)V
    .locals 3

    invoke-virtual {p0, p2}, Landroid/support/design/internal/i;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/l;

    iget-object p1, p1, Landroid/support/design/internal/q;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/support/design/internal/l;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/internal/l;->b()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Landroid/support/design/internal/q;->d:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/m;

    invoke-virtual {p2}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/view/menu/t;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroid/support/design/internal/q;->d:Landroid/view/View;

    check-cast p1, Landroid/support/design/internal/NavigationMenuItemView;

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-boolean v0, v0, Landroid/support/design/internal/g;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget v0, v0, Landroid/support/design/internal/g;->e:I

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_3
    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/internal/i;->a:Landroid/support/design/internal/g;

    iget-object v0, v0, Landroid/support/design/internal/g;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/be;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/design/internal/m;

    iget-boolean v0, p2, Landroid/support/design/internal/m;->a:Z

    invoke-virtual {p1, v0}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    invoke-virtual {p2}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/view/menu/t;I)V

    :goto_1
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/t;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/internal/i;->c:Landroid/support/v7/view/menu/t;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/t;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/i;->c:Landroid/support/v7/view/menu/t;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/t;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1
    iput-object p1, p0, Landroid/support/design/internal/i;->c:Landroid/support/v7/view/menu/t;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/t;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/ft;)V
    .locals 0

    check-cast p1, Landroid/support/design/internal/q;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/i;->a(Landroid/support/design/internal/q;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/ft;I)V
    .locals 0

    check-cast p1, Landroid/support/design/internal/q;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/i;->a(Landroid/support/design/internal/q;I)V

    return-void
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/design/internal/k;

    instance-of v0, p1, Landroid/support/design/internal/l;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/design/internal/j;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    instance-of v0, p1, Landroid/support/design/internal/m;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/support/design/internal/m;

    invoke-virtual {p1}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/view/menu/t;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ft;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/i;->a(Landroid/view/ViewGroup;I)Landroid/support/design/internal/q;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/internal/i;->g()V

    invoke-virtual {p0}, Landroid/support/design/internal/i;->f()V

    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroid/support/design/internal/i;->c:Landroid/support/v7/view/menu/t;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/view/menu/t;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Landroid/support/design/internal/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/internal/k;

    instance-of v5, v4, Landroid/support/design/internal/m;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/support/design/internal/m;

    invoke-virtual {v4}, Landroid/support/design/internal/m;->a()Landroid/support/v7/view/menu/t;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/support/v7/view/menu/t;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    new-instance v6, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v6}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroid/support/v7/view/menu/t;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:action_views"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method
