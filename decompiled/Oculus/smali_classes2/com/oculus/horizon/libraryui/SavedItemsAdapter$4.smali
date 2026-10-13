.class Lcom/oculus/horizon/libraryui/SavedItemsAdapter$4;
.super Ljava/lang/Object;
.source "SavedItemsAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->showContextMenu(Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$4;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$4;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->access$400(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;)Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->onPopupMenuDismissed()V

    .line 170
    return-void
.end method
