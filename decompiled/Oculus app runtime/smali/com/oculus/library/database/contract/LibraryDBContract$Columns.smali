.class public abstract Lcom/oculus/library/database/contract/LibraryDBContract$Columns;
.super Ljava/lang/Object;
.source "LibraryDBContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/database/contract/LibraryDBContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Columns"
.end annotation


# static fields
.field public static APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static _ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 44
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "TEXT"

    const-string v2, "user_id"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 47
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "item_id"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 50
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "name"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 53
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "application_grouping_id"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 56
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "image_source_square"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 59
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "image_source_main"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 62
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "image_source_tiny"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 65
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "small_landscape_image"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 68
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "package_name"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 74
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "INTEGER"

    const-string v3, "latest_version_code"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 80
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "latest_version_name"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 83
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "latest_target_sdk_version"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 87
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "installation_size"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 90
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "downloaded_size"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 93
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "permissions"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 96
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "installable_on_external_storage"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 100
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "user_quality_rating"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 103
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "status"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 106
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "cloud_storage_status"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 109
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "supported_input_devices"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 112
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "entitlement_hash"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 115
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "app_scoped_user_id"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 118
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "recent_activity"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 121
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "comfort_rating"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 124
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "favorite"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 127
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "unseen"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 130
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "livestreaming_status"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 133
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "livestreaming_status_audio_hooking"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 137
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "chromecast_audio_enabled"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 141
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "min_recommended_version_code"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 145
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "min_required_version_code"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 149
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "microphone_usage"

    invoke-direct {v0, v3, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 152
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "total_activity"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 155
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "patch_download_size"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 158
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "apk_full_size"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 161
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "obb_full_size"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 163
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v3, "is_demo_of"

    invoke-direct {v0, v3, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 165
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v2, "play_modes"

    invoke-direct {v0, v2, v1}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
