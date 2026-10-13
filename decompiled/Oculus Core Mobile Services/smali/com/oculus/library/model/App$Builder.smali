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

.field private appMediaCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;"
        }
    .end annotation
.end field

.field private appScopedUserId:Ljava/lang/String;

.field private applicationGroupingId:Ljava/lang/String;

.field private category:Lcom/oculus/library/model/Category;

.field private chromecastAudioEnabled:Z

.field private cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

.field private comfortRating:Lcom/oculus/library/model/ComfortRating;

.field private comfortRatingName:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private downloadSizeBytes:J

.field private downloadedSizeBytes:J

.field private entitlementHash:Ljava/lang/String;

.field private grantExpiration:J

.field private grantReason:Lcom/oculus/library/model/GrantReason;

.field private grantTime:J

.field private headTracking:Lcom/oculus/library/model/HeadTracking;

.field private id:Ljava/lang/String;

.field private images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
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
            "Ljava/util/List",
            "<",
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

.field private platform:Lcom/oculus/library/model/SupportedPlatform;

.field private playMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/library/model/App;)V
    .locals 2

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iget-object v0, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->id:Ljava/lang/String;

    .line 360
    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->packageName:Ljava/lang/String;

    .line 361
    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    .line 362
    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    .line 363
    iget-object v0, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->displayName:Ljava/lang/String;

    .line 364
    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    .line 365
    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->comfortRatingName:Ljava/lang/String;

    .line 366
    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->images:Ljava/util/Map;

    .line 367
    iget-wide v0, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    .line 368
    iget-wide v0, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->obbFullSizeBytes:J

    .line 369
    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    .line 370
    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadSizeBytes:J

    .line 371
    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    .line 372
    iget-wide v0, p1, Lcom/oculus/library/model/App;->versionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->versionCode:J

    .line 373
    iget-object v0, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->versionName:Ljava/lang/String;

    .line 374
    iget-object v0, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    .line 375
    iget-wide v0, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->latestVersionCode:J

    .line 376
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->latestVersionName:Ljava/lang/String;

    .line 377
    iget v0, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    iput v0, p0, Lcom/oculus/library/model/App$Builder;->latestTargetSdkVersion:I

    .line 378
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->latestPermissions:Ljava/util/List;

    .line 379
    iget-object v0, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->supportedInputDevices:Ljava/util/List;

    .line 380
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->installableFromExternalStorage:Z

    .line 381
    iget-object v0, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->entitlementHash:Ljava/lang/String;

    .line 382
    iget-object v0, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->appScopedUserId:Ljava/lang/String;

    .line 383
    iget-object v0, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->applicationGroupingId:Ljava/lang/String;

    .line 384
    iget-object v0, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 385
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->livestreamingAudioHookingEnabled:Z

    .line 386
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->chromecastAudioEnabled:Z

    .line 387
    iget-object v0, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 388
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    .line 389
    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iput-boolean v0, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    .line 390
    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    .line 391
    iget-wide v0, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->userQualityRating:J

    .line 392
    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    .line 393
    iget-wide v0, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->minRecommendedVersionCode:J

    .line 394
    iget-wide v0, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->minRequiredVersionCode:J

    .line 395
    iget-object v0, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->isDemoOf:Ljava/lang/String;

    .line 396
    iget-object v0, p1, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->platform:Lcom/oculus/library/model/SupportedPlatform;

    .line 397
    iget-object v0, p1, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->appMediaCapabilities:Ljava/util/List;

    .line 398
    iget-object v0, p1, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->headTracking:Lcom/oculus/library/model/HeadTracking;

    .line 399
    iget-object v0, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->playMode:Ljava/util/List;

    .line 400
    iget-object v0, p1, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->category:Lcom/oculus/library/model/Category;

    .line 401
    iget-object v0, p1, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    iput-object v0, p0, Lcom/oculus/library/model/App$Builder;->grantReason:Lcom/oculus/library/model/GrantReason;

    .line 402
    iget-wide v0, p1, Lcom/oculus/library/model/App;->grantTimeMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->grantTime:J

    .line 403
    iget-wide v0, p1, Lcom/oculus/library/model/App;->grantExpirationMs:J

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->grantExpiration:J

    .line 404
    return-void
.end method

.method static synthetic access$002(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/AppStatus;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oculus/library/model/App$Builder;J)J
    .locals 1

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/oculus/library/model/App$Builder;Lcom/oculus/library/model/CloudStorageStatus;)Lcom/oculus/library/model/CloudStorageStatus;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oculus/library/model/App$Builder;J)J
    .locals 1

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/oculus/library/model/App$Builder;J)J
    .locals 1

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/oculus/library/model/App$Builder;Z)Z
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    return p1
.end method

.method static synthetic access$602(Lcom/oculus/library/model/App$Builder;Z)Z
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    return p1
.end method

