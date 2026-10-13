.class public Lcom/oculus/browser/acra/ACRA;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

.field public static final ENABLE_SSL_CERT_CHECKS_FILE_NAME:Ljava/lang/String; = "cert_checks.txt"

.field public static final LOG_TAG:Ljava/lang/String; = "ACRA"

.field public static final MINIMAL_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

.field public static final NULL_VALUE:Ljava/lang/String; = "ACRA-NULL-STRING"

.field public static final REPORT_HOST_FILE_NAME:Ljava/lang/String; = "report_host.txt"

.field public static final TAG:Ljava/lang/String; = "ACRA"

.field public static mReportSender:Lcom/oculus/browser/acra/sender/FlexibleReportSender;

.field public static mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x41

    new-array v0, v0, [Lcom/oculus/browser/acra/ReportField;

    .line 1
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/oculus/browser/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_CODE:Lcom/oculus/browser/acra/ReportField;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_NAME:Lcom/oculus/browser/acra/ReportField;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_INSTALL_TIME:Lcom/oculus/browser/acra/ReportField;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_UPGRADE_TIME:Lcom/oculus/browser/acra/ReportField;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PACKAGE_NAME:Lcom/oculus/browser/acra/ReportField;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->FILE_PATH:Lcom/oculus/browser/acra/ReportField;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PHONE_MODEL:Lcom/oculus/browser/acra/ReportField;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BRAND:Lcom/oculus/browser/acra/ReportField;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PRODUCT:Lcom/oculus/browser/acra/ReportField;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_VERSION:Lcom/oculus/browser/acra/ReportField;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OS_VERSION:Lcom/oculus/browser/acra/ReportField;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BUILD:Lcom/oculus/browser/acra/ReportField;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BUILD_HOST:Lcom/oculus/browser/acra/ReportField;

    const/16 v16, 0xe

    aput-object v1, v0, v16

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    const/16 v18, 0x10

    aput-object v1, v0, v18

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    const/16 v19, 0x11

    aput-object v1, v0, v19

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->STACK_TRACE:Lcom/oculus/browser/acra/ReportField;

    const/16 v20, 0x12

    aput-object v1, v0, v20

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE:Lcom/oculus/browser/acra/ReportField;

    const/16 v21, 0x13

    aput-object v1, v0, v21

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->CRASH_CONFIGURATION:Lcom/oculus/browser/acra/ReportField;

    const/16 v22, 0x14

    aput-object v1, v0, v22

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DISPLAY:Lcom/oculus/browser/acra/ReportField;

    const/16 v23, 0x15

    aput-object v1, v0, v23

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->USER_APP_START_DATE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x16

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->USER_CRASH_DATE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x17

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x18

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DROPBOX:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x19

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LOGCAT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1a

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->EVENTSLOG:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1b

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->RADIOLOG:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1c

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1d

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->INSTALLATION_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1e

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_FEATURES:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x1f

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ENVIRONMENT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x20

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SYSTEM:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x21

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SECURE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x22

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x23

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x24

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACTIVITY_LOG:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x25

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->JAIL_BROKEN:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x26

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_UPTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x27

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_UPTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x28

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x29

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->EXCEPTION_CAUSE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2a

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_LOAD_THROW:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2b

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->MINIDUMP:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2c

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2d

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UID:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2e

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x2f

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_COUNT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x30

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x31

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x32

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x33

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SIGQUIT:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x34

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LARGE_MEM_HEAP:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x35

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_RUNTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x36

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x37

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x38

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x39

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3a

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->TIME_OF_CRASH:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3b

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->WEBVIEW_VERSION:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3c

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3d

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3e

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->IAB_OPEN_TIMES:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x3f

    aput-object v1, v0, v24

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/oculus/browser/acra/ReportField;

    const/16 v24, 0x40

    aput-object v1, v0, v24

    sput-object v0, Lcom/oculus/browser/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    const/16 v0, 0x33

    new-array v0, v0, [Lcom/oculus/browser/acra/ReportField;

    .line 2
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_CODE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_NAME:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_INSTALL_TIME:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_UPGRADE_TIME:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PACKAGE_NAME:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->FILE_PATH:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PHONE_MODEL:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BRAND:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PRODUCT:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_VERSION:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v13

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OS_VERSION:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v14

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BUILD:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v15

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BUILD_HOST:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v16

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v17

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v18

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v19

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->STACK_TRACE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v20

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v21

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->CRASH_CONFIGURATION:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v22

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DISPLAY:Lcom/oculus/browser/acra/ReportField;

    aput-object v1, v0, v23

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->USER_APP_START_DATE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->USER_CRASH_DATE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DROPBOX:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->INSTALLATION_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_FEATURES:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ENVIRONMENT:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SYSTEM:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SECURE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACTIVITY_LOG:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->JAIL_BROKEN:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PROCESS_UPTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE_UPTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->EXCEPTION_CAUSE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_LOAD_THROW:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->MINIDUMP:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UID:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->LARGE_MEM_HEAP:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_RUNTIME:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->WEBVIEW_VERSION:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/oculus/browser/acra/ReportField;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/browser/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeStreamNoException(Ljava/io/Closeable;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
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

    .line 2
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    return-object v0
.end method

.method public static init(Lcom/oculus/browser/acra/reporter/ReportsCrashes;Ljava/lang/String;Z)Lcom/oculus/browser/acra/ErrorReporter;
    .locals 4

    .line 1
    invoke-static {}, Lcom/oculus/browser/acra/ErrorReporter;->getInstance()Lcom/oculus/browser/acra/ErrorReporter;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    if-nez v1, :cond_1

    .line 3
    sput-object p0, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    .line 4
    invoke-interface {p0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA is enabled for "

    invoke-static {v2}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", intializing..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {v0, p0, p2}, Lcom/oculus/browser/acra/ErrorReporter;->init(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    .line 9
    invoke-static {p0, v0, p1}, Lcom/oculus/browser/acra/ACRA;->setReportSender(Landroid/content/Context;Lcom/oculus/browser/acra/ErrorReporter;Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/oculus/browser/acra/ACRA;->initCertChecks(Landroid/content/Context;)V

    :cond_1
    return-object v0
.end method

.method public static initCertChecks(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "cert_checks.txt"

    .line 1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
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

    .line 7
    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

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

    .line 8
    invoke-static {v2, v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 10
    :goto_2
    sget-object p0, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    invoke-interface {p0, v1}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->checkSSLCertsOnCrashReport(Z)V

    return-void

    .line 11
    :goto_3
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static setEnableSSLcertChecks(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    invoke-interface {v0, p0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->checkSSLCertsOnCrashReport(Z)V

    .line 2
    invoke-static {p0}, Lcom/oculus/browser/acra/ACRA;->writeCertChecksFile(Z)V

    return-void
.end method

.method public static setReportHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->mReportSender:Lcom/oculus/browser/acra/sender/FlexibleReportSender;

    invoke-interface {v0, p0}, Lcom/oculus/browser/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z

    .line 2
    invoke-static {p0}, Lcom/oculus/browser/acra/ACRA;->writeReportHostFile(Ljava/lang/String;)V

    return-void
.end method

.method public static setReportSender(Landroid/content/Context;Lcom/oculus/browser/acra/ErrorReporter;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ACRA"

    .line 1
    new-instance v1, Lcom/oculus/browser/acra/sender/HttpPostSender;

    invoke-direct {v1, p2}, Lcom/oculus/browser/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oculus/browser/acra/ACRA;->mReportSender:Lcom/oculus/browser/acra/sender/FlexibleReportSender;

    .line 2
    invoke-virtual {p1, v1}, Lcom/oculus/browser/acra/ErrorReporter;->setReportSender(Lcom/oculus/browser/acra/sender/ReportSender;)V

    const/4 p1, 0x0

    :try_start_0
    const-string p2, "report_host.txt"

    .line 3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_0

    .line 5
    invoke-static {p1}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting crash reporting host to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->mReportSender:Lcom/oculus/browser/acra/sender/FlexibleReportSender;

    invoke-interface {p1, p0}, Lcom/oculus/browser/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    invoke-static {p2}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

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

    .line 12
    invoke-static {v0, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    invoke-static {p1}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {p2}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeCertChecksFile(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    invoke-interface {v1}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "cert_checks.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v2}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

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

    .line 6
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeReportHostFile(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->mReportsCrashes:Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    invoke-interface {v1}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "report_host.txt"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-static {v2}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

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

    .line 6
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/oculus/browser/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw p0
.end method
