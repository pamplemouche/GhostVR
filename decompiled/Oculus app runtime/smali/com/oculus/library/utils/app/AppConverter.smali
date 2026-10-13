.class public Lcom/oculus/library/utils/app/AppConverter;
.super Ljava/lang/Object;
.source "AppConverter.java"


# static fields
.field private static final COL_APK_FULL_SIZE:Ljava/lang/String;

.field private static final COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

.field private static final COL_APP_SCOPED_USER_ID:Ljava/lang/String;

.field private static final COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

.field private static final COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

.field private static final COL_COMFORT_RATING:Ljava/lang/String;

.field private static final COL_DOWNLOADED_SIZE:Ljava/lang/String;

.field private static final COL_ENTITLEMENT_HASH:Ljava/lang/String;

.field private static final COL_FAVORITE:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

.field private static final COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

.field private static final COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

.field private static final COL_INSTALLATION_SIZE:Ljava/lang/String;

.field private static final COL_IS_DEMO_OF:Ljava/lang/String;

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

.field private static final COL_PLAY_MODES:Ljava/lang/String;

.field private static final COL_RECENT_ACTIVITY:Ljava/lang/String;

.field private static final COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

.field private static final COL_STATUS:Ljava/lang/String;

.field private static final COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

.field private static final COL_TOTAL_ACTIVITY:Ljava/lang/String;

.field private static final COL_UNSEEN:Ljava/lang/String;

.field private static final COL_USER_ID:Ljava/lang/String;

.field private static final COL_USER_QUALITY_RATING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppConverter"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ITEM_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APPLICATION_GROUPING_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_SQUARE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_MAIN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IMAGE_SOURCE_TINY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PACKAGE_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_VERSION_NAME:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LATEST_SDK_TARGET_VERSION:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLATION_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->DOWNLOADED_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PERMISSIONS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->INSTALLABLE_ON_EXTERNAL_STORAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->USER_QUALITY_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CLOUD_STORAGE_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SUPPORTED_INPUT_DEVICES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->ENTITLEMENT_HASH:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APP_SCOPED_USER_ID:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->RECENT_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->COMFORT_RATING:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->SMALL_LANDSCAPE_IMAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    .line 77
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->FAVORITE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->UNSEEN:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->CHROMECAST_AUDIO_ENABLED:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_RECOMMENDED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MIN_REQUIRED_VERSION_CODE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->MICROPHONE_USAGE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->TOTAL_ACTIVITY:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    .line 92
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PATCH_DOWNLOAD_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->APK_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->OBB_FULL_SIZE:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->IS_DEMO_OF:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/oculus/library/database/contract/LibraryDBContract$Columns;->PLAY_MODES:Lcom/oculus/library/database/contract/LibraryDBContract$Column;

    iget-object v0, v0, Lcom/oculus/library/database/contract/LibraryDBContract$Column;->name:Ljava/lang/String;

    sput-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 104
    new-instance p1, Lcom/oculus/library/utils/app/PermissionsManager;

    iget-object v0, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0}, Lcom/oculus/library/utils/app/PermissionsManager;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    return-void
.end method

