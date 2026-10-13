.class public Lcom/oculus/library/model/App$Builder;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/model/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/library/model/App$Builder$LocalData;
    }
.end annotation


# instance fields
.field private apkFullSizeBytes:J

.field private appScopedUserId:Ljava/lang/String;

.field private applicationGroupingId:Ljava/lang/String;

.field private chromecastAudioEnabled:Z

.field private cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field private comfortRating:Lcom/oculus/library/model/ComfortRating;

.field private comfortRatingName:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private downloadSizeBytes:J

.field private downloadedSizeBytes:J

.field private entitlementHash:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/library/model/Image$ImageName;",
            "Lcom/oculus/library/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private installableFromExternalStorage:Z

.field private installedBinaryId:Ljava/lang/String;

.field private isDemoOf:Ljava/lang/String;

.field private isFavorite:Z

.field private isUnseen:Z

.field private latestPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/AppPermission;",
            ">;"
        }
    .end annotation
.end field

.field private latestTargetSdkVersion:I

.field private latestVersionCode:J

.field private latestVersionName:Ljava/lang/String;

.field private livestreamingAudioHookingEnabled:Z

.field private livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

.field private microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

.field private minRecommendedVersionCode:J

.field private minRequiredVersionCode:J

.field private obbFullSizeBytes:J

.field private packageName:Ljava/lang/String;

.field private patchSizeBytes:J

.field private playMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private recentActivityMs:J

.field private status:Lcom/oculus/library/model/AppStatus;

.field private supportedInputDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private totalActivityMs:J

.field private userQualityRating:J

.field private versionCode:J

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/App;)V
    .locals 2

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iget-object v0, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->id:Ljava/lang/String;

    .line 283
    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->packageName:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    .line 285
    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 286
    iget-object v0, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->displayName:Ljava/lang/String;

    .line 287
    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    .line 288
    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->comfortRatingName:Ljava/lang/String;

    .line 289
    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->images:Ljava/util/Map;

    .line 290
    iget-wide v0, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    .line 291
    iget-wide v0, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->obbFullSizeBytes:J

    .line 292
    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    .line 293
    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadSizeBytes:J

    .line 294
    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    .line 295
    iget-wide v0, p1, Lcom/oculus/library/model/App;->versionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->versionCode:J

    .line 296
    iget-object v0, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->versionName:Ljava/lang/String;

    .line 297
    iget-object v0, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    .line 298
    iget-wide v0, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->latestVersionCode:J

    .line 299
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->latestVersionName:Ljava/lang/String;

    .line 300
    iget v0, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    iput v0, p0, Lcom/oculus/library/model/App$Builder;->latestTargetSdkVersion:I

    .line 301
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->latestPermissions:Ljava/util/List;

    .line 302
    iget-object v0, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->supportedInputDevices:Ljava/util/List;

    .line 303
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->installableFromExternalStorage:Z

    .line 304
    iget-object v0, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->entitlementHash:Ljava/lang/String;

    .line 305
    iget-object v0, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->appScopedUserId:Ljava/lang/String;

    .line 306
    iget-object v0, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->applicationGroupingId:Ljava/lang/String;

    .line 307
    iget-object v0, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 308
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->livestreamingAudioHookingEnabled:Z

    .line 309
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->chromecastAudioEnabled:Z

    .line 310
    iget-object v0, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 311
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    .line 312
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    .line 313
    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    .line 314
    iget-wide v0, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->userQualityRating:J

    .line 315
    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    .line 316
    iget-wide v0, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->minRecommendedVersionCode:J

    .line 317
    iget-wide v0, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->minRequiredVersionCode:J

    .line 318
    iget-object v0, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->isDemoOf:Ljava/lang/String;

    .line 319
    iget-object p1, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->playMode:Ljava/util/List;

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/CloudStorageStatus;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    return-object p1
.end method

.method static synthetic access$202(Lcom/oculus/library/model/App$Builder;J)J
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/oculus/library/model/App$Builder;J)J
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/oculus/library/model/App$Builder;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    return p1
.end method

