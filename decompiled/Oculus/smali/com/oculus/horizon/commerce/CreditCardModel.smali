.class public Lcom/oculus/horizon/commerce/CreditCardModel;
.super Lcom/oculus/horizon/commerce/PaymentMethodModel;
.source "CreditCardModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/CreditCardModel$Address;,
        Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/commerce/CreditCardModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public expiryMonth:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public expiryYear:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/oculus/horizon/commerce/CreditCardModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/commerce/CreditCardModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/commerce/CreditCardModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Landroid/os/Parcel;)V

    .line 57
    const-class v0, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryMonth:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryYear:Ljava/lang/String;

    .line 61
    const-class v0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oculus/horizon/commerce/CreditCardModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1, p4}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Ljava/lang/String;Z)V

    .line 29
    new-instance v0, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;-><init>(Ljava/lang/String;Lcom/oculus/horizon/commerce/CreditCardModel$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    .line 30
    iput-object p3, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;->cardNum:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getFormattedCreditCardInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedInfoAllCaps(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    iget-object v1, v1, Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;->cardNum:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/oculus/util/commerce/CreditCardTypeUtils;->getFormattedCreditCardInfoAllCaps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->sensitiveFields:Lcom/oculus/horizon/commerce/CreditCardModel$SensitivePaymentMethodFields;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->expiryYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel;->billingAddress:Lcom/oculus/horizon/commerce/CreditCardModel$Address;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 72
    return-void
.end method
