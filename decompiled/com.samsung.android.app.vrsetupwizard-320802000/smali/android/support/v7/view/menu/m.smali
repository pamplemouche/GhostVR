.class public Landroid/support/v7/view/menu/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/view/menu/af;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/view/menu/p;

.field d:Landroid/support/v7/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:I

.field h:Landroid/support/v7/view/menu/n;

.field private i:Landroid/support/v7/view/menu/ag;

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/view/menu/m;->g:I

    iput p2, p0, Landroid/support/v7/view/menu/m;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/view/menu/m;-><init>(II)V

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/ah;
    .locals 3

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/b/i;->sesl_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    if-nez p1, :cond_0

    new-instance p1, Landroid/support/v7/view/menu/n;

    invoke-direct {p1, p0}, Landroid/support/v7/view/menu/n;-><init>(Landroid/support/v7/view/menu/m;)V

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    :cond_0
    iget-object p1, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object p1, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/view/menu/p;)V
    .locals 2

    iget v0, p0, Landroid/support/v7/view/menu/m;->f:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->b:Landroid/view/LayoutInflater;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->b:Landroid/view/LayoutInflater;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-object p2, p0, Landroid/support/v7/view/menu/m;->c:Landroid/support/v7/view/menu/p;

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/n;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/m;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/ag;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/view/menu/m;->i:Landroid/support/v7/view/menu/ag;

    return-void
.end method

.method public a(Landroid/support/v7/view/menu/p;Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->i:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/ag;->a(Landroid/support/v7/view/menu/p;Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/n;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/support/v7/view/menu/ap;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/support/v7/view/menu/ap;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Landroid/support/v7/view/menu/s;

    invoke-direct {v0, p1}, Landroid/support/v7/view/menu/s;-><init>(Landroid/support/v7/view/menu/p;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/s;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->i:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/ag;->a(Landroid/support/v7/view/menu/p;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Landroid/support/v7/view/menu/m;->j:I

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/p;Landroid/support/v7/view/menu/t;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->d:Landroid/support/v7/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/m;->a(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public d()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/view/menu/n;

    invoke-direct {v0, p0}, Landroid/support/v7/view/menu/n;-><init>(Landroid/support/v7/view/menu/m;)V

    iput-object v0, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroid/support/v7/view/menu/m;->c:Landroid/support/v7/view/menu/p;

    iget-object p2, p0, Landroid/support/v7/view/menu/m;->h:Landroid/support/v7/view/menu/n;

    invoke-virtual {p2, p3}, Landroid/support/v7/view/menu/n;->a(I)Landroid/support/v7/view/menu/t;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/support/v7/view/menu/p;->a(Landroid/view/MenuItem;Landroid/support/v7/view/menu/af;I)Z

    return-void
.end method
