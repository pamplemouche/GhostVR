.class Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;
.super Ljava/lang/Object;
.source "SavedDiveItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->onBindViewHolder(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

.field final synthetic val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

.field final synthetic val$viewHolder:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$2;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;->access$100(Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter;Lcom/oculus/horizon/libraryui/SavedDiveItemsAdapter$SavedDiveItemViewHolder;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 83
    return-void
.end method
