.class public Lcom/oculus/library/utils/app/AppConverter;
.super Ljava/lang/Object;
.source "AppConverter.java"


# static fields
.field private static final COL_APK_FULL_SIZE:Ljava/lang/String;

.field private static final COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

.field public static final COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

.field private static final COL_APP_SCOPED_USER_ID:Ljava/lang/String;

.field public static final COL_CATEGORY:Ljava/lang/String;

.field private static final COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

.field private static final COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

.field private static final COL_COMFORT_RATING:Ljava/lang/String;

.field private static final COL_DOWNLOADED_SIZE:Ljava/lang/String;

.field private static final COL_ENTITLEMENT_HASH:Ljava/lang/String;

.field private static final COL_FAVORITE:Ljava/lang/String;

.field public static final COL_GRANT_EXPIRATION:Ljava/lang/String;

.field public static final COL_GRANT_REASON:Ljava/lang/String;

.field public static final COL_GRANT_TIME:Ljava/lang/String;

.field public static final COL_HEAD_TRACKING:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

.field private static final COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

.field private static final COL_INSTALLATION_SIZE:Ljava/lang/String;

.field public static final COL_IS_DEMO_OF:Ljava/lang/String;

.field private static final COL_ITEM_ID:Ljava/lang/String;

.field private static final COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

.field private static final COL_LATEST_VERSION_CODE:Ljava/lang/String;

.field private static final COL_LATEST_VERSION_NAME:Ljava/lang/String;

.field private static final COL_LIVESTREAMING_STATUS:Ljava/lang/String;

.field private static final COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

.field private static final COL_MICROPHONE_USAGE:Ljava/lang/String;

.field private static final COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

.field private static final COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

.field private static final COL_NAME:Ljava/lang/String;

.field private static final COL_OBB_FULL_SIZE:Ljava/lang/String;

.field private static final COL_PACKAGE_NAME:Ljava/lang/String;

.field private static final COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

.field private static final COL_PERMISSIONS:Ljava/lang/String;

.field public static final COL_PLAY_MODES:Ljava/lang/String;

.field private static final COL_RECENT_ACTIVITY:Ljava/lang/String;

.field private static final COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

.field private static final COL_STATUS:Ljava/lang/String;

.field private static final COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

.field public static final COL_SUPPORTED_PLATFORM:Ljava/lang/String;

.field private static final COL_TOTAL_ACTIVITY:Ljava/lang/String;

.field private static final COL_UNSEEN:Ljava/lang/String;

.field private static final COL_USER_ID:Ljava/lang/String;

.field private static final COL_USER_QUALITY_RATING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/oculus/library/utils/app/AppConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    .line 86
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    .line 99
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_PLATFORM:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_MEDIA_CAPABILITIES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->HEAD_TRACKING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CATEGORY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_REASON:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_TIME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->GRANT_EXPIRATION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    new-instance v0, Lcom/oculus/library/utils/app/PermissionsManager;

    iget-object v1, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/app/PermissionsManager;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    .line 119
    return-void
.end method

.method static convertAppMediaCapabilitiesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 775
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v0}, Lcom/oculus/library/model/AppMediaCapability;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 781
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 684
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 686
    if-lez v1, :cond_0

    .line 687
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    .line 696
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 761
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/PlayMode;

    invoke-virtual {v0}, Lcom/oculus/library/model/PlayMode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/AppMediaCapability;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 747
    if-nez p0, :cond_0

    .line 748
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 755
    :goto_0
    return-object v0

    .line 750
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 751
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 752
    invoke-static {v4}, Lcom/oculus/library/model/AppMediaCapability;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/AppMediaCapability;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 755
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method static convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    if-nez p0, :cond_1

    .line 742
    :cond_0
    return-object v0

    .line 732
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 733
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 735
    :try_start_0
    invoke-static {v4}, Lcom/oculus/library/model/PlayMode;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v5

    .line 737
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized play mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-object v4, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 702
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 703
    if-lez v1, :cond_0

    .line 704
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/InputDevice;

    invoke-virtual {v0}, Lcom/oculus/library/model/InputDevice;->generateDeviceString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    if-nez p1, :cond_0

    move-object v0, v1

    .line 724
    :goto_0
    return-object v0

    .line 716
    :cond_0
    const-string v0, ","

    .line 717
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 718
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 719
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/oculus/library/model/InputDevice;->generateFromDeviceString(Ljava/lang/String;)Lcom/oculus/library/model/InputDevice;

    move-result-object v3

    .line 720
    if-eqz v3, :cond_1

    .line 721
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 724
    goto :goto_0
.end method

