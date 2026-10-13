.class public Lcom/oculus/horizon/commerce/PaymentMethodInfoView;
.super Landroid/widget/TextView;
.source "PaymentMethodInfoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method private setLeftIcon(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$dimen;->settings_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setCompoundDrawablePadding(I)V

    .line 53
    invoke-virtual {p0, p1, v2, v2, v2}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 54
    return-void
.end method

.method private setPaymentModel(Lcom/oculus/horizon/commerce/CreditCardModel;Z)V
    .locals 5

    .prologue
    .line 27
    iget-object v0, p1, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getCardAssociationByType(Ljava/lang/String;)Lcom/oculus/util/commerce/PaymentCardAssociation;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/oculus/util/commerce/PaymentCardAssociation;->getIconDrawableId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setLeftIcon(I)V

    .line 30
    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/commerce/CreditCardModel;->getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 35
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/util/commerce/R$string;->credit_card_last_four_digits:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    iget-object v4, v4, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;->cardNum:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setPaymentModel(Lcom/oculus/horizon/commerce/PayPalModel;Z)V
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/oculus/util/commerce/R$drawable;->paypal:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setLeftIcon(I)V

    .line 40
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/horizon/commerce/PayPalModel;->getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void

    .line 40
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/commerce/PayPalModel;->email:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPaymentModel(Lcom/oculus/horizon/commerce/StoreCreditModel;)V
    .locals 5

    .prologue
    .line 45
    sget v0, Lcom/oculus/util/commerce/R$drawable;->store_credit:I

    invoke-direct {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setLeftIcon(I)V

    .line 47
    invoke-virtual {p0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/util/commerce/R$string;->store_credit_payment_method_info:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method


# virtual methods
.method public setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;Z)V

    .line 70
    return-void
.end method

.method public setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;Z)V
    .locals 2

    .prologue
    .line 57
    instance-of v0, p1, Lcom/oculus/horizon/commerce/CreditCardModel;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Lcom/oculus/horizon/commerce/CreditCardModel;

    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/CreditCardModel;Z)V

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_0
    instance-of v0, p1, Lcom/oculus/horizon/commerce/PayPalModel;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/oculus/horizon/commerce/PayPalModel;

    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/PayPalModel;Z)V

    goto :goto_0

    .line 61
    :cond_1
    instance-of v0, p1, Lcom/oculus/horizon/commerce/StoreCreditModel;

    if-eqz v0, :cond_2

    .line 62
    check-cast p1, Lcom/oculus/horizon/commerce/StoreCreditModel;

    invoke-direct {p0, p1}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/StoreCreditModel;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported payment model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
