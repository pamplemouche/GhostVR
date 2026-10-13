.class Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;
.super Ljava/lang/Object;
.source "StoreOrdersAdapter.java"

# interfaces
.implements Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    .line 242
    invoke-static {}, Lcom/oculus/horizon/payments/RefundFlowModel;->getInstance()Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    const v3, 0x1cdbbe

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 246
    invoke-static {v0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$000(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcom/oculus/horizon/R$string;->commerce_refund_not_available_error_title:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->val$order:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;

    iget-object v0, v0, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->refund_not_available_error:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$Error;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/RefundFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    return v0

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;->this$2:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;

    iget-object v0, v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->val$order:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;

    iget-object v0, v0, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;->refund_not_available_error:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$Error;

    iget-object v0, v0, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$Error;->description:Ljava/lang/String;

    goto :goto_0
.end method
