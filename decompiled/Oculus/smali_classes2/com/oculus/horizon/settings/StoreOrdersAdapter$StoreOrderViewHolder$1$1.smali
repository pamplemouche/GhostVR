.class Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;
.super Ljava/lang/Object;
.source "StoreOrdersAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$200(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    iget-object v1, v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;->val$appStoreItem:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    iget-object v1, v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$500(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Lcom/oculus/horizon/payments/events/CommerceEventBus;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/payments/events/RequestRefundEvent;

    iget-object v3, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;

    iget-object v3, v3, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$1;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v3, v3, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 221
    invoke-static {v3}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$400(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)J

    move-result-wide v4

    invoke-direct {v2, v0, v4, v5}, Lcom/oculus/horizon/payments/events/RequestRefundEvent;-><init>(Lcom/oculus/library/model/App;J)V

    .line 220
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->post(Ljava/lang/Object;)V

    .line 222
    const/4 v0, 0x1

    return v0
.end method
