.class public Lcom/oculus/browser/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "acra-reports"

.field public static final ALL_REPORT_TYPES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

.field public static final ANDROID_RUNTIME_ART:Ljava/lang/String; = "ART"

.field public static final ANDROID_RUNTIME_DALVIK:Ljava/lang/String; = "DALVIK"

.field public static final ANDROID_RUNTIME_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final CRASH_ATTACHMENT_DUMMY_STACKTRACE:Ljava/lang/String; = "crash attachment"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0x100000L

.field public static DEFAULT_TRACE_COUNT_LIMIT:I = 0x0

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_BOUNDARY:Ljava/lang/String; = "----------------------------"

.field public static final DUMP_DIR:Ljava/lang/String; = "Crashpad"

.field public static final DUMP_END_OF_LINE_SIZE:I = 0x2

.field public static final EMPTY_LAST_URL:Ljava/lang/String; = "EMPTY_URL"

.field public static final FILE_IAB_OPEN_TIMES:Ljava/lang/String; = "iab_open_times"

.field public static final FILE_LAST_ACTIVITY:Ljava/lang/String; = "last_activity_opened"

.field public static final FILE_LAST_URL:Ljava/lang/String; = "last_url_opened"

.field public static final IS_PROCESSING_ANOTHER_EXCEPTION:Ljava/lang/String; = "IS_PROCESSING_ANOTHER_EXCEPTION"

.field public static final JAVA_BOOT_CLASS_PATH:Ljava/lang/String; = "java.boot.class.path"

.field public static final JNI_EXCEPTION_BUFFER_SIZE:I = 0x400

.field public static final KNOWN_ART_JAR:Ljava/lang/String; = "/system/framework/core-libart.jar"

.field public static final KNOWN_DALVIK_JAR:Ljava/lang/String; = "/system/framework/core.jar"

.field public static final MAX_REPORT_AGE:J = 0x240c8400L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field public static MAX_TRACE_COUNT_LIMIT:I = 0x0

.field public static final MIN_TEMP_REPORT_AGE:J = 0x927c0L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x800000L

.field public static final NO_FILE:Ljava/lang/String; = "NO_FILE"

.field public static final PREALLOCATED_FILESIZE:J = 0x100000L

.field public static final PREALLOCATED_REPORTFILE:Ljava/lang/String; = "reportfile.prealloc"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final SIGQUIT_DIR:Ljava/lang/String; = "traces"

.field public static final SIGQUIT_MAX_REPORT_SIZE:J = 0x80000L

.field public static final TAG:Ljava/lang/String; = "ErrorReporter"

.field public static final TEMP_REPORTFILE_EXTENSION:Ljava/lang/String; = ".temp_stacktrace"

.field public static final VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

.field public static final WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field public static mInstanceSingleton:Lcom/oculus/browser/acra/ErrorReporter; = null

.field public static final mInternalException:Ljava/lang/String; = "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

.field public static mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public final activityLogger:Lcom/oculus/browser/acra/util/SimpleTraceLogger;

.field public final mAppStartDate:Landroid/text/format/Time;

.field public mAppVersionCode:Ljava/lang/String;

.field public mAppVersionName:Ljava/lang/String;

.field public final mConstantFields:Ljava/util/Map;

.field public mContext:Landroid/content/Context;

.field public mCurrentlyProcessingOOM:Z

.field public final mDeviceSpecificFields:Ljava/util/Map;

.field public mDexVerifyBridge:Lcom/oculus/browser/acra/DexVerifyBridge;

.field public mHasNativeCrashDumpOnInit:Z

.field public mInstanceCustomParameters:Ljava/util/Map;

.field public mInstanceLazyCustomParameters:Ljava/util/Map;

.field public mIsInternalBuild:Z

.field public mLogBridge:Lcom/oculus/browser/acra/LogBridge;

.field public mMaxReportSize:J

.field public mPackageManager:Lcom/oculus/browser/acra/util/PackageManagerWrapper;

.field public mReportSenders:Ljava/util/ArrayList;

.field public final mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

.field public volatile mUserId:Ljava/lang/String;

.field public preallocFile:Ljava/io/File;

.field public processNameByAms:Ljava/lang/String;

.field public processNameByAmsReady:Z

.field public usePreallocatedFile:Z


# direct methods
.method public static synthetic $closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-void
.end method