.method static synthetic access$702(Lcom/oculus/library/model/App$Builder;J)J
    .locals 1

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/oculus/library/model/App$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public build()Lcom/oculus/library/model/App;
    .locals 63

    .prologue
    .line 407
    new-instance v3, Lcom/oculus/library/model/App;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/library/model/App$Builder;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/library/model/App$Builder;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oculus/library/model/App$Builder;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/library/model/App$Builder;->displayName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oculus/library/model/App$Builder;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/oculus/library/model/App$Builder;->comfortRatingName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/library/model/App$Builder;->images:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/oculus/library/model/App$Builder;->apkFullSizeBytes:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/oculus/library/model/App$Builder;->obbFullSizeBytes:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->downloadSizeBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->versionCode:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->installedBinaryId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->latestVersionCode:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->latestVersionName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oculus/library/model/App$Builder;->latestTargetSdkVersion:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->latestPermissions:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->supportedInputDevices:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/library/model/App$Builder;->installableFromExternalStorage:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->entitlementHash:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->appScopedUserId:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->applicationGroupingId:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/library/model/App$Builder;->livestreamingAudioHookingEnabled:Z

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/library/model/App$Builder;->chromecastAudioEnabled:Z

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/library/model/App$Builder;->isFavorite:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->recentActivityMs:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->userQualityRating:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->totalActivityMs:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->minRecommendedVersionCode:J

    move-wide/from16 v48, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->minRequiredVersionCode:J

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->isDemoOf:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->platform:Lcom/oculus/library/model/SupportedPlatform;

    move-object/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->appMediaCapabilities:Ljava/util/List;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->playMode:Ljava/util/List;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->category:Lcom/oculus/library/model/Category;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->headTracking:Lcom/oculus/library/model/HeadTracking;

    move-object/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/model/App$Builder;->grantReason:Lcom/oculus/library/model/GrantReason;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->grantTime:J

    move-wide/from16 v59, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/oculus/library/model/App$Builder;->grantExpiration:J

    move-wide/from16 v61, v0

    invoke-direct/range {v3 .. v62}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    return-object v3
.end method

.method public withAppMediaCapabilities(Ljava/util/List;)Lcom/oculus/library/model/App$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;)",
            "Lcom/oculus/library/model/App$Builder;"
        }
    .end annotation

    .prologue
    .line 646
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->appMediaCapabilities:Ljava/util/List;

    .line 647
    return-object p0
.end method

.method public withCategory(Lcom/oculus/library/model/Category;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->category:Lcom/oculus/library/model/Category;

    .line 657
    return-object p0
.end method

.method public withDownloadSizeBytes(J)Lcom/oculus/library/model/App$Builder;
    .locals 1

    .prologue
    .line 499
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->downloadSizeBytes:J

    .line 500
    return-object p0
.end method

.method public withDownloadedSizeBytes(J)Lcom/oculus/library/model/App$Builder;
    .locals 1

    .prologue
    .line 504
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    .line 505
    return-object p0
.end method

.method public withGrantExpirationMs(J)Lcom/oculus/library/model/App$Builder;
    .locals 1

    .prologue
    .line 691
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->grantExpiration:J

    .line 692
    return-object p0
.end method

.method public withGrantReason(Lcom/oculus/library/model/GrantReason;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->grantReason:Lcom/oculus/library/model/GrantReason;

    .line 682
    return-object p0
.end method

.method public withGrantTimeMs(J)Lcom/oculus/library/model/App$Builder;
    .locals 1

    .prologue
    .line 686
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->grantTime:J

    .line 687
    return-object p0
.end method

.method public withIsDemoOf(Ljava/lang/String;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->isDemoOf:Ljava/lang/String;

    .line 637
    return-object p0
.end method

.method public withLocalData(Lcom/oculus/library/model/App$Builder$LocalData;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 539
    invoke-static {p1, p0}, Lcom/oculus/library/model/App$Builder$LocalData;->access$900(Lcom/oculus/library/model/App$Builder$LocalData;Lcom/oculus/library/model/App$Builder;)V

    .line 540
    return-object p0
.end method

.method public withPatchDownloadSize(J)Lcom/oculus/library/model/App$Builder;
    .locals 1

    .prologue
    .line 561
    iput-wide p1, p0, Lcom/oculus/library/model/App$Builder;->patchSizeBytes:J

    .line 562
    return-object p0
.end method

.method public withPlatform(Lcom/oculus/library/model/SupportedPlatform;)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->platform:Lcom/oculus/library/model/SupportedPlatform;

    .line 642
    return-object p0
.end method

.method public withPlayMode(Ljava/util/List;)Lcom/oculus/library/model/App$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;)",
            "Lcom/oculus/library/model/App$Builder;"
        }
    .end annotation

    .prologue
    .line 651
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->playMode:Ljava/util/List;

    .line 652
    return-object p0
.end method

.method public withStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/library/model/App$Builder;
    .locals 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    .line 457
    iget-object v0, p0, Lcom/oculus/library/model/App$Builder;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v1, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    if-ne v0, v1, :cond_0

    .line 458
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oculus/library/model/App$Builder;->downloadedSizeBytes:J

    .line 460
    :cond_0
    return-object p0
.end method

.method public withUnseen(Z)Lcom/oculus/library/model/App$Builder;
    .locals 0

    .prologue
    .line 534
    iput-boolean p1, p0, Lcom/oculus/library/model/App$Builder;->isUnseen:Z

    .line 535
    return-object p0
.end method
