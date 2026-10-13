.class public Lcom/oculus/horizon/commerce/PayPalModel;
.super Lcom/oculus/horizon/commerce/PaymentMethodModel;
.source "PayPalModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/commerce/PayPalModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final email:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/oculus/horizon/commerce/PayPalModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/commerce/PayPalModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/commerce/PayPalModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->displayName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->email:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p4}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Ljava/lang/String;Z)V

    .line 16
    iput-object p2, p0, Lcom/oculus/horizon/commerce/PayPalModel;->displayName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/oculus/horizon/commerce/PayPalModel;->email:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedInfoAllCaps(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/commerce/PayPalModel;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
.end method