.method private getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Image;

    .line 664
    if-nez v0, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 667
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOptionalColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getRequiredColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot load database due to null cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-array v0, v3, [Lcom/oculus/library/model/App;

    .line 199
    :goto_0
    return-object v0

    .line 184
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v1, "Unable to move cursor to the first position"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 187
    new-array v0, v3, [Lcom/oculus/library/model/App;

    goto :goto_0

    .line 190
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/library/utils/app/AppConverter;->extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_3

    .line 194
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    new-array v1, v3, [Lcom/oculus/library/model/App;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/App;

    goto :goto_0

    .line 196
    :cond_3
    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v2, "Got unexpected null from cursor app extraction"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;
    .locals 76

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const/4 v5, 0x0

    .line 394
    :goto_0
    return-object v5

    .line 207
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v6, v4

    .line 209
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 212
    :cond_1
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 214
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 215
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 216
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 217
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 218
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 219
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 220
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 221
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 222
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 223
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 224
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 225
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 226
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 227
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 228
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 229
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 230
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 231
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 232
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 234
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 235
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 236
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 237
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 238
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 239
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 240
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    .line 241
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 242
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 243
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    .line 244
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v70

    .line 245
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 246
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 247
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 248
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 249
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v72

    .line 250
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 251
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 252
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 255
    invoke-static {v8}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v8

    .line 256
    invoke-static {v9}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v9

    .line 257
    invoke-static {v11}, Lcom/oculus/library/model/ComfortRating;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v11

    .line 258
    const-wide/32 v24, -0x80000000

    .line 259
    const/16 v26, 0x0

    .line 261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 262
    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    .line 263
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_2
    invoke-static {v12}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    invoke-virtual {v5, v4}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v32

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 272
    sget-object v41, Lcom/oculus/library/model/MicrophoneUsage;->NONE:Lcom/oculus/library/model/MicrophoneUsage;

    .line 273
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 274
    invoke-static/range {v38 .. v38}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v41

    .line 278
    :goto_3
    sget-object v38, Lcom/oculus/library/model/LivestreamingStatus;->UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;

    .line 279
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 280
    invoke-static/range {v40 .. v40}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v38

    .line 287
    :goto_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getOptionalColumns()[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    move/from16 v40, v0

    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v40

    if-ge v4, v0, :cond_4

    aget-object v54, v12, v4

    .line 289
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 276
    :cond_2
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected null for microphone usage in db"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 282
    :cond_3
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected null for livestreaming status in db"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 292
    :cond_4
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 293
    const/16 v54, 0x0

    .line 294
    const/4 v12, -0x1

    if-eq v4, v12, :cond_5

    .line 295
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 298
    :cond_5
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 299
    sget-object v55, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 300
    const/4 v12, -0x1

    if-eq v4, v12, :cond_6

    .line 301
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/library/model/SupportedPlatform;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v55

    .line 304
    :cond_6
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v12, -0x1

    if-eq v4, v12, :cond_7

    .line 307
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    .line 309
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-static {v4}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v56

    .line 312
    :cond_7
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 313
    sget-object v59, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 314
    const/4 v12, -0x1

    if-eq v4, v12, :cond_8

    .line 315
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/library/model/HeadTracking;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;

    move-result-object v59

    .line 318
    :cond_8
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 319
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 320
    const/4 v12, -0x1

    if-eq v4, v12, :cond_9

    .line 321
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    .line 323
    :cond_9
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 324
    sget-object v58, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 325
    const/4 v12, -0x1

    if-eq v4, v12, :cond_a

    .line 326
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/library/model/Category;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;

    move-result-object v58

    .line 329
    :cond_a
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 330
    sget-object v60, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 331
    const/4 v12, -0x1

    if-eq v4, v12, :cond_b

    .line 332
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/library/model/GrantReason;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;

    move-result-object v60

    .line 335
    :cond_b
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 336
    const-wide/16 v61, -0x1

    .line 337
    const/4 v12, -0x1

    if-eq v4, v12, :cond_c

    .line 338
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    .line 341
    :cond_c
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 342
    const-wide/16 v63, -0x1

    .line 343
    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    .line 344
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 347
    :cond_d
    new-instance v5, Lcom/oculus/library/model/App;

    .line 355
    invoke-virtual {v11}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v12

    .line 356
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    move-object/from16 v2, v39

    invoke-static {v13, v0, v1, v2}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const-string v27, "remove me"

    const-wide/16 v74, 0x1

    cmp-long v4, v42, v74

    if-nez v4, :cond_e

    const/16 v34, 0x1

    :goto_6
    const-wide/16 v42, 0x1

    cmp-long v4, v68, v42

    if-nez v4, :cond_f

    const/16 v39, 0x1

    :goto_7
    const-wide/16 v42, 0x1

    cmp-long v4, v70, v42

    if-nez v4, :cond_10

    const/16 v40, 0x1

    :goto_8
    const-wide/16 v42, 0x1

    cmp-long v4, v48, v42

    if-nez v4, :cond_11

    const/16 v42, 0x1

    :goto_9
    const-wide/16 v48, 0x1

    cmp-long v4, v66, v48

    if-nez v4, :cond_12

    const/16 v43, 0x1

    :goto_a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 382
    move-wide/from16 v0, v72

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v48

    invoke-direct/range {v5 .. v64}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    goto/16 :goto_0

    .line 356
    :cond_e
    const/16 v34, 0x0

    goto :goto_6

    :cond_f
    const/16 v39, 0x0

    goto :goto_7

    :cond_10
    const/16 v40, 0x0

    goto :goto_8

    :cond_11
    const/16 v42, 0x0

    goto :goto_9

    :cond_12
    const/16 v43, 0x0

    goto :goto_a

    .line 264
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method public fromContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/utils/app/ContentValueUnpack;
    .locals 65

    .prologue
    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 458
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 459
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to build app from content values. Missing required cv for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    .line 657
    :goto_0
    return-object v2

    .line 464
    :cond_1
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 465
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 466
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 467
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 469
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 470
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 471
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 472
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 473
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 474
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v29

    .line 475
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 476
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 477
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 480
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 481
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 482
    sget-object v7, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 483
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 484
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 485
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 486
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    .line 487
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 488
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 489
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v41

    .line 490
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 491
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 492
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 493
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 494
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 495
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 496
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 497
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    .line 498
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 499
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 500
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 505
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    .line 506
    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 507
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    move-object/from16 v30, v0

    .line 513
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v30

    .line 515
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v31

    .line 518
    new-instance v64, Ljava/util/HashSet;

    invoke-direct/range {v64 .. v64}, Ljava/util/HashSet;-><init>()V

    .line 528
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 529
    invoke-static/range {v52 .. v52}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_2
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 536
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v53, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 543
    :goto_2
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 544
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 545
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v3, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v54

    .line 552
    :goto_3
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 554
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v57, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 561
    :goto_4
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 563
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v3, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v55

    .line 570
    :goto_5
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 572
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v56, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 578
    :goto_6
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 579
    sget-object v58, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 580
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 581
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    :goto_7
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 587
    const-wide/16 v59, 0x0

    .line 588
    if-nez v3, :cond_9

    .line 589
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    :goto_8
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 595
    const-wide/16 v61, 0x0

    .line 596
    if-nez v3, :cond_a

    .line 597
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    :goto_9
    new-instance v3, Lcom/oculus/library/model/App;

    .line 606
    invoke-static {v6}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v6

    .line 607
    invoke-static {v7}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v7

    .line 609
    invoke-static {v10}, Lcom/oculus/library/model/ComfortRating;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v9

    .line 611
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-static {v2, v11, v0, v1}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    const-string v25, "remove me"

    const/4 v2, 0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_b

    const/16 v32, 0x1

    .line 630
    :goto_a
    invoke-static/range {v37 .. v37}, Lcom/oculus/library/model/LivestreamingStatus;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v36

    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_c

    const/16 v37, 0x1

    :goto_b
    const/4 v2, 0x1

    move/from16 v0, v39

    if-ne v0, v2, :cond_d

    const/16 v38, 0x1

    .line 633
    :goto_c
    invoke-static/range {v63 .. v63}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v39

    const/4 v2, 0x1

    move/from16 v0, v40

    if-ne v0, v2, :cond_e

    const/16 v40, 0x1

    :goto_d
    const/4 v2, 0x1

    move/from16 v0, v41

    if-ne v0, v2, :cond_f

    const/16 v41, 0x1

    :goto_e
    invoke-direct/range {v3 .. v62}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    .line 657
    new-instance v2, Lcom/oculus/library/utils/app/ContentValueUnpack;

    move-object/from16 v0, v64

    invoke-direct {v2, v3, v0}, Lcom/oculus/library/utils/app/ContentValueUnpack;-><init>(Lcom/oculus/library/model/App;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 508
    :catch_0
    move-exception v22

    .line 509
    const-wide/32 v22, -0x80000000

    .line 510
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 539
    :cond_3
    invoke-static {v3}, Lcom/oculus/library/model/SupportedPlatform;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v53

    goto/16 :goto_2

    .line 548
    :cond_4
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v54

    goto/16 :goto_3

    .line 557
    :cond_5
    invoke-static {v3}, Lcom/oculus/library/model/HeadTracking;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;

    move-result-object v57

    goto/16 :goto_4

    .line 566
    :cond_6
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v55

    goto/16 :goto_5

    .line 575
    :cond_7
    invoke-static {v3}, Lcom/oculus/library/model/Category;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;

    move-result-object v56

    goto/16 :goto_6

    .line 583
    :cond_8
    invoke-static {v3}, Lcom/oculus/library/model/GrantReason;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;

    move-result-object v58

    goto/16 :goto_7

    .line 591
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v59

    goto/16 :goto_8

    .line 599
    :cond_a
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v61

    goto/16 :goto_9

    .line 611
    :cond_b
    const/16 v32, 0x0

    goto :goto_a

    .line 630
    :cond_c
    const/16 v37, 0x0

    goto :goto_b

    :cond_d
    const/16 v38, 0x0

    goto :goto_c

    .line 633
    :cond_e
    const/16 v40, 0x0

    goto :goto_d

    :cond_f
    const/16 v41, 0x0

    goto :goto_e
.end method

.method public getDefaultStatus(Lcom/oculus/library/model/App;)Lcom/oculus/library/model/AppStatus;
    .locals 3

    .prologue
    .line 671
    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    sget-object v0, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    .line 679
    :goto_0
    return-object v0

    .line 676
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 677
    sget-object v0, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    sget-object v0, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    goto :goto_0
.end method

.method public isEqual(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 833
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 935
    :cond_0
    :goto_0
    return v0

    .line 835
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 836
    goto :goto_0

    .line 839
    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 840
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 843
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iget-object v3, p2, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 845
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->patchSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->versionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->versionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    .line 854
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->latestVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    .line 856
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    iget v3, p2, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 862
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 863
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 864
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-ne v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    iget-object v3, p2, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    .line 869
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->isFavorite:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->isUnseen:Z

    if-ne v2, v3, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->recentActivityMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->userQualityRating:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->totalActivityMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    .line 877
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    iget-object v3, p2, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    iget-object v3, p2, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    iget-object v3, p2, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    if-ne v2, v3, :cond_4

    iget-object v2, p1, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    iget-object v3, p2, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    if-ne v2, v3, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->grantTimeMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->grantTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p1, Lcom/oculus/library/model/App;->grantExpirationMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->grantExpirationMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 885
    goto/16 :goto_0

    .line 888
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 889
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p2, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 890
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 891
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    move v0, v1

    .line 892
    goto/16 :goto_0

    .line 895
    :cond_7
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 896
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p2, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 897
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 898
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    move v0, v1

    .line 899
    goto/16 :goto_0

    .line 902
    :cond_9
    invoke-static {}, Lcom/oculus/library/model/Image$ImageName;->values()[Lcom/oculus/library/model/Image$ImageName;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_d

    aget-object v5, v3, v2

    .line 903
    invoke-direct {p0, p1, v5}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    .line 904
    invoke-direct {p0, p2, v5}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v5

    .line 905
    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    .line 906
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move v0, v1

    .line 907
    goto/16 :goto_0

    .line 909
    :cond_a
    if-nez v6, :cond_b

    if-eqz v5, :cond_c

    :cond_b
    move v0, v1

    .line 910
    goto/16 :goto_0

    .line 902
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 914
    :cond_d
    iget-object v2, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 916
    invoke-static {v2}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 915
    invoke-static {v2}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 917
    iget-object v3, p2, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 919
    invoke-static {v3}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 918
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 920
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 921
    goto/16 :goto_0

    .line 924
    :cond_e
    iget-object v2, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 925
    invoke-static {v2}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 926
    iget-object v3, p2, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 927
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 928
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 929
    goto/16 :goto_0

    .line 931
    :catch_0
    move-exception v0

    move v0, v1

    .line 932
    goto/16 :goto_0
.end method

.method public isValid(Lcom/oculus/library/model/App;)Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    .line 785
    iget-object v0, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 789
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 791
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 806
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 807
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 808
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->grantTimeMs:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->grantExpirationMs:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toContentValues(Lcom/oculus/library/model/App;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 398
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 400
    invoke-static {v0}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v3, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 402
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 403
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    iget v6, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 418
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 417
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v5}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v5}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v3}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 432
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 430
    invoke-virtual {v4, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-eqz v3, :cond_4

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 436
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    invoke-virtual {v1}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    invoke-virtual {v1}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    .line 444
    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertAppMediaCapabilitiesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    invoke-virtual {v1}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    invoke-virtual {v1}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    invoke-virtual {v1}, Lcom/oculus/library/model/GrantReason;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->grantTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    iget-wide v2, p1, Lcom/oculus/library/model/App;->grantExpirationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    return-object v4

    :cond_0
    move v0, v2

    .line 417
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 427
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 428
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 430
    goto/16 :goto_3

    :cond_4
    move v1, v2

    .line 433
    goto/16 :goto_4
.end method
