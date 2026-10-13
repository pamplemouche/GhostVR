.class Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;
.super Ljava/lang/Object;
.source "SavedItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->onBindViewHolder(Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

.field final synthetic val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

.field final synthetic val$viewHolder:Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$1;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->access$100(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 126
    return-void
.end method
