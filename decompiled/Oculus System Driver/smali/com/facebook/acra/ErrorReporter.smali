.class public Lcom/facebook/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;,
        Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;,
        Lcom/facebook/acra/ErrorReporter$CrashReportType;
    }
.end annotation


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "acra-reports"

.field private static final ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field private static final ANDROID_RUNTIME_ART:Ljava/lang/String; = "ART"

.field private static final ANDROID_RUNTIME_DALVIK:Ljava/lang/String; = "DALVIK"

.field private static final ANDROID_RUNTIME_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final CRASH_ATTACHMENT_DUMMY_STACKTRACE:Ljava/lang/String; = "crash attachment"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0x100000L

.field private static DEFAULT_TRACE_COUNT_LIMIT:I = 0x0

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_DIR:Ljava/lang/String; = "minidumps"

.field private static final EMPTY_LAST_URL:Ljava/lang/String; = "EMPTY_URL"

.field private static final FILE_IAB_OPEN_TIMES:Ljava/lang/String; = "iab_open_times"

.field private static final FILE_LAST_ACTIVITY:Ljava/lang/String; = "last_activity_opened"

.field private static final FILE_LAST_URL:Ljava/lang/String; = "last_url_opened"

.field private static final IS_PROCESSING_ANOTHER_EXCEPTION:Ljava/lang/String; = "IS_PROCESSING_ANOTHER_EXCEPTION"

.field private static final JAVA_BOOT_CLASS_PATH:Ljava/lang/String; = "java.boot.class.path"

.field private static final KNOWN_ART_JAR:Ljava/lang/String; = "/system/framework/core-libart.jar"

.field private static final KNOWN_DALVIK_JAR:Ljava/lang/String; = "/system/framework/core.jar"

.field public static final MAX_REPORT_AGE:J = 0x240c8400L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field private static MAX_TRACE_COUNT_LIMIT:I = 0x0

.field private static final MIN_TEMP_REPORT_AGE:J = 0x927c0L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x800000L

.field private static final NO_FILE:Ljava/lang/String; = "NO_FILE"

.field public static final PREALLOCATED_FILESIZE:J = 0x100000L

.field public static final PREALLOCATED_REPORTFILE:Ljava/lang/String; = "reportfile.prealloc"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field public static final SIGQUIT_DIR:Ljava/lang/String; = "traces"

.field public static final SIGQUIT_MAX_REPORT_SIZE:J = 0x80000L

.field public static final TAG:Ljava/lang/String; = "ErrorReporter"

.field public static final TEMP_REPORTFILE_EXTENSION:Ljava/lang/String; = ".temp_stacktrace"

.field private static final VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

.field private static final WEBVIEW_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.webview"

.field private static mInstanceSingleton:Lcom/facebook/acra/ErrorReporter; = null

.field private static final mInternalException:Ljava/lang/String; = "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

.field private static mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final activityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

.field private final mAppStartDate:Landroid/text/format/Time;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private final mConstantFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentlyProcessingOOM:Z

.field private final mDeviceSpecificFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDexVerifyBridge:Lcom/facebook/acra/DexVerifyBridge;

.field private mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mHasNativeCrashDumpOnInit:Z

.field mInstanceCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstanceLazyCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInternalBuild:Z

.field private mLogBridge:Lcom/facebook/acra/LogBridge;

.field private mMaxReportSize:J

.field private mPackageManager:Lcom/facebook/acra/util/PackageManagerWrapper;

.field private mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

.field private volatile mUserId:Ljava/lang/String;

.field private preallocFile:Ljava/io/File;

.field private processNameByAms:Ljava/lang/String;

.field private processNameByAmsReady:Z

.field private volatile sendInMemoryReport:Z

.field private usePreallocatedFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^\\d+-[a-zA-Z0-9_\\-]+-(\\d+)\\.(temp_stacktrace|stacktrace)$"

    .line 123
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    .line 184
    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v0, 0x5

    .line 341
    sput v0, Lcom/facebook/acra/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    const/16 v0, 0x14

    .line 342
    sput v0, Lcom/facebook/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    .line 371
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    .line 127
    iput-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    .line 179
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    .line 312
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    .line 315
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 322
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 323
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 337
    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 343
    new-instance v1, Lcom/facebook/acra/util/SimpleTraceLogger;

    sget v2, Lcom/facebook/acra/ErrorReporter;->MAX_TRACE_COUNT_LIMIT:I

    invoke-direct {v1, v2}, Lcom/facebook/acra/util/SimpleTraceLogger;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->activityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    .line 351
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    .line 356
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    .line 358
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2138
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2139
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 2141
    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_2

    .line 2144
    :cond_2
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    .line 2145
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    .line 2146
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

