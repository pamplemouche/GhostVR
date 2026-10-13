.class Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$3;
.super Ljava/lang/Object;
.source "SavedDiveItemsAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->showContextMenu(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

.field final synthetic val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$3;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$3;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$3;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->access$000(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;)Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$3;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/libraryui/SavedCategoryDivePresenter;->onContextMenuItemClicked(Landroid/view/MenuItem;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
