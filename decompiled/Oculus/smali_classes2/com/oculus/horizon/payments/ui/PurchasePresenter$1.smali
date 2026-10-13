.class Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;
.super Ljava/lang/Object;
.source "PurchasePresenter.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/payments/ui/PurchasePresenter;->purchaseFree()V
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
        "Lcom/oculus/horizon/commerce/CompletePurchaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setLoading(Z)V

    .line 164
    new-instance v1, Lcom/oculus/http/core/base/ApiError;

    invoke-direct {v1, p1}, Lcom/oculus/http/core/base/ApiError;-><init>(Lretrofit/RetrofitError;)V

    .line 166
    invoke-virtual {v1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v0

    .line 167
    iget-object v2, v1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v3, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-eq v2, v3, :cond_1

    const/16 v2, 0x170

    .line 168
    invoke-virtual {v1, v2}, Lcom/oculus/http/core/base/ApiError;->fbErrorCodeEquals(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    iget-object v0, v1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$300(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 175
    invoke-static {v3}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->product_purchase_error_unavailable_title:I

    invoke-interface {v3, v4}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    .line 176
    invoke-static {v4}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v4

    sget v5, Lcom/oculus/horizon/R$string;->product_purchase_error_unavailable_description:I

    invoke-interface {v4, v5}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->finish()V

    goto :goto_0
.end method

.method public success(Lcom/oculus/horizon/commerce/CompletePurchaseResponse;Lretrofit/client/Response;)V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->setLoading(Z)V

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$300(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$100(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v3}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$200(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setState(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$600(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v1}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$400(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$500(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportFreeAppEntitlement(Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->this$0:Lcom/oculus/horizon/payments/ui/PurchasePresenter;

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter;->access$000(Lcom/oculus/horizon/payments/ui/PurchasePresenter;)Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$View;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 139
    check-cast p1, Lcom/oculus/horizon/commerce/CompletePurchaseResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/PurchasePresenter$1;->success(Lcom/oculus/horizon/commerce/CompletePurchaseResponse;Lretrofit/client/Response;)V

    return-void
.end method
