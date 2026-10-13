.class public Lcom/facebook/acraconfig/AcraConfig;
.super Ljava/lang/Object;
.source "AcraConfig.java"


# static fields
.field private static final ACRACONFIG_DISABLE_CALLING_EXTERNAL_PROCS_DURING_REPORTING:Ljava/lang/String; = "acraconfig_disable_calling_external_procs_during_reporting"

.field private static final ACRACONFIG_DISABLE_FS_SYNC_SYSCALLS:Ljava/lang/String; = "acraconfig_disable_fs_sync_syscalls"

.field private static final ACRACONFIG_ENABLE_NIGHTWATCH:Ljava/lang/String; = "acraconfig_enable_nightwatch"

.field private static final ACRACONFIG_LIMIT_MAX_REPORTS_SENT_PER_DAY:Ljava/lang/String; = "acraconfig_limit_max_reports_sent_per_day"

.field private static final ACRACONFIG_LOGCAT_INTERCEPTOR_AFTER_CRASH_ENABLED_FILENAME:Ljava/lang/String; = "acraconfig_logcat_interceptor_after_crash_enabled"

.field private static final ACRACONFIG_LOGCAT_INTERCEPTOR_ENABLED_FILENAME:Ljava/lang/String; = "acraconfig_logcat_interceptor_enabled"

.field private static final ACRACONFIG_LOGCAT_INTERCEPTOR_RING_SIZE:Ljava/lang/String; = "acraconfig_logcat_interceptor_ring_size"

.field private static final ACRACONFIG_LOGCAT_NATIVE_CRASH_ENABLED_FILENAME:Ljava/lang/String; = "acraconfig_logcat_native_crash_enabled_enabled"

.field private static final ACRACONFIG_LOGCAT_NUMBER_OF_LINES:Ljava/lang/String; = "acraconfig_logcat_number_of_lines"

.field private static final ACRACONFIG_NATIVE_CRASH_PERIODIC_REPORT_INTERVAL_MINS:Ljava/lang/String; = "acraconfig_logcat_native_crash_periodic_interval_mins"

.field private static final ACRACONFIG_USE_FAST_FS_SYNC_HOOKS:Ljava/lang/String; = "acraconfig_use_fast_fs_sync_hooks"

.field private static final ACRACONFIG_USE_MULTIPART_ENABLED_FILENAME:Ljava/lang/String; = "acraconfig_use_multipart_enabled"

.field private static final ACRACONFIG_USE_ZSTD_ENABLED_FILENAME:Ljava/lang/String; = "acraconfig_use_zstd_enabled"

.field private static final ACRACONFIG_ZERO_CRASHLOG_BLOCKED_FILENAME:Ljava/lang/String; = "acraconfig_zero_crashlog_blocked"

.field private static final ANDROID_ACRA_COLLECT_MAX_NUMBER_OF_LINES_IN_UFAD:Ljava/lang/String; = "acraconfig_logcat_max_number_of_lines_ufad"

.field private static final ANDROID_ACRA_DELETE_CORRUPTED_MINIDUMPS:Ljava/lang/String; = "android_acra_delete_corrupted_minidumps"

.field private static final ANDROID_ACRA_LOGCAT_INTERCEPTION_HOOKING_DISTRACT:Ljava/lang/String; = "android_acra_logcat_interception_hooking_distract"

.field private static final ANDROID_ACRA_NIGHTWATCH_USE_SETSID:Ljava/lang/String; = "acraconfig_nightwatch_use_setsid"

.field private static final ANDROID_ACRA_SAVE_NATIVE_REPORTS:Ljava/lang/String; = "android_acra_save_native_reports"

.field private static final ANDROID_ACRA_SHOULD_LAZY_FIELDS_OVERWRITE_EXISTING_VALUES:Ljava/lang/String; = "should_lazy_fields_overwrite_existing_values"

.field private static final ANDROID_ACRA_SHOULD_REPORT_OLD_ANRS:Ljava/lang/String; = "acraconfig_report_old_anrs"

.field private static final ANDROID_ACRA_SKIP_REPORT_ON_SOCKET_TIMEOUT:Ljava/lang/String; = "acraconfig_skip_report_on_socket_timeout"

.field private static final ANDROID_ACRA_STOP_ANR_DETECTOR_DURING_ERROR_REPORTING:Ljava/lang/String; = "acraconfig_stop_anr_detector_on_error_reporting"

.field private static final ANDROID_ACRA_USE_UPLOAD_SERVICE:Ljava/lang/String; = "acraconfig_use_upload_service"

.field public static final DEFAULT_LOGCAT_INTERCEPTOR_RING_SIZE:I = 0x32000

.field public static final DEFAULT_LOGCAT_NUMBER_OF_LINES:I = 0xc8

