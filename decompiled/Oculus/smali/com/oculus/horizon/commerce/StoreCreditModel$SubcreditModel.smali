.class public Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;
.super Ljava/lang/Object;
.source "StoreCreditModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/StoreCreditModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubcreditModel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final expirationDate:Ljava/util/Calendar;

.field public final formattedAmount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->formattedAmount:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->expirationDate:Ljava/util/Calendar;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->formattedAmount:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->expirationDate:Ljava/util/Calendar;

    .line 91
    return-void
.end method

.method public static from(Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;)Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;
    .locals 6

    .prologue
    .line 99
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->expiration_time:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 101
    new-instance v1, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;-><init>(Ljava/lang/String;Ljava/util/Calendar;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->formattedAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->expirationDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    return-void
.end method
