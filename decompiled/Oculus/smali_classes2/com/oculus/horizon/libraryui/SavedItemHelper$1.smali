.class Lcom/oculus/horizon/libraryui/SavedItemHelper$1;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "SavedItemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedItemHelper;->onSavedContextItemClick(Lcom/oculus/horizon/libraryui/SavedCategory;Landroid/view/MenuItem;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/homefeed/api/HomeFeedItemFeedbackEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedItemHelper;

.field final synthetic val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

.field final synthetic val$listener:Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;

.field final synthetic val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedItemHelper;Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->this$0:Lcom/oculus/horizon/libraryui/SavedItemHelper;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$listener:Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    iput-object p4, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$listener:Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;->onItemRemovedError(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 123
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/homefeed/api/HomeFeedItemFeedbackEventResponse;)V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$listener:Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->val$savedItem:Lcom/oculus/horizon/homefeed/api/HomeFeedItem;

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/libraryui/SavedItemHelper$ItemRemovedLifecycleListener;->onItemRemovedSuccess(Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/homefeed/api/HomeFeedItem;)V

    .line 118
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lcom/oculus/horizon/homefeed/api/HomeFeedItemFeedbackEventResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/libraryui/SavedItemHelper$1;->onResponse(Lcom/oculus/horizon/homefeed/api/HomeFeedItemFeedbackEventResponse;)V

    return-void
.end method
