.class public Lcom/facebook/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field public static final ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

.field private static final ENABLE_SSL_CERT_CHECKS_FILE_NAME:Ljava/lang/String; = "cert_checks.txt"

.field public static final LOG_TAG:Ljava/lang/String; = "ACRA"

.field public static final MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field private static final REPORT_HOST_FILE_NAME:Ljava/lang/String; = "report_host.txt"

.field private static final TAG:Ljava/lang/String; = "ACRA"

.field private static mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

.field private static mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x41

    .line 121
    new-array v0, v0, [Lcom/facebook/acra/ReportField;

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    const/16 v16, 0xe

    aput-object v1, v0, v16

    sget-object v1, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x10

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x11

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x12

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x13

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x14

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x15

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x16

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x17

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x18

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x19

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x20

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x21

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x22

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x23

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x24

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x25

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x26

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x27

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x28

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x29

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2a

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2b

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2c

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2d

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2e

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x2f

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x30

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x31

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x32

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x33

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x34

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x35

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x36

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x37

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x38

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x39

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3a

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3b

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3c

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3d

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3e

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x3f

    aput-object v1, v0, v17

    sget-object v1, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    const/16 v17, 0x40

    aput-object v1, v0, v17

    sput-object v0, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    const/16 v0, 0x33

    .line 141
    new-array v0, v0, [Lcom/facebook/acra/ReportField;

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v14

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v15

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v16

    sget-object v1, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStreamNoException(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ACRA"

    const-string v1, "Error while closing stream: "

    .line 264
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getConfig()Lcom/facebook/acra/reporter/ReportsCrashes;
    .locals 1

    .line 113
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    return-object v0
.end method

.method public static init(Lcom/facebook/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/facebook/acra/ErrorReporter;
    .locals 4

    .line 80
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    if-nez v1, :cond_1

    .line 83
    sput-object p0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    .line 85
    sget-object p0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    invoke-interface {p0}, Lcom/facebook/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 86
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA is enabled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intializing..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v0, p0, p2}, Lcom/facebook/acra/ErrorReporter;->init(Landroid/content/Context;Z)V

    .line 95
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz p1, :cond_0

    .line 98
    invoke-static {p0, v0, p1}, Lcom/facebook/acra/ACRA;->setReportSender(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->initCertChecks(Landroid/content/Context;)V

    .line 103
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOnApplicationStart()Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    :cond_1
    return-object v0
.end method

.method private static initCertChecks(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "cert_checks.txt"

    .line 240
    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 252
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :goto_1
    :try_start_2
    const-string v2, "ACRA"

    const-string v3, "could not read disable ssl cert checks file: "

    .line 250
    invoke-static {v2, v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 254
    :goto_2
    sget-object p0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    invoke-interface {p0, v1}, Lcom/facebook/acra/reporter/ReportsCrashes;->checkSSLCertsOnCrashReport(Z)V

    return-void

    .line 252
    :goto_3
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static setEnableSSLcertChecks(Z)V
    .locals 1

    .line 167
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    invoke-interface {v0, p0}, Lcom/facebook/acra/reporter/ReportsCrashes;->checkSSLCertsOnCrashReport(Z)V

    .line 168
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->writeCertChecksFile(Z)V

    return-void
.end method

.method public static setReportHost(Ljava/lang/String;)V
    .locals 1

    .line 162
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v0, p0}, Lcom/facebook/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z

    .line 163
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->writeReportHostFile(Ljava/lang/String;)V

    return-void
.end method

.method private static setReportSender(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ACRA"

    .line 211
    new-instance v1, Lcom/facebook/acra/sender/HttpPostSender;

    invoke-direct {v1, p2}, Lcom/facebook/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    .line 212
    sget-object p2, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-virtual {p1, p2}, Lcom/facebook/acra/ErrorReporter;->setReportSender(Lcom/facebook/acra/sender/ReportSender;)V

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "report_host.txt"

    .line 216
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_0

    .line 230
    invoke-static {p1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 221
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 223
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting crash reporting host to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object p1, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {p1, p0}, Lcom/facebook/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_1
    invoke-static {p2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object p1, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p2, p1

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_3
    const-string p2, "could not read host file: "

    .line 228
    invoke-static {v0, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    invoke-static {p1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {p2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static writeCertChecksFile(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 175
    :try_start_0
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    invoke-interface {v1}, Lcom/facebook/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cert_checks.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 178
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v1, "ACRA"

    const-string v2, "could not write to ssl cert checks file: "

    .line 182
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 184
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static writeReportHostFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 192
    :try_start_0
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportsCrashes:Lcom/facebook/acra/reporter/ReportsCrashes;

    invoke-interface {v1}, Lcom/facebook/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_host.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v1, "ACRA"

    const-string v2, "could not write to host file: "

    .line 199
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method
