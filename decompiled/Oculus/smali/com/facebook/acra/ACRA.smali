.class public Lcom/facebook/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field private static final ACRA_FLAGS_STORE:Ljava/lang/String; = "acra_flags_store"

.field private static final ANDROID_ANR_DETECTOR_TO_USE:Ljava/lang/String; = "android_anr_detector_to_use"

.field private static final ANR_PROCESS_MONITOR_MAX_CHECKS_AFTER:Ljava/lang/String; = "anr_process_monitor_max_checks_after"

.field private static final ANR_PROCESS_MONITOR_MAX_CHECKS_BEFORE:Ljava/lang/String; = "anr_process_monitor_max_checks_before"

.field private static final ANR_RECOVERY_TIMEOUT:Ljava/lang/String; = "anr_recovery_timeout"

.field public static final BREAKPAD_LIB_NAME:Ljava/lang/String; = "breakpad_lib_name"

.field private static final ERROR_MONITOR_CHECK_INTERVAL:Ljava/lang/String; = "error_monitor_check_interval"

.field private static final FORCE_NIGHTWATCH_PROPERTY_NAME:Ljava/lang/String; = "com.facebook.force_nightwatch"

.field public static final HYBRID_ANR_DETECTOR:I = 0x4

.field public static final IS_FIRST_RUN_AFTER_UPGRADE:Ljava/lang/String; = "is_first_run_after_upgrade"

.field public static final LOGCAT_FILE_KEY:Ljava/lang/String; = "logcatFileName"

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final POST_TASK_BASED_ANR_DETECTOR:I = 0x2

.field public static final PROCESS_ERROR_MONITOR_ANR_DETECTOR:I = 0x5

.field private static final REPORT_HOST_FILE_NAME:Ljava/lang/String; = "report_host.txt"

.field private static final RUN_ANR_DETECTOR_ON_BROWSER_PROCESS:Ljava/lang/String; = "run_anr_detector_on_browser_process"

.field public static final SESSION_ID_KEY:Ljava/lang/String; = "session_id"

.field private static final SHOULD_AVOID_MUTEX_ON_SIGNAL_HANDLER:Ljava/lang/String; = "avoid_mutex_on_signal_handler"

.field private static final SHOULD_CLEANUP_ANR_STATE_ON_ASL_THREAD:Ljava/lang/String; = "anr_cleanup_on_asl_thread"

.field private static final SHOULD_DEDUP_DISK_PERSISTENCE_GK_CACHED:Ljava/lang/String; = "should_dedup_disk_persistence_gk_cached"

.field private static final SHOULD_LOG_ON_SIGNAL_HANDLER:Ljava/lang/String; = "log_on_signal_handler"

.field private static final SHOULD_LOG_PROCESS_POSITION_IN_ANR_TRACE_FILE:Ljava/lang/String; = "log_position_anr_trace_file"

.field private static final SHOULD_RECORD_SIGNAL_TIME:Ljava/lang/String; = "record_signal_time"

.field private static final SHOULD_REPORT_SOFT_ERRORS:Ljava/lang/String; = "should_report_soft_errors"

.field private static final SHOULD_START_PROCESS_ERROR_MONITOR_EARLY:Ljava/lang/String; = "start_process_error_monitor_early"

.field private static final SHOULD_UPLOAD_ANR_REPORTS:Ljava/lang/String; = "anr_gk_cached"

.field private static final SHOULD_UPLOAD_SYSTEM_ANR_TRACES_GK_CACHED:Ljava/lang/String; = "should_upload_system_anr_traces_gk_cached"

.field private static final SHOULD_USE_STATIC_METHOD_CALLBACK:Ljava/lang/String; = "use_static_method_callback"

.field public static final SIGQUIT_BASED_ANR_DETECTOR:I = 0x3

.field private static final SKIP_SSL_CERT_CHECKS_FILE_NAME:Ljava/lang/String; = "skip_cert_checks.txt"

.field private static mANRDetector:Lcom/facebook/acra/anr/IANRDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sANRDetectorLock"
    .end annotation
.end field

.field private static mANRReport:Lcom/facebook/acra/anr/ANRReport;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sANRDetectorLock"
    .end annotation
.end field

.field private static mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

.field private static mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

.field private static final sANRDetectorLock:Ljava/lang/Object;

.field private static sAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sNativeLibraryLoaded:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sNativeLibraryLoadingLock"
    .end annotation
.end field

