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

.field public static APP_MEDIA_CAPABILITIES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static CATEGORY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static GRANT_EXPIRATION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static GRANT_REASON:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static GRANT_TIME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static HEAD_TRACKING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

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

.field public static SUPPORTED_PLATFORM:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

.field public static USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "user_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 31
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "item_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 34
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "name"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 37
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "application_grouping_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 40
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "image_source_square"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 43
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "image_source_main"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 46
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "image_source_tiny"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 49
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "small_landscape_image"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 52
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "package_name"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 58
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "latest_version_code"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 64
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "latest_version_name"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 67
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "latest_target_sdk_version"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 71
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "installation_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 74
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "downloaded_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 77
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "permissions"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 80
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "installable_on_external_storage"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 84
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "user_quality_rating"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 87
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "status"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 90
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "cloud_storage_status"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 93
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "supported_input_devices"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 96
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "entitlement_hash"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 99
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "app_scoped_user_id"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 102
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "recent_activity"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 105
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "comfort_rating"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 108
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "favorite"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 111
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "unseen"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 114
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "livestreaming_status"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 117
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "livestreaming_status_audio_hooking"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 121
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "chromecast_audio_enabled"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 125
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "min_recommended_version_code"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 129
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "min_required_version_code"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 133
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "microphone_usage"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 136
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "total_activity"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 139
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "patch_download_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 142
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "apk_full_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 145
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "obb_full_size"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 147
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "is_demo_of"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 149
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "platform"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_PLATFORM:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 151
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "app_media_capabilities"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_MEDIA_CAPABILITIES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 153
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "head_tracking"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->HEAD_TRACKING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 155
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "play_modes"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 157
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "category"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CATEGORY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 159
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "grant_reason"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_REASON:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 161
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "grant_time"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_TIME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    .line 163
    new-instance v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    const-string v1, "grant_expiration"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/database/contract/LibraryDBContract$Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_EXPIRATION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
