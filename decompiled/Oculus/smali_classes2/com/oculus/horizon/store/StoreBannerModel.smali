.class public Lcom/oculus/horizon/store/StoreBannerModel;
.super Lcom/oculus/horizon/store/StoreItemModel;
.source "StoreBannerModel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreBannerModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final navigateToSection:Lcom/oculus/horizon/store/StoreSection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/oculus/horizon/store/StoreBannerModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreBannerModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreBannerModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Landroid/os/Parcel;)V

    .line 59
    const-class v0, Lcom/oculus/horizon/store/StoreSection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    .line 60
    const-class v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreWideOfferModel;JLcom/oculus/model/StoreRoadblockModel;)V
    .locals 18
    .param p11    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/oculus/horizon/store/StoreSection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/oculus/horizon/store/StoreWideOfferModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p16    # Lcom/oculus/model/StoreRoadblockModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    .line 37
    invoke-direct/range {v2 .. v16}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    .line 51
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    .line 52
    move-object/from16 v0, p13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 55
    return-void

    .line 54
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/store/StoreItemModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    return-void
.end method
