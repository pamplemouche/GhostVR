.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;
.super Lcom/oculus/horizon/common/UICallback;
.source "AddPaymentMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->continueCheckout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/commerce/CreateOrderResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

.field final synthetic val$offerId:Ljava/lang/String;

.field final synthetic val$preparePurchaseIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    iput-object p3, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->val$offerId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->val$preparePurchaseIntent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$500(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->stopLoadingState()V

    .line 367
    const-string v0, "Failed to prepare purchase offer %s."

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->val$offerId:Ljava/lang/String;

    .line 368
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    const v0, 0x1cdb13

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    iget-object v1, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$900(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/commerce/CreateOrderResponse;)V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$500(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->stopLoadingState()V

    .line 357
    invoke-static {}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prepare purchase successfully for offer %s."

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->val$offerId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->val$preparePurchaseIntent:Landroid/content/Intent;

    .line 359
    invoke-static {v0, v1, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$800(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/content/Intent;Lcom/oculus/horizon/commerce/CreateOrderResponse;)Landroid/content/Intent;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->startActivity(Landroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->finish()V

    .line 362
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;->onResponse(Lcom/oculus/horizon/commerce/CreateOrderResponse;)V

    return-void
.end method
