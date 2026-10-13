.class public Lcom/oculus/horizon/payments/events/AddCreditCardEvent;
.super Ljava/lang/Object;
.source "AddCreditCardEvent.java"


# instance fields
.field public final creditCardModel:Lcom/oculus/horizon/commerce/CreditCardModel;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/oculus/horizon/commerce/CreditCardModelUtils;->fromServerResponse(Lcom/oculus/horizon/commerce/common/AddPaymentMethodResponse;)Lcom/oculus/horizon/commerce/CreditCardModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/events/AddCreditCardEvent;->creditCardModel:Lcom/oculus/horizon/commerce/CreditCardModel;

    .line 15
    return-void
.end method