.method static convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 524
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    .line 535
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 586
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/library/model/PlayMode;

    invoke-virtual {v1}, Lcom/oculus/library/model/PlayMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 592
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/PlayMode;",
            ">;"
        }
    .end annotation

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 571
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 574
    :try_start_0
    invoke-static {v4}, Lcom/oculus/library/model/PlayMode;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/PlayMode;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 576
    :catch_0
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "Unrecognized play mode: %s"

    invoke-static {v5, v4, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    sget-object v4, Lcom/oculus/library/model/PlayMode;->UNKNOWN:Lcom/oculus/library/model/PlayMode;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 541
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ","

    .line 543
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/library/model/InputDevice;

    invoke-virtual {v2}, Lcom/oculus/library/model/InputDevice;->generateDeviceString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 556
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 557
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 558
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/oculus/library/model/InputDevice;->generateFromDeviceString(Ljava/lang/String;)Lcom/oculus/library/model/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 560
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;
    .locals 0

    .line 502
    iget-object p1, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/library/model/Image;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 506
    :cond_0
    iget-object p1, p1, Lcom/oculus/library/model/Image;->uri:Ljava/lang/String;

    return-object p1
.end method

.method public static getOptionalColumns()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 109
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getRequiredColumns()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x24

    .line 116
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public extractAllFromCursor(Landroid/database/Cursor;)[Lcom/oculus/library/model/App;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 158
    sget-object p1, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot load database due to null cursor"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-array p1, v0, [Lcom/oculus/library/model/App;

    return-object p1

    .line 162
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v2, "Unable to move cursor to the first position"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 165
    new-array p1, v0, [Lcom/oculus/library/model/App;

    return-object p1

    .line 168
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oculus/library/utils/app/AppConverter;->extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 172
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_3
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v3, "Got unexpected null from cursor app extraction"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    new-array p1, v0, [Lcom/oculus/library/model/App;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/library/model/App;

    return-object p1
.end method

.method public extractNextAppFromCursor(Landroid/database/Cursor;)Lcom/oculus/library/model/App;
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 185
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 186
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 187
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 190
    :cond_1
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 191
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 192
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    .line 193
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 194
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 195
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 196
    sget-object v7, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 197
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 198
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 199
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 200
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 201
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 202
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 203
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 204
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 205
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 206
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 207
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 208
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 209
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    .line 210
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    .line 212
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v12

    .line 213
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 214
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 215
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 216
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v8

    .line 217
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 218
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 219
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v28, v13

    .line 220
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 221
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide/from16 v34, v13

    .line 222
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide/from16 v40, v13

    .line 223
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    .line 224
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 225
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 226
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 227
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v36, v4

    move-object/from16 v42, v5

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 228
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 229
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 230
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 233
    invoke-static {v15}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v3

    .line 234
    invoke-static {v2}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v2

    .line 235
    invoke-static {v12}, Lcom/oculus/library/model/ComfortRating;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v14

    const-wide/32 v50, -0x80000000

    .line 239
    :try_start_0
    iget-object v12, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v15, 0x0

    invoke-virtual {v12, v10, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 240
    iget v15, v12, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v60, v2

    move-object/from16 v45, v3

    int-to-long v2, v15

    .line 241
    :try_start_1
    iget-object v12, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v61, v12

    goto :goto_2

    :catch_0
    move-wide/from16 v50, v2

    goto :goto_1

    :catch_1
    move-object/from16 v60, v2

    move-object/from16 v45, v3

    :goto_1
    move-wide/from16 v2, v50

    const/16 v61, 0x0

    .line 245
    :goto_2
    invoke-static {v11}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 246
    iget-object v12, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    invoke-virtual {v12, v11}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v62

    .line 248
    invoke-direct {v0, v6}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 250
    sget-object v11, Lcom/oculus/library/model/MicrophoneUsage;->NONE:Lcom/oculus/library/model/MicrophoneUsage;

    .line 251
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 252
    invoke-static {v13}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v11

    goto :goto_3

    .line 254
    :cond_2
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v13, "Unexpected null for microphone usage in db"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v63, v11

    .line 256
    sget-object v11, Lcom/oculus/library/model/LivestreamingStatus;->UNKNOWN:Lcom/oculus/library/model/LivestreamingStatus;

    .line 257
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 258
    invoke-static {v8}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v8

    move-object/from16 v64, v8

    goto :goto_4

    .line 260
    :cond_3
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    const-string v12, "Unexpected null for livestreaming status in db"

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v64, v11

    .line 265
    :goto_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 266
    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getOptionalColumns()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_4

    aget-object v15, v11, v13

    .line 267
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    .line 270
    :cond_4
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, -0x1

    if-eq v0, v11, :cond_5

    .line 273
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 275
    :goto_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 276
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v11, :cond_6

    .line 278
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_6
    move-object v1, v12

    .line 281
    :goto_7
    new-instance v65, Lcom/oculus/library/model/App;

    .line 289
    invoke-virtual {v14}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v8, v36

    move-object/from16 v11, v42

    .line 290
    invoke-static {v8, v11, v7, v9}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    const-wide/16 v7, 0x1

    const/4 v9, 0x1

    cmp-long v11, v28, v7

    if-nez v11, :cond_7

    const/16 v36, 0x1

    goto :goto_8

    :cond_7
    const/16 v36, 0x0

    :goto_8
    cmp-long v11, v34, v7

    if-nez v11, :cond_8

    const/16 v42, 0x1

    goto :goto_9

    :cond_8
    const/16 v42, 0x0

    :goto_9
    cmp-long v11, v40, v7

    if-nez v11, :cond_9

    const/16 v66, 0x1

    goto :goto_a

    :cond_9
    const/16 v66, 0x0

    :goto_a
    cmp-long v11, v20, v7

    if-nez v11, :cond_a

    const/16 v67, 0x1

    goto :goto_b

    :cond_a
    const/16 v67, 0x0

    :goto_b
    cmp-long v11, v26, v7

    if-nez v11, :cond_b

    const/16 v68, 0x1

    goto :goto_c

    :cond_b
    const/16 v68, 0x0

    :goto_c
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 316
    invoke-virtual {v7, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v50

    const-string v29, "remove me"

    move-object/from16 v7, v65

    move-object/from16 v8, v19

    move-object v9, v10

    move-object/from16 v10, v45

    move-object/from16 v11, v60

    move-object/from16 v12, v18

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v56

    move-wide/from16 v18, v58

    move-wide/from16 v20, v43

    move-wide/from16 v26, v2

    move-object/from16 v28, v61

    move-object/from16 v34, v62

    move-object/from16 v35, v6

    move-object/from16 v40, v64

    move/from16 v41, v42

    move/from16 v42, v66

    move-object/from16 v43, v63

    move/from16 v44, v67

    move/from16 v45, v68

    move-object/from16 v56, v0

    move-object/from16 v57, v1

    invoke-direct/range {v7 .. v57}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Ljava/util/List;)V

    return-object v65
.end method

.method public fromContentValues(Landroid/content/ContentValues;)Lcom/oculus/library/utils/app/ContentValueUnpack;
    .locals 62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/oculus/library/utils/app/AppConverter;->getRequiredColumns()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 377
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 378
    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to build app from content values. Missing required cv for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 383
    :cond_1
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 385
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 386
    sget-object v2, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    sget-object v5, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    sget-object v7, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 390
    sget-object v8, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 391
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 392
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 393
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    .line 394
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 395
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 396
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 397
    sget-object v11, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    .line 398
    invoke-virtual {v1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 399
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v46

    .line 400
    sget-object v12, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 401
    sget-object v13, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 402
    sget-object v14, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    invoke-virtual {v1, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 403
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 404
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 405
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 406
    sget-object v15, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 407
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v17, v10

    .line 408
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v18, v6

    .line 409
    sget-object v6, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v19, v10

    .line 410
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    .line 411
    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move/from16 v24, v4

    .line 412
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v25, v4

    .line 413
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v50

    .line 414
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    .line 415
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    .line 416
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 417
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 418
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 419
    sget-object v4, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    const/4 v4, 0x0

    move/from16 v27, v10

    .line 424
    :try_start_0
    iget-object v10, v0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 425
    iget v4, v10, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v42, v2

    move-object/from16 v43, v3

    int-to-long v2, v4

    .line 426
    :try_start_1
    iget-object v4, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v42, v2

    move-object/from16 v43, v3

    :catch_1
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 431
    :goto_0
    iget-object v10, v0, Lcom/oculus/library/utils/app/AppConverter;->mPermissionsManager:Lcom/oculus/library/utils/app/PermissionsManager;

    .line 432
    invoke-static {v9}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/oculus/library/utils/app/PermissionsManager;->toAppPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v54

    .line 434
    invoke-direct {v0, v14}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v55

    .line 437
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 443
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    if-nez v56, :cond_2

    .line 445
    sget-object v9, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    invoke-interface {v14, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 448
    sget-object v10, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 450
    sget-object v1, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v1, v9

    goto :goto_1

    .line 452
    :cond_3
    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertStringToPlayModes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 455
    :goto_1
    new-instance v10, Lcom/oculus/library/model/App;

    .line 459
    invoke-static {v12}, Lcom/oculus/library/model/AppStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/AppStatus;

    move-result-object v9

    .line 460
    invoke-static {v13}, Lcom/oculus/library/model/CloudStorageStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v12

    .line 462
    invoke-static {v15}, Lcom/oculus/library/model/ComfortRating;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/ComfortRating;

    move-result-object v13

    move-object/from16 v16, v14

    move-object/from16 v0, v42

    move-object/from16 v14, v43

    .line 464
    invoke-static {v0, v14, v5, v7}, Lcom/oculus/library/utils/app/ImagesBuilder;->createImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v5, 0x1

    if-ne v11, v5, :cond_4

    const/16 v42, 0x1

    goto :goto_2

    :cond_4
    const/16 v42, 0x0

    .line 483
    :goto_2
    invoke-static {v6}, Lcom/oculus/library/model/LivestreamingStatus;->fromString(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v43

    move/from16 v6, v27

    if-ne v6, v5, :cond_5

    move/from16 v6, v25

    const/16 v57, 0x1

    goto :goto_3

    :cond_5
    move/from16 v6, v25

    const/16 v57, 0x0

    :goto_3
    if-ne v6, v5, :cond_6

    const/16 v58, 0x1

    goto :goto_4

    :cond_6
    const/16 v58, 0x0

    .line 486
    :goto_4
    invoke-static/range {v26 .. v26}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v59

    move/from16 v6, v24

    if-ne v6, v5, :cond_7

    move/from16 v6, v19

    const/16 v60, 0x1

    goto :goto_5

    :cond_7
    move/from16 v6, v19

    const/16 v60, 0x0

    :goto_5
    if-ne v6, v5, :cond_8

    const/16 v61, 0x1

    goto :goto_6

    :cond_8
    const/16 v61, 0x0

    :goto_6
    const-string v27, "remove me"

    move-object v5, v10

    move-object/from16 v6, v18

    move-object v7, v8

    move-object v8, v9

    move-object v9, v12

    move-object v14, v10

    move-object/from16 v10, v17

    move-object v11, v13

    move-object v12, v15

    move-object v13, v0

    move-object v0, v14

    move-object/from16 p1, v16

    move-wide/from16 v14, v38

    move-wide/from16 v16, v40

    move-wide/from16 v18, v32

    move-wide/from16 v24, v2

    move-object/from16 v26, v4

    move-object/from16 v32, v54

    move-object/from16 v33, v55

    move/from16 v34, v42

    move-object/from16 v38, v43

    move/from16 v39, v57

    move/from16 v40, v58

    move-object/from16 v41, v59

    move/from16 v42, v60

    move/from16 v43, v61

    move-object/from16 v54, v56

    move-object/from16 v55, v1

    invoke-direct/range {v5 .. v55}, Lcom/oculus/library/model/App;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/AppStatus;Lcom/oculus/library/model/CloudStorageStatus;Ljava/lang/String;Lcom/oculus/library/model/ComfortRating;Ljava/lang/String;Ljava/util/Map;JJJJJJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;ZZJJJJJLjava/lang/String;Ljava/util/List;)V

    .line 496
    new-instance v1, Lcom/oculus/library/utils/app/ContentValueUnpack;

    move-object/from16 v2, p1

    invoke-direct {v1, v0, v2}, Lcom/oculus/library/utils/app/ContentValueUnpack;-><init>(Lcom/oculus/library/model/App;Ljava/util/Set;)V

    return-object v1
.end method

.method public getDefaultStatus(Lcom/oculus/library/model/App;)Lcom/oculus/library/model/AppStatus;
    .locals 2

    .line 510
    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    sget-object p1, Lcom/oculus/library/model/AppStatus;->INCOMPATIBLE:Lcom/oculus/library/model/AppStatus;

    return-object p1

    .line 515
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/library/utils/app/AppConverter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 516
    sget-object p1, Lcom/oculus/library/model/AppStatus;->INSTALLED:Lcom/oculus/library/model/AppStatus;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 518
    :catch_0
    sget-object p1, Lcom/oculus/library/model/AppStatus;->ENTITLED:Lcom/oculus/library/model/AppStatus;

    return-object p1
.end method

.method public isEqual(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 644
    :cond_1
    :try_start_0
    iget-object v2, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 645
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 648
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    iget-object v3, p2, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 650
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->patchSizeBytes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->versionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->versionCode:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->versionName:Ljava/lang/String;

    .line 659
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->latestVersionCode:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    .line 661
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    iget v3, p2, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-ne v2, v3, :cond_a

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 667
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 668
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 669
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    iget-object v3, p2, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-ne v2, v3, :cond_a

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    iget-object v3, p2, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-ne v2, v3, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->installedBinaryId:Ljava/lang/String;

    .line 674
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->isFavorite:Z

    if-ne v2, v3, :cond_a

    iget-boolean v2, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    iget-boolean v3, p2, Lcom/oculus/library/model/App;->isUnseen:Z

    if-ne v2, v3, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->recentActivityMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->userQualityRating:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-wide v2, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    iget-wide v4, p2, Lcom/oculus/library/model/App;->totalActivityMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_a

    iget-object v2, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    iget-object v3, p2, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    .line 682
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 688
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 689
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p2, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 690
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 691
    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 695
    :cond_3
    invoke-static {}, Lcom/oculus/library/model/Image$ImageName;->values()[Lcom/oculus/library/model/Image$ImageName;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    .line 696
    invoke-direct {p0, p1, v5}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v6

    .line 697
    invoke-direct {p0, p2, v5}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    .line 699
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    return v1

    :cond_4
    if-nez v6, :cond_6

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1

    .line 707
    :cond_7
    iget-object v2, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 709
    invoke-static {v2}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 708
    invoke-static {v2}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 710
    iget-object v3, p2, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 712
    invoke-static {v3}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    .line 711
    invoke-static {v3}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 717
    :cond_8
    iget-object p1, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 718
    invoke-static {p1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 719
    iget-object p2, p2, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    .line 720
    invoke-static {p2}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 721
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0

    :catch_0
    :cond_a
    :goto_2
    return v1
.end method

.method public isValid(Lcom/oculus/library/model/App;)Z
    .locals 5

    .line 596
    iget-object v0, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 597
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->comfortRatingName:Ljava/lang/String;

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->images:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget v0, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    .line 617
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    .line 618
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    .line 619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object p1, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toContentValues(Lcom/oculus/library/model/App;)Landroid/content/ContentValues;
    .locals 6

    .line 325
    iget-object v0, p1, Lcom/oculus/library/model/App;->latestPermissions:Ljava/util/List;

    .line 327
    invoke-static {v0}, Lcom/oculus/library/utils/app/PermissionsManager;->toLegacyPermissionList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/oculus/library/utils/app/AppConverter;->convertPermissionListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p1, Lcom/oculus/library/model/App;->supportedInputDevices:Ljava/util/List;

    invoke-static {v1}, Lcom/oculus/library/utils/app/AppConverter;->convertSupportedInputDevicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 330
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_ITEM_ID:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_NAME:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_APPLICATION_GROUPING_ID:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_SQUARE:Ljava/lang/String;

    sget-object v4, Lcom/oculus/library/model/Image$ImageName;->SOURCE_SQUARE:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v4}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_MAIN:Ljava/lang/String;

    sget-object v4, Lcom/oculus/library/model/Image$ImageName;->SOURCE_MAIN:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v4}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_IMAGE_SOURCE_TINY:Ljava/lang/String;

    sget-object v4, Lcom/oculus/library/model/Image$ImageName;->SOURCE_TINY:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v4}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_SMALL_LANDSCAPE_IMAGE:Ljava/lang/String;

    sget-object v4, Lcom/oculus/library/model/Image$ImageName;->LANDSCAPE_SMALL:Lcom/oculus/library/model/Image$ImageName;

    invoke-direct {p0, p1, v4}, Lcom/oculus/library/utils/app/AppConverter;->getImageUri(Lcom/oculus/library/model/App;Lcom/oculus/library/model/Image$ImageName;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PACKAGE_NAME:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_CODE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->latestVersionCode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_VERSION_NAME:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/library/model/App;->latestVersionName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_LATEST_SDK_TARGET_VERSION:Ljava/lang/String;

    iget v4, p1, Lcom/oculus/library/model/App;->latestTargetSdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLATION_SIZE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_DOWNLOADED_SIZE:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    sget-object v3, Lcom/oculus/library/utils/app/AppConverter;->COL_PERMISSIONS:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_INSTALLABLE_ON_EXTERNAL_STORAGE:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/oculus/library/model/App;->installableOnExternalStorage:Z

    .line 345
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 344
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_USER_QUALITY_RATING:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->userQualityRating:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_STATUS:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/AppStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CLOUD_STORAGE_STATUS:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_SUPPORTED_INPUT_DEVICES:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_ENTITLEMENT_HASH:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->entitlementHash:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APP_SCOPED_USER_ID:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->appScopedUserId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_RECENT_ACTIVITY:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->recentActivityMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_COMFORT_RATING:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->comfortRating:Lcom/oculus/library/model/ComfortRating;

    invoke-virtual {v1}, Lcom/oculus/library/model/ComfortRating;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_FAVORITE:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/oculus/library/model/App;->isFavorite:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_UNSEEN:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/oculus/library/model/App;->isUnseen:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->livestreamingStatus:Lcom/oculus/library/model/LivestreamingStatus;

    invoke-virtual {v1}, Lcom/oculus/library/model/LivestreamingStatus;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_LIVESTREAMING_STATUS_AUDIO_HOOKING_ENABLED:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/oculus/library/model/App;->livestreamingAudioHookingEnabled:Z

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 357
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_CHROMECAST_AUDIO_ENABLED:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/oculus/library/model/App;->chromecastAudioEnabled:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_RECOMMENDED_VERSION_CODE:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->minRecommendedVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MIN_REQUIRED_VERSION_CODE:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->minRequiredVersionCode:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_MICROPHONE_USAGE:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->microphoneUsage:Lcom/oculus/library/model/MicrophoneUsage;

    invoke-virtual {v1}, Lcom/oculus/library/model/MicrophoneUsage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_TOTAL_ACTIVITY:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->totalActivityMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 365
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PATCH_DOWNLOAD_SIZE:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->patchSizeBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_APK_FULL_SIZE:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->apkFullSizeBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_OBB_FULL_SIZE:Ljava/lang/String;

    iget-wide v3, p1, Lcom/oculus/library/model/App;->obbFullSizeBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_IS_DEMO_OF:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/library/model/App;->isDemoOf:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/oculus/library/utils/app/AppConverter;->COL_PLAY_MODES:Ljava/lang/String;

    iget-object p1, p1, Lcom/oculus/library/model/App;->playModes:Ljava/util/List;

    invoke-static {p1}, Lcom/oculus/library/utils/app/AppConverter;->convertPlayModesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
