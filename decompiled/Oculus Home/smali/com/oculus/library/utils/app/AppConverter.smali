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
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

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
    .local p0, "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 775
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oculus/library/model/AppMediaCapability;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/model/AppMediaCapability;

    invoke-virtual {v2}, Lcom/oculus/library/model/AppMediaCapability;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 781
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
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
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 685
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 686
    if-lez v0, :cond_0

    .line 687
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "permissions"    # Ljava/lang/String;
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
    .local p0, "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 761
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oculus/library/model/PlayMode;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/model/PlayMode;

    invoke-virtual {v2}, Lcom/oculus/library/model/PlayMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "values"    # Ljava/lang/String;
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
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 747
    .local v0, "capabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    if-nez p0, :cond_0

    .line 748
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 755
    :goto_0
    return-object v2

    .line 750
    :cond_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 751
    .local v1, "split":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 752
    invoke-static {v1}, Lcom/oculus/library/model/AppMediaCapability;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/AppMediaCapability;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 755
    .end local v1    # "split":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method static convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "playModeValue"    # Ljava/lang/String;
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
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v1, "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    if-nez p0, :cond_1

    .line 742
    :cond_0
    return-object v1

    .line 732
    :cond_1
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 733
    .local v2, "split":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 735
    :try_start_0
    invoke-static {v2}, Lcom/oculus/library/model/PlayMode;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized play mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    sget-object v6, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .local p0, "supportedInputDevices":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 702
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 703
    if-lez v0, :cond_0

    .line 704
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/model/InputDevice;

    invoke-virtual {v2}, Lcom/oculus/library/model/InputDevice;->generateDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "supportedInputDevices"    # Ljava/lang/String;
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
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v3, "retSupportedInputDevices":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    if-nez p1, :cond_1

    .line 724
    :cond_0
    return-object v3

    .line 716
    :cond_1
    const-string v4, ","

    .line 717
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "inputDeviceStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 719
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/oculus/library/model/InputDevice;->generateFromDeviceString(Ljava/lang/String;)Lcom/oculus/library/model/InputDevice;

    move-result-object v1

    .line 720
    .local v1, "inputDevice":Lcom/oculus/library/model/InputDevice;
    if-eqz v1, :cond_2

    .line 721
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;
    .locals 2
    .param p1, "model"    # Lcom/oculus/library/model/App;
    .param p2, "imageName"    # Lcom/oculus/library/model/Image$ImageName;

    .prologue
    .line 663
    iget-object v1, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/Image;

    .line 664
    .local v0, "image":Lcom/oculus/library/model/Image;
    if-nez v0, :cond_0

    .line 665
    const/4 v1, 0x0

    .line 667
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

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
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v3, "Cannot load database due to null cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-array v2, v4, [Lcom/oculus/library/model/App;

    .line 199
    :goto_0
    return-object v2

    .line 184
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 185
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v3, "Unable to move cursor to the first position"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 187
    new-array v2, v4, [Lcom/oculus/library/model/App;

    goto :goto_0

    .line 190
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/App;>;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/library/utils/app/AppConverter;->extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 193
    .local v0, "app":Lcom/oculus/library/model/App;
    if-eqz v0, :cond_3

    .line 194
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    new-array v2, v4, [Lcom/oculus/library/model/App;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oculus/library/model/App;

    goto :goto_0

    .line 196
    :cond_3
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v3, "Got unexpected null from cursor app extraction"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;
    .locals 102
    .param p1, "cursor"    # Landroid/database/Cursor;

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
    new-instance v92, Ljava/util/HashMap;

    invoke-direct/range {v92 .. v92}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v92, "requiredColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v13

    array-length v0, v13

    move/from16 v27, v0

    const/4 v12, 0x0

    :goto_1
    move/from16 v0, v27

    if-ge v12, v0, :cond_1

    aget-object v69, v13, v12

    .line 209
    .local v69, "column":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v92

    move-object/from16 v1, v69

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 212
    .end local v69    # "column":Ljava/lang/String;
    :cond_1
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "itemId":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "name":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 215
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 216
    .local v37, "applicationGroupingId":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 217
    .local v79, "imageSquare":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    .line 218
    .local v77, "imageMain":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    .line 219
    .local v80, "imageTiny":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 220
    .local v78, "imageSmallLandscape":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "packageName":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 222
    .local v28, "latestVersionCode":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 223
    .local v30, "latestVersionName":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 224
    .local v31, "latestSdkTarget":I
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 225
    .local v20, "installationSize":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 226
    .local v22, "downloadedSize":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v89

    .line 227
    .local v89, "permissionsValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 228
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v94

    .line 229
    .local v94, "sdCardInstallable":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 230
    .local v46, "userQualityRating":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v93

    .line 231
    .local v93, "statusValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 232
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 233
    .local v68, "cloudStorageStatusValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 234
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v96

    .line 235
    .local v96, "supportedInputDevices":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 236
    .local v35, "entitlementHash":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 237
    .local v36, "appScopedUserId":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 238
    .local v44, "recentActivity":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 239
    .local v70, "comfortRatingValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v72

    .line 240
    .local v72, "favorite":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    .line 241
    .local v100, "unseen":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 242
    .local v84, "livestreamingValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 243
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    .line 244
    .local v82, "livestreamingAudioHooking":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v66

    .line 245
    .local v66, "chromecastAudio":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 246
    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 247
    .local v50, "minRecommendedVersion":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 248
    .local v52, "minRequiredVersion":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v85

    .line 249
    .local v85, "microphoneValue":Ljava/lang/String;
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v98

    .line 250
    .local v98, "totalActivity":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 251
    .local v18, "patchSize":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 252
    .local v14, "apkSize":J
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, v92

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 255
    .local v16, "obbSize":J
    invoke-static/range {v93 .. v93}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v8

    .line 256
    .local v8, "appStatus":Lcom/oculus/library/model/AppStatus;
    invoke-static/range {v68 .. v68}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v9

    .line 257
    .local v9, "cloudStorageStatus":Lcom/oculus/library/model/CloudStorageStatus;
    invoke-static/range {v70 .. v70}, Lcom/oculus/library/model/ComfortRating;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v11

    .line 258
    .local v11, "comfortRatingEnum":Lcom/oculus/library/model/ComfortRating;
    const-wide/32 v24, -0x80000000

    .line 259
    .local v24, "installedVersionCode":J
    const/16 v26, 0x0

    .line 261
    .local v26, "installedVersionName":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v87

    .line 262
    .local v87, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v87

    iget v12, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v12

    move-wide/from16 v24, v0

    .line 263
    move-object/from16 v0, v87

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v87    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    invoke-static/range {v89 .. v89}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v88

    .line 268
    .local v88, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    move-object/from16 v0, v88

    invoke-virtual {v12, v0}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v32

    .line 270
    .local v32, "appPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 272
    .local v33, "supportedDevices":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    sget-object v41, Lcom/oculus/library/model/MicrophoneUsage;->NONE:Lcom/oculus/library/model/MicrophoneUsage;

    .line 273
    .local v41, "micUsage":Lcom/oculus/library/model/MicrophoneUsage;
    invoke-static/range {v85 .. v85}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 274
    invoke-static/range {v85 .. v85}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v41

    .line 278
    :goto_3
    sget-object v38, Lcom/oculus/library/model/LivestreamingStatus;->UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;

    .line 279
    .local v38, "livestreamingStatus":Lcom/oculus/library/model/LivestreamingStatus;
    invoke-static/range {v84 .. v84}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 280
    invoke-static/range {v84 .. v84}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v38

    .line 287
    :goto_4
    new-instance v86, Ljava/util/HashMap;

    invoke-direct/range {v86 .. v86}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v86, "optionalColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getOptionalColumns()[Ljava/lang/String;

    move-result-object v13

    array-length v0, v13

    move/from16 v27, v0

    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v27

    if-ge v12, v0, :cond_4

    aget-object v69, v13, v12

    .line 289
    .restart local v69    # "column":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v86

    move-object/from16 v1, v69

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 276
    .end local v38    # "livestreamingStatus":Lcom/oculus/library/model/LivestreamingStatus;
    .end local v69    # "column":Ljava/lang/String;
    .end local v86    # "optionalColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v13, "Unexpected null for microphone usage in db"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 282
    .restart local v38    # "livestreamingStatus":Lcom/oculus/library/model/LivestreamingStatus;
    :cond_3
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v13, "Unexpected null for livestreaming status in db"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 292
    .restart local v86    # "optionalColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v81

    .line 293
    .local v81, "isDemoCol":I
    const/16 v54, 0x0

    .line 294
    .local v54, "isDemoOf":Ljava/lang/String;
    const/4 v12, -0x1

    move/from16 v0, v81

    if-eq v0, v12, :cond_5

    .line 295
    move-object/from16 v0, p1

    move/from16 v1, v81

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v54

    .line 298
    :cond_5
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v90

    .line 299
    .local v90, "platformCol":I
    sget-object v55, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 300
    .local v55, "platform":Lcom/oculus/library/model/SupportedPlatform;
    const/4 v12, -0x1

    move/from16 v0, v90

    if-eq v0, v12, :cond_6

    .line 301
    move-object/from16 v0, p1

    move/from16 v1, v90

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oculus/library/model/SupportedPlatform;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v55

    .line 304
    :cond_6
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 305
    .local v4, "capabilitiesCol":I
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v56, "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    const/4 v12, -0x1

    if-eq v4, v12, :cond_7

    .line 307
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    .line 309
    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 308
    invoke-static {v12}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v56

    .line 312
    :cond_7
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v76

    .line 313
    .local v76, "headTrackingCol":I
    sget-object v59, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 314
    .local v59, "headTracking":Lcom/oculus/library/model/HeadTracking;
    const/4 v12, -0x1

    move/from16 v0, v76

    if-eq v0, v12, :cond_8

    .line 315
    move-object/from16 v0, p1

    move/from16 v1, v76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oculus/library/model/HeadTracking;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;

    move-result-object v59

    .line 318
    :cond_8
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v91

    .line 319
    .local v91, "playModeCol":I
    new-instance v57, Ljava/util/ArrayList;

    invoke-direct/range {v57 .. v57}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v57, "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    const/4 v12, -0x1

    move/from16 v0, v91

    if-eq v0, v12, :cond_9

    .line 321
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    .line 323
    :cond_9
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v65

    .line 324
    .local v65, "categoryCol":I
    sget-object v58, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 325
    .local v58, "category":Lcom/oculus/library/model/Category;
    const/4 v12, -0x1

    move/from16 v0, v65

    if-eq v0, v12, :cond_a

    .line 326
    move-object/from16 v0, p1

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oculus/library/model/Category;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;

    move-result-object v58

    .line 329
    :cond_a
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v74

    .line 330
    .local v74, "grantReasonCol":I
    sget-object v60, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 331
    .local v60, "grantReason":Lcom/oculus/library/model/GrantReason;
    const/4 v12, -0x1

    move/from16 v0, v74

    if-eq v0, v12, :cond_b

    .line 332
    move-object/from16 v0, p1

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oculus/library/model/GrantReason;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;

    move-result-object v60

    .line 335
    :cond_b
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v75

    .line 336
    .local v75, "grantTimeCol":I
    const-wide/16 v61, -0x1

    .line 337
    .local v61, "grantTime":J
    const/4 v12, -0x1

    move/from16 v0, v75

    if-eq v0, v12, :cond_c

    .line 338
    move-object/from16 v0, p1

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    .line 341
    :cond_c
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v71

    .line 342
    .local v71, "grantExpirationCol":I
    const-wide/16 v63, -0x1

    .line 343
    .local v63, "grantExpiration":J
    const/4 v12, -0x1

    move/from16 v0, v71

    if-eq v0, v12, :cond_d

    .line 344
    move-object/from16 v0, p1

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 347
    :cond_d
    new-instance v5, Lcom/oculus/library/model/App;

    .line 355
    invoke-virtual {v11}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v12

    .line 356
    move-object/from16 v0, v79

    move-object/from16 v1, v77

    move-object/from16 v2, v80

    move-object/from16 v3, v78

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const-string v27, "remove me"

    const-wide/16 v42, 0x1

    cmp-long v34, v94, v42

    if-nez v34, :cond_e

    const/16 v34, 0x1

    :goto_6
    const-wide/16 v42, 0x1

    cmp-long v39, v82, v42

    if-nez v39, :cond_f

    const/16 v39, 0x1

    :goto_7
    const-wide/16 v42, 0x1

    cmp-long v40, v66, v42

    if-nez v40, :cond_10

    const/16 v40, 0x1

    :goto_8
    const-wide/16 v42, 0x1

    cmp-long v42, v72, v42

    if-nez v42, :cond_11

    const/16 v42, 0x1

    :goto_9
    const-wide/16 v48, 0x1

    cmp-long v43, v100, v48

    if-nez v43, :cond_12

    const/16 v43, 0x1

    :goto_a
    sget-object v48, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 382
    move-object/from16 v0, v48

    move-wide/from16 v1, v98

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v48

    invoke-direct/range {v5 .. v64}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    .line 394
    .local v5, "app":Lcom/oculus/library/model/App;
    goto/16 :goto_0

    .line 356
    .end local v5    # "app":Lcom/oculus/library/model/App;
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
    .end local v4    # "capabilitiesCol":I
    .end local v32    # "appPermissions":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    .end local v33    # "supportedDevices":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    .end local v38    # "livestreamingStatus":Lcom/oculus/library/model/LivestreamingStatus;
    .end local v41    # "micUsage":Lcom/oculus/library/model/MicrophoneUsage;
    .end local v54    # "isDemoOf":Ljava/lang/String;
    .end local v55    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    .end local v56    # "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    .end local v57    # "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    .end local v58    # "category":Lcom/oculus/library/model/Category;
    .end local v59    # "headTracking":Lcom/oculus/library/model/HeadTracking;
    .end local v60    # "grantReason":Lcom/oculus/library/model/GrantReason;
    .end local v61    # "grantTime":J
    .end local v63    # "grantExpiration":J
    .end local v65    # "categoryCol":I
    .end local v71    # "grantExpirationCol":I
    .end local v74    # "grantReasonCol":I
    .end local v75    # "grantTimeCol":I
    .end local v76    # "headTrackingCol":I
    .end local v81    # "isDemoCol":I
    .end local v86    # "optionalColumns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v88    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v90    # "platformCol":I
    .end local v91    # "playModeCol":I
    :catch_0
    move-exception v12

    goto/16 :goto_2
.end method

.method public fromContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/utils/app/ContentValueUnpack;
    .locals 92
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 455
    new-instance v89, Ljava/util/ArrayList;

    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v89

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v89, "requiredColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    move-object/from16 v0, v89

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual/range {v89 .. v89}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/String;

    .line 458
    .local v68, "column":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 459
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to build app from content values. Missing required cv for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v8, 0x0

    .line 657
    .end local v68    # "column":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 464
    :cond_1
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "itemId":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 466
    .local v10, "displayName":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 467
    .local v37, "applicationGroupingId":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 468
    .local v76, "imageSquareUri":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 469
    .local v75, "imageMainUri":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 470
    .local v77, "imageTinyUri":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    .line 471
    .local v74, "imageLandscapeUri":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "packageName":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 473
    .local v28, "latestVersionCode":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 474
    .local v30, "latestVersionName":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 475
    .local v31, "latestSdkTargetVersion":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 476
    .local v20, "installationSize":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 477
    .local v22, "downloadedSize":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v86

    .line 478
    .local v86, "permissions":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v78

    .line 480
    .local v78, "installableOnExternalStorage":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    .line 481
    .local v46, "userQualityRating":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v90

    .line 482
    .local v90, "status":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 483
    .local v67, "cloudStorageStatus":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v91

    .line 484
    .local v91, "supportedInputDevices":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 485
    .local v35, "entitlementHash":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 486
    .local v36, "appScopedUserId":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 487
    .local v44, "recentActivity":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 488
    .local v12, "comfortRating":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v79

    .line 489
    .local v79, "isFavorite":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v80

    .line 490
    .local v80, "isUnseen":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 491
    .local v82, "livestreamingStatus":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 492
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v81

    .line 493
    .local v81, "livestreamingAudioHookingEnabled":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v66

    .line 494
    .local v66, "chromecastAudioEnabled":I
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 495
    .local v50, "minRecommendedVersionCode":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 496
    .local v52, "minRequiredVersionCode":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 497
    .local v83, "microphoneUsage":Ljava/lang/String;
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 498
    .local v48, "totalActivity":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 499
    .local v18, "patchDownloadSize":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 500
    .local v14, "apkFullSize":J
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 505
    .local v16, "obbFullSize":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v85

    .line 506
    .local v85, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v85

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v8

    move-wide/from16 v24, v0

    .line 507
    .local v24, "versionCode":J
    move-object/from16 v0, v85

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v26, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v85    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v26, "versionName":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    .line 513
    invoke-static/range {v86 .. v86}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v32

    .line 515
    .local v32, "permissionsList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-direct {v0, v1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v33

    .line 518
    .local v33, "supportedInputDevicesList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    new-instance v84, Ljava/util/HashSet;

    invoke-direct/range {v84 .. v84}, Ljava/util/HashSet;-><init>()V

    .line 528
    .local v84, "missingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 529
    .local v54, "isDemoOf":Ljava/lang/String;
    invoke-static/range {v54 .. v54}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 530
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_2
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 535
    .local v87, "platformString":Ljava/lang/String;
    invoke-static/range {v87 .. v87}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 536
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v55, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 543
    .local v55, "platform":Lcom/oculus/library/model/SupportedPlatform;
    :goto_2
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "capabilitiesValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 545
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v8, Lcom/oculus/library/model/AppMediaCapability;->UNKNOWN:Lcom/oculus/library/model/AppMediaCapability;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v56

    .line 552
    .local v56, "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    :goto_3
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 553
    .local v73, "headTrackingString":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 554
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v59, Lcom/oculus/library/model/HeadTracking;->UNKNOWN:Lcom/oculus/library/model/HeadTracking;

    .line 561
    .local v59, "headTracking":Lcom/oculus/library/model/HeadTracking;
    :goto_4
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    .line 562
    .local v88, "playModeValue":Ljava/lang/String;
    invoke-static/range {v88 .. v88}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 563
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v8, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v57

    .line 570
    .local v57, "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    :goto_5
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 571
    .local v65, "categoryString":Ljava/lang/String;
    invoke-static/range {v65 .. v65}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 572
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v58, Lcom/oculus/library/model/Category;->UNKNOWN:Lcom/oculus/library/model/Category;

    .line 578
    .local v58, "category":Lcom/oculus/library/model/Category;
    :goto_6
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 579
    .local v71, "grantReasonValue":Ljava/lang/String;
    sget-object v60, Lcom/oculus/library/model/GrantReason;->UNKNOWN:Lcom/oculus/library/model/GrantReason;

    .line 580
    .local v60, "grantReason":Lcom/oculus/library/model/GrantReason;
    invoke-static/range {v71 .. v71}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 581
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    :goto_7
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v72

    .line 587
    .local v72, "grantTimeValue":Ljava/lang/Long;
    const-wide/16 v61, 0x0

    .line 588
    .local v61, "grantTime":J
    if-nez v72, :cond_9

    .line 589
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    :goto_8
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v70

    .line 595
    .local v70, "grantExpirationValue":Ljava/lang/Long;
    const-wide/16 v63, 0x0

    .line 596
    .local v63, "grantExpiration":J
    if-nez v72, :cond_a

    .line 597
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    move-object/from16 v0, v84

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    :goto_9
    new-instance v5, Lcom/oculus/library/model/App;

    .line 606
    invoke-static/range {v90 .. v90}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v8

    .line 607
    invoke-static/range {v67 .. v67}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v9

    .line 609
    invoke-static {v12}, Lcom/oculus/library/model/ComfortRating;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v11

    .line 611
    move-object/from16 v0, v76

    move-object/from16 v1, v75

    move-object/from16 v2, v77

    move-object/from16 v3, v74

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    const-string v27, "remove me"

    const/16 v34, 0x1

    move/from16 v0, v78

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    const/16 v34, 0x1

    .line 630
    :goto_a
    invoke-static/range {v82 .. v82}, Lcom/oculus/library/model/LivestreamingStatus;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v38

    const/16 v39, 0x1

    move/from16 v0, v81

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    const/16 v39, 0x1

    :goto_b
    const/16 v40, 0x1

    move/from16 v0, v66

    move/from16 v1, v40

    if-ne v0, v1, :cond_d

    const/16 v40, 0x1

    .line 633
    :goto_c
    invoke-static/range {v83 .. v83}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v41

    const/16 v42, 0x1

    move/from16 v0, v79

    move/from16 v1, v42

    if-ne v0, v1, :cond_e

    const/16 v42, 0x1

    :goto_d
    const/16 v43, 0x1

    move/from16 v0, v80

    move/from16 v1, v43

    if-ne v0, v1, :cond_f

    const/16 v43, 0x1

    :goto_e
    invoke-direct/range {v5 .. v64}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Lcom/oculus/library/model/SupportedPlatform;Ljava/util/List;Ljava/util/List;Lcom/oculus/library/model/Category;Lcom/oculus/library/model/HeadTracking;Lcom/oculus/library/model/GrantReason;JJ)V

    .line 657
    .local v5, "app":Lcom/oculus/library/model/App;
    new-instance v8, Lcom/oculus/library/utils/app/ContentValueUnpack;

    move-object/from16 v0, v84

    invoke-direct {v8, v5, v0}, Lcom/oculus/library/utils/app/ContentValueUnpack;-><init>(Lcom/oculus/library/model/App;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 508
    .end local v4    # "capabilitiesValue":Ljava/lang/String;
    .end local v5    # "app":Lcom/oculus/library/model/App;
    .end local v24    # "versionCode":J
    .end local v26    # "versionName":Ljava/lang/String;
    .end local v32    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    .end local v33    # "supportedInputDevicesList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    .end local v54    # "isDemoOf":Ljava/lang/String;
    .end local v55    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    .end local v56    # "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    .end local v57    # "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    .end local v58    # "category":Lcom/oculus/library/model/Category;
    .end local v59    # "headTracking":Lcom/oculus/library/model/HeadTracking;
    .end local v60    # "grantReason":Lcom/oculus/library/model/GrantReason;
    .end local v61    # "grantTime":J
    .end local v63    # "grantExpiration":J
    .end local v65    # "categoryString":Ljava/lang/String;
    .end local v70    # "grantExpirationValue":Ljava/lang/Long;
    .end local v71    # "grantReasonValue":Ljava/lang/String;
    .end local v72    # "grantTimeValue":Ljava/lang/Long;
    .end local v73    # "headTrackingString":Ljava/lang/String;
    .end local v84    # "missingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v87    # "platformString":Ljava/lang/String;
    .end local v88    # "playModeValue":Ljava/lang/String;
    :catch_0
    move-exception v69

    .line 509
    .local v69, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/32 v24, -0x80000000

    .line 510
    .restart local v24    # "versionCode":J
    const/16 v26, 0x0

    .restart local v26    # "versionName":Ljava/lang/String;
    goto/16 :goto_1

    .line 539
    .end local v69    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v32    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppPermission;>;"
    .restart local v33    # "supportedInputDevicesList":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/InputDevice;>;"
    .restart local v54    # "isDemoOf":Ljava/lang/String;
    .restart local v84    # "missingFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v87    # "platformString":Ljava/lang/String;
    :cond_3
    invoke-static/range {v87 .. v87}, Lcom/oculus/library/model/SupportedPlatform;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v55

    .restart local v55    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    goto/16 :goto_2

    .line 548
    .restart local v4    # "capabilitiesValue":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToAppMediaCapabilities(Ljava/lang/String;)Ljava/util/List;

    move-result-object v56

    .restart local v56    # "capabilities":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/AppMediaCapability;>;"
    goto/16 :goto_3

    .line 557
    .restart local v73    # "headTrackingString":Ljava/lang/String;
    :cond_5
    invoke-static/range {v73 .. v73}, Lcom/oculus/library/model/HeadTracking;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/HeadTracking;

    move-result-object v59

    .restart local v59    # "headTracking":Lcom/oculus/library/model/HeadTracking;
    goto/16 :goto_4

    .line 566
    .restart local v88    # "playModeValue":Ljava/lang/String;
    :cond_6
    invoke-static/range {v88 .. v88}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v57

    .restart local v57    # "playModes":Ljava/util/List;, "Ljava/util/List<Lcom/oculus/library/model/PlayMode;>;"
    goto/16 :goto_5

    .line 575
    .restart local v65    # "categoryString":Ljava/lang/String;
    :cond_7
    invoke-static/range {v65 .. v65}, Lcom/oculus/library/model/Category;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/Category;

    move-result-object v58

    .restart local v58    # "category":Lcom/oculus/library/model/Category;
    goto/16 :goto_6

    .line 583
    .restart local v60    # "grantReason":Lcom/oculus/library/model/GrantReason;
    .restart local v71    # "grantReasonValue":Ljava/lang/String;
    :cond_8
    invoke-static/range {v71 .. v71}, Lcom/oculus/library/model/GrantReason;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/GrantReason;

    move-result-object v60

    goto/16 :goto_7

    .line 591
    .restart local v61    # "grantTime":J
    .restart local v72    # "grantTimeValue":Ljava/lang/Long;
    :cond_9
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Long;->longValue()J

    move-result-wide v61

    goto/16 :goto_8

    .line 599
    .restart local v63    # "grantExpiration":J
    .restart local v70    # "grantExpirationValue":Ljava/lang/Long;
    :cond_a
    invoke-virtual/range {v70 .. v70}, Ljava/lang/Long;->longValue()J

    move-result-wide v63

    goto/16 :goto_9

    .line 611
    :cond_b
    const/16 v34, 0x0

    goto :goto_a

    .line 630
    :cond_c
    const/16 v39, 0x0

    goto :goto_b

    :cond_d
    const/16 v40, 0x0

    goto :goto_c

    .line 633
    :cond_e
    const/16 v42, 0x0

    goto :goto_d

    :cond_f
    const/16 v43, 0x0

    goto :goto_e
.end method

.method public getDefaultStatus(Lcom/oculus/library/model/App;)Lcom/oculus/library/model/AppStatus;
    .locals 4
    .param p1, "app"    # Lcom/oculus/library/model/App;

    .prologue
    .line 671
    iget-object v1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    sget-object v1, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    .line 679
    :goto_0
    return-object v1

    .line 676
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 677
    sget-object v1, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    goto :goto_0
.end method

.method public isEqual(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)Z
    .locals 18
    .param p1, "left"    # Lcom/oculus/library/model/App;
    .param p2, "right"    # Lcom/oculus/library/model/App;

    .prologue
    .line 833
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 834
    const/4 v14, 0x1

    .line 935
    :goto_0
    return v14

    .line 835
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 836
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 839
    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 840
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 843
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 845
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->versionCode:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->versionCode:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    .line 854
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->latestVersionCode:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    .line 856
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget v14, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    move-object/from16 v0, p2

    iget v15, v0, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 862
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 863
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 864
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    .line 869
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    move-object/from16 v0, p2

    iget-boolean v15, v0, Lcom/oculus/library/model/App;->isUnseen:Z

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->recentActivityMs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->userQualityRating:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    .line 877
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->grantTimeMs:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->grantTimeMs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_3

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/oculus/library/model/App;->grantExpirationMs:J

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/oculus/library/model/App;->grantExpirationMs:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 885
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 888
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    invoke-direct {v4, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 889
    .local v4, "leftCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    invoke-direct {v9, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 890
    .local v9, "rightCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v14

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v15

    if-ne v14, v15, :cond_5

    .line 891
    invoke-interface {v4, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 892
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 895
    :cond_6
    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v7, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 896
    .local v7, "leftPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v12, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 897
    .local v12, "rightPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v14

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v15

    if-ne v14, v15, :cond_7

    .line 898
    invoke-interface {v7, v12}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 899
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 902
    :cond_8
    invoke-static {}, Lcom/oculus/library/model/Image$ImageName;->values()[Lcom/oculus/library/model/Image$ImageName;

    move-result-object v15

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_c

    aget-object v3, v15, v14

    .line 903
    .local v3, "imageName":Lcom/oculus/library/model/Image$ImageName;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v8

    .line 904
    .local v8, "leftUri":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v13

    .line 905
    .local v13, "rightUri":Ljava/lang/String;
    if-eqz v8, :cond_9

    if-eqz v13, :cond_9

    .line 906
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 907
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 909
    :cond_9
    if-nez v8, :cond_a

    if-eqz v13, :cond_b

    .line 910
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 902
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 914
    .end local v3    # "imageName":Lcom/oculus/library/model/Image$ImageName;
    .end local v8    # "leftUri":Ljava/lang/String;
    .end local v13    # "rightUri":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 916
    invoke-static {v14}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 915
    invoke-static {v14}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    .line 917
    .local v6, "leftPermissions":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 919
    invoke-static {v14}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 918
    invoke-static {v14}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 920
    .local v11, "rightPermissions":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 921
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 924
    :cond_d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 925
    invoke-static {v14}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "leftInputDevices":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 927
    invoke-static {v14}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 928
    .local v10, "rightInputDevices":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_e

    .line 929
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 931
    .end local v4    # "leftCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    .end local v5    # "leftInputDevices":Ljava/lang/String;
    .end local v6    # "leftPermissions":Ljava/lang/String;
    .end local v7    # "leftPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    .end local v9    # "rightCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    .end local v10    # "rightInputDevices":Ljava/lang/String;
    .end local v11    # "rightPermissions":Ljava/lang/String;
    .end local v12    # "rightPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    :catch_0
    move-exception v2

    .line 932
    .local v2, "e":Ljava/lang/NullPointerException;
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 935
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "leftCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    .restart local v5    # "leftInputDevices":Ljava/lang/String;
    .restart local v6    # "leftPermissions":Ljava/lang/String;
    .restart local v7    # "leftPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    .restart local v9    # "rightCapabilities":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/AppMediaCapability;>;"
    .restart local v10    # "rightInputDevices":Ljava/lang/String;
    .restart local v11    # "rightPermissions":Ljava/lang/String;
    .restart local v12    # "rightPlayModes":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/library/model/PlayMode;>;"
    :cond_e
    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public isValid(Lcom/oculus/library/model/App;)Z
    .locals 6
    .param p1, "app"    # Lcom/oculus/library/model/App;

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
    .param p1, "app"    # Lcom/oculus/library/model/App;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 398
    iget-object v3, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 400
    invoke-static {v3}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 399
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "permissions":Ljava/lang/String;
    iget-object v3, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "inputDevices":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v0, "contentValues":Landroid/content/ContentValues;
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    sget-object v6, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v6}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    iget v6, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 414
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 415
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 418
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 417
    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v6}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v6}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    iget-wide v6, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v6}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    iget-object v6, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v6}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-eqz v3, :cond_3

    move v3, v4

    .line 432
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 430
    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-eqz v6, :cond_4

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 435
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 436
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    invoke-virtual {v4}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_PLATFORM:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->platform:Lcom/oculus/library/model/SupportedPlatform;

    invoke-virtual {v4}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_MEDIA_CAPABILITIES:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->appMediaCapabilities:Ljava/util/List;

    .line 444
    invoke-static {v4}, Lcom/oculus/library/utils/app/AppConverter;->convertAppMediaCapabilitiesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-static {v4}, Lcom/oculus/library/utils/app/AppConverter;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_CATEGORY:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->category:Lcom/oculus/library/model/Category;

    invoke-virtual {v4}, Lcom/oculus/library/model/Category;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_HEAD_TRACKING:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->headTracking:Lcom/oculus/library/model/HeadTracking;

    invoke-virtual {v4}, Lcom/oculus/library/model/HeadTracking;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_REASON:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->grantReason:Lcom/oculus/library/model/GrantReason;

    invoke-virtual {v4}, Lcom/oculus/library/model/GrantReason;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_TIME:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->grantTimeMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_GRANT_EXPIRATION:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->grantExpirationMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 451
    return-object v0

    :cond_0
    move v3, v5

    .line 417
    goto/16 :goto_0

    :cond_1
    move v3, v5

    .line 427
    goto/16 :goto_1

    :cond_2
    move v3, v5

    .line 428
    goto/16 :goto_2

    :cond_3
    move v3, v5

    .line 430
    goto/16 :goto_3

    :cond_4
    move v4, v5

    .line 433
    goto/16 :goto_4
.end method
