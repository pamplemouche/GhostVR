.class public final Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
.super Ljava/lang/Object;
.source "StoreApplicationModelBuilder.java"


# instance fields
.field public categoryId:Ljava/lang/String;

.field public categoryName:Ljava/lang/String;

.field public countDownTimerEndTime:J

.field public displayVersion:Ljava/lang/String;

.field public imageSource:Ljava/lang/String;

.field public isFree:Z

.field public isOwnedByCurrentUser:Z

.field public itemId:Ljava/lang/String;

.field public latestTargetSdkVersion:I

.field public latestVersionCode:I

.field public name:Ljava/lang/String;

.field public offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

.field public offerId:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public price:Ljava/lang/String;

.field public promoBenfit:Ljava/lang/String;

.field public qualityRatingsAverage:F

.field public qualityRatingsCount:I

.field public roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

.field public squareImageSource:Ljava/lang/String;

.field public storeSection:Lcom/oculus/horizon/store/StoreSection;

.field public strikethroughPrice:Ljava/lang/String;

.field public styleTheme:Lcom/oculus/model/StyleTheme;

.field public supportedDevicesInputList:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/oculus/horizon/store/StoreApplicationModel;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    invoke-direct {v0}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;-><init>()V

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->packageName:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withPackageName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsCount:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withQualityRatingsCount(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->qualityRatingsCount:I

    int-to-float v1, v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withQualityRatingsAverage(F)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isOwnedByCurrentUser:Z

    .line 46
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withIsOwnedByCurrentUser(Z)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->isFree:Z

    .line 47
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withIsFree(Z)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->permissions:Ljava/util/List;

    .line 48
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withPermissions(Ljava/util/List;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offerId:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withOfferId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->itemId:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withItemId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->name:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 52
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withOffer(Lcom/oculus/horizon/api/common/Item$StoreWideOffer;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->supportedDevicesInputList:Ljava/util/List;

    .line 53
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withSupportedInputDevicesList(Ljava/util/List;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->displayVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withDisplayVersion(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->imageSource:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withImageSource(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestVersionCode:I

    .line 56
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withLatestVersionCode(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->squareImageSource:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withSquareImageSource(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->latestTargetSdkVersion:I

    .line 58
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withLatestTargetSdkVersion(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->price:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withPrice(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->strikethroughPrice:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withStrikethroughPrice(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->promoBenfit:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withPromoBenfit(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->categoryId:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withCategoryId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->categoryName:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withCategoryName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    .line 64
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withStoreSection(Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 65
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withStyleTheme(Lcom/oculus/model/StyleTheme;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->countDownTimerEndTime:J

    .line 66
    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withCountDownTimerEndTime(J)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreApplicationModel;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 67
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withRoadblockModel(Lcom/oculus/model/StoreRoadblockModel;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    .line 68
    return-object v0
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/store/StoreApplicationModel;
    .locals 29

    .prologue
    .line 198
    new-instance v2, Lcom/oculus/horizon/store/StoreApplicationModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->itemId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->imageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->squareImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->strikethroughPrice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->promoBenfit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->categoryId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->categoryName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->styleTheme:Lcom/oculus/model/StyleTheme;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->countDownTimerEndTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->qualityRatingsCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->qualityRatingsAverage:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->isOwnedByCurrentUser:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->isFree:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->permissions:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->offerId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->supportedDevicesInputList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->displayVersion:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->latestVersionCode:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->latestTargetSdkVersion:I

    move/from16 v28, v0

    invoke-direct/range {v2 .. v28}, Lcom/oculus/horizon/store/StoreApplicationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/model/StyleTheme;JLcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;IFZZLjava/util/List;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$StoreWideOffer;Ljava/util/List;Ljava/lang/String;II)V

    return-object v2
.end method

.method public withCategoryId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->categoryId:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public withCategoryName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->categoryName:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public withCountDownTimerEndTime(J)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 1

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->countDownTimerEndTime:J

    .line 189
    return-object p0
.end method

.method public withDisplayVersion(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->displayVersion:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public withImageSource(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->imageSource:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public withIsFree(Z)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->isFree:Z

    .line 93
    return-object p0
.end method

.method public withIsOwnedByCurrentUser(Z)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->isOwnedByCurrentUser:Z

    .line 88
    return-object p0
.end method

.method public withItemId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->itemId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public withLatestTargetSdkVersion(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->latestTargetSdkVersion:I

    .line 149
    return-object p0
.end method

.method public withLatestVersionCode(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 138
    iput p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->latestVersionCode:I

    .line 139
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->name:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public withOffer(Lcom/oculus/horizon/api/common/Item$StoreWideOffer;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->offer:Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 118
    return-object p0
.end method

.method public withOfferId(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->offerId:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public withPackageName(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->packageName:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/horizon/store/StoreApplicationModelBuilder;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->permissions:Ljava/util/List;

    .line 98
    return-object p0
.end method

.method public withPrice(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->price:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public withPromoBenfit(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->promoBenfit:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public withQualityRatingsAverage(F)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->qualityRatingsAverage:F

    .line 83
    return-object p0
.end method

.method public withQualityRatingsCount(I)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->qualityRatingsCount:I

    .line 78
    return-object p0
.end method

.method public withRoadblockModel(Lcom/oculus/model/StoreRoadblockModel;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->roadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 194
    return-object p0
.end method

.method public withSquareImageSource(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->squareImageSource:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public withStoreSection(Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->storeSection:Lcom/oculus/horizon/store/StoreSection;

    .line 179
    return-object p0
.end method

.method public withStrikethroughPrice(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->strikethroughPrice:Ljava/lang/String;

    .line 159
    return-object p0
.end method

.method public withStyleTheme(Lcom/oculus/model/StyleTheme;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 184
    return-object p0
.end method

.method public withSupportedInputDevicesList(Ljava/util/List;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;)",
            "Lcom/oculus/horizon/store/StoreApplicationModelBuilder;"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->supportedDevicesInputList:Ljava/util/List;

    .line 124
    return-object p0
.end method
