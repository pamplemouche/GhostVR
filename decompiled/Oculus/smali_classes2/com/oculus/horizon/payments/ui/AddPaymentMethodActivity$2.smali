.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;
.super Lcom/oculus/horizon/common/UICallback;
.source "AddPaymentMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->onSaveInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$500(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->stopLoadingState()V

    .line 256
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to add card with error subcode %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v4, v4, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v4, v4, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_subcode:I

    .line 260
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 257
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_0
    const v0, 0x1cdafd

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    sget v1, Lcom/oculus/horizon/R$string;->commerce_card_error_invalid_card_type_title:I

    sget v2, Lcom/oculus/horizon/R$string;->commerce_card_error_invalid_card_type_desc:I

    invoke-static {v0, v1, v2}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$600(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;II)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$700(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Lcom/oculus/http/core/base/ApiError;)V

    goto :goto_0
.end method

.method public onResponse(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)V
    .locals 3

    .prologue
    .line 240
    invoke-static {}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Add credit card successfully: %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->getInstance()Lcom/oculus/horizon/payments/events/CommerceEventBus;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/payments/events/AddCreditCardEvent;

    invoke-direct {v1, p1}, Lcom/oculus/horizon/payments/events/AddCreditCardEvent;-><init>(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->post(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$300(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportAddPaymentSuccess()V

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setResult(I)V

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_continue_checkout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$400(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$500(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->stopLoadingState()V

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p1, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;->onResponse(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)V

    return-void
.end method
