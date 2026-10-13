.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;
.super Lcom/oculus/horizon/common/UICallback;
.source "AddPaymentMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/commerce/common/PayPayBillingAgreementResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    const-string v1, "Error attaching Billing Agreement"

    .line 206
    invoke-virtual {p1, v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 208
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/commerce/common/PayPayBillingAgreementResponse;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    const-string v1, "PayPal Billing Agreement added"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setResult(I)V

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->finish()V

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 201
    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/oculus/horizon/commerce/common/PayPayBillingAgreementResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;->onResponse(Lcom/oculus/horizon/commerce/common/PayPayBillingAgreementResponse;)V

    return-void
.end method