.method static synthetic access$502(Lcom/oculus/library/model/App$Builder;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    return p1
.end method

.method static synthetic access$602(Lcom/oculus/library/model/App$Builder;J)J
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    return-wide p1
.end method

.method static synthetic access$702(Lcom/oculus/library/model/App$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public build()Lcom/oculus/library/model/App;
    .locals 55

    move-object/from16 v0, p0

    .line 323
    new-instance v52, Lcom/oculus/library/model/App;

    move-object/from16 v1, v52

    iget-object v2, v0, Lcom/oculus/library/model/App$Builder;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/oculus/library/model/App$Builder;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    iget-object v5, v0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iget-object v6, v0, Lcom/oculus/library/model/App$Builder;->displayName:Ljava/lang/String;

    iget-object v7, v0, Lcom/oculus/library/model/App$Builder;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iget-object v8, v0, Lcom/oculus/library/model/App$Builder;->comfortRatingName:Ljava/lang/String;

    iget-object v9, v0, Lcom/oculus/library/model/App$Builder;->images:Ljava/util/Map;

    iget-wide v10, v0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    iget-wide v12, v0, Lcom/oculus/library/model/App$Builder;->obbFullSizeBytes:J

    iget-wide v14, v0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    move-object/from16 v53, v1

    move-object/from16 v54, v2

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->downloadSizeBytes:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->versionCode:J

    move-wide/from16 v20, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->versionName:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->latestVersionCode:J

    move-wide/from16 v24, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->latestVersionName:Ljava/lang/String;

    move-object/from16 v26, v1

    iget v1, v0, Lcom/oculus/library/model/App$Builder;->latestTargetSdkVersion:I

    move/from16 v27, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->latestPermissions:Ljava/util/List;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->supportedInputDevices:Ljava/util/List;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/oculus/library/model/App$Builder;->installableFromExternalStorage:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->entitlementHash:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->appScopedUserId:Ljava/lang/String;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->applicationGroupingId:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    move-object/from16 v34, v1

    iget-boolean v1, v0, Lcom/oculus/library/model/App$Builder;->livestreamingAudioHookingEnabled:Z

    move/from16 v35, v1

    iget-boolean v1, v0, Lcom/oculus/library/model/App$Builder;->chromecastAudioEnabled:Z

    move/from16 v36, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    move-object/from16 v37, v1

    iget-boolean v1, v0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    move/from16 v39, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    move-wide/from16 v40, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->userQualityRating:J

    move-wide/from16 v42, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    move-wide/from16 v44, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->minRecommendedVersionCode:J

    move-wide/from16 v46, v1

    iget-wide v1, v0, Lcom/oculus/library/model/App$Builder;->minRequiredVersionCode:J

    move-wide/from16 v48, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->isDemoOf:Ljava/lang/String;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/oculus/library/model/App$Builder;->playMode:Ljava/util/List;

    move-object/from16 v51, v1

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct/range {v1 .. v51}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Ljava/util/List;)V

    return-object v52
.end method

.method public withApkFullSizeBytes(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 444
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    return-object p0
.end method

.method public withAppScopedUserId(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->appScopedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public withApplicationGroupingId(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->applicationGroupingId:Ljava/lang/String;

    return-object p0
.end method

.method public withCloudStorageStatus(Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    return-object p0
.end method

.method public withDownloadedSizeBytes(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 378
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    return-object p0
.end method

.method public withEntitlementHash(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->entitlementHash:Ljava/lang/String;

    return-object p0
.end method

.method public withFavorite(Z)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    return-object p0
.end method

.method public withIncrementedActivityMs(J)Lcom/oculus/library/model/App$Builder;
    .locals 2

    .line 398
    iget-wide v0, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    return-object p0
.end method

.method public withInstalledBinaryId(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    return-object p0
.end method

.method public withLocalData(Lcom/oculus/library/model/App$Builder$LocalData;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 413
    invoke-static {p1, p0}, Lcom/oculus/library/model/App$Builder$LocalData;->access$800(Lcom/oculus/library/model/App$Builder$LocalData;Lcom/oculus/library/model/App$Builder;)V

    return-object p0
.end method

.method public withPackageName(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public withPatchDownloadSize(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 424
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    return-object p0
.end method

.method public withPathFullSizeBytes(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 449
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    return-object p0
.end method

.method public withRecentActivityMs(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 388
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    return-object p0
.end method

.method public withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;
    .locals 2

    .line 365
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    .line 366
    iget-object p1, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v0, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 367
    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    :cond_0
    return-object p0
.end method

.method public withTotalActivityMs(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 393
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    return-object p0
.end method

.method public withUnseen(Z)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 408
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    return-object p0
.end method

.method public withUserQualityRating(J)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 383
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->userQualityRating:J

    return-object p0
.end method

.method public withVersion(JLjava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .line 418
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->versionCode:J

    .line 419
    iput-object p3, p0, Lcom/oculus/library/model/App$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method
