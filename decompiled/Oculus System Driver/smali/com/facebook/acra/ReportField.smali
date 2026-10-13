.class public final enum Lcom/facebook/acra/ReportField;
.super Ljava/lang/Enum;
.source "ReportField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/acra/ReportField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/ReportField;

.field public static final enum ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

.field public static final enum ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

.field public static final enum ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

.field public static final enum ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

.field public static final enum ANDROID_ID:Lcom/facebook/acra/ReportField;

.field public static final enum ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

.field public static final enum ANDROID_VERSION:Lcom/facebook/acra/ReportField;

.field public static final enum APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

.field public static final enum APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

.field public static final enum APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

.field public static final enum APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

.field public static final enum ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

.field public static final enum AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

.field public static final enum BRAND:Lcom/facebook/acra/ReportField;

.field public static final enum BUILD:Lcom/facebook/acra/ReportField;

.field public static final enum BUILD_HOST:Lcom/facebook/acra/ReportField;

.field public static final enum CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

.field public static final enum CUSTOM_DATA:Lcom/facebook/acra/ReportField;

.field public static final enum DEVICE:Lcom/facebook/acra/ReportField;

.field public static final enum DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

.field public static final enum DEVICE_ID:Lcom/facebook/acra/ReportField;

.field public static final enum DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

.field public static final enum DISPLAY:Lcom/facebook/acra/ReportField;

.field public static final enum DROPBOX:Lcom/facebook/acra/ReportField;

.field public static final enum DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

.field public static final enum ENVIRONMENT:Lcom/facebook/acra/ReportField;

.field public static final enum EVENTSLOG:Lcom/facebook/acra/ReportField;

.field public static final enum EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

.field public static final enum FILE_PATH:Lcom/facebook/acra/ReportField;

.field public static final enum IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

.field public static final enum INSTALLATION_ID:Lcom/facebook/acra/ReportField;

.field public static final enum IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

.field public static final enum IS_SILENT:Lcom/facebook/acra/ReportField;

.field public static final enum JAIL_BROKEN:Lcom/facebook/acra/ReportField;

.field public static final enum LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

.field public static final enum LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

.field public static final enum LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

.field public static final enum LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

.field public static final enum LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

.field public static final enum LOGCAT:Lcom/facebook/acra/ReportField;

.field public static final enum MINIDUMP:Lcom/facebook/acra/ReportField;

.field public static final enum MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

.field public static final enum OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

.field public static final enum OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

.field public static final enum OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

.field public static final enum OS_VERSION:Lcom/facebook/acra/ReportField;

.field public static final enum PACKAGE_NAME:Lcom/facebook/acra/ReportField;

.field public static final enum PHONE_MODEL:Lcom/facebook/acra/ReportField;

.field public static final enum PROCESS_NAME:Lcom/facebook/acra/ReportField;

.field public static final enum PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

.field public static final enum PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

.field public static final enum PRODUCT:Lcom/facebook/acra/ReportField;

.field public static final enum RADIOLOG:Lcom/facebook/acra/ReportField;

.field public static final enum REPORT_ID:Lcom/facebook/acra/ReportField;

.field public static final enum REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

.field public static final enum RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

.field public static final enum SERIAL:Lcom/facebook/acra/ReportField;

.field public static final enum SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

.field public static final enum SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

.field public static final enum SIGQUIT:Lcom/facebook/acra/ReportField;

.field public static final enum STACK_TRACE:Lcom/facebook/acra/ReportField;

.field public static final enum TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

.field public static final enum TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

.field public static final enum UID:Lcom/facebook/acra/ReportField;

.field public static final enum UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

.field public static final enum USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

.field public static final enum USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

.field public static final enum USER_EMAIL:Lcom/facebook/acra/ReportField;

