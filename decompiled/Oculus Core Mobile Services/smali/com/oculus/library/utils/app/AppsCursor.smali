.class public Lcom/oculus/library/utils/app/AppsCursor;
.super Landroid/database/MatrixCursor;
.source "AppsCursor.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/16 v0, 0x2c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_PLATFORM:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_MEDIA_CAPABILITIES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CATEGORY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->HEAD_TRACKING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_REASON:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_TIME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_EXPIRATION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v2, v2, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/library/utils/app/AppsCursor;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/oculus/library/utils/app/AppsCursor;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public fill(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/oculus/library/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/App;

    .line 68
    iget-object v1, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 70
    invoke-static {v1}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 71
    iget-object v1, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 72
    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const/16 v1, 0x2c

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v1, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    aput-object v1, v7, v3

    iget-object v1, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    aput-object v1, v7, v2

    const/4 v1, 0x2

    iget-object v8, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    aput-object v8, v7, v1

    const/4 v8, 0x3

    iget-object v1, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v9, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    .line 77
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/Image;

    iget-object v1, v1, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v8, 0x4

    iget-object v1, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v9, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    .line 78
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/Image;

    iget-object v1, v1, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v8, 0x5

    iget-object v1, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v9, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    .line 79
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/Image;

    iget-object v1, v1, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v8, 0x6

    iget-object v1, v0, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    sget-object v9, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    .line 80
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/Image;

    iget-object v1, v1, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    aput-object v1, v7, v8

    const/4 v1, 0x7

    iget-object v8, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    aput-object v8, v7, v1

    const/16 v1, 0x8

    iget-wide v8, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0x9

    iget-object v8, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    aput-object v8, v7, v1

    const/16 v1, 0xa

    iget v8, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    .line 84
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0xb

    iget-wide v8, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0xc

    iget-wide v8, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v1

    const/16 v1, 0xd

    aput-object v5, v7, v1

    const/16 v5, 0xe

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 88
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v1, 0xf

    iget-wide v8, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x10

    iget-object v5, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    aput-object v5, v7, v1

    const/16 v1, 0x11

    iget-object v5, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    aput-object v5, v7, v1

    const/16 v1, 0x12

    aput-object v6, v7, v1

    const/16 v1, 0x13

    iget-object v5, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    aput-object v5, v7, v1

    const/16 v1, 0x14

    iget-object v5, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    aput-object v5, v7, v1

    const/16 v1, 0x15

    iget-wide v8, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    .line 95
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x16

    iget-object v5, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    .line 96
    invoke-virtual {v5}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v5, 0x17

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 97
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v5, 0x18

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v1, :cond_2

    move v1, v2

    .line 98
    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v1, 0x19

    iget-object v5, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    .line 99
    invoke-virtual {v5}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v5, 0x1a

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-eqz v1, :cond_3

    move v1, v2

    .line 100
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v5, 0x1b

    iget-boolean v1, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-eqz v1, :cond_4

    move v1, v2

    .line 101
    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v5

    const/16 v1, 0x1c

    iget-wide v8, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    .line 102
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x1d

    iget-wide v8, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    .line 103
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x1e

    iget-object v5, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    .line 104
    invoke-virtual {v5}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x1f

    iget-wide v8, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x20

    iget-wide v8, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x21

    iget-wide v8, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    .line 107
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x22

    iget-wide v8, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    .line 108
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x23

    iget-object v5, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    aput-object v5, v7, v1

    const/16 v1, 0x24

    iget-object v5, v0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    .line 110
    invoke-virtual {v5}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x25

    iget-object v5, v0, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    .line 111
    invoke-static {v5}, Lcom/oculus/library/utils/app/AppConverter;->convertAppMediaCapabilitiesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x26

    iget-object v5, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    .line 112
    invoke-static {v5}, Lcom/oculus/library/utils/app/AppConverter;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x27

    iget-object v5, v0, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    .line 113
    invoke-virtual {v5}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x28

    iget-object v5, v0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    .line 114
    invoke-virtual {v5}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x29

    iget-object v5, v0, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    .line 115
    invoke-virtual {v5}, Lcom/oculus/library/model/GrantReason;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x2a

    iget-wide v8, v0, Lcom/oculus/library/model/App;->grantTimeMs:J

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v1

    const/16 v1, 0x2b

    iget-wide v8, v0, Lcom/oculus/library/model/App;->grantExpirationMs:J

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v1

    .line 119
    invoke-virtual {p0, v7}, Lcom/oculus/library/utils/app/AppsCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    move v1, v3

    .line 86
    goto/16 :goto_1

    :cond_1
    move v1, v3

    .line 96
    goto/16 :goto_2

    :cond_2
    move v1, v3

    .line 97
    goto/16 :goto_3

    :cond_3
    move v1, v3

    .line 99
    goto/16 :goto_4

    :cond_4
    move v1, v3

    .line 100
    goto/16 :goto_5

    .line 121
    :cond_5
    return-void
.end method
