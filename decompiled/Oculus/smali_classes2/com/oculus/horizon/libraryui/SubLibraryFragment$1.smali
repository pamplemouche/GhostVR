.class Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;
.super Ljava/lang/Object;
.source "SubLibraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SubLibraryFragment;->setUpSortMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

.field final synthetic val$sortButton:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryFragment;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->val$sortButton:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 254
    new-instance v1, Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->val$sortButton:Landroid/widget/TextView;

    invoke-direct {v1, v0, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    invoke-static {}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->values()[Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    .line 260
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 261
    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getItemId()I

    move-result v4

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;->getDisplayTitleResourceId()I

    move-result v0

    invoke-interface {v3, v5, v4, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 263
    :cond_0
    new-instance v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;-><init>(Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 277
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 278
    return-void
.end method
