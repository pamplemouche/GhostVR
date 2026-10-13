.class public Lcom/oculus/model/ProductModel;
.super Ljava/lang/Object;
.source "ProductModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/model/ProductModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final applicationGroupingId:Ljava/lang/String;

.field public final chromecastAudioEnabled:Z

.field public final cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field public final comfortRatingsConst:Ljava/lang/String;

.field public final comfortRatingsName:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final downloadedSize:J

.field public final installationSize:J

.field public final isFavorite:Z

.field public final isFree:Z

.field public final isOwnedByCurrentUser:Z

.field public final itemId:Ljava/lang/String;

.field public final latestTargetSdkVersion:I

.field public final latestVersionCode:I

.field public final latestVersionName:Ljava/lang/String;

.field public final livestreamingAudioHookingEnabled:Z

.field public final livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

.field public final mainImageSource:Ljava/lang/String;

.field public final microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

.field public final minRecommendedVersionCode:I

.field public final minRequiredVersionCode:I

.field public final name:Ljava/lang/String;

.field public final offerId:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final patchDownloadsize:J

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

.field public final price:Ljava/lang/String;

.field public final promoBenefit:Ljava/lang/String;

.field public final qualityRatingsAverage:F

.field public final qualityRatingsCount:I

.field public final smallLandscapeImage:Ljava/lang/String;

.field public final squareImageSource:Ljava/lang/String;

.field public final status:Lcom/oculus/model/ProductStatus;

.field public final strikethroughPrice:Ljava/lang/String;

.field public final tinyImageSource:Ljava/lang/String;

