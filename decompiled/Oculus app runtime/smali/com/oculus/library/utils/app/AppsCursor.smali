.class public Lcom/oculus/library/utils/app/AppsCursor;
.super Landroid/database/MatrixCursor;
.source "AppsCursor.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x25

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v1, v1, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/library/utils/app/AppsCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 54
    sget-object v0, Lcom/oculus/library/utils/app/AppsCursor;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public fill(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 61
    iget-object v1, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 63
    invoke-static {v1}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 65
    invoke-static {v2}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    .line 66
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    .line 70
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/library/model/Image;

    iget-object v5, v5, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    .line 71
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/library/model/Image;

    iget-object v5, v5, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    .line 72
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/library/model/Image;

    iget-object v5, v5, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    .line 73
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/library/model/Image;

    iget-object v5, v5, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-wide v5, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    .line 75
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget v5, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget-wide v5, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    .line 78
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    iget-wide v5, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xd

    aput-object v1, v3, v4

    const/16 v1, 0xe

    iget-boolean v4, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0xf

    iget-wide v4, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v1, 0x10

    iget-object v4, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    aput-object v4, v3, v1

    const/16 v1, 0x11

    iget-object v4, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v4, v3, v1

    const/16 v1, 0x12

    aput-object v2, v3, v1

    const/16 v1, 0x13

    iget-object v2, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    aput-object v2, v3, v1

    const/16 v1, 0x14

    iget-object v2, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    aput-object v2, v3, v1

    const/16 v1, 0x15

    iget-wide v4, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x16

    iget-object v2, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    .line 89
    invoke-virtual {v2}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x17

    iget-boolean v2, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x18

    iget-boolean v2, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x19

    iget-object v2, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 92
    invoke-virtual {v2}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1a

    iget-boolean v2, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1b

    iget-boolean v2, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    .line 94
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1c

    iget-wide v4, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1d

    iget-wide v4, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1e

    iget-object v2, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 97
    invoke-virtual {v2}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x1f

    iget-wide v4, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x20

    iget-wide v4, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    .line 99
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x21

    iget-wide v4, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    .line 100
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x22

    iget-wide v4, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const/16 v1, 0x23

    iget-object v2, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    aput-object v2, v3, v1

    const/16 v1, 0x24

    iget-object v0, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    .line 103
    invoke-static {v0}, Lcom/oculus/library/utils/app/AppConverter;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 105
    invoke-virtual {p0, v3}, Lcom/oculus/library/utils/app/AppsCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    return-void
.end method
