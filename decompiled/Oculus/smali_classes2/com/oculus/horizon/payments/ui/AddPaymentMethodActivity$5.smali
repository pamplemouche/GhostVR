.class Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;
.super Lcom/oculus/horizon/common/UICallback;
.source "AddPaymentMethodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setupPayPal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/common/UICallback",
        "<",
        "Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {p0, p2}, Lcom/oculus/horizon/common/UICallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 473
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    const-string v1, "Error Generating Token"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method protected onResponse(Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;)V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$1002(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Z)Z

    .line 461
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->invalidateOptionsMenu()V

    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PayPal Token Generated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;->paypal_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const-class v2, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    const-string v1, "PAYPAL_TOKEN"

    iget-object v2, p1, Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;->paypal_token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->this$0:Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 468
    return-void
.end method

.method protected bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 456
    check-cast p1, Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;->onResponse(Lcom/oculus/horizon/commerce/common/PayPalTokenGenerateResponse;)V

    return-void
.end method
