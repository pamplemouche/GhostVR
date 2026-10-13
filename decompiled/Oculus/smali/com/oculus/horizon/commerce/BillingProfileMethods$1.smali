.class Lcom/oculus/horizon/commerce/BillingProfileMethods$1;
.super Ljava/lang/Object;
.source "BillingProfileMethods.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/commerce/BillingProfileMethods;->addCreditCard(Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;Lretrofit/Callback;)V
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
        "Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod$TokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/commerce/BillingProfileMethods;

.field final synthetic val$callback:Lretrofit/Callback;

.field final synthetic val$request:Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/commerce/BillingProfileMethods;Lretrofit/Callback;Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->this$0:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    iput-object p2, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$callback:Lretrofit/Callback;

    iput-object p3, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$request:Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$callback:Lretrofit/Callback;

    invoke-interface {v0, p1}, Lretrofit/Callback;->failure(Lretrofit/RetrofitError;)V

    .line 123
    return-void
.end method

.method public success(Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod$TokenResponse;Lretrofit/client/Response;)V
    .locals 5

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod$TokenResponse;->token:Ljava/lang/String;

    .line 108
    :goto_0
    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$callback:Lretrofit/Callback;

    const-string v1, ""

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Error in generating token"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {v1, v2}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Lretrofit/Callback;->failure(Lretrofit/RetrofitError;)V

    .line 118
    :goto_1
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->this$0:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    invoke-static {v1}, Lcom/oculus/horizon/commerce/BillingProfileMethods;->access$000(Lcom/oculus/horizon/commerce/BillingProfileMethods;)Lcom/oculus/horizon/commerce/BillingProfileMethods$Methods;

    move-result-object v1

    const-string v2, "Mutation AddCard : AddCreditCardResponsePayload {  add_credit_card(<input>) {    payment_method {      card_type,      last4,    }  }}"

    iget-object v3, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$request:Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;

    .line 115
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;->getParams(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeAsNestedInputParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    iget-object v4, p0, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->val$callback:Lretrofit/Callback;

    .line 113
    invoke-interface {v1, v2, v0, v3, v4}, Lcom/oculus/horizon/commerce/BillingProfileMethods$Methods;->addPaymentMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_1
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod$TokenResponse;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/commerce/BillingProfileMethods$1;->success(Lcom/oculus/horizon/commerce/CCTokenGeneratorMethod$TokenResponse;Lretrofit/client/Response;)V

    return-void
.end method
