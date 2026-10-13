.class public Lcom/facebook/acraconfig/AcraConfig;
.super Ljava/lang/Object;
.source "AcraConfig.java"


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

    .prologue
    .line 113
    const-string v0, "acraconfig_disable_fs_sync_syscalls"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLogcatInterceptorAfterCrashEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 82
    const-string v0, "acraconfig_logcat_interceptor_after_crash_enabled"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static nativeCrashPeriodicReportIntervalMins(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 87
    const-string v0, "acraconfig_logcat_native_crash_periodic_interval_mins"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->getGkValueInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shouldDeleteCorruptedMinidumps(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 125
    const-string v0, "android_acra_delete_corrupted_minidumps"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldDeviceStoreReports(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 121
    const-string v0, "android_acra_save_native_reports"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableNightwatch(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 149
    const-string v0, "acraconfig_enable_nightwatch"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldReportOldANRs(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 137
    const-string v0, "acraconfig_report_old_anrs"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseSetSidOnNightwatch(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 157
    const-string v0, "acraconfig_nightwatch_use_setsid"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static useFSSyncFastHooks(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 145
    const-string v0, "acraconfig_use_fast_fs_sync_hooks"

    invoke-static {p0, v0}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
