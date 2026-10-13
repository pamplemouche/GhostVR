.class public Lcom/oculus/updater/core/constants/OSUpdaterConstants;
.super Ljava/lang/Object;
.source "OSUpdaterConstants.java"


# static fields
.field public static final ACTION_APPLY_UPDATE_FAILED:Ljava/lang/String; = "apply_update_failed"

.field public static final ACTION_APPLY_UPDATE_STATUS:Ljava/lang/String; = "apply_update_status"

.field public static final ACTION_APPLY_UPDATE_SUCCEEDED:Ljava/lang/String; = "apply_update_succeeded"

.field public static final ACTION_BATTERY_ALARM:Ljava/lang/String; = "BatteryAlarm"

.field public static final ACTION_BOOT_INTO_UPDATE:Ljava/lang/String; = "boot_into_update"

.field public static final ACTION_CANCEL_OTA:Ljava/lang/String; = "cancel_ota"

.field public static final ACTION_CHECK_OTA_AVAILABILITY:Ljava/lang/String; = "check_ota_availability"

.field public static final ACTION_CHECK_PERIOD_ALARM:Ljava/lang/String; = "CheckPeriodAlarm"

.field public static final ACTION_CHECK_UPDATES:Ljava/lang/String; = "check_updates"

.field public static final ACTION_EXT_BOOT_INTO_UPDATE:Ljava/lang/String; = "ext_boot_into_update"

.field public static final ACTION_EXT_CHECK_UPDATES:Ljava/lang/String; = "ext_check_updates"

.field public static final ACTION_EXT_CHECK_UPDATES_FULL:Ljava/lang/String; = "ext_check_updates_full"

.field public static final ACTION_GET_UPDATE_INFO:Ljava/lang/String; = "get_update_info"

.field public static final ACTION_IDLE_ALARM:Ljava/lang/String; = "IdleAlarm"

.field public static final ACTION_PROCESS_STARTED:Ljava/lang/String; = "process_started"

.field public static final ACTION_SET_OTA_DISABLED_STATE:Ljava/lang/String; = "set_ota_disabled_state"

.field public static final ACTION_SYSTEM_BATTERY_CHANGED:Ljava/lang/String; = "system_battery_changed"

.field public static final ACTION_SYSTEM_INTERACTIVE_CHANGED:Ljava/lang/String; = "system_interactive_changed"

.field public static final ACTION_SYSTEM_NETWORK_CHANGED:Ljava/lang/String; = "system_network_changed"

.field public static final ACTION_SYSTEM_REBOOTED:Ljava/lang/String; = "system_rebooted"

.field public static final ACTION_SYSTEM_SHUTDOWN:Ljava/lang/String; = "system_shutdown"

.field public static final ACTION_SYSTEM_UPDATE_POLICY_CHANGED:Ljava/lang/String; = "system_update_policy_changed"

.field public static final ACTION_UPDATER_GET_CURRENT_STATE:Ljava/lang/String; = "updater_get_current_state"

.field public static final ACTION_UPDATE_NOTIFICATION:Ljava/lang/String; = "com.oculus.updater.STATE_NOTIFICATION"

.field public static final ACTION_UPDATE_WINDOW_ALARM:Ljava/lang/String; = "UpdateWindowAlarm"

.field public static final ACTION_WIFI_WAIT_ALARM:Ljava/lang/String; = "WifiWaitAlarm"

.field public static final EXTRA_ERROR_DETAILS_ID:Ljava/lang/String; = "error_details"

.field public static final EXTRA_FAILURE_CODE:Ljava/lang/String; = "failure_code"

.field public static final EXTRA_FAILURE_MESSAGE:Ljava/lang/String; = "failure_message"

.field public static final EXTRA_FULL_UPDATE:Ljava/lang/String; = "full_update"

.field public static final EXTRA_PERCENT_COMPLETE:Ljava/lang/String; = "percent_complete"

.field public static final EXTRA_PROGRESS_ID:Ljava/lang/String; = "progress"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field public static final EXTRA_STATE_ID:Ljava/lang/String; = "state"

.field public static final KEY_APPLYING_UPDATE:Ljava/lang/String; = "applying_update"

.field public static final KEY_ARE_UPDATES_AVAILABLE:Ljava/lang/String; = "ota_are_updates_available"

.field public static final KEY_CHECKING_FOR_UPDATES:Ljava/lang/String; = "checking_for_updates"

.field public static final KEY_CURRENT_OS_VERSION:Ljava/lang/String; = "current_os_version"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final KEY_ERROR_WHILE_APPLYING_UPDATE:Ljava/lang/String; = "error_while_applying_update"

.field public static final KEY_ERROR_WHILE_CHECKING_FOR_UPDATES:Ljava/lang/String; = "error_while_checking_for_updates"

.field public static final KEY_NO_UPDATES_AVAILABLE:Ljava/lang/String; = "no_updates_available"

.field public static final KEY_TIME_SINCE_LAST_UPDATE_CHECK_MSEC:Ljava/lang/String; = "time_since_last_update_check_msec"

.field public static final KEY_TIME_SINCE_LAST_UPDATE_MSEC:Ljava/lang/String; = "time_since_last_update_msec"

.field public static final KEY_UPDATER_STATE:Ljava/lang/String; = "ota_updater_state"

.field public static final KEY_UPDATE_AVAILABILITY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final KEY_UPDATE_BASE_VERSION:Ljava/lang/String; = "ota_update_base_version"

.field public static final KEY_UPDATE_SIZE:Ljava/lang/String; = "ota_update_size"

.field public static final KEY_UPDATE_TARGET_VERSION:Ljava/lang/String; = "ota_update_target_version"

.field public static final RESULT_ERROR:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final STATE_DEVICE_NOT_CONFIGURED_FOR_AB_UPDATES:Ljava/lang/String; = "Device is not configured for AB updates"

.field public static final STATE_NOT_ALLOWED_BY_SYSTEM:Ljava/lang/String; = "state_not_allowed_by_system"

.field public static final STATE_OTA_DISABLED_BY_USER:Ljava/lang/String; = "state_ota_disabled"

.field public static final STATE_READY_TO_CHECK_FOR_OTA:Ljava/lang/String; = "state_ready_to_check_for_ota"

.field public static final STATE_UPDATE_IN_PROGRESS:Ljava/lang/String; = "ota_update_in_progress"

.field public static final STATE_WAITING_FOR_REBOOT:Ljava/lang/String; = "waiting_for_reboot"

.field public static final STATE_WIFI_DISABLED:Ljava/lang/String; = "Check for updates stopped due to no wifi connection"

.field public static final UPDATER_PACKAGE:Ljava/lang/String; = "com.oculus.updater"

.field public static final UPDATE_SERVICE:Ljava/lang/String; = "com.oculus.updater.core.os.OSUpdateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
