.class public Lcom/oculus/horizon/commerce/StoreCreditModel;
.super Lcom/oculus/horizon/commerce/PaymentMethodModel;
.source "StoreCreditModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final expiredSubcredits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final formattedAmount:Ljava/lang/String;

.field public final unexpiredSubcredits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/oculus/horizon/commerce/StoreCreditModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/commerce/StoreCreditModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/commerce/StoreCreditModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Landroid/os/Parcel;)V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    const-class v1, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    const-class v1, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Ljava/lang/String;Z)V

    .line 33
    iput-object p2, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p3}, Lcom/oculus/horizon/commerce/PaymentMethodModel;-><init>(Ljava/lang/String;Z)V

    .line 22
    iput-object p2, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedInfoAllCaps(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/commerce/StoreCreditModel;->getFormattedInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->formattedAmount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->expiredSubcredits:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/commerce/StoreCreditModel;->unexpiredSubcredits:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 68
    return-void
.end method
