.class Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/PurchasePresenter;->preparePurchase()V
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
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 7

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setLoading(Z)V

    .line 209
    new-instance v0, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v0, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    .line 210
    const v1, 0x1cdac8

    invoke-virtual {v0, v1}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v0, "PurchasePresenter"

    const-string v1, "User doesn\'t have billing instrument set when purchasing offer %s. Redirecting"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 214
    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$100(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$800(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->startActivity(Landroid/content/Intent;)V

    .line 217
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->finish()V

    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$300(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 222
    invoke-virtual {v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 224
    invoke-static {v4}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v4

    sget v5, Lcom/oculus/horizon/R$string;->common_error_something_went_wrong:I

    invoke-interface {v4, v5}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v0, v4}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 225
    invoke-static {v5}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v5

    sget v6, Lcom/oculus/horizon/R$string;->product_error_description:I

    invoke-interface {v5, v6}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "Failed to prepare purchase offer %s."

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 228
    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$100(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "PurchasePresenter"

    invoke-static {v1, p1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->finish()V

    goto/16 :goto_0
.end method

.method public success(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lretrofit/client/Response;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setLoading(Z)V

    .line 194
    const-string v0, "PurchasePresenter"

    const-string v1, "Prepare purchase successfully for offer %s."

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$100(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 196
    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$700(Lcom/oculus/horizon/payments/ui/PurchasePresenter;Lcom/oculus/horizon/commerce/CreateOrderResponse;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 185
    check-cast p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$2;->success(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lretrofit/client/Response;)V

    return-void
.end method
