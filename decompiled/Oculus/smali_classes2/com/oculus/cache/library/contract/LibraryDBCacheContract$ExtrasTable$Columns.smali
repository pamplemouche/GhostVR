.class public Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;
.super Ljava/lang/Object;
.source "LibraryDBCacheContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static APK_FULL_SIZE:Ljava/lang/String;

.field public static APPLICATION_GROUPING_ID:Ljava/lang/String;

.field public static APP_MEDIA_CAPABILITIES:Ljava/lang/String;

.field public static APP_SCOPED_USER_ID:Ljava/lang/String;

.field public static CATEGORY:Ljava/lang/String;

.field public static CATEGORY_ID:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static CATEGORY_NAME:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

.field public static CLOUD_STORAGE_STATUS:Ljava/lang/String;

.field public static COMFORT_RATING:Ljava/lang/String;

.field public static DISPLAY_VERSION:Ljava/lang/String;

.field public static ENTITLEMENT_HASH:Ljava/lang/String;

.field public static FAVORITE:Ljava/lang/String;

.field public static GRANT_EXPIRATION:Ljava/lang/String;

.field public static GRANT_REASON:Ljava/lang/String;

.field public static GRANT_TIME:Ljava/lang/String;

.field public static HEAD_TRACKING:Ljava/lang/String;

.field public static IMAGE_SOURCE_MAIN:Ljava/lang/String;

.field public static IMAGE_SOURCE_SQUARE:Ljava/lang/String;

.field public static IMAGE_SOURCE_TINY:Ljava/lang/String;

.field public static INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

.field public static INSTALLATION_SIZE:Ljava/lang/String;

.field public static INSTALLED_BINARY_ID:Ljava/lang/String;

.field public static IS_DEMO_OF:Ljava/lang/String;

.field public static ITEM_ID:Ljava/lang/String;

.field public static LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

.field public static LATEST_VERSION_CODE:Ljava/lang/String;

.field public static LATEST_VERSION_NAME:Ljava/lang/String;

.field public static LIVESTREAMING_STATUS:Ljava/lang/String;

.field public static LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

.field public static MICROPHONE_USAGE:Ljava/lang/String;

.field public static MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

.field public static MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;

.field public static OBB_FULL_SIZE:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field public static PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

.field public static PERMISSIONS:Ljava/lang/String;

.field public static PLAY_MODES:Ljava/lang/String;

.field public static RECENT_ACTIVITY:Ljava/lang/String;

.field public static SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

.field public static STATUS:Ljava/lang/String;

.field public static SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

.field public static SUPPORTED_PLATFORM:Ljava/lang/String;

.field public static TOTAL_ACTIVITY:Ljava/lang/String;

.field public static UNSEEN:Ljava/lang/String;

.field public static USER_ID:Ljava/lang/String;

.field public static USER_QUALITY_RATING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    const-string v0, "user_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->USER_ID:Ljava/lang/String;

    .line 268
    const-string v0, "item_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->ITEM_ID:Ljava/lang/String;

    .line 271
    const-string v0, "name"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->NAME:Ljava/lang/String;

    .line 279
    const-string v0, "category_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->CATEGORY_ID:Ljava/lang/String;

    .line 287
    const-string v0, "category_name"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->CATEGORY_NAME:Ljava/lang/String;

    .line 290
    const-string v0, "application_grouping_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 293
    const-string v0, "image_source_square"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    .line 296
    const-string v0, "image_source_main"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->IMAGE_SOURCE_MAIN:Ljava/lang/String;

    .line 299
    const-string v0, "image_source_tiny"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->IMAGE_SOURCE_TINY:Ljava/lang/String;

    .line 302
    const-string v0, "package_name"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PACKAGE_NAME:Ljava/lang/String;

    .line 305
    const-string v0, "display_version"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->DISPLAY_VERSION:Ljava/lang/String;

    .line 308
    const-string v0, "installed_binary_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->INSTALLED_BINARY_ID:Ljava/lang/String;

    .line 314
    const-string v0, "latest_version_code"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->LATEST_VERSION_CODE:Ljava/lang/String;

    .line 320
    const-string v0, "latest_version_name"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->LATEST_VERSION_NAME:Ljava/lang/String;

    .line 323
    const-string v0, "latest_target_sdk_version"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    .line 326
    const-string v0, "installation_size"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->INSTALLATION_SIZE:Ljava/lang/String;

    .line 332
    const-string v0, "permissions"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PERMISSIONS:Ljava/lang/String;

    .line 335
    const-string v0, "installable_on_external_storage"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 338
    const-string v0, "user_quality_rating"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->USER_QUALITY_RATING:Ljava/lang/String;

    .line 341
    const-string v0, "status"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->STATUS:Ljava/lang/String;

    .line 347
    const-string v0, "cloud_storage_status"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 350
    const-string v0, "supported_input_devices"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 353
    const-string v0, "entitlement_hash"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->ENTITLEMENT_HASH:Ljava/lang/String;

    .line 356
    const-string v0, "app_scoped_user_id"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->APP_SCOPED_USER_ID:Ljava/lang/String;

    .line 359
    const-string v0, "recent_activity"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->RECENT_ACTIVITY:Ljava/lang/String;

    .line 362
    const-string v0, "comfort_rating"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->COMFORT_RATING:Ljava/lang/String;

    .line 365
    const-string v0, "small_landscape_image"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    .line 368
    const-string v0, "favorite"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->FAVORITE:Ljava/lang/String;

    .line 371
    const-string v0, "unseen"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->UNSEEN:Ljava/lang/String;

    .line 374
    const-string v0, "livestreaming_status"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->LIVESTREAMING_STATUS:Ljava/lang/String;

    .line 377
    const-string v0, "livestreaming_status_audio_hooking"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 381
    const-string v0, "chromecast_audio_enabled"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    .line 384
    const-string v0, "min_recommended_version_code"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 387
    const-string v0, "min_required_version_code"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    .line 390
    const-string v0, "microphone_usage"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->MICROPHONE_USAGE:Ljava/lang/String;

    .line 393
    const-string v0, "total_activity"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->TOTAL_ACTIVITY:Ljava/lang/String;

    .line 396
    const-string v0, "patch_download_size"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    .line 399
    const-string v0, "apk_full_size"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->APK_FULL_SIZE:Ljava/lang/String;

    .line 402
    const-string v0, "obb_full_size"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->OBB_FULL_SIZE:Ljava/lang/String;

    .line 405
    const-string v0, "is_demo_of"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->IS_DEMO_OF:Ljava/lang/String;

    .line 408
    const-string v0, "play_modes"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->PLAY_MODES:Ljava/lang/String;

    .line 411
    const-string v0, "supported_platform"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->SUPPORTED_PLATFORM:Ljava/lang/String;

    .line 414
    const-string v0, "app_media_capabilities"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    .line 420
    const-string v0, "head_tracking"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->HEAD_TRACKING:Ljava/lang/String;

    .line 423
    const-string v0, "category"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->CATEGORY:Ljava/lang/String;

    .line 426
    const-string v0, "grant_reason"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->GRANT_REASON:Ljava/lang/String;

    .line 429
    const-string v0, "grant_time"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->GRANT_TIME:Ljava/lang/String;

    .line 432
    const-string v0, "grant_expiration"

    sput-object v0, Lcom/oculus/cache/library/contract/LibraryDBCacheContract$ExtrasTable$Columns;->GRANT_EXPIRATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
