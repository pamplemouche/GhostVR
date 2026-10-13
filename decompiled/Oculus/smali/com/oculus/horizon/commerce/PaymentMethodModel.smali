.class public abstract Lcom/oculus/horizon/commerce/PaymentMethodModel;
.super Ljava/lang/Object;
.source "PaymentMethodModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final id:Ljava/lang/String;

.field public final isDefault:Z


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->id:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->isDefault:Z

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->id:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->isDefault:Z

    .line 18
    return-void
.end method

.method public static final fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;

    move-result-object v0

    return-object v0
.end method

.method public static final fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;
    .locals 5

    .prologue
    .line 28
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/PaymentMethod;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    const-string v1, "PaymentPaypalBillingAgreement"

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->__typename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    new-instance v1, Lcom/oculus/horizon/commerce/PayPalModel;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->display_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->email:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/commerce/PayPalModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 34
    :goto_1
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31
    :cond_1
    const-string v1, "StoredCredit"

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->__typename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    new-instance v1, Lcom/oculus/horizon/commerce/StoreCreditModel;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/oculus/horizon/commerce/StoreCreditModel;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_1

    .line 34
    :cond_2
    new-instance v1, Lcom/oculus/horizon/commerce/CreditCardModel;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->last4:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/PaymentMethod;->card_type:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/commerce/CreditCardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFormattedInfoAllCaps(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/oculus/horizon/commerce/PaymentMethodModel;->isDefault:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
