.class Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$4;
.super Ljava/lang/Object;
.source "SavedDiveItemsAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;


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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$4;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$4;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->access$200(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;)Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/libraryui/PopupMenuDismissHelper;->onPopupMenuDismissed()V

    .line 109
    return-void
.end method
