.class Lcom/oculus/horizon/pdp/InAppPdpFragment$4;
.super Ljava/lang/Object;
.source "InAppPdpFragment.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/InAppPdpFragment;->preparePurchase(Lcom/oculus/horizon/api/common/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<",
        "Lcom/oculus/horizon/commerce/CreateOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

.field final synthetic val$item:Lcom/oculus/horizon/api/common/Item;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/api/common/Item;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    iput-object p2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 7

    .prologue
    .line 570
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v0, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    .line 571
    const v1, 0x1cdac8

    invoke-virtual {v0, v1}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User doesn\'t have billing instrument set when purchasing offer %s. Redirecting"

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    .line 572
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$500(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->startActivity(Landroid/content/Intent;)V

    .line 591
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 583
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    sget v5, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    .line 584
    invoke-virtual {v4, v5}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    sget v6, Lcom/oculus/horizon/R$string;->product_error_description:I

    .line 585
    invoke-virtual {v5, v6}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "Failed to prepare purchase offer %s."

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    .line 587
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$600(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    goto :goto_0
.end method

.method public success(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lretrofit/client/Response;)V
    .locals 3

    .prologue
    .line 562
    invoke-static {}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prepare purchase successfully for offer %s."

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->val$item:Lcom/oculus/horizon/api/common/Item;

    .line 564
    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->access$400(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/commerce/CreateOrderResponse;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->this$0:Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->startActivity(Landroid/content/Intent;)V

    .line 566
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 559
    check-cast p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;->success(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lretrofit/client/Response;)V

    return-void
.end method