.field private static final sNativeLibraryLoadingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/facebook/acra/ACRA;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/acra/ACRA;->sNativeLibraryLoaded:Z

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/acra/ACRA;->sNativeLibraryLoadingLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/acra/ACRA;->sANRDetectorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/facebook/acra/ACRA;->sNativeLibraryLoadingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 76
    sput-boolean p0, Lcom/facebook/acra/ACRA;->sNativeLibraryLoaded:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->nativeLibrarySuccessfullyLoaded(Landroid/content/Context;)V

    return-void
.end method

.method private static closeStreamNoException(Ljava/io/Closeable;)V
    .locals 3

    .prologue
    .line 797
    if-nez p0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 801
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while closing stream: "

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteHostsFileIfEmpty(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 746
    :try_start_0
    const-string/jumbo v0, "report_host.txt"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 751
    :cond_2
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cannot read or write host file"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "could not delete empty host file: "

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 755
    const-string/jumbo v0, "report_host.txt"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "could not delete empty host file"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getANRReport()Lcom/facebook/acra/anr/ANRReport;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    return-object v0
.end method

.method public static getAnrDetectorId()I
    .locals 1

    .prologue
    .line 472
    const-string v0, "android_anr_detector_to_use"

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCachedShouldDedupDiskPersistence()Z
    .locals 1

    .prologue
    .line 660
    const-string/jumbo v0, "should_dedup_disk_persistence_gk_cached"

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCachedShouldLogProcessPositionInAnrTraceFile()Z
    .locals 1

    .prologue
    .line 652
    const-string v0, "log_position_anr_trace_file"

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCachedShouldUploadANRReports()Z
    .locals 1

    .prologue
    .line 664
    const-string v0, "anr_gk_cached"

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->getFlagValueDefaultTrue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getCachedShouldUploadSystemANRTraces()Z
    .locals 1

    .prologue
    .line 656
    const-string/jumbo v0, "should_upload_system_anr_traces_gk_cached"

    invoke-static {v0}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getConfig()Lcom/facebook/acra/config/AcraReportingConfig;
    .locals 1

    .prologue
    .line 481
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    return-object v0
.end method

.method private static getFlagValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    .line 637
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getFlagValue(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    const-string v1, "acra_flags_store"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    invoke-static {v0, p0, v2}, Lcom/facebook/acra/ACRA;->getFlagValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getFlagValueDefaultTrue(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    .line 610
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 611
    const-string v1, "acra_flags_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/facebook/acra/ACRA;->getFlagValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getIntValue(Ljava/lang/String;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 623
    const-string v1, "acra_flags_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 624
    invoke-static {v0, p0}, Lcom/facebook/acra/ACRA;->getIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    const-string/jumbo v0, "unknown"

    .line 395
    :cond_0
    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    .line 335
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 337
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 342
    :goto_0
    return p1

    .line 338
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public static init(Lcom/facebook/acra/config/AcraReportingConfig;)Lcom/facebook/acra/ErrorReporter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/facebook/acra/config/AcraReportingConfig;J)Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-static {p0, p1, p2, v0, v0}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;)Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/acra/ACRA;->init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)Lcom/facebook/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/facebook/acra/config/AcraReportingConfig;JLcom/facebook/acra/anr/AppStateUpdater;Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)Lcom/facebook/acra/ErrorReporter;
    .locals 5
    .param p4    # Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 198
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ACRA init; app state monitoring:%s ;reportURL: %s"

    if-eqz p3, :cond_7

    const-string/jumbo v0, "yes"

    .line 202
    :goto_0
    invoke-interface {p0}, Lcom/facebook/acra/config/AcraReportingConfig;->crashReportUrl()Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v1, v2, v0, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    .line 206
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 207
    invoke-virtual {v1, p1, p2}, Lcom/facebook/acra/ErrorReporter;->setAppStartTickTimeMs(J)V

    .line 210
    :cond_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    if-nez v0, :cond_6

    .line 211
    sput-object p0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 213
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 214
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ACRA is enabled for process %s, initializing..."

    invoke-static {}, Lcom/facebook/acra/ACRA;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->deleteHostsFileIfEmpty(Landroid/content/Context;)V

    .line 218
    if-eqz p4, :cond_1

    .line 219
    invoke-virtual {v1, p4}, Lcom/facebook/acra/ErrorReporter;->setExcludedReportObserver(Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)V

    .line 223
    :cond_1
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-virtual {v1, v0}, Lcom/facebook/acra/ErrorReporter;->init(Lcom/facebook/acra/config/AcraReportingConfig;)V

    .line 225
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->enableLeanCrashReporting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {}, Lcom/facebook/stacktracer/LeanStackTracer;->init()V

    .line 229
    :cond_2
    const/4 v0, 0x0

    .line 234
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/acra/ErrorReporter;->initFallible()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_1
    sget-object v3, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v3}, Lcom/facebook/acra/config/AcraReportingConfig;->createReportSender()Lcom/facebook/acra/sender/FlexibleReportSender;

    move-result-object v3

    sput-object v3, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    .line 240
    sget-object v3, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-virtual {v1, v3}, Lcom/facebook/acra/ErrorReporter;->setReportSender(Lcom/facebook/acra/sender/ReportSender;)V

    .line 241
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->initSenderHost(Landroid/content/Context;)V

    .line 242
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->initSenderSkipCertChecks(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v1}, Lcom/facebook/acra/ErrorReporter;->checkReportsOnApplicationStart()V

    .line 248
    sget-object v2, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldStopAnrDetectorOnErrorReporting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 250
    new-instance v2, Lcom/facebook/acra/ACRA$1;

    invoke-direct {v2}, Lcom/facebook/acra/ACRA$1;-><init>()V

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->addExceptionHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V

    .line 263
    :cond_3
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->addExceptionHandler(Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;I)V

    .line 266
    sget-object v2, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->enableLeanCrashReporting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    new-instance v2, Lcom/facebook/acra/ACRA$2;

    invoke-direct {v2}, Lcom/facebook/acra/ACRA$2;-><init>()V

    invoke-static {v2}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->setCustomStackTracer(Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface;)V

    .line 278
    :cond_4
    if-eqz v0, :cond_5

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->reportErrorAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 283
    :cond_5
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldInstallPeriodicReporter()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 284
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/acra/ACRA;->installPeriodicReporter(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    .line 287
    :cond_6
    sput-object p3, Lcom/facebook/acra/ACRA;->sAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    .line 288
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->maybeInitializeAndStartANRDetector(Lcom/facebook/acra/ErrorReporter;)V

    .line 290
    return-object v1

    .line 198
    :cond_7
    const-string v0, "no"

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static initSenderHost(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 768
    :try_start_0
    const-string/jumbo v0, "report_host.txt"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 784
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 786
    :goto_0
    return-void

    .line 773
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 775
    if-nez v0, :cond_2

    .line 776
    :goto_1
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ACRA read host from host file %s"

    invoke-static {v0, v3, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setting crash reporting host to %s"

    invoke-static {v0, v3, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v0, v2}, Lcom/facebook/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 784
    :cond_1
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    .line 775
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_1

    .line 781
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 782
    :goto_2
    :try_start_4
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "could not read host file: "

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 784
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 781
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private static initSenderSkipCertChecks(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 791
    const-string/jumbo v0, "skip_cert_checks.txt"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 793
    sget-object v1, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v1, v0}, Lcom/facebook/acra/sender/FlexibleReportSender;->setSkipSslCertsChecks(Z)V

    .line 794
    return-void
.end method

.method private static initializeAnrDetector(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V
    .locals 22

    .prologue
    .line 433
    const-string v2, "android_anr_detector_to_use"

    invoke-static {v2}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v8

    .line 435
    const-string v2, "error_monitor_check_interval"

    invoke-static {v2}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v20

    .line 437
    sget-object v21, Lcom/facebook/acra/ACRA;->sANRDetectorLock:Ljava/lang/Object;

    monitor-enter v21

    .line 438
    :try_start_0
    new-instance v2, Lcom/facebook/acra/anr/ANRReport;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/facebook/acra/anr/ANRReport;-><init>(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V

    sput-object v2, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    .line 440
    new-instance v2, Lcom/facebook/acra/anr/ANRDetectorConfig;

    sget-object v5, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    sget-object v6, Lcom/facebook/acra/ACRA;->sAppStateUpdater:Lcom/facebook/acra/anr/AppStateUpdater;

    new-instance v7, Landroid/os/Handler;

    .line 446
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v3, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 448
    invoke-interface {v3}, Lcom/facebook/acra/config/AcraReportingConfig;->isInternalBuild()Z

    move-result v9

    const-string v3, "anr_cleanup_on_asl_thread"

    .line 449
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v10

    const-string/jumbo v3, "start_process_error_monitor_early"

    .line 450
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v11

    const-string/jumbo v3, "should_report_soft_errors"

    .line 451
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v12

    const-string v3, "log_on_signal_handler"

    .line 452
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v13

    const-string v3, "avoid_mutex_on_signal_handler"

    .line 453
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v14

    const-string v3, "anr_recovery_timeout"

    .line 454
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v3, "use_static_method_callback"

    .line 455
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v16

    const-string v3, "anr_process_monitor_max_checks_before"

    .line 456
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v17

    const-string v3, "anr_process_monitor_max_checks_after"

    .line 457
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getIntValue(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v3, "record_signal_time"

    .line 458
    invoke-static {v3}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v19

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v19}, Lcom/facebook/acra/anr/ANRDetectorConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/acra/anr/ANRReport;Lcom/facebook/acra/anr/AppStateUpdater;Landroid/os/Handler;IZZZZZZIZIIZ)V

    .line 460
    const/4 v3, 0x5

    if-ne v8, v3, :cond_0

    .line 462
    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;I)Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    move-result-object v2

    sput-object v2, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    .line 468
    :goto_0
    monitor-exit v21

    .line 469
    return-void

    .line 463
    :cond_0
    const/4 v3, 0x3

    if-ne v8, v3, :cond_1

    .line 464
    invoke-static {v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;)Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    move-result-object v2

    sput-object v2, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v2

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 466
    :cond_1
    :try_start_1
    move/from16 v0, v20

    invoke-static {v2, v0}, Lcom/facebook/acra/anr/HybridANRDetector;->getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;I)Lcom/facebook/acra/anr/HybridANRDetector;

    move-result-object v2

    sput-object v2, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static installPeriodicReporter(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.concurrent.Executors.newScheduledThreadPool"
        }
    .end annotation

    .prologue
    .line 371
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->nativeCrashPeriodicReportIntervalMins(Landroid/content/Context;)I

    move-result v4

    .line 372
    if-gtz v4, :cond_0

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 377
    new-instance v1, Lcom/facebook/acra/ACRA$4;

    invoke-direct {v1, p1}, Lcom/facebook/acra/ACRA$4;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    int-to-long v2, v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private static loadAcraNativeLibrary(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/acra/ACRA$3;

    invoke-direct {v1, p0}, Lcom/facebook/acra/ACRA$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 362
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 363
    return-void
.end method

.method private static maybeInitializeAndStartANRDetector(Lcom/facebook/acra/ErrorReporter;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.Thread.start"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 409
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 410
    invoke-static {}, Lcom/facebook/acra/ACRA;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->shouldRunANRDetector(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Skipping ANR Detector for process: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Initializing ANR detector for process: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    sget-object v2, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldStartANRDetector()Z

    move-result v2

    .line 419
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ANRDetector will start: %b"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    if-eqz v2, :cond_0

    .line 425
    invoke-static {v0, p0, v1}, Lcom/facebook/acra/ACRA;->initializeAnrDetector(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V

    .line 427
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v0}, Lcom/facebook/acra/anr/IANRDetector;->start()V

    .line 428
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ANRDetector started"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static nativeLibrarySuccessfullyLoaded(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 307
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->shouldRunNightwatch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/facebook/acra/ACRA;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 309
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 310
    :goto_0
    if-eqz v0, :cond_0

    .line 311
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->shouldUseSetSidOnNightwatch(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/facebook/acra/util/Nightwatch;->startWatcher(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 314
    :cond_0
    sget-object v1, Lcom/facebook/acra/ACRA;->sANRDetectorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_1

    .line 316
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    const-string v2, "anr_gk_cached"

    invoke-static {v2}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/facebook/acra/anr/IANRDetector;->nativeLibraryLoaded(Z)V

    .line 318
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {}, Lcom/facebook/acra/util/NativeProcFileReader;->nativeLibraryLoaded()V

    .line 320
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->disableFSSyncSyscalls(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->useFSSyncFastHooks(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/acra/util/NoSync;->disableFSSync(Z)V

    .line 323
    :cond_2
    return-void

    .line 309
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static pauseANRDetector()V
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_0

    .line 687
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v0}, Lcom/facebook/acra/anr/IANRDetector;->pause()V

    .line 689
    :cond_0
    return-void
.end method

.method public static safeToLoadNativeLibraries(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 298
    sget-object v1, Lcom/facebook/acra/ACRA;->sNativeLibraryLoadingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    sget-boolean v0, Lcom/facebook/acra/ACRA;->sNativeLibraryLoaded:Z

    if-eqz v0, :cond_0

    .line 300
    monitor-exit v1

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->loadAcraNativeLibrary(Landroid/content/Context;)V

    .line 303
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 495
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Updating config and setting ANR data provider"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v2, "anr_gk_cached"

    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldANRDetectorRun()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 498
    const-string/jumbo v2, "should_upload_system_anr_traces_gk_cached"

    .line 499
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldUploadSystemANRTraces()Z

    move-result v3

    .line 498
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 501
    const-string/jumbo v2, "should_dedup_disk_persistence_gk_cached"

    .line 502
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldDedupDiskPersistence()Z

    move-result v3

    .line 501
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 504
    const-string v2, "android_anr_detector_to_use"

    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->detectorToUse()I

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedIntIfNeeded(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v2, "run_anr_detector_on_browser_process"

    .line 508
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldRunANRDetectorOnBrowserProcess()Z

    move-result v3

    .line 506
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 510
    const-string v2, "error_monitor_check_interval"

    .line 511
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->detectionIntervalTimeMs()I

    move-result v3

    .line 510
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedIntIfNeeded(Ljava/lang/String;I)V

    .line 513
    const-string v2, "anr_cleanup_on_asl_thread"

    .line 514
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldCleanupStateOnASLThread()Z

    move-result v3

    .line 513
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 516
    const-string/jumbo v2, "start_process_error_monitor_early"

    .line 517
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldStartErrorMonitorEarly()Z

    move-result v3

    .line 516
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 519
    const-string/jumbo v2, "should_report_soft_errors"

    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldReportSoftErrors()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 520
    const-string v2, "log_on_signal_handler"

    .line 521
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldLogOnSignalHandler()Z

    move-result v3

    .line 520
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 522
    const-string v2, "avoid_mutex_on_signal_handler"

    .line 523
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldAvoidMutexOnSignalHandler()Z

    move-result v3

    .line 522
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 524
    const-string v2, "anr_recovery_timeout"

    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->getRecoveryTimeout()I

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedIntIfNeeded(Ljava/lang/String;I)V

    .line 526
    const-string/jumbo v2, "use_static_method_callback"

    .line 527
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldUseStaticMethodCallback()Z

    move-result v3

    .line 526
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 529
    const-string v2, "anr_process_monitor_max_checks_before"

    .line 531
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->getMaxNumberOfProcessMonitorChecksBeforeError()I

    move-result v3

    .line 529
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedIntIfNeeded(Ljava/lang/String;I)V

    .line 533
    const-string v2, "anr_process_monitor_max_checks_after"

    .line 535
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->getMaxNumberOfProcessMonitorChecksAfterError()I

    move-result v3

    .line 533
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedIntIfNeeded(Ljava/lang/String;I)V

    .line 537
    const-string/jumbo v2, "record_signal_time"

    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldRecordSignalTime()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 539
    const-string v2, "log_position_anr_trace_file"

    .line 541
    invoke-virtual {p0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldLogProcessPositionInAnrTraceFile()Z

    move-result v3

    .line 539
    invoke-static {v2, v3}, Lcom/facebook/acra/ACRA;->updateCachedFlagIfNeeded(Ljava/lang/String;Z)V

    .line 543
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v3

    .line 545
    sget-object v4, Lcom/facebook/acra/ACRA;->sANRDetectorLock:Ljava/lang/Object;

    monitor-enter v4

    .line 546
    :try_start_0
    sget-object v2, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-nez v2, :cond_3

    .line 548
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 549
    invoke-static {}, Lcom/facebook/acra/ACRA;->getProcessName()Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-static {v2, v3, v5}, Lcom/facebook/acra/ACRA;->initializeAnrDetector(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter;Ljava/lang/String;)V

    move v2, v1

    .line 552
    :goto_0
    sget-object v5, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    invoke-virtual {v5, p0}, Lcom/facebook/acra/anr/ANRReport;->setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V

    .line 553
    sget-object v5, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v5, p0}, Lcom/facebook/acra/anr/IANRDetector;->setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V

    .line 554
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual {v3, p0}, Lcom/facebook/acra/ErrorReporter;->setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V

    .line 557
    if-eqz v2, :cond_1

    .line 558
    sget-object v2, Lcom/facebook/acra/ACRA;->sNativeLibraryLoadingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_1
    sget-boolean v3, Lcom/facebook/acra/ACRA;->sNativeLibraryLoaded:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 562
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 564
    :cond_1
    if-eqz v0, :cond_2

    .line 568
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    const-string v1, "anr_gk_cached"

    invoke-static {v1}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/acra/anr/IANRDetector;->nativeLibraryLoaded(Z)V

    .line 570
    :cond_2
    return-void

    .line 554
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 562
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public static setANRDetectorCheckIntervalMs(J)V
    .locals 2

    .prologue
    .line 674
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_0

    .line 675
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v0, p0, p1}, Lcom/facebook/acra/anr/IANRDetector;->setCheckIntervalMs(J)V

    .line 677
    :cond_0
    return-void
.end method

.method public static setANRDetectorListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_0

    .line 699
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v0, p0}, Lcom/facebook/acra/anr/IANRDetector;->setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V

    .line 701
    :cond_0
    return-void
.end method

.method public static setPerformanceMarker(Lcom/facebook/acra/PerformanceMarker;)V
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRReport:Lcom/facebook/acra/anr/ANRReport;

    invoke-virtual {v0, p0}, Lcom/facebook/acra/anr/ANRReport;->setPerformanceMarker(Lcom/facebook/acra/PerformanceMarker;)V

    .line 671
    :cond_0
    return-void
.end method

.method public static setReportHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v0, p0}, Lcom/facebook/acra/sender/FlexibleReportSender;->setHost(Ljava/lang/String;)Z

    .line 486
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->writeSenderHost(Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public static setSkipSslCertChecks(Z)V
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/facebook/acra/ACRA;->mReportSender:Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v0, p0}, Lcom/facebook/acra/sender/FlexibleReportSender;->setSkipSslCertsChecks(Z)V

    .line 491
    invoke-static {p0}, Lcom/facebook/acra/ACRA;->writeSkipCertChecksFile(Z)V

    .line 492
    return-void
.end method

.method private static shouldRunANRDetector(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 399
    const-string/jumbo v2, "record_signal_time"

    invoke-static {v2}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    :goto_0
    return v1

    .line 402
    :cond_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v1

    .line 403
    :goto_1
    if-nez v2, :cond_1

    const-string v2, ":browser"

    .line 404
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "run_anr_detector_on_browser_process"

    invoke-static {v2}, Lcom/facebook/acra/ACRA;->getFlagValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v2, v0

    .line 402
    goto :goto_1
.end method

.method private static shouldRunNightwatch(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 326
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "com.facebook.force_nightwatch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/acra/ACRA;->getSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/facebook/acraconfig/AcraConfig;->shouldEnableNightwatch(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static startANRDetector()V
    .locals 1

    .prologue
    .line 680
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    invoke-interface {v0}, Lcom/facebook/acra/anr/IANRDetector;->start()V

    .line 683
    :cond_0
    return-void
.end method

.method public static stopANRDetector()V
    .locals 2

    .prologue
    .line 692
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    if-eqz v0, :cond_0

    .line 693
    sget-object v0, Lcom/facebook/acra/ACRA;->mANRDetector:Lcom/facebook/acra/anr/IANRDetector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/facebook/acra/anr/IANRDetector;->stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V

    .line 695
    :cond_0
    return-void
.end method

.method private static updateCachedFlagIfNeeded(Ljava/lang/String;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 575
    const-string v1, "acra_flags_store"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 577
    invoke-static {v0, p0, v2}, Lcom/facebook/acra/ACRA;->getFlagValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 578
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 580
    :cond_0
    return-void
.end method

.method private static updateCachedIntIfNeeded(Ljava/lang/String;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SharedPreferencesUse"
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/config/AcraReportingConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 585
    const-string v1, "acra_flags_store"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 586
    invoke-static {v0, p0}, Lcom/facebook/acra/ACRA;->getIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 589
    :cond_0
    return-void
.end method

.method private static writeSenderHost(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 727
    const/4 v2, 0x0

    .line 730
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 732
    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "report_host.txt"

    const/4 v3, 0x0

    .line 733
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 740
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    .line 742
    :goto_0
    return-void

    .line 737
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 738
    :goto_1
    :try_start_2
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "could not write to host file: "

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 740
    invoke-static {v1}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/facebook/acra/ACRA;->closeStreamNoException(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 737
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static writeSkipCertChecksFile(Z)V
    .locals 5

    .prologue
    .line 706
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 707
    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "skip_cert_checks.txt"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 708
    if-eqz p0, :cond_1

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to create skip cert checks file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 712
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 711
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 716
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 717
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to delete skip cert checks file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 718
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 717
    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 722
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "could not create ssl cert checks file."

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
