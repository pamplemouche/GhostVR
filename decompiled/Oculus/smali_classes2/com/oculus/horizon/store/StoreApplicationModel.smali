.class public Lcom/oculus/horizon/store/StoreApplicationModel;
.super Lcom/oculus/horizon/store/StoreItemModel;
.source "StoreApplicationModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/store/StoreApplicationModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final displayVersion:Ljava/lang/String;

.field public final isFree:Z

.field public final isOwnedByCurrentUser:Z

.field public final latestTargetSdkVersion:I

.field public final latestVersionCode:I

.field public final offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

.field public final offerId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final qualityRatingsAverage:F

.field public final qualityRatingsCount:I

.field public final supportedDevicesInputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/oculus/horizon/store/StoreApplicationModel$1;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreApplicationModel$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/store/StoreApplicationModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Landroid/os/Parcel;)V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsCount:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsAverage:F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isFree:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->permissions:Ljava/util/List;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offerId:Ljava/lang/String;

    .line 93
    const-class v0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 94
    const-class v0, Lcom/oculus/library/model/InputDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->supportedDevicesInputList:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->displayVersion:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestVersionCode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestTargetSdkVersion:I

    .line 98
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;IFZZLjava/util/List;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$StoreWideOffer;Ljava/util/List;Ljava/lang/String;II)V
    .locals 2
    .param p11    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/oculus/model/StoreRoadblockModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/store/StoreSection;",
            "Lcom/oculus/model/StyleTheme;",
            "J",
            "Lcom/oculus/model/StoreRoadblockModel;",
            "Ljava/lang/String;",
            "IFZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/Item$StoreWideOffer;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct/range {p0 .. p14}, Lcom/oculus/horizon/store/StoreItemModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;)V

    .line 70
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    .line 71
    move/from16 v0, p16

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsCount:I

    .line 72
    move/from16 v0, p17

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsAverage:F

    .line 73
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isFree:Z

    .line 74
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->permissions:Ljava/util/List;

    .line 75
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offerId:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 77
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    .line 78
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->supportedDevicesInputList:Ljava/util/List;

    .line 79
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->displayVersion:Ljava/lang/String;

    .line 80
    move/from16 v0, p25

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestVersionCode:I

    .line 81
    move/from16 v0, p26

    iput v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestTargetSdkVersion:I

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/store/StoreItemModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsAverage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 106
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isFree:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->supportedDevicesInputList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->displayVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestTargetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1
.end method
