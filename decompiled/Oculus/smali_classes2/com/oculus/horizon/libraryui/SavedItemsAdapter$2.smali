.class Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->access$300(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;)Lcom/oculus/horizon/libraryui/SavedPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->access$200(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;)Lcom/oculus/horizon/libraryui/SavedCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$2;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/libraryui/SavedPresenter;->onHomeFeedItemClick(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 148
    return-void
.end method