.field public static final enum WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ACRA_REPORT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    .line 40
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "REPORT_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    .line 44
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ANDROID_ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    .line 48
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "UID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    .line 54
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "APP_VERSION_CODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    .line 58
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "APP_VERSION_NAME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    .line 62
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PACKAGE_NAME"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    .line 67
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "FILE_PATH"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    .line 71
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PHONE_MODEL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    .line 75
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DEVICE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    .line 79
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ANDROID_VERSION"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    .line 83
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "OS_VERSION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    .line 87
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "BUILD"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    .line 91
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "BUILD_HOST"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    .line 95
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "BRAND"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    .line 99
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PRODUCT"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    .line 103
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "TOTAL_MEM_SIZE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    .line 107
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "AVAILABLE_MEM_SIZE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    .line 112
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "CUSTOM_DATA"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    .line 116
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "STACK_TRACE"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    .line 121
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "CRASH_CONFIGURATION"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    .line 125
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DISPLAY"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    .line 129
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "USER_APP_START_DATE"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    .line 133
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "USER_CRASH_DATE"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    .line 137
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DUMPSYS_MEMINFO"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    .line 142
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DROPBOX"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    .line 146
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LOGCAT"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    .line 150
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "EVENTSLOG"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    .line 154
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "RADIOLOG"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    .line 158
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "IS_SILENT"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->IS_SILENT:Lcom/facebook/acra/ReportField;

    .line 162
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DEVICE_ID"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    .line 167
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "INSTALLATION_ID"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    .line 172
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "USER_EMAIL"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->USER_EMAIL:Lcom/facebook/acra/ReportField;

    .line 176
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DEVICE_FEATURES"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    .line 180
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ENVIRONMENT"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    .line 184
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "SETTINGS_SYSTEM"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    .line 188
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "SETTINGS_SECURE"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    .line 192
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PROCESS_NAME"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    .line 196
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PROCESS_NAME_BY_AMS"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    .line 200
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "UPLOADED_BY_PROCESS"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    .line 204
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ACTIVITY_LOG"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    .line 209
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ACRA_INTERNAL"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    .line 213
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "PROCESS_UPTIME"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    .line 217
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "DEVICE_UPTIME"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    .line 222
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "JAIL_BROKEN"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    .line 227
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ACRA_REPORT_FILENAME"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    .line 231
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "EXCEPTION_CAUSE"

    const/16 v15, 0x2e

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    .line 235
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "REPORT_LOAD_THROW"

    const/16 v15, 0x2f

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    .line 239
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "MINIDUMP"

    const/16 v15, 0x30

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    .line 243
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "OPEN_FD_COUNT"

    const/16 v15, 0x31

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    .line 247
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "OPEN_FD_SOFT_LIMIT"

    const/16 v15, 0x32

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    .line 251
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "OPEN_FD_HARD_LIMIT"

    const/16 v15, 0x33

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    .line 256
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "APP_INSTALL_TIME"

    const/16 v15, 0x34

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    .line 261
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "APP_UPGRADE_TIME"

    const/16 v15, 0x35

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    .line 266
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "SERIAL"

    const/16 v15, 0x36

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->SERIAL:Lcom/facebook/acra/ReportField;

    .line 272
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "IS_LOW_RAM_DEVICE"

    const/16 v15, 0x37

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    .line 277
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "SIGQUIT"

    const/16 v15, 0x38

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    .line 282
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LARGE_MEM_HEAP"

    const/16 v15, 0x39

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    .line 287
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ANDROID_RUNTIME"

    const/16 v15, 0x3a

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    .line 294
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "MINIDUMP_EXCLUDE_REASON"

    const/16 v15, 0x3b

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    .line 301
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "ATTACHMENT_ORIGINAL_SIZE"

    const/16 v15, 0x3c

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    .line 308
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LAST_URL_VISITED"

    const/16 v15, 0x3d

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    .line 313
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LAST_URL_VISITED_TIME"

    const/16 v15, 0x3e

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    .line 318
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "TIME_OF_CRASH"

    const/16 v15, 0x3f

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    .line 323
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "WEBVIEW_VERSION"

    const/16 v15, 0x40

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    .line 330
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LAST_ACTIVITY_LOGGED"

    const/16 v15, 0x41

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    .line 335
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "LAST_ACTIVITY_LOGGED_TIME"

    const/16 v15, 0x42

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    .line 340
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "IAB_OPEN_TIMES"

    const/16 v15, 0x43

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    .line 345
    new-instance v0, Lcom/facebook/acra/ReportField;

    const-string v1, "RUNTIME_PERMISSIONS"

    const/16 v15, 0x44

    invoke-direct {v0, v1, v15}, Lcom/facebook/acra/ReportField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    const/16 v0, 0x45

    .line 32
    new-array v0, v0, [Lcom/facebook/acra/ReportField;

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v9

    sget-object v1, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v10

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v12

    sget-object v1, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    aput-object v1, v0, v14

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

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

    sget-object v1, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->IS_SILENT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->USER_EMAIL:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->MINIDUMP:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SERIAL:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->SIGQUIT:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->WEBVIEW_VERSION:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ReportField;->RUNTIME_PERMISSIONS:Lcom/facebook/acra/ReportField;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/acra/ReportField;->$VALUES:[Lcom/facebook/acra/ReportField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/ReportField;
    .locals 1

    .line 32
    const-class v0, Lcom/facebook/acra/ReportField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/acra/ReportField;

    return-object p0
.end method

.method public static values()[Lcom/facebook/acra/ReportField;
    .locals 1

    .line 32
    sget-object v0, Lcom/facebook/acra/ReportField;->$VALUES:[Lcom/facebook/acra/ReportField;

    invoke-virtual {v0}, [Lcom/facebook/acra/ReportField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/ReportField;

    return-object v0
.end method
