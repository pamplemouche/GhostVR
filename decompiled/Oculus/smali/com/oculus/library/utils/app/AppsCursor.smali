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