.method public static synthetic $closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    sget-object v0, LRB;->a:LLB;

    invoke-virtual {v0, p0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V

    :goto_0
    return-void
.end method

.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 2
    sget-object v1, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v0, 0x5

    .line 3
    sput v0, Lcom/oculus/browser/acra/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    const/16 v0, 0x14

    .line 4
    sput v0, Lcom/oculus/browser/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 2
    iput-wide v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mMaxReportSize:J

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/oculus/browser/acra/util/SimpleTraceLogger;

    sget v1, Lcom/oculus/browser/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    invoke-direct {v0, v1}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->activityLogger:Lcom/oculus/browser/acra/util/SimpleTraceLogger;

    .line 10
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 12
    iput-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 14
    iput-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->usePreallocatedFile:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/acra/ErrorReporter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 3
    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    .line 5
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 6
    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1

    :cond_7
    :goto_3
    return v0
.end method

.method private checkAndSendAcraReports(Landroid/content/Context;)I
    .locals 11

    const-string v0, ".stacktrace"

    const-string v1, ".temp_stacktrace"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "acra-reports"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    const/4 v6, 0x5

    if-lt v4, v6, :cond_0

    .line 5
    invoke-static {v5}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v7, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 8
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/oculus/browser/acra/ErrorReporter;->loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/oculus/browser/acra/CrashReportData;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 9
    sget-object v8, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/oculus/browser/acra/ReportField;

    sget-object v9, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const-string v9, "ACRA_CRASH_REPORT"

    invoke-virtual {v7, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v8, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v7, v8, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v8, Lcom/oculus/browser/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v7, v8, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v8, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0, v7}, Lcom/oculus/browser/acra/ErrorReporter;->sendCrashReport(Lcom/oculus/browser/acra/CrashReportData;)V

    .line 14
    invoke-static {v5}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/oculus/browser/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send crash report for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 16
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load crash report for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    invoke-static {v5}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 18
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to send crash reports"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    invoke-static {v5}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    :cond_2
    :goto_2
    return v4
.end method

.method private checkAndSendCrashAttachments(Landroid/content/Context;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)I
    .locals 17

    move-object/from16 v8, p0

    const-string v9, " because "

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendCrashAttachments - start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$100(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.noupload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$100(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$200(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 5
    array-length v0, v10

    if-lez v0, :cond_4

    .line 6
    new-instance v11, Lcom/oculus/browser/acra/CrashReportData;

    invoke-direct {v11}, Lcom/oculus/browser/acra/CrashReportData;-><init>()V

    .line 7
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    :try_start_0
    const-string v2, "crash attachment"

    .line 8
    new-instance v3, Lcom/oculus/browser/acra/ErrorReporter$CrashAttachmentException;

    invoke-direct {v3, v8, v12}, Lcom/oculus/browser/acra/ErrorReporter$CrashAttachmentException;-><init>(Lcom/oculus/browser/acra/ErrorReporter;Lcom/oculus/browser/acra/ErrorReporter$1;)V

    sget-object v4, Lcom/oculus/browser/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/oculus/browser/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "retrieve exception: "

    .line 9
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_LOAD_THROW:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {v8, v1, v0, v11, v12}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 11
    :goto_0
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v11, v0}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 12
    array-length v1, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, v10, v2

    const/4 v5, 0x5

    if-lt v3, v5, :cond_1

    .line 13
    invoke-static {v4}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    goto :goto_3

    .line 14
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 15
    sget-object v6, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#checkAndSendCrashAttachments - trying to send file: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :try_start_1
    invoke-direct {v8, v4}, Lcom/oculus/browser/acra/ErrorReporter;->loadJNIExceptionFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "jni_exception"

    .line 19
    invoke-direct {v8, v7, v12, v6}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v6, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 21
    :cond_2
    sget-object v6, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v11, v6, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 22
    invoke-direct {v8, v6, v4, v7}, Lcom/oculus/browser/acra/ErrorReporter;->loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/CrashReportData;

    move-result-object v12

    if-nez v12, :cond_3

    :goto_3
    move-object/from16 v16, v0

    goto :goto_4

    .line 23
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 24
    sget-object v14, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    const/16 v15, 0x2e

    invoke-virtual {v5, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v0, v15}, Lcom/oculus/browser/acra/CrashReportData;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 25
    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    invoke-virtual {v11, v0, v13, v15}, Lcom/oculus/browser/acra/CrashReportData;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 26
    invoke-virtual {v11, v12}, Lcom/oculus/browser/acra/CrashReportData;->merge(Lcom/oculus/browser/acra/CrashReportData;)V

    .line 27
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->EXCEPTION_CAUSE:Lcom/oculus/browser/acra/ReportField;

    const-string v12, "crash attachment"

    invoke-virtual {v11, v0, v12, v15}, Lcom/oculus/browser/acra/CrashReportData;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v11, v0, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-direct {v8, v11}, Lcom/oculus/browser/acra/ErrorReporter;->sendCrashReport(Lcom/oculus/browser/acra/CrashReportData;)V

    .line 30
    invoke-static {v4}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/oculus/browser/acra/sender/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed on crash attachment file "

    invoke-static {v2, v5, v9}, LZi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    invoke-static {v4}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_5

    :catch_1
    move-exception v0

    .line 33
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to send crash attachment report "

    invoke-static {v2, v5, v9}, LZi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 34
    :cond_5
    :goto_5
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendCrashAttachments - finish, sent: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private createPreallocatedReportFile()V
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x2800

    new-array v6, v5, [B

    .line 3
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    cmp-long v2, v0, v3

    if-gez v2, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v8, v5

    add-long/2addr v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v7

    goto :goto_1

    .line 5
    :cond_2
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 6
    :goto_1
    :try_start_3
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to pre-allocate crash report file"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 7
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 8
    :catch_3
    :cond_4
    throw v0
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not delete error report: "

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "\\n"

    const/4 v1, 0x0

    const-string v2, "\n"

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/acra/CustomReportDataSupplier;

    invoke-interface {v0, p3}, Lcom/oculus/browser/acra/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, v1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught throwable while getting custom report data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const-string v0, "Crashpad"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 4
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 6

    if-nez p3, :cond_0

    .line 1
    sget-object p3, Lcom/oculus/browser/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    :cond_0
    move-object v3, p3

    .line 2
    sget-object p3, Lcom/oculus/browser/acra/ReportField;->UID:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 3
    sget-object p3, Lcom/oculus/browser/acra/ReportField;->STACK_TRACE:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, p3, p1, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 4
    iget-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/browser/acra/ErrorReporter;->retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 7
    invoke-direct {p0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->populateConstantDeviceData(Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 8
    sget-object p1, Lcom/oculus/browser/acra/ReportField;->CUSTOM_DATA:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p0, p6, p2}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    return-void
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {v0, p1, p2}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAndroidRuntime()Ljava/lang/String;
    .locals 2

    const-string v0, "java.boot.class.path"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/system/framework/core-libart.jar"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ART"

    return-object v0

    :cond_0
    const-string v1, "/system/framework/core.jar"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DALVIK"

    return-object v0

    :cond_1
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 4
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getConstantDeviceData()Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->BUILD:Lcom/oculus/browser/acra/ReportField;

    const-class v3, Landroid/os/Build;

    invoke-static {v3}, Lcom/oculus/browser/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->JAIL_BROKEN:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getJailStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->INSTALLATION_ID:Lcom/oculus/browser/acra/ReportField;

    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/browser/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    invoke-static {}, Lcom/oculus/browser/acra/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mPackageManager:Lcom/oculus/browser/acra/util/PackageManagerWrapper;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 10
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/oculus/browser/acra/ReportField;->DEVICE_ID:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 14
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/oculus/browser/acra/ReportField;->DISPLAY:Lcom/oculus/browser/acra/ReportField;

    invoke-static {v1}, Lcom/oculus/browser/acra/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->ENVIRONMENT:Lcom/oculus/browser/acra/ReportField;

    const-class v3, Landroid/os/Environment;

    .line 17
    invoke-static {v3}, Lcom/oculus/browser/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->DEVICE_FEATURES:Lcom/oculus/browser/acra/ReportField;

    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/browser/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SYSTEM:Lcom/oculus/browser/acra/ReportField;

    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v3}, Lcom/oculus/browser/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->SETTINGS_SECURE:Lcom/oculus/browser/acra/ReportField;

    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v3}, Lcom/oculus/browser/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 28
    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/oculus/browser/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->ANDROID_RUNTIME:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDeviceUptime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/oculus/browser/acra/ErrorReporter;
    .locals 1

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceSingleton:Lcom/oculus/browser/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/oculus/browser/acra/ErrorReporter;

    invoke-direct {v0}, Lcom/oculus/browser/acra/ErrorReporter;-><init>()V

    sput-object v0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceSingleton:Lcom/oculus/browser/acra/ErrorReporter;

    .line 3
    :cond_0
    sget-object v0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceSingleton:Lcom/oculus/browser/acra/ErrorReporter;

    return-object v0
.end method

.method private getJailStatus()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v1, "yes"

    if-eqz v0, :cond_0

    const-string v2, "test-keys"

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v1

    :catch_0
    move-exception v0

    .line 5
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to find Superuser.pak"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "PATH"

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const-string v5, "/su"

    .line 10
    invoke-static {v4, v5}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    return-object v1

    :catch_1
    move-exception v4

    .line 13
    sget-object v5, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed to find su binary in the PATH"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "no"

    return-object v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/cmdline"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x80

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v1

    .line 6
    :goto_0
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to get process name."

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 7
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 8
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to close file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    return-object v0
.end method

.method private getProcessNameFromAms()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "n/a"

    :cond_0
    return-object v0
.end method

.method private getProcessNameFromAmsOrNull()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAmsReady:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 10
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_3

    .line 11
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAmsReady:Z

    .line 13
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0
.end method

.method private getProcessUptime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/oculus/browser/acra/ReportField;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/oculus/browser/acra/NonCrashException;

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    return-object p1

    .line 3
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    return-object p1
.end method

.method public static getTotalInternalMemorySize()J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 4
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    mul-long v0, v0, v2

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/oculus/browser/acra/ReportField;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p3

    const-string v9, "An error occurred while deleting closing the report file ..."

    const-string v10, "An error occurred while gathering crash data ..."

    .line 1
    invoke-virtual/range {p0 .. p1}, Lcom/oculus/browser/acra/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-direct {v8, v0}, Lcom/oculus/browser/acra/ErrorReporter;->shouldContinueProcessingException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v11, Lcom/oculus/browser/acra/CrashReportData;

    invoke-direct {v11}, Lcom/oculus/browser/acra/CrashReportData;-><init>()V

    .line 5
    instance-of v0, v3, Lcom/oculus/browser/acra/NonCrashException;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, v3

    check-cast v0, Lcom/oculus/browser/acra/NonCrashException;

    invoke-interface {v0}, Lcom/oculus/browser/acra/NonCrashException;->getExceptionFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "crash"

    .line 7
    :goto_0
    sget-object v4, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Handling exception for "

    invoke-static {v5, v0}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v4, v0, v3, v1}, Lcom/oculus/browser/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, ".temp_stacktrace"

    .line 9
    invoke-direct {v8, v2, v0}, Lcom/oculus/browser/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v4, v8, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v5, "acra-reports"

    invoke-static {v4, v5, v0}, Lcom/oculus/browser/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const-string v0, ".stacktrace"

    .line 11
    invoke-direct {v8, v2, v0}, Lcom/oculus/browser/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v0, v8, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v4}, Lcom/oculus/browser/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    const/4 v5, 0x0

    .line 13
    :try_start_0
    iget-boolean v0, v8, Lcom/oculus/browser/acra/ErrorReporter;->usePreallocatedFile:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, v8, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 15
    :cond_2
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v6, v12, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/oculus/browser/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v5

    .line 17
    :goto_1
    sget-object v7, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v14, "An error occurred while creating the report file ..."

    invoke-static {v7, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v15, v5

    :goto_2
    move-object v14, v6

    .line 18
    :try_start_2
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {v8, v0, v4, v11, v15}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 19
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->EXCEPTION_CAUSE:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v11, v15}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    if-nez v1, :cond_3

    .line 20
    invoke-direct/range {p0 .. p1}, Lcom/oculus/browser/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v11

    move-object v6, v15

    move-object/from16 v7, p2

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/oculus/browser/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v14, :cond_4

    .line 22
    :try_start_3
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 24
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 25
    :goto_4
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 26
    :try_start_4
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_INTERNAL:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {v8, v1}, Lcom/oculus/browser/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v11, v15}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 28
    :goto_5
    :try_start_5
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    .line 29
    :try_start_6
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while gathering internal crash data ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_INTERNAL:Lcom/oculus/browser/acra/ReportField;

    const-string v2, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    invoke-direct {v8, v0, v2, v11, v15}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 31
    :goto_6
    :try_start_7
    invoke-static {v0, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v14, :cond_4

    .line 32
    :try_start_8
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 34
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 35
    :goto_7
    sget-object v1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_8
    return-void

    .line 36
    :goto_9
    :try_start_9
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_a
    if-eqz v14, :cond_5

    .line 37
    :try_start_a
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 39
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V

    .line 40
    invoke-virtual {v12, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 41
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_5
    :goto_b
    throw v1
.end method

.method private loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/oculus/browser/acra/CrashReportData;
    .locals 6

    .line 1
    sget-object v3, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    iget-wide v4, p0, Lcom/oculus/browser/acra/ErrorReporter;->mMaxReportSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/browser/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;J)Lcom/oculus/browser/acra/CrashReportData;

    move-result-object p1

    return-object p1
.end method

.method private loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sub-int v4, p2, v2

    if-lez v4, :cond_1

    .line 2
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    const-string p1, ""

    return-object p1

    .line 3
    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v3, v0, v1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 6
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    throw p1
.end method

.method private loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/CrashReportData;
    .locals 6

    .line 1
    invoke-static {p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$500(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/browser/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;J)Lcom/oculus/browser/acra/CrashReportData;

    move-result-object p1

    return-object p1
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;J)Lcom/oculus/browser/acra/CrashReportData;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-wide/from16 v2, p4

    .line 1
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-string v9, ".temp_stacktrace"

    .line 4
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    const-wide/16 v11, 0x0

    const-string v9, "temp file "

    cmp-long v13, v7, v11

    if-lez v13, :cond_0

    sub-long v11, v5, v7

    const-wide/32 v13, 0x927c0

    cmp-long v15, v11, v13

    if-gez v15, :cond_0

    .line 5
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is too recent; skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 6
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 7
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deleted. skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 8
    :cond_1
    new-instance v9, Lcom/oculus/browser/acra/CrashReportData;

    invoke-direct {v9}, Lcom/oculus/browser/acra/CrashReportData;-><init>()V

    .line 9
    sget-object v11, Lcom/oculus/browser/acra/ReportField;->TIME_OF_CRASH:Lcom/oculus/browser/acra/ReportField;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x240c8400

    cmp-long v11, v5, v7

    if-lez v11, :cond_3

    .line 10
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crash report "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was too old; deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 12
    invoke-static/range {p3 .. p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    invoke-static/range {p3 .. p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    const-string v2, "attachment too old"

    invoke-virtual {v9, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Lcom/oculus/browser/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/oculus/browser/acra/MinidumpExcludeReason;

    const-string v2, "DUMP_TOO_OLD"

    invoke-virtual {v9, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 15
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_5

    .line 16
    sget-object v7, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-byte crash report "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exceeded max size of "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " bytes; deleted"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static/range {p2 .. p2}, Lcom/oculus/browser/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 18
    invoke-static/range {p3 .. p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 19
    invoke-static/range {p3 .. p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    const-string v2, "attachment too big"

    invoke-virtual {v9, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_4
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Lcom/oculus/browser/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/oculus/browser/acra/MinidumpExcludeReason;

    const-string v2, "DUMP_TOO_BIG"

    invoke-virtual {v9, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/oculus/browser/acra/ReportField;

    .line 22
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v9, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 24
    :cond_5
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 25
    :try_start_0
    sget-object v7, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    if-ne v0, v7, :cond_6

    .line 26
    invoke-virtual {v9, v2}, Lcom/oculus/browser/acra/CrashReportData;->load(Ljava/io/InputStream;)V

    goto/16 :goto_5

    :cond_6
    long-to-int v7, v5

    .line 27
    invoke-direct {v1, v2, v7}, Lcom/oculus/browser/acra/ErrorReporter;->loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v7

    .line 28
    sget-object v8, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    if-ne v0, v8, :cond_d

    .line 29
    iget-object v8, v1, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    .line 30
    new-instance v11, Ljava/io/File;

    const-string v12, "last_url_opened"

    invoke-direct {v11, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/16 v13, 0x400

    const-string v14, "NO_FILE"

    if-nez v12, :cond_7

    .line 32
    :try_start_1
    sget-object v11, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v11, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_7
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 34
    :try_start_2
    new-instance v15, Ljava/io/BufferedReader;

    invoke-direct {v15, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 35
    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_8

    .line 36
    sget-object v3, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED:Lcom/oculus/browser/acra/ReportField;

    const-string v13, "EMPTY_URL"

    invoke-virtual {v9, v3, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 38
    sget-object v13, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v13, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v3, Lcom/oculus/browser/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/oculus/browser/acra/ReportField;

    .line 40
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 41
    invoke-virtual {v9, v3, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 43
    :try_start_4
    invoke-static {v10, v15}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 44
    :try_start_5
    invoke-static {v10, v12}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V

    .line 45
    :goto_1
    new-instance v3, Ljava/io/File;

    const-string v11, "last_activity_opened"

    invoke-direct {v3, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 47
    sget-object v3, Lcom/oculus/browser/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v3, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 48
    :cond_9
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 49
    :try_start_6
    new-instance v12, Ljava/io/BufferedReader;

    const/16 v13, 0x400

    invoke-direct {v12, v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 50
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 51
    sget-object v15, Lcom/oculus/browser/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v15, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v13, Lcom/oculus/browser/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/oculus/browser/acra/ReportField;

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 54
    invoke-virtual {v9, v13, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 56
    :try_start_8
    invoke-static {v10, v12}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 57
    :try_start_9
    invoke-static {v10, v11}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V

    .line 58
    :goto_2
    new-instance v3, Ljava/io/File;

    const-string v10, "iab_open_times"

    invoke-direct {v3, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    invoke-static {v3}, Lcom/oculus/browser/acra/ErrorReporter;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 61
    sget-object v8, Lcom/oculus/browser/acra/ReportField;->IAB_OPEN_TIMES:Lcom/oculus/browser/acra/ReportField;

    const-string v10, "0"

    invoke-virtual {v9, v8, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    if-eqz v8, :cond_c

    .line 62
    sget-object v10, Lcom/oculus/browser/acra/ReportField;->IAB_OPEN_TIMES:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v10, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 64
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 65
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    .line 66
    :try_start_b
    invoke-static {v3, v12}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 67
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v0

    .line 68
    :try_start_d
    invoke-static {v3, v11}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 69
    :try_start_e
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 70
    :try_start_f
    invoke-static {v3, v15}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 71
    :try_start_10
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    move-object v5, v0

    .line 72
    :try_start_11
    invoke-static {v3, v12}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V

    throw v5

    .line 73
    :cond_d
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$400(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    invoke-virtual {v9, v0, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/oculus/browser/acra/ReportField;

    .line 75
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v9, v0, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 77
    :goto_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_8
    move-exception v0

    .line 78
    :try_start_12
    sget-object v3, Lcom/oculus/browser/acra/ReportField;->REPORT_LOAD_THROW:Lcom/oculus/browser/acra/ReportField;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v3, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load crash report:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    const/4 v3, 0x1

    move-object/from16 v5, p1

    .line 81
    :try_start_13
    invoke-virtual {v5, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 82
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crash report:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 83
    :goto_6
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v9, v0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {v1, v9}, Lcom/oculus/browser/acra/ErrorReporter;->backfillCrashReportData(Lcom/oculus/browser/acra/CrashReportData;)V

    return-object v9

    :catchall_9
    move-exception v0

    goto :goto_7

    :catchall_a
    move-exception v0

    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_e

    .line 85
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_e
    throw v0
.end method

.method private loadJNIExceptionFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    const-string v0, "----------------------------"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v7, 0x400

    sub-long/2addr v3, v7

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v7, v0

    sub-long/2addr v3, v7

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 6
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 7
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "\n"

    const-string v1, " "

    .line 8
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_1
    move-object v1, v3

    .line 10
    sget-object v2, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed on extracting JNI Exception from file "

    invoke-static {v3}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method

.method private populateConstantDeviceData(Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getConstantDeviceData()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/oculus/browser/acra/CrashReportData;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "NO_FILE"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 5
    :try_start_3
    invoke-static {v0, p0}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6
    :try_start_4
    invoke-static {v0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    .line 7
    :cond_1
    :try_start_5
    invoke-static {v0, p0}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 8
    :try_start_6
    invoke-static {v0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    .line 10
    :try_start_8
    invoke-static {v2, p0}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/BufferedReader;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    .line 11
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v2

    .line 12
    :try_start_a
    invoke-static {p0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->$closeResource(Ljava/lang/Throwable;Ljava/io/FileReader;)V

    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private resetProcessNameByAmsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->processNameByAmsReady:Z

    return-void
.end method

.method private retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 4

    .line 1
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 2
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 6
    :cond_1
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->USER_APP_START_DATE:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->USER_APP_START_DATE:Lcom/oculus/browser/acra/ReportField;

    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 8
    :cond_2
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->PROCESS_UPTIME:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->PROCESS_UPTIME:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 10
    :cond_3
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->DEVICE_UPTIME:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->DEVICE_UPTIME:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getDeviceUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 12
    :cond_4
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->CRASH_CONFIGURATION:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 14
    sget-object v2, Lcom/oculus/browser/acra/ReportField;->CRASH_CONFIGURATION:Lcom/oculus/browser/acra/ReportField;

    invoke-static {v0}, Lcom/oculus/browser/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 15
    :cond_5
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-static {}, Lcom/oculus/browser/acra/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v2, Lcom/oculus/browser/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 18
    :cond_6
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/oculus/browser/acra/ReportField;

    invoke-static {p1}, Lcom/oculus/browser/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 20
    :cond_7
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->USER_CRASH_DATE:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 21
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 22
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 23
    sget-object v2, Lcom/oculus/browser/acra/ReportField;->USER_CRASH_DATE:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 24
    :cond_8
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACTIVITY_LOG:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 25
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_9

    .line 26
    iget-object p2, p0, Lcom/oculus/browser/acra/ErrorReporter;->activityLogger:Lcom/oculus/browser/acra/util/SimpleTraceLogger;

    invoke-virtual {p2}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 27
    :cond_9
    iget-object p2, p0, Lcom/oculus/browser/acra/ErrorReporter;->activityLogger:Lcom/oculus/browser/acra/util/SimpleTraceLogger;

    sget v0, Lcom/oculus/browser/acra/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    invoke-virtual {p2, v0}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 28
    :goto_0
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACTIVITY_LOG:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 29
    :cond_a
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 30
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 31
    :cond_b
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->resetProcessNameByAmsCache()V

    .line 32
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_COUNT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 33
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_COUNT:Lcom/oculus/browser/acra/ReportField;

    invoke-static {}, Lcom/oculus/browser/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 34
    :cond_c
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    sget-object p2, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 35
    :cond_d
    invoke-static {}, Lcom/oculus/browser/acra/util/ProcFileReader;->getOpenFDLimits()Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 36
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/oculus/browser/acra/ReportField;

    iget-object v1, p2, Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 38
    :cond_e
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 39
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/oculus/browser/acra/ReportField;

    iget-object p2, p2, Lcom/oculus/browser/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 40
    :cond_f
    iget-boolean p2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mIsInternalBuild:Z

    if-eqz p2, :cond_13

    .line 41
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->LOGCAT:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 42
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->LOGCAT:Lcom/oculus/browser/acra/ReportField;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/browser/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 43
    :cond_10
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->EVENTSLOG:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 44
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->EVENTSLOG:Lcom/oculus/browser/acra/ReportField;

    const-string v0, "events"

    invoke-static {v0}, Lcom/oculus/browser/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 45
    :cond_11
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->RADIOLOG:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 46
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->RADIOLOG:Lcom/oculus/browser/acra/ReportField;

    const-string v0, "radio"

    invoke-static {v0}, Lcom/oculus/browser/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 47
    :cond_12
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->DROPBOX:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 48
    iget-object p2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/oculus/browser/acra/ACRA;->getConfig()Lcom/oculus/browser/acra/reporter/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/browser/acra/reporter/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/oculus/browser/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 50
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->DROPBOX:Lcom/oculus/browser/acra/ReportField;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    .line 51
    :cond_13
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->LARGE_MEM_HEAP:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 52
    sget-object p2, Lcom/oculus/browser/acra/ReportField;->LARGE_MEM_HEAP:Lcom/oculus/browser/acra/ReportField;

    invoke-static {p1}, Lcom/oculus/browser/acra/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/oculus/browser/acra/ErrorReporter;->put(Lcom/oculus/browser/acra/ReportField;Ljava/lang/String;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;)V

    :cond_14
    return-void
.end method

.method private sendCrashReport(Lcom/oculus/browser/acra/CrashReportData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/browser/acra/sender/ReportSender;

    .line 2
    :try_start_0
    invoke-interface {v2, p1}, Lcom/oculus/browser/acra/sender/ReportSender;->send(Lcom/oculus/browser/acra/CrashReportData;)V
    :try_end_0
    .catch Lcom/oculus/browser/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 3
    sget-object v3, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ReportSender of class "

    invoke-static {v4}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    throw v3

    :cond_1
    return-void
.end method

.method private shouldContinueProcessingException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit v0

    return p1

    .line 4
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 6
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 4
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, p1, v1}, LLB;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v1, "width="

    .line 3
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "pixelFormat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "refreshRate="

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "fps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.density=x"

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.scaledDensity=x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.widthPixels="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.heightPixels="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.xdpi="

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.ydpi="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getLogBridge()Lcom/oculus/browser/acra/LogBridge;

    move-result-object v0

    const-string v1, "\n"

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p2, v1, p4}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/browser/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/browser/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addReportSender(Lcom/oculus/browser/acra/sender/ReportSender;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs anyReportsOfType([Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 4
    sget-object v4, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    if-ne v3, v4, :cond_1

    .line 5
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$100(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$100(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    .line 7
    invoke-static {v3}, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->access$200(Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oculus/browser/acra/ErrorReporter;->anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public backfillCrashReportData(Lcom/oculus/browser/acra/CrashReportData;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/oculus/browser/acra/ReportField;

    .line 2
    invoke-virtual {p1, v0}, Lcom/oculus/browser/acra/CrashReportData;->getProperty(Lcom/oculus/browser/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/oculus/browser/acra/ErrorReporter;->parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->REPORT_ID:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/browser/acra/ReportField;

    sget-object v4, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_NAME:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UID:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    sget-object v1, Lcom/oculus/browser/acra/ReportField;->UID:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p1, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public varargs declared-synchronized checkAndSendReports(Landroid/content/Context;[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p2, v1

    .line 3
    sget-object v4, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    if-ne v4, v3, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->checkAndSendAcraReports(Landroid/content/Context;)I

    move-result v3

    goto :goto_1

    .line 5
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/oculus/browser/acra/ErrorReporter;->checkAndSendCrashAttachments(Landroid/content/Context;Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkReportsOnApplicationStart()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 1
    sget-object v2, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->anyReportsOfType([Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    .line 2
    sget-object v2, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    aput-object v2, v1, v0

    .line 3
    invoke-virtual {p0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->anyReportsOfType([Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Crash reports found on application start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oculus/browser/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->checkAndSendReports(Landroid/content/Context;[Lcom/oculus/browser/acra/ErrorReporter$CrashReportType;)I

    move-result v0

    return v0

    .line 6
    :cond_2
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No crash reports found on application start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/browser/acra/ErrorReporter;->dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [Ljava/io/File;

    return-object p1

    :cond_0
    const-string v0, "Crashpad"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 6
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [Ljava/io/File;

    return-object p1

    .line 7
    :cond_2
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 8
    new-instance p1, Lcom/oculus/browser/acra/ErrorReporter$1;

    invoke-direct {p1, p0, p2}, Lcom/oculus/browser/acra/ErrorReporter$1;-><init>(Lcom/oculus/browser/acra/ErrorReporter;[Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v1, [Ljava/io/File;

    return-object p1

    .line 10
    :cond_3
    new-instance p2, Lcom/oculus/browser/acra/ErrorReporter$2;

    invoke-direct {p2, p0}, Lcom/oculus/browser/acra/ErrorReporter$2;-><init>(Lcom/oculus/browser/acra/ErrorReporter;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDexVerifyBridge()Lcom/oculus/browser/acra/DexVerifyBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDexVerifyBridge:Lcom/oculus/browser/acra/DexVerifyBridge;

    return-object v0
.end method

.method public getLogBridge()Lcom/oculus/browser/acra/LogBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mLogBridge:Lcom/oculus/browser/acra/LogBridge;

    return-object v0
.end method

.method public getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/oculus/browser/acra/NonCrashException;

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    .line 5
    invoke-direct {p0, p1, p3, p2, v0}, Lcom/oculus/browser/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/oculus/browser/acra/ReportField;)V

    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/oculus/browser/acra/ReportField;)V

    return-void
.end method

.method public handleExceptionDelayed(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/oculus/browser/acra/ReportField;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/oculus/browser/acra/ReportField;)V

    return-void
.end method

.method public handleExceptionWithCustomFields(Ljava/lang/Exception;Ljava/util/Map;[Lcom/oculus/browser/acra/ReportField;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oculus/browser/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/oculus/browser/acra/ReportField;)V

    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 2
    iput-boolean p2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mIsInternalBuild:Z

    .line 3
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 4
    new-instance p2, Lcom/oculus/browser/acra/util/PackageManagerWrapper;

    invoke-direct {p2, p1}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p2}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 7
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "not set"

    :goto_0
    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 8
    :cond_1
    new-instance v0, Lcom/oculus/browser/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/oculus/browser/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mPackageManager:Lcom/oculus/browser/acra/util/PackageManagerWrapper;

    .line 9
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_ID:Lcom/oculus/browser/acra/ReportField;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_CODE:Lcom/oculus/browser/acra/ReportField;

    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_VERSION_NAME:Lcom/oculus/browser/acra/ReportField;

    iget-object v2, p0, Lcom/oculus/browser/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PACKAGE_NAME:Lcom/oculus/browser/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PHONE_MODEL:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->DEVICE:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->ANDROID_VERSION:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->OS_VERSION:Lcom/oculus/browser/acra/ReportField;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BUILD_HOST:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->BRAND:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->PRODUCT:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "n/a"

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/oculus/browser/acra/ReportField;->FILE_PATH:Lcom/oculus/browser/acra/ReportField;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->SERIAL:Lcom/oculus/browser/acra/ReportField;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 27
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_INSTALL_TIME:Lcom/oculus/browser/acra/ReportField;

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v2, v3}, Lcom/oculus/browser/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/oculus/browser/acra/ReportField;->APP_UPGRADE_TIME:Lcom/oculus/browser/acra/ReportField;

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {p0, v2, v3}, Lcom/oculus/browser/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 29
    sget-object v0, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to install constants"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const-string p2, "acra-reports"

    const-string v0, "reportfile.prealloc"

    .line 30
    invoke-static {p1, p2, v0}, Lcom/oculus/browser/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 31
    invoke-direct {p0}, Lcom/oculus/browser/acra/ErrorReporter;->createPreallocatedReportFile()V

    :cond_4
    return-void
.end method

.method public isNativeCrashedOnPreviousRun()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    return v0
.end method

.method public parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/oculus/browser/acra/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/oculus/browser/acra/CustomReportDataSupplier;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->activityLogger:Lcom/oculus/browser/acra/util/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeLazyCustomData(Ljava/lang/String;)Lcom/oculus/browser/acra/CustomReportDataSupplier;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/browser/acra/CustomReportDataSupplier;

    return-object p1
.end method

.method public setDexVerifyBridge(Lcom/oculus/browser/acra/DexVerifyBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mDexVerifyBridge:Lcom/oculus/browser/acra/DexVerifyBridge;

    return-void
.end method

.method public setLogBridge(Lcom/oculus/browser/acra/LogBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mLogBridge:Lcom/oculus/browser/acra/LogBridge;

    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mMaxReportSize:J

    return-void
.end method

.method public setReportProxy(Ljava/net/Proxy;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/browser/acra/sender/ReportSender;

    .line 2
    instance-of v2, v1, Lcom/oculus/browser/acra/sender/FlexibleReportSender;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lcom/oculus/browser/acra/sender/FlexibleReportSender;

    invoke-interface {v1, p1}, Lcom/oculus/browser/acra/sender/FlexibleReportSender;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setReportSender(Lcom/oculus/browser/acra/sender/ReportSender;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oculus/browser/acra/ErrorReporter;->removeAllReportSenders()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->addReportSender(Lcom/oculus/browser/acra/sender/ReportSender;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/oculus/browser/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "ACRA caught a "

    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exception for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Building report."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/oculus/browser/acra/ErrorReporter;->usePreallocatedFile:Z

    .line 5
    sget-object v0, Lcom/oculus/browser/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "IS_PROCESSING_ANOTHER_EXCEPTION"

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    nop

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/browser/acra/ErrorReporter;->getDexVerifyBridge()Lcom/oculus/browser/acra/DexVerifyBridge;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/oculus/browser/acra/DexVerifyBridge;->verifyDexes()Ljava/lang/RuntimeException;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, p2

    .line 10
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/oculus/browser/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)V

    return-void
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/oculus/browser/acra/CrashReportData;

    invoke-direct {v4}, Lcom/oculus/browser/acra/CrashReportData;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/oculus/browser/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v5

    .line 3
    invoke-direct {p0, p1}, Lcom/oculus/browser/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v3, Lcom/oculus/browser/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/oculus/browser/acra/ReportField;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/oculus/browser/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/oculus/browser/acra/ReportField;Lcom/oculus/browser/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V

    return-void
.end method