.method private checkAndSendAcraReports(Landroid/content/Context;)V
    .locals 11

    const-string v0, "acra-reports"

    const-string v1, ".stacktrace"

    const-string v2, ".temp_stacktrace"

    .line 1636
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1637
    invoke-virtual {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 1644
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v1

    .line 1645
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    const/4 v6, 0x5

    if-lt v4, v6, :cond_0

    .line 1654
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_1

    .line 1658
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1659
    sget-object v7, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/facebook/acra/ErrorReporter;->loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/facebook/acra/CrashReportData;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1664
    sget-object v8, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    sget-object v9, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v9}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1665
    sget-object v8, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v7, v8, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1668
    sget-object v8, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    invoke-virtual {v7, v8, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-object v8, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sending file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-direct {p0, v7}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1671
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1682
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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

    .line 1678
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load crash report for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1679
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1674
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to send crash reports"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    invoke-static {v5}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private checkAndSendCrashAttachments(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    .locals 13

    .line 1700
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendCrashAttachments - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$100(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.noupload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1709
    :cond_0
    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$100(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$200(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/acra/ErrorReporter;->getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1711
    array-length v2, v0

    if-lez v2, :cond_4

    .line 1714
    new-instance v2, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v2}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1715
    sget-object v3, Lcom/facebook/acra/ReportField;->ACRA_REPORT_TYPE:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    :try_start_0
    const-string v4, "crash attachment"

    .line 1717
    new-instance v5, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;

    invoke-direct {v5, p0, v10}, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/ErrorReporter$1;)V

    sget-object v6, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v9}, Lcom/facebook/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrieve exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1728
    sget-object v4, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v4, v3, v2, v10}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1731
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    const/4 v7, 0x5

    if-lt v5, v7, :cond_1

    .line 1733
    invoke-static {v6}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_2

    .line 1736
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1739
    :try_start_1
    invoke-direct {p0, p1, v6, p2}, Lcom/facebook/acra/ErrorReporter;->loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_2

    .line 1745
    :cond_2
    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1747
    sget-object v11, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    const/16 v12, 0x2e

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    invoke-virtual {v7, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12, v10}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1748
    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v11

    invoke-virtual {v2, v11, v9, v10}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1749
    invoke-virtual {v2, v8}, Lcom/facebook/acra/CrashReportData;->merge(Lcom/facebook/acra/CrashReportData;)V

    .line 1750
    sget-object v8, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    const-string v9, "crash attachment"

    invoke-virtual {v2, v8, v9, v10}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1751
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1752
    invoke-static {v6}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1759
    sget-object p2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed on crash attachment file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1760
    invoke-static {v6}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1756
    sget-object p2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send crash attachment report "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/acra/sender/ReportSenderException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    move v1, v5

    .line 1766
    :cond_4
    sget-object p1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#checkAndSendCrashAttachments - finish, sent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1766
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private createPreallocatedReportFile()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 802
    :try_start_0
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x2800

    .line 809
    new-array v5, v5, [B

    .line 810
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    cmp-long v2, v0, v3

    if-gez v2, :cond_2

    .line 812
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 811
    array-length v2, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v7, v2

    add-long/2addr v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v6

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v6

    goto :goto_1

    .line 819
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 815
    :goto_1
    :try_start_3
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to pre-allocate crash report file"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 819
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

    .line 821
    :catch_3
    :cond_4
    throw v0
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 2081
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2082
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2083
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete error report: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "\n"

    const-string v2, "\\n"

    .line 556
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-eqz p3, :cond_1

    const-string v0, "\n"

    const-string v1, "\\n"

    .line 557
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 547
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

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 531
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

    .line 532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/CustomReportDataSupplier;

    invoke-interface {v0, p3}, Lcom/facebook/acra/CustomReportDataSupplier;->getCustomData(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataEntry(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 537
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Caught throwable while getting custom report data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 2073
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 2074
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private formatTimestamp(J)Ljava/lang/String;
    .locals 1

    .line 787
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 788
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    .line 789
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "[",
            "Lcom/facebook/acra/ReportField;",
            "Lcom/facebook/acra/CrashReportData;",
            "Ljava/io/Writer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1241
    sget-object p3, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    :cond_0
    move-object v3, p3

    .line 1245
    sget-object p3, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1249
    sget-object p3, Lcom/facebook/acra/ReportField;->STACK_TRACE:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, p3, p1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1251
    iget-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

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

    .line 1252
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ReportField;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1256
    invoke-direct {p0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->populateConstantDeviceData(Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1258
    sget-object p1, Lcom/facebook/acra/ReportField;->CUSTOM_DATA:Lcom/facebook/acra/ReportField;

    invoke-virtual {p0, p6, p2}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    return-void
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAndroidRuntime()Ljava/lang/String;
    .locals 2

    .line 946
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const-string v0, "DALVIK"

    return-object v0

    :cond_0
    const-string v0, "java.boot.class.path"

    .line 949
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "/system/framework/core-libart.jar"

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ART"

    return-object v0

    :cond_1
    const-string v1, "/system/framework/core.jar"

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "DALVIK"

    return-object v0

    :cond_2
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 4

    .line 833
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 834
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 836
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->BUILD:Lcom/facebook/acra/ReportField;

    const-class v3, Landroid/os/Build;

    invoke-static {v3}, Lcom/facebook/acra/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->JAIL_BROKEN:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getJailStatus()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->INSTALLATION_ID:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->TOTAL_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getTotalInternalMemorySize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mPackageManager:Lcom/facebook/acra/util/PackageManagerWrapper;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/facebook/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 894
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 895
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 897
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->DEVICE_ID:Lcom/facebook/acra/ReportField;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 902
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 903
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 904
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->DISPLAY:Lcom/facebook/acra/ReportField;

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->toString(Landroid/view/Display;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ENVIRONMENT:Lcom/facebook/acra/ReportField;

    const-class v3, Landroid/os/Environment;

    .line 907
    invoke-static {v3}, Lcom/facebook/acra/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->DEVICE_FEATURES:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/acra/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SYSTEM:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 912
    invoke-static {v3}, Lcom/facebook/acra/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->SETTINGS_SECURE:Lcom/facebook/acra/ReportField;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 916
    invoke-static {v3}, Lcom/facebook/acra/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 914
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 920
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 921
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 922
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v3, Lcom/facebook/acra/ReportField;->IS_LOW_RAM_DEVICE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->ANDROID_RUNTIME:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getAndroidRuntime()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    :cond_2
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mDeviceSpecificFields:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDeviceUptime()J
    .locals 2

    .line 700
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .line 709
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Lcom/facebook/acra/ErrorReporter;

    invoke-direct {v0}, Lcom/facebook/acra/ErrorReporter;-><init>()V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    .line 712
    :cond_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mInstanceSingleton:Lcom/facebook/acra/ErrorReporter;

    return-object v0
.end method

.method private getJailStatus()Ljava/lang/String;
    .locals 6

    .line 652
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    return-object v0

    .line 659
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "yes"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 664
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to find Superuser.pak"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :cond_1
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "PATH"

    .line 670
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 673
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "su"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 676
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "yes"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    :catch_1
    move-exception v3

    .line 681
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to find su binary in the PATH"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "no"

    return-object v0
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 5

    .line 616
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 620
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/self/cmdline"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 621
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x80

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 622
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    .line 624
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v3, v1

    .line 627
    :goto_0
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to get process name."

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v3, :cond_1

    .line 632
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .line 634
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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

    .line 603
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessNameFromAmsOrNull()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "n/a"

    :cond_0
    return-object v0
.end method

.method private getProcessNameFromAmsOrNull()Ljava/lang/String;
    .locals 4

    .line 565
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAmsReady:Z

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 569
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    .line 570
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-nez v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    .line 577
    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0

    .line 582
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

    .line 583
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_3

    .line 584
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    :cond_4
    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAmsReady:Z

    .line 590
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    return-object v0
.end method

.method private getProcessUptime()J
    .locals 2

    .line 693
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;
    .locals 1

    .line 2239
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_0

    .line 2240
    sget-object p1, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    return-object p1

    .line 2241
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 2242
    sget-object p1, Lcom/facebook/acra/ACRA;->MINIMAL_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    return-object p1

    .line 2245
    :cond_1
    sget-object p1, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    return-object p1
.end method

.method private static getTotalInternalMemorySize()J
    .locals 4

    .line 851
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 852
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 854
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

.method private handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 16
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lcom/facebook/acra/ReportField;",
            "Z)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v3, p1

    move-object/from16 v1, p3

    .line 1361
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/acra/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1365
    invoke-direct {v8, v0}, Lcom/facebook/acra/ErrorReporter;->shouldContinueProcessingException(Ljava/lang/Throwable;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_0

    return-object v9

    .line 1371
    :cond_0
    new-instance v10, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v10}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1375
    instance-of v0, v3, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_1

    move-object v0, v3

    check-cast v0, Lcom/facebook/acra/NonCrashException;

    .line 1376
    invoke-interface {v0}, Lcom/facebook/acra/NonCrashException;->getExceptionFriendlyName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "crash"

    .line 1377
    :goto_0
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling exception for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v4, v5, v3, v1}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1386
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generating report file for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".temp_stacktrace"

    .line 1387
    invoke-direct {v8, v2, v0}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    iget-object v4, v8, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v5, "acra-reports"

    invoke-static {v4, v5, v0}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-string v0, ".stacktrace"

    .line 1389
    invoke-direct {v8, v2, v0}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1390
    iget-object v0, v8, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v5, "acra-reports"

    invoke-static {v0, v5, v4}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    const/4 v13, 0x1

    .line 1399
    :try_start_0
    iget-boolean v0, v8, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, v8, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1411
    :cond_2
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v5, v11, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1413
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v14, v0

    move-object v15, v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v9

    .line 1415
    :goto_1
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "An error occurred while creating the report file ..."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1417
    iput-boolean v13, v8, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    move-object v15, v5

    move-object v14, v9

    .line 1421
    :goto_2
    :try_start_2
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-direct {v8, v0, v4, v10, v14}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1422
    sget-object v0, Lcom/facebook/acra/ReportField;->EXCEPTION_CAUSE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v10, v14}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    if-nez v1, :cond_3

    .line 1429
    invoke-direct/range {p0 .. p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v10

    move-object v6, v14

    move-object/from16 v7, p2

    .line 1431
    invoke-direct/range {v1 .. v7}, Lcom/facebook/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_4

    .line 1456
    :try_start_3
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1459
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 1460
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 1463
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while deleting closing the report file ..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 1439
    :try_start_4
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    invoke-direct {v8, v1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2, v10, v14}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1449
    :try_start_5
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."

    :goto_4
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    .line 1446
    :try_start_6
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while gathering internal crash data ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1447
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_INTERNAL:Lcom/facebook/acra/ReportField;

    const-string v2, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    invoke-direct {v8, v0, v2, v10, v14}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1449
    :try_start_7
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "An error occurred while gathering crash data ..."
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :goto_5
    if-eqz v15, :cond_4

    .line 1456
    :try_start_8
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1459
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 1460
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_6
    if-eqz p5, :cond_6

    .line 1469
    iget-boolean v0, v8, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, v8, v10}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V

    goto :goto_7

    :cond_5
    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    new-array v1, v13, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v1, v2

    invoke-direct {v0, v8, v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 1472
    :goto_7
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to start ReportSenderWorker from #handleException"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V

    return-object v0

    .line 1482
    :cond_6
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ACRA caught an OutOfMemoryError. Report upload deferred until next ACRA launch."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 1449
    :goto_8
    :try_start_9
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while gathering crash data ..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_9
    if-eqz v15, :cond_7

    .line 1456
    :try_start_a
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 1459
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V

    .line 1460
    invoke-virtual {v11, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    .line 1463
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "An error occurred while deleting closing the report file ..."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1465
    :cond_7
    :goto_a
    throw v1
.end method

.method private loadAcraCrashReport(Landroid/content/Context;Ljava/io/File;)Lcom/facebook/acra/CrashReportData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1801
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    iget-wide v4, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;

    move-result-object p1

    return-object p1
.end method

.method private loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2043
    new-array v0, p2, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    sub-int v4, p2, v2

    if-lez v4, :cond_1

    .line 2045
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

    .line 2057
    :cond_2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 p2, 0x0

    .line 2060
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2061
    :try_start_1
    array-length p2, v0

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 2062
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 2063
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v2, p2

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3
    throw p1
.end method

.method private loadCrashAttachment(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1813
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$500(Lcom/facebook/acra/ErrorReporter$CrashReportType;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;

    move-result-object p1

    return-object p1
.end method

.method private loadCrashReport(Landroid/content/Context;Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)Lcom/facebook/acra/CrashReportData;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-wide/from16 v2, p4

    .line 1823
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1825
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-string v9, ".temp_stacktrace"

    .line 1829
    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    const-wide/16 v11, 0x0

    cmp-long v9, v7, v11

    if-lez v9, :cond_0

    sub-long v11, v5, v7

    const-wide/32 v13, 0x927c0

    cmp-long v9, v11, v13

    if-gez v9, :cond_0

    .line 1831
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is too recent; skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 1833
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1834
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " deleted. skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    .line 1839
    :cond_1
    new-instance v9, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v9}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1840
    sget-object v11, Lcom/facebook/acra/ReportField;->TIME_OF_CRASH:Lcom/facebook/acra/ReportField;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 1842
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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

    .line 1843
    invoke-static/range {p2 .. p2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1844
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1845
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v0

    const-string v2, "attachment too old"

    invoke-virtual {v9, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    :cond_2
    sget-object v0, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    sget-object v2, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_OLD:Lcom/facebook/acra/MinidumpExcludeReason;

    .line 1849
    invoke-virtual {v2}, Lcom/facebook/acra/MinidumpExcludeReason;->name()Ljava/lang/String;

    move-result-object v2

    .line 1847
    invoke-virtual {v9, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 1852
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-lez v7, :cond_5

    .line 1854
    sget-object v7, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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

    .line 1858
    invoke-static/range {p2 .. p2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V

    .line 1859
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1860
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v0

    const-string v2, "attachment too big"

    invoke-virtual {v9, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :cond_4
    sget-object v0, Lcom/facebook/acra/ReportField;->MINIDUMP_EXCLUDE_REASON:Lcom/facebook/acra/ReportField;

    sget-object v2, Lcom/facebook/acra/MinidumpExcludeReason;->DUMP_TOO_BIG:Lcom/facebook/acra/MinidumpExcludeReason;

    .line 1864
    invoke-virtual {v2}, Lcom/facebook/acra/MinidumpExcludeReason;->name()Ljava/lang/String;

    move-result-object v2

    .line 1862
    invoke-virtual {v9, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1865
    sget-object v0, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    .line 1866
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1865
    invoke-virtual {v9, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 1870
    :cond_5
    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1874
    :try_start_0
    sget-object v7, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne v0, v7, :cond_6

    .line 1875
    invoke-virtual {v9, v2}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/InputStream;)V

    goto/16 :goto_d

    :cond_6
    long-to-int v7, v5

    .line 1878
    invoke-direct {v1, v2, v7}, Lcom/facebook/acra/ErrorReporter;->loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v7

    .line 1879
    sget-object v8, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne v0, v8, :cond_11

    .line 1880
    iget-object v8, v1, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    .line 1883
    new-instance v11, Ljava/io/File;

    const-string v12, "last_url_opened"

    invoke-direct {v11, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    const/16 v13, 0x400

    if-nez v12, :cond_7

    .line 1885
    sget-object v11, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const-string v12, "NO_FILE"

    invoke-virtual {v9, v11, v12}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1887
    :cond_7
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 1888
    :try_start_1
    new-instance v14, Ljava/io/BufferedReader;

    invoke-direct {v14, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1889
    :try_start_2
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    .line 1891
    sget-object v15, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    const-string v3, "EMPTY_URL"

    invoke-virtual {v9, v15, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1893
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1894
    sget-object v15, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED:Lcom/facebook/acra/ReportField;

    invoke-virtual {v9, v15, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    sget-object v3, Lcom/facebook/acra/ReportField;->LAST_URL_VISITED_TIME:Lcom/facebook/acra/ReportField;

    .line 1897
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    .line 1895
    invoke-virtual {v9, v3, v15}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1900
    :try_start_3
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 1901
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 1905
    :goto_1
    new-instance v3, Ljava/io/File;

    const-string v11, "last_activity_opened"

    invoke-direct {v3, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1907
    sget-object v3, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    const-string v10, "NO_FILE"

    invoke-virtual {v9, v3, v10}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1909
    :cond_9
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1910
    :try_start_5
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v11, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1911
    :try_start_6
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 1913
    sget-object v14, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED:Lcom/facebook/acra/ReportField;

    invoke-virtual {v9, v14, v13}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    sget-object v13, Lcom/facebook/acra/ReportField;->LAST_ACTIVITY_LOGGED_TIME:Lcom/facebook/acra/ReportField;

    .line 1916
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 1914
    invoke-virtual {v9, v13, v14}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    :cond_a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1919
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1920
    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    .line 1923
    :goto_2
    new-instance v3, Ljava/io/File;

    const-string v10, "iab_open_times"

    invoke-direct {v3, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1924
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "NO_FILE"

    .line 1925
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1927
    sget-object v8, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    const-string v10, "0"

    invoke-virtual {v9, v8, v10}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    if-eqz v8, :cond_c

    .line 1929
    sget-object v10, Lcom/facebook/acra/ReportField;->IAB_OPEN_TIMES:Lcom/facebook/acra/ReportField;

    invoke-virtual {v9, v10, v8}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1932
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v5, v10

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1910
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    :goto_4
    if-eqz v5, :cond_d

    .line 1919
    :try_start_a
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    :goto_5
    throw v3
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v10, v0

    .line 1909
    :try_start_c
    throw v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :goto_6
    if-eqz v10, :cond_e

    .line 1920
    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v5, v0

    :try_start_e
    invoke-virtual {v10, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v11}, Ljava/io/FileReader;->close()V

    :goto_7
    throw v3
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v5, v10

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 1888
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    move-object v5, v3

    move-object v3, v0

    :goto_8
    if-eqz v5, :cond_f

    .line 1900
    :try_start_10
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v6, v0

    :try_start_11
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V

    :goto_9
    throw v3
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v10, v0

    .line 1887
    :try_start_12
    throw v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :goto_a
    if-eqz v10, :cond_10

    .line 1901
    :try_start_13
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v5, v0

    :try_start_14
    invoke-virtual {v10, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_10
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    :goto_b
    throw v3

    .line 1935
    :cond_11
    :goto_c
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$400(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ReportField;

    move-result-object v0

    invoke-virtual {v9, v0, v7}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    sget-object v0, Lcom/facebook/acra/ReportField;->ATTACHMENT_ORIGINAL_SIZE:Lcom/facebook/acra/ReportField;

    .line 1937
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1936
    invoke-virtual {v9, v0, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 1948
    :goto_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_6
    move-exception v0

    const/16 v16, 0x0

    goto :goto_f

    :catch_8
    move-exception v0

    .line 1940
    :try_start_15
    sget-object v3, Lcom/facebook/acra/ReportField;->REPORT_LOAD_THROW:Lcom/facebook/acra/ReportField;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "throwable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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

    .line 1942
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    const/4 v3, 0x1

    move-object/from16 v5, p1

    .line 1944
    :try_start_16
    invoke-virtual {v5, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1945
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

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
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 1954
    :goto_e
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v9, v0, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    invoke-virtual {v1, v9}, Lcom/facebook/acra/ErrorReporter;->backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V

    return-object v9

    :catchall_7
    move-exception v0

    const/16 v16, 0x1

    :goto_f
    if-nez v16, :cond_12

    .line 1948
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_12
    throw v0
.end method

.method private populateConstantDeviceData(Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 3

    .line 870
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getConstantDeviceData()Ljava/util/Map;

    move-result-object v0

    .line 871
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

    .line 872
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/ReportField;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1, p2}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 1

    .line 1276
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p3, p1, p2, p4}, Lcom/facebook/acra/CrashReportData;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x1

    .line 1279
    iput-boolean p1, p0, Lcom/facebook/acra/ErrorReporter;->sendInMemoryReport:Z

    :goto_0
    return-void
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/facebook/acra/Nullable;
    .end annotation

    .line 1960
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "NO_FILE"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1963
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1964
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x400

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1965
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 1969
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1970
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object v2

    .line 1969
    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1970
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1964
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 1969
    :try_start_8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catch_1
    move-exception p0

    :try_start_9
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 1963
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v2

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    :goto_2
    if-eqz v2, :cond_3

    .line 1970
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    :catch_3
    move-exception v1

    :try_start_c
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    :goto_3
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :catch_4
    :goto_4
    return-object v0
.end method

.method private resetProcessNameByAmsCache()V
    .locals 1

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAms:Ljava/lang/String;

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->processNameByAmsReady:Z

    return-void
.end method

.method private retrieveCrashTimeData(Landroid/content/Context;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 975
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 978
    sget-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 979
    sget-object v0, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 983
    :cond_0
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_NAME:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 988
    :cond_1
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 989
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_APP_START_DATE:Lcom/facebook/acra/ReportField;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 993
    :cond_2
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 994
    sget-object v0, Lcom/facebook/acra/ReportField;->PROCESS_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 998
    :cond_3
    sget-object v0, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    sget-object v0, Lcom/facebook/acra/ReportField;->DEVICE_UPTIME:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getDeviceUptime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1002
    :cond_4
    sget-object v0, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1003
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1004
    sget-object v2, Lcom/facebook/acra/ReportField;->CRASH_CONFIGURATION:Lcom/facebook/acra/ReportField;

    invoke-static {v0}, Lcom/facebook/acra/ConfigurationInspector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1008
    :cond_5
    sget-object v0, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1009
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getAvailableInternalMemorySize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1010
    sget-object v2, Lcom/facebook/acra/ReportField;->AVAILABLE_MEM_SIZE:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1014
    :cond_6
    sget-object v0, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1015
    sget-object v0, Lcom/facebook/acra/ReportField;->DUMPSYS_MEMINFO:Lcom/facebook/acra/ReportField;

    invoke-static {p1}, Lcom/facebook/acra/DumpSysCollector;->collectMemInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1020
    :cond_7
    sget-object v0, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1021
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1022
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1023
    sget-object v2, Lcom/facebook/acra/ReportField;->USER_CRASH_DATE:Lcom/facebook/acra/ReportField;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1027
    :cond_8
    sget-object v0, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1029
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_9

    .line 1030
    iget-object p2, p0, Lcom/facebook/acra/ErrorReporter;->activityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    invoke-virtual {p2}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1032
    :cond_9
    iget-object p2, p0, Lcom/facebook/acra/ErrorReporter;->activityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    sget v0, Lcom/facebook/acra/ErrorReporter;->DEFAULT_TRACE_COUNT_LIMIT:I

    invoke-virtual {p2, v0}, Lcom/facebook/acra/util/SimpleTraceLogger;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 1034
    :goto_0
    sget-object v0, Lcom/facebook/acra/ReportField;->ACTIVITY_LOG:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1038
    :cond_a
    sget-object p2, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1039
    sget-object p2, Lcom/facebook/acra/ReportField;->PROCESS_NAME_BY_AMS:Lcom/facebook/acra/ReportField;

    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1041
    :cond_b
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->resetProcessNameByAmsCache()V

    .line 1044
    sget-object p2, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1045
    sget-object p2, Lcom/facebook/acra/ReportField;->OPEN_FD_COUNT:Lcom/facebook/acra/ReportField;

    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1048
    :cond_c
    sget-object p2, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    sget-object p2, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1049
    :cond_d
    invoke-static {}, Lcom/facebook/acra/util/ProcFileReader;->getOpenFDLimits()Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 1051
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1052
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_SOFT_LIMIT:Lcom/facebook/acra/ReportField;

    iget-object v1, p2, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1054
    :cond_e
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1055
    sget-object v0, Lcom/facebook/acra/ReportField;->OPEN_FD_HARD_LIMIT:Lcom/facebook/acra/ReportField;

    iget-object p2, p2, Lcom/facebook/acra/util/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1069
    :cond_f
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_13

    iget-boolean p2, p0, Lcom/facebook/acra/ErrorReporter;->mIsInternalBuild:Z

    if-eqz p2, :cond_13

    .line 1070
    sget-object p2, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 1071
    sget-object p2, Lcom/facebook/acra/ReportField;->LOGCAT:Lcom/facebook/acra/ReportField;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1073
    :cond_10
    sget-object p2, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1074
    sget-object p2, Lcom/facebook/acra/ReportField;->EVENTSLOG:Lcom/facebook/acra/ReportField;

    const-string v0, "events"

    invoke-static {v0}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1076
    :cond_11
    sget-object p2, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 1077
    sget-object p2, Lcom/facebook/acra/ReportField;->RADIOLOG:Lcom/facebook/acra/ReportField;

    const-string v0, "radio"

    invoke-static {v0}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1079
    :cond_12
    sget-object p2, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1080
    iget-object p2, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 1081
    invoke-static {}, Lcom/facebook/acra/ACRA;->getConfig()Lcom/facebook/acra/reporter/ReportsCrashes;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/acra/reporter/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/facebook/acra/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1082
    sget-object v0, Lcom/facebook/acra/ReportField;->DROPBOX:Lcom/facebook/acra/ReportField;

    invoke-direct {p0, v0, p2, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 1085
    :cond_13
    sget-object p2, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xb

    if-lt p2, p3, :cond_14

    .line 1087
    sget-object p2, Lcom/facebook/acra/ReportField;->LARGE_MEM_HEAP:Lcom/facebook/acra/ReportField;

    invoke-static {p1}, Lcom/facebook/acra/DumpSysCollector;->collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/facebook/acra/ErrorReporter;->put(Lcom/facebook/acra/ReportField;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    :cond_14
    return-void
.end method

.method private sendCrashReport(Lcom/facebook/acra/CrashReportData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/acra/sender/ReportSenderException;
        }
    .end annotation

    .line 1539
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/sender/ReportSender;

    .line 1541
    :try_start_0
    invoke-interface {v2, p1}, Lcom/facebook/acra/sender/ReportSender;->send(Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 1549
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReportSender of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1547
    :cond_0
    throw v3

    :cond_1
    return-void
.end method

.method private shouldContinueProcessingException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 2280
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mShouldContinueProcessingExceptionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2281
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 2283
    monitor-exit v0

    return p1

    .line 2286
    :cond_0
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 2288
    iput-boolean v1, p0, Lcom/facebook/acra/ErrorReporter;->mCurrentlyProcessingOOM:Z

    .line 2290
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 2291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 1220
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1223
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1224
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1225
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1226
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static toString(Landroid/view/Display;)Ljava/lang/String;
    .locals 4

    .line 1100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1101
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width="

    .line 1103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 1104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "pixelFormat="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "refreshRate="

    .line 1105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "fps"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.density=x"

    .line 1106
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.scaledDensity=x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1107
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.widthPixels="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.heightPixels="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.xdpi="

    .line 1109
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "metrics.ydpi="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    .line 1193
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getLogBridge()Lcom/facebook/acra/LogBridge;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 1198
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1200
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 1206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1208
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public addReportSender(Lcom/facebook/acra/sender/ReportSender;)V
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z
    .locals 6

    .line 2111
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2112
    sget-object p1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2116
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 2117
    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$100(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2118
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$200(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/facebook/acra/ErrorReporter;->anyFilesPresentOfType(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V
    .locals 5

    .line 1986
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    .line 1987
    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->getProperty(Lcom/facebook/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 1986
    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1988
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1990
    sget-object v1, Lcom/facebook/acra/ReportField;->REPORT_ID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v1}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1991
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 1992
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

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

    .line 1993
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/acra/ReportField;

    sget-object v4, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {v3, v4}, Lcom/facebook/acra/ReportField;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1998
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2002
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2003
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2010
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 2011
    sget-object v1, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v1}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2012
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2013
    sget-object v1, Lcom/facebook/acra/ReportField;->UID:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method varargs declared-synchronized checkAndSendReports(Landroid/content/Context;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 4

    monitor-enter p0

    .line 1624
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#checkAndSendReports - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1626
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne v3, v2, :cond_0

    .line 1627
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->checkAndSendAcraReports(Landroid/content/Context;)V

    goto :goto_1

    .line 1629
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/acra/ErrorReporter;->checkAndSendCrashAttachments(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    :cond_1
    sget-object p1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "#checkAndSendReports - finish"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1623
    monitor-exit p0

    throw p1
.end method

.method public varargs checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1

    .line 2162
    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 2163
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V

    return-object v0
.end method

.method public checkReportsOnApplicationStart()Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 4

    const/4 v0, 0x1

    .line 2091
    new-array v1, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/facebook/acra/ErrorReporter;->anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    .line 2093
    iget-boolean v1, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v1, v0

    .line 2094
    invoke-virtual {p0, v1}, Lcom/facebook/acra/ErrorReporter;->anyReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2099
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->ALL_REPORT_TYPES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpCustomDataToString(Ljava/util/Map;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 521
    invoke-direct {p0, v0, p1}, Lcom/facebook/acra/ErrorReporter;->dumpCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;)V

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->dumpLazyCustomDataMap(Ljava/lang/StringBuilder;Ljava/util/Map;Ljava/lang/Throwable;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getCrashReportFilesList(Ljava/lang/String;[Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .line 1571
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1572
    sget-object p1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    new-array p1, v1, [Ljava/io/File;

    return-object p1

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1578
    sget-object p1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    new-array p1, v1, [Ljava/io/File;

    return-object p1

    .line 1584
    :cond_1
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for error files in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v0, Lcom/facebook/acra/ErrorReporter$1;

    invoke-direct {v0, p0, p2}, Lcom/facebook/acra/ErrorReporter$1;-><init>(Lcom/facebook/acra/ErrorReporter;[Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1600
    new-array p1, v1, [Ljava/io/File;

    return-object p1

    .line 1602
    :cond_2
    new-instance p2, Lcom/facebook/acra/ErrorReporter$2;

    invoke-direct {p2, p0}, Lcom/facebook/acra/ErrorReporter$2;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDexVerifyBridge()Lcom/facebook/acra/DexVerifyBridge;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDexVerifyBridge:Lcom/facebook/acra/DexVerifyBridge;

    return-object v0
.end method

.method public getLogBridge()Lcom/facebook/acra/LogBridge;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    return-object v0
.end method

.method getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 2260
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_0

    return-object p1

    .line 2265
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2266
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1

    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0, p1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object p1

    return-object p1
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .line 1506
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    .line 1507
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object p1

    return-object p1
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .line 1315
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1316
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v5

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1317
    invoke-direct/range {v1 .. v6}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object p1

    return-object p1
.end method

.method public handleExceptionDelayed(Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1328
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1329
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    return-void
.end method

.method public handleExceptionWithCustomFields(Ljava/lang/Exception;Ljava/util/Map;[Lcom/facebook/acra/ReportField;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/facebook/acra/ReportField;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1524
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_4

    .line 727
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 729
    iput-boolean p2, p0, Lcom/facebook/acra/ErrorReporter;->mIsInternalBuild:Z

    .line 731
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 733
    new-instance p2, Lcom/facebook/acra/util/PackageManagerWrapper;

    invoke-direct {p2, p1}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 734
    invoke-virtual {p2}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 737
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 738
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "not set"

    :goto_0
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 741
    :cond_1
    new-instance v0, Lcom/facebook/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mPackageManager:Lcom/facebook/acra/util/PackageManagerWrapper;

    .line 743
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_ID:Lcom/facebook/acra/ReportField;

    .line 747
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_CODE:Lcom/facebook/acra/ReportField;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_VERSION_NAME:Lcom/facebook/acra/ReportField;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->PACKAGE_NAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->PHONE_MODEL:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->DEVICE:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->ANDROID_VERSION:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->OS_VERSION:Lcom/facebook/acra/ReportField;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->BUILD_HOST:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->BRAND:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->PRODUCT:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "n/a"

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 762
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v2, Lcom/facebook/acra/ReportField;->FILE_PATH:Lcom/facebook/acra/ReportField;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_3

    .line 767
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->SERIAL:Lcom/facebook/acra/ReportField;

    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 770
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_INSTALL_TIME:Lcom/facebook/acra/ReportField;

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    sget-object v1, Lcom/facebook/acra/ReportField;->APP_UPGRADE_TIME:Lcom/facebook/acra/ReportField;

    iget-wide v2, p2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/acra/ErrorReporter;->formatTimestamp(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 777
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to install constants"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const-string p2, "acra-reports"

    const-string v0, "reportfile.prealloc"

    .line 780
    invoke-static {p1, p2, v0}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->preallocFile:Ljava/io/File;

    .line 782
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->createPreallocatedReportFile()V

    :cond_4
    return-void
.end method

.method public isNativeCrashedOnPreviousRun()Z
    .locals 1

    .line 2171
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mHasNativeCrashDumpOnInit:Z

    return v0
.end method

.method public parseVersionCodeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 2026
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->VERSION_CODE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2027
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2028
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

    .line 444
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 446
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2227
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->activityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 1

    .line 2189
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/facebook/acra/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeLazyCustomData(Ljava/lang/String;)Lcom/facebook/acra/CustomReportDataSupplier;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/acra/CustomReportDataSupplier;

    return-object p1
.end method

.method declared-synchronized sendInMemoryReport(Landroid/content/Context;Lcom/facebook/acra/CrashReportData;)V
    .locals 2

    monitor-enter p0

    .line 1778
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Sending in-memory report"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->getProcessNameFromAms()Ljava/lang/String;

    move-result-object v0

    .line 1781
    sget-object v1, Lcom/facebook/acra/ReportField;->UPLOADED_BY_PROCESS:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    invoke-direct {p0, p2}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    .line 1789
    sget-object v0, Lcom/facebook/acra/ReportField;->ACRA_REPORT_FILENAME:Lcom/facebook/acra/ReportField;

    invoke-virtual {p2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string v0, "acra-reports"

    .line 1791
    invoke-static {p1, v0, p2}, Lcom/facebook/acra/ErrorReporter;->fileForName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1792
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1795
    :try_start_2
    sget-object p2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Failed to send in-memory crash report: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1797
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1777
    monitor-exit p0

    throw p1
.end method

.method public setDexVerifyBridge(Lcom/facebook/acra/DexVerifyBridge;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mDexVerifyBridge:Lcom/facebook/acra/DexVerifyBridge;

    return-void
.end method

.method public setLogBridge(Lcom/facebook/acra/LogBridge;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 0

    .line 2198
    iput-wide p1, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    return-void
.end method

.method public setReportProxy(Ljava/net/Proxy;)V
    .locals 3

    .line 2212
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/sender/ReportSender;

    .line 2213
    instance-of v2, v1, Lcom/facebook/acra/sender/FlexibleReportSender;

    if-eqz v2, :cond_0

    .line 2214
    check-cast v1, Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v1, p1}, Lcom/facebook/acra/sender/FlexibleReportSender;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setReportSender(Lcom/facebook/acra/sender/ReportSender;)V
    .locals 0

    .line 2207
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->removeAllReportSenders()V

    .line 2208
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->addReportSender(Lcom/facebook/acra/sender/ReportSender;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 1120
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACRA caught a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Building report."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1125
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->usePreallocatedFile:Z

    .line 1127
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->mProcessingCrash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v1, 0x0

    .line 1131
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "IS_PROCESSING_ANOTHER_EXCEPTION"

    .line 1132
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :catch_1
    :goto_0
    move-object v5, v2

    .line 1139
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getDexVerifyBridge()Lcom/facebook/acra/DexVerifyBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Lcom/facebook/acra/DexVerifyBridge;->verifyDexes()Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 1149
    :cond_0
    invoke-virtual {p0, p2, v5}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1152
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x64

    .line 1156
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 1158
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1162
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->getException()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1164
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ReportsWorkerSender failed with exception"

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    invoke-direct {p0, p2}, Lcom/facebook/acra/ErrorReporter;->getReportFieldsForException(Ljava/lang/Throwable;)[Lcom/facebook/acra/ReportField;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 1169
    invoke-direct/range {v3 .. v8}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;[Lcom/facebook/acra/ReportField;Z)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 1173
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1290
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1291
    invoke-static {p2}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v5

    .line 1292
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1293
    sget-object v3, Lcom/facebook/acra/ACRA;->ALL_CRASH_REPORT_FIELDS:[Lcom/facebook/acra/ReportField;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/acra/ErrorReporter;->gatherCrashData(Ljava/lang/String;Ljava/lang/Throwable;[Lcom/facebook/acra/ReportField;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Ljava/util/Map;)V

    return-void
.end method
