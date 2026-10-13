.class Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;
.super Ljava/lang/Object;
.source "SubLibraryFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;->this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;->this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    .line 268
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getSortOrderFromItemId(I)Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;->this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    iget-object v1, v1, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    iget-object v1, v1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->getCurrentSortOrder()Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 274
    :goto_0
    return v2

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;->this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    iget-object v1, v1, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    iget-object v1, v1, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->mLibrarySortHelper:Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper;->setCurrentSortOrder(Lcom/oculus/horizon/libraryui/LibrarySortCacheHelper$SortOrder;)V

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1$1;->this$1:Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SubLibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryFragment;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SubLibraryFragment;->access$000(Lcom/oculus/horizon/libraryui/SubLibraryFragment;)V

    goto :goto_0
.end method
