.class public Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;
.super Ljava/lang/Object;
.source "AddPaymentMethodResponse.java"

# interfaces
.implements Lcom/oculus/http/core/base/ValidatableApiResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;
    }
.end annotation


# instance fields
.field public add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;->payment_method:Lcom/oculus/horizon/api/common/ExternalCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ExternalCreditCard;->card_type:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;->payment_method:Lcom/oculus/horizon/api/common/ExternalCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ExternalCreditCard;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;->payment_method:Lcom/oculus/horizon/api/common/ExternalCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ExternalCreditCard;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AddPaymentMethodResponse had no add_credit_card"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;->add_credit_card:Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse$AddCreditCard;->payment_method:Lcom/oculus/horizon/api/common/ExternalCreditCard;

    if-nez v0, :cond_1

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "add_credit_card had no payment_method in AddPaymentMethodResponse"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    return-void
.end method
