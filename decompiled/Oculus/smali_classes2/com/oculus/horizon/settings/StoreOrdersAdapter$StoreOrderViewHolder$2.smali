.class Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;
.super Ljava/lang/Object;
.source "StoreOrdersAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->setupOptionsMenuForRejectRefund(Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

.field final synthetic val$order:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iput-object p2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->val$order:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Lcom/oculus/horizon/widget/OculusPopupMenu;

    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    iget-object v1, v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->this$0:Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    invoke-static {v1}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;->access$000(Lcom/oculus/horizon/settings/StoreOrdersAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;->this$1:Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;->access$300(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/widget/OculusPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 237
    sget v1, Lcom/oculus/horizon/R$menu;->order_history_options:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->inflate(I)V

    .line 238
    new-instance v1, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2$1;-><init>(Lcom/oculus/horizon/settings/StoreOrdersAdapter$StoreOrderViewHolder$2;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->setOnMenuItemClickListener(Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;)V

    .line 254
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 255
    return-void
.end method