.field private static final DEFAULT_NATIVE_CRASH_PERIODIC_REPORT_INTERVAL_MINS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableFSSyncSyscalls(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 113
    const-string v0, "acraconfig_disable_fs_sync_syscalls"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCallingExternalProcessesForCrashReportsDisabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "acraconfig_disable_calling_external_procs_during_reporting"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLogCatNativeCrashEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v0, "acraconfig_logcat_native_crash_enabled_enabled"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLogcatInterceptorAfterCrashEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v0, "acraconfig_logcat_interceptor_after_crash_enabled"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLogcatInterceptorEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    const-string v0, "acraconfig_logcat_interceptor_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMultipartEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "acraconfig_use_multipart_enabled"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isZeroCrashlogBlocked(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string v0, "acraconfig_zero_crashlog_blocked"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isZstdEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "acraconfig_use_zstd_enabled"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static logcatInterceptorDistractHook(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 104
    const-string v0, "android_acra_logcat_interception_hooking_distract"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static logcatInterceptorRingSize(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v0, "acraconfig_logcat_interceptor_ring_size"

    const v1, 0x32000

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static logcatNumberOfLines(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string v0, "acraconfig_logcat_number_of_lines"

    const/16 v1, 0xc8

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static nativeCrashPeriodicReportIntervalMins(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v0, "acraconfig_logcat_native_crash_periodic_interval_mins"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static setCallingExternalProcessesForCrashReportsDisabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 171
    const-string v0, "acraconfig_disable_calling_external_procs_during_reporting"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method public static setDisableFSSyncSyscalls(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "disableFSSyncSyscalls"    # Z

    .prologue
    .line 216
    const-string v0, "acraconfig_disable_fs_sync_syscalls"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public static setFSSyncFastHooks(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 248
    const-string v0, "acraconfig_use_fast_fs_sync_hooks"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method public static setLimitMaxReportsSentPerDay(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "setLimit"    # Z

    .prologue
    .line 220
    const-string v0, "acraconfig_limit_max_reports_sent_per_day"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public static setLogCatNativeCrashEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enableLogcat"    # Z

    .prologue
    .line 180
    const-string v0, "acraconfig_logcat_native_crash_enabled_enabled"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public static setLogcatInterceptorAfterCrashEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 189
    const-string v0, "acraconfig_logcat_interceptor_after_crash_enabled"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 191
    return-void
.end method

.method public static setLogcatInterceptorDistractHook(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "distractHook"    # Z

    .prologue
    .line 207
    const-string v0, "android_acra_logcat_interception_hooking_distract"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public static setLogcatInterceptorEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 185
    const-string v0, "acraconfig_logcat_interceptor_enabled"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public static setLogcatInterceptorRingSize(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "size"    # I

    .prologue
    .line 199
    const-string v0, "acraconfig_logcat_interceptor_ring_size"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 200
    return-void
.end method

.method public static setLogcatNumberOfLines(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "numLines"    # I

    .prologue
    .line 203
    const-string v0, "acraconfig_logcat_number_of_lines"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 204
    return-void
.end method

.method public static setMultipartEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "useMultipart"    # Z

    .prologue
    .line 166
    const-string v0, "acraconfig_use_multipart_enabled"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method public static setNativeCrashPeriodicReportIntervalMins(Landroid/content/Context;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "interval"    # I

    .prologue
    .line 194
    const-string v0, "acraconfig_logcat_native_crash_periodic_interval_mins"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 196
    return-void
.end method

.method public static setShouldCollectMaxNumberOfLinesOnUfad(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 232
    const-string v0, "acraconfig_logcat_max_number_of_lines_ufad"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public static setShouldDeleteCorruptedMinidumps(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 228
    const-string v0, "android_acra_delete_corrupted_minidumps"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method public static setShouldDeviceStoreReports(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 224
    const-string v0, "android_acra_save_native_reports"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public static setShouldEnableNightwatch(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 252
    const-string v0, "acraconfig_enable_nightwatch"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 253
    return-void
.end method

.method public static setShouldLazyFieldsOverwriteExistingValues(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 264
    const-string v0, "should_lazy_fields_overwrite_existing_values"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public static setShouldNightwatchUseSetSid(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 260
    const-string v0, "acraconfig_nightwatch_use_setsid"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 261
    return-void
.end method

.method public static setShouldReportOldAnrs(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "report"    # Z

    .prologue
    .line 240
    const-string v0, "acraconfig_report_old_anrs"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 241
    return-void
.end method

.method public static setShouldSkipReportOnSocketTimeout(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 244
    const-string v0, "acraconfig_skip_report_on_socket_timeout"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public static setShouldStopAnrDetectorWhenReporting(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "stop"    # Z

    .prologue
    .line 236
    const-string v0, "acraconfig_stop_anr_detector_on_error_reporting"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 237
    return-void
.end method

.method public static setShouldUseUploadService(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 256
    const-string v0, "acraconfig_use_upload_service"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 257
    return-void
.end method

.method public static setZeroCrashlogBlocked(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "crashlogBlocked"    # Z

    .prologue
    .line 212
    const-string v0, "acraconfig_zero_crashlog_blocked"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public static setZstdEnabled(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "zstdEnabled"    # Z

    .prologue
    .line 176
    const-string v0, "acraconfig_use_zstd_enabled"

    invoke-static {p0, v0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public static shouldCollectMaxNumberOfLinesOnUfad(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 129
    const-string v0, "acraconfig_logcat_max_number_of_lines_ufad"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldDeleteCorruptedMinidumps(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 125
    const-string v0, "android_acra_delete_corrupted_minidumps"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldDeviceStoreReports(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v0, "android_acra_save_native_reports"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableNightwatch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 149
    const-string v0, "acraconfig_enable_nightwatch"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldLazyFieldsOverwriteExistingValues(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 161
    const-string v0, "should_lazy_fields_overwrite_existing_values"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldLimitMaxReportsSentPerDay(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v0, "acraconfig_limit_max_reports_sent_per_day"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldReportOldANRs(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 137
    const-string v0, "acraconfig_report_old_anrs"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSkipReportOnSocketTimeout(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v0, "acraconfig_skip_report_on_socket_timeout"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldStopAnrDetectorWhenReporting(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 133
    const-string v0, "acraconfig_stop_anr_detector_on_error_reporting"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseSetSidOnNightwatch(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    const-string v0, "acraconfig_nightwatch_use_setsid"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseUploadService(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 153
    const-string v0, "acraconfig_use_upload_service"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useFSSyncFastHooks(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v0, "acraconfig_use_fast_fs_sync_hooks"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
