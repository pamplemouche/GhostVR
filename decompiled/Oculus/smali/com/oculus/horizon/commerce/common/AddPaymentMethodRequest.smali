.class public Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "AddPaymentMethodRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final creditCardModel:Lcom/oculus/horizon/commerce/CreditCardModel;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/commerce/CreditCardModel;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;->creditCardModel:Lcom/oculus/horizon/commerce/CreditCardModel;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams(Ljava/lang/String;)Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;->creditCardModel:Lcom/oculus/horizon/commerce/CreditCardModel;

    invoke-static {v0}, Lcom/oculus/horizon/commerce/CreditCardModelUtils;->getParamBuilder(Lcom/oculus/horizon/commerce/CreditCardModel;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "token"

    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "client_mutation_id"

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