.field public final userQualityRating:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/oculus/model/ProductModel$1;

    invoke-direct {v0}, Lcom/oculus/model/ProductModel$1;-><init>()V

    sput-object v0, Lcom/oculus/model/ProductModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->applicationGroupingId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->displayVersion:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->squareImageSource:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->tinyImageSource:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->price:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->strikethroughPrice:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->promoBenefit:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->comfortRatingsConst:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->comfortRatingsName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->smallLandscapeImage:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/model/ProductModel;->downloadedSize:J

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/model/ProductModel;->installationSize:J

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->latestVersionCode:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->latestVersionName:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->userQualityRating:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFree:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->permissions:Ljava/util/List;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/model/ProductStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/model/ProductStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFavorite:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->livestreamingAudioHookingEnabled:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/oculus/model/ProductModel;->chromecastAudioEnabled:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->minRecommendedVersionCode:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/model/ProductModel;->minRequiredVersionCode:I

    .line 164
    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v0, v2

    .line 153
    goto :goto_1

    :cond_2
    move v0, v2

    .line 157
    goto :goto_2

    :cond_3
    move v0, v2

    .line 159
    goto :goto_3

    :cond_4
    move v1, v2

    .line 160
    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJILjava/lang/String;IIIFZZLjava/util/List;Lcom/oculus/model/ProductStatus;Lcom/oculus/library/model/CloudStorageStatus;ZLcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;II)V
    .locals 2
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJI",
            "Ljava/lang/String;",
            "IIIFZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oculus/model/ProductStatus;",
            "Lcom/oculus/library/model/CloudStorageStatus;",
            "Z",
            "Lcom/oculus/library/model/LivestreamingStatus;",
            "ZZ",
            "Lcom/oculus/library/model/MicrophoneUsage;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/oculus/model/ProductModel;->applicationGroupingId:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/oculus/model/ProductModel;->displayVersion:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lcom/oculus/model/ProductModel;->squareImageSource:Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    .line 97
    iput-object p9, p0, Lcom/oculus/model/ProductModel;->tinyImageSource:Ljava/lang/String;

    .line 98
    iput-object p10, p0, Lcom/oculus/model/ProductModel;->price:Ljava/lang/String;

    .line 99
    iput-object p11, p0, Lcom/oculus/model/ProductModel;->strikethroughPrice:Ljava/lang/String;

    .line 100
    iput-object p12, p0, Lcom/oculus/model/ProductModel;->promoBenefit:Ljava/lang/String;

    .line 101
    iput-object p13, p0, Lcom/oculus/model/ProductModel;->comfortRatingsConst:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->comfortRatingsName:Ljava/lang/String;

    .line 103
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->smallLandscapeImage:Ljava/lang/String;

    .line 104
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/oculus/model/ProductModel;->downloadedSize:J

    .line 105
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    .line 106
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/oculus/model/ProductModel;->installationSize:J

    .line 107
    move/from16 v0, p22

    iput v0, p0, Lcom/oculus/model/ProductModel;->latestVersionCode:I

    .line 108
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->latestVersionName:Ljava/lang/String;

    .line 109
    move/from16 v0, p24

    iput v0, p0, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    .line 110
    move/from16 v0, p25

    iput v0, p0, Lcom/oculus/model/ProductModel;->userQualityRating:I

    .line 111
    move/from16 v0, p26

    iput v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    .line 112
    move/from16 v0, p27

    iput v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    .line 113
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFree:Z

    .line 114
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    .line 115
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->permissions:Ljava/util/List;

    .line 116
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    .line 117
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 118
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFavorite:Z

    .line 119
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 120
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->livestreamingAudioHookingEnabled:Z

    .line 121
    move/from16 v0, p36

    iput-boolean v0, p0, Lcom/oculus/model/ProductModel;->chromecastAudioEnabled:Z

    .line 122
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/oculus/model/ProductModel;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 123
    move/from16 v0, p38

    iput v0, p0, Lcom/oculus/model/ProductModel;->minRecommendedVersionCode:I

    .line 124
    move/from16 v0, p39

    iput v0, p0, Lcom/oculus/model/ProductModel;->minRequiredVersionCode:I

    .line 125
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public getPriceText(Landroid/content/Context;III)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 269
    new-instance v0, Lcom/oculus/model/OfferPriceHelper;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oculus/model/OfferPriceHelper;-><init>(Landroid/content/Context;III)V

    iget-boolean v1, p0, Lcom/oculus/model/ProductModel;->isFree:Z

    iget-object v2, p0, Lcom/oculus/model/ProductModel;->price:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/model/ProductModel;->strikethroughPrice:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/model/ProductModel;->promoBenefit:Ljava/lang/String;

    .line 270
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/model/OfferPriceHelper;->getPriceText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public newPurchasedModel()Lcom/oculus/model/ProductModel;
    .locals 42

    .prologue
    .line 225
    new-instance v2, Lcom/oculus/model/ProductModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/model/ProductModel;->applicationGroupingId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/model/ProductModel;->displayVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/model/ProductModel;->squareImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/model/ProductModel;->tinyImageSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/model/ProductModel;->price:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/model/ProductModel;->strikethroughPrice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oculus/model/ProductModel;->promoBenefit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oculus/model/ProductModel;->comfortRatingsConst:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->comfortRatingsName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->smallLandscapeImage:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->downloadedSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->installationSize:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->latestVersionCode:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->latestVersionName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->userQualityRating:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->isFree:Z

    move/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->permissions:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->isFavorite:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->livestreamingAudioHookingEnabled:Z

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->chromecastAudioEnabled:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->minRecommendedVersionCode:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/model/ProductModel;->minRequiredVersionCode:I

    move/from16 v41, v0

    invoke-direct/range {v2 .. v41}, Lcom/oculus/model/ProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJILjava/lang/String;IIIFZZLjava/util/List;Lcom/oculus/model/ProductStatus;Lcom/oculus/library/model/CloudStorageStatus;ZLcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;II)V

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->applicationGroupingId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->displayVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->squareImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->tinyImageSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->strikethroughPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->promoBenefit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->comfortRatingsConst:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->comfortRatingsName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->smallLandscapeImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-wide v4, p0, Lcom/oculus/model/ProductModel;->downloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-wide v4, p0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-wide v4, p0, Lcom/oculus/model/ProductModel;->installationSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget v0, p0, Lcom/oculus/model/ProductModel;->latestVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->latestVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/oculus/model/ProductModel;->userQualityRating:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 192
    iget-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFree:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 193
    iget-boolean v0, p0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    invoke-virtual {v0}, Lcom/oculus/model/ProductStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v0}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/oculus/model/ProductModel;->isFavorite:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v0}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/oculus/model/ProductModel;->livestreamingAudioHookingEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 200
    iget-boolean v0, p0, Lcom/oculus/model/ProductModel;->chromecastAudioEnabled:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 201
    iget-object v0, p0, Lcom/oculus/model/ProductModel;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    invoke-virtual {v0}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/oculus/model/ProductModel;->minRecommendedVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/oculus/model/ProductModel;->minRequiredVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 192
    goto :goto_0

    :cond_1
    move v0, v2

    .line 193
    goto :goto_1

    :cond_2
    move v0, v2

    .line 197
    goto :goto_2

    :cond_3
    move v0, v2

    .line 199
    goto :goto_3

    :cond_4
    move v1, v2

    .line 200
    goto :goto_4
.end method
