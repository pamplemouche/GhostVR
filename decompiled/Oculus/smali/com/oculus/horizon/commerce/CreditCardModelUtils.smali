.class public Lcom/oculus/horizon/commerce/CreditCardModelUtils;
.super Ljava/lang/Object;
.source "CreditCardModelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromServerResponse(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)Lcom/oculus/horizon/commerce/CreditCardModel;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/oculus/horizon/commerce/CreditCardModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->getLast4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->getCardType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/commerce/CreditCardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromUserInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/commerce/CreditCardModel;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/oculus/horizon/commerce/CreditCardModel;

    const/4 v1, 0x0

    const-string v2, "CREDITCARD"

    invoke-direct {v0, v1, p0, v2}, Lcom/oculus/horizon/commerce/CreditCardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, v0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryMonth:Ljava/lang/String;

    .line 41
    iput-object p2, v0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryYear:Ljava/lang/String;

    .line 42
    new-instance v1, Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    invoke-direct {v1, p4, p3}, Lcom/oculus/horizon/commerce/CreditCardModel$Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    .line 43
    iget-object v1, v0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    iput-object p5, v1, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;->csc:Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public static getParamBuilder(Lcom/oculus/horizon/commerce/CreditCardModel;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/commerce/CreditCardModel;",
            ")",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "country_code"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    iget-object v2, v2, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->country:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "zip"

    iget-object v2, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    iget-object v2, v2, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->postalCode:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryYear:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryMonth:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    const-string v2, "expiry_year"

    iget-object v3, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryYear:Ljava/lang/String;

    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    const-string v2, "expiry_month"

    iget-object v3, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryMonth:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    const-string v2, "billing_address"

    .line 25
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method
