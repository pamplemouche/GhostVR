.class public Lcom/oculus/horizon/commerce/CreditCardModel$Address;
.super Ljava/lang/Object;
.source "CreditCardModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/commerce/CreditCardModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/commerce/CreditCardModel$Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public country:Ljava/lang/String;

.field public postalCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lcom/oculus/horizon/commerce/CreditCardModel$Address$1;

    invoke-direct {v0}, Lcom/oculus/horizon/commerce/CreditCardModel$Address$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->country:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->postalCode:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->country:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->postalCode:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/commerce/CreditCardModel$Address;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    return-void
.end method
