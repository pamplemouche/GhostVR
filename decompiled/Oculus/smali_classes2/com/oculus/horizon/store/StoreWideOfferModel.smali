.class public Lcom/oculus/horizon/store/StoreWideOfferModel;
.super Ljava/lang/Object;
.source "StoreWideOfferModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreWideOfferModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public displayLongDescription:Ljava/lang/String;

.field public displayPostDescription:Ljava/lang/String;

.field public displayPostTitle:Ljava/lang/String;

.field public displayShortDescription:Ljava/lang/String;

.field public displayTerms:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public displayTitle:Ljava/lang/String;

.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/oculus/horizon/store/StoreWideOfferModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreWideOfferModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTitle:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTerms:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayShortDescription:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayLongDescription:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostTitle:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostDescription:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTitle:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTerms:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayShortDescription:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayLongDescription:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostTitle:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostDescription:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static from(Lcom/oculus/horizon/api/common/BannerTarget;)Lcom/oculus/horizon/store/StoreWideOfferModel;
    .locals 8

    .prologue
    .line 51
    new-instance v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/BannerTarget;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_title:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_terms:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_short_description:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_long_description:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_post_title:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/api/common/BannerTarget;->display_post_description:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/store/StoreWideOfferModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/oculus/horizon/api/common/Item$StoreWideOffer;)Lcom/oculus/horizon/store/StoreWideOfferModel;
    .locals 8

    .prologue
    .line 40
    new-instance v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_title:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_terms:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_short_description:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_long_description:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_post_title:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;->display_post_description:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/store/StoreWideOfferModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTitle:Ljava/lang/String;

    .line 63
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayShortDescription:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayLongDescription:Ljava/lang/String;

    .line 65
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostTitle:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostDescription:Ljava/lang/String;

    .line 67
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayTerms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayShortDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayLongDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayPostDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
