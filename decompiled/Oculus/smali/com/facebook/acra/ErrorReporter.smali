.class public final Lcom/facebook/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Lcom/facebook/common/exceptionhandler/ManagedExceptionHandler;


# annotations
.annotation build Lcom/facebook/annotations/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/ErrorReporter$Api9Utils;,
        Lcom/facebook/acra/ErrorReporter$Api16Utils;,
        Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;,
        Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;,
        Lcom/facebook/acra/ErrorReporter$CrashReportedObserver;,
        Lcom/facebook/acra/ErrorReporter$Holder;,
        Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;,
        Lcom/facebook/acra/ErrorReporter$CrashReportType;,
        Lcom/facebook/acra/ErrorReporter$CrashReportCounter;,
        Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;,
        Lcom/facebook/acra/ErrorReporter$AcraReportHandler;,
        Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;,
        Lcom/facebook/acra/ErrorReporter$ReportHandler;
    }
.end annotation


# static fields
.field public static final ACRA_DIRNAME:Ljava/lang/String; = "acra-reports"

.field private static final ANR_EXTRA_PROPERTIES_EXTENSION:Ljava/lang/String; = ".upd"

.field private static final ANR_REPORTING_LOCK:Ljava/lang/Object;

.field public static final ANR_TRACES_FILE_PATH:Ljava/lang/String; = "/data/anr/traces.txt"

.field public static final CACHED_REPORTFILE_EXTENSION:Ljava/lang/String; = ".cachedreport"

.field public static final CPUSPIN_DIR:Ljava/lang/String; = "traces_cpuspin"

.field public static final CPUSPIN_MAX_REPORT_SIZE:J = 0x80000L

.field public static final CRASH_ATTACHMENT_DUMMY_STACKTRACE:Ljava/lang/String; = "crash attachment"

.field public static final DEFAULT_MAX_REPORT_SIZE:J = 0x180000L

.field public static final DEFAULT_OOM_RESERVATION:I = 0x10000

.field public static final DUMPFILE_EXTENSION:Ljava/lang/String; = ".dmp"

.field public static final DUMP_DIR:Ljava/lang/String; = "minidumps"

.field private static final FILE_IAB_OPEN_TIMES:Ljava/lang/String; = "iab_open_times"

.field private static final FILE_LAST_ACTIVITY:Ljava/lang/String; = "last_activity_opened"

.field private static final HANDLE_EXCEPTION_NEVER_SEND_IMMEDIATELY:I = 0x4

.field private static final HANDLE_EXCEPTION_SEND_IMMEDIATELY:I = 0x1

.field private static final HANDLE_EXCEPTION_SEND_SYNCHRONOUSLY:I = 0x2

.field public static final MAX_ANR_TRACES_TIME_DELTA_MS:I = 0x3a98

.field public static final MAX_REPORT_AGE:J = 0x240c8400L

.field public static final MAX_SEND_REPORTS:I = 0x5

.field private static final MAX_TRACE_COUNT_LIMIT:I = 0x14

.field private static final MAX_TRANSLATION_HOOK_RUNS:I = 0x4

.field private static final MAX_VERSION_LINE_LENGTH:I = 0x14

.field private static final MS_PER_DAY:J = 0x5265c00L

.field public static final NATIVE_MAX_REPORT_SIZE:J = 0x800000L

.field private static final NO_FILE:Ljava/lang/String; = "NO_FILE"

.field public static final NUM_NATIVE_CRASHES_SAVED:J = 0x5L

.field public static final PREALLOCATED_REPORTFILE:Ljava/lang/String; = "reportfile.prealloc"

.field public static final REPORTED_CRASH_DIR:Ljava/lang/String; = "reported_crashes"

.field public static final REPORTFILE_EXTENSION:Ljava/lang/String; = ".stacktrace"

.field private static final REPORTS_TO_CHECK_ON_STARTUP:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final REPORT_COUNT_FILENAME:Ljava/lang/String; = "report_count"

.field public static final SIGQUIT_DIR:Ljava/lang/String; = "traces"

.field public static final SIGQUIT_MAX_REPORT_SIZE:J = 0x80000L

.field private static final SIGQUIT_PROCESS_NAME_BUFFER_SIZE:I = 0x400

.field public static final TAG:Ljava/lang/String; = "ErrorReporter"

.field private static final UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

.field public static final UNKNOWN_FIELD_VALUE:Ljava/lang/String; = "unknown"

.field private static final mInternalException:Ljava/lang/String; = "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

.field private static final mSendAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final mSigquitCmdLinePattern:Ljava/util/regex/Pattern;


# instance fields
.field private volatile mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

.field private final mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

.field private final mAnrFilesInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppStartDate:Landroid/text/format/Time;

.field private volatile mAppStartTickTimeMs:J

.field private volatile mAppVersionCode:Ljava/lang/String;

.field private volatile mAppVersionName:Ljava/lang/String;

.field private mBatchUploader:Lcom/facebook/acra/BatchUploader;

.field private mBlackBoxRecorderControl:Lcom/facebook/acra/BlackBoxRecorderControl;

.field private volatile mChainedHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private volatile mClientUserId:Ljava/lang/String;

.field private volatile mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

.field private volatile mConstantFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mContext:Landroid/content/Context;

.field private final mCrashReportedObserver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/acra/ErrorReporter$CrashReportedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mExceptionTranslationHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/acra/ExceptionTranslationHook;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mExcludedReportObserver:Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mFinishedCheckingReports:Z

.field private volatile mInitializationComplete:Z

.field private volatile mInstallTime:J

.field private final mInstanceLazyCustomParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLogBridge:Lcom/facebook/acra/LogBridge;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile mMaxReportSize:J

.field private volatile mOomReservation:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPendingReportWriters:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private volatile mPreallocFileName:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReportSenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mStartedBatchUploader:Z

.field private volatile mUserId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mSendAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 232
    const-string v0, "^Cmd line: (.*)"

    const/16 v1, 0x8

    .line 233
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->mSigquitCmdLinePattern:Ljava/util/regex/Pattern;

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    .line 276
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->ANR_REPORTING_LOCK:Ljava/lang/Object;

    .line 681
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/ErrorReporter;->REPORTS_TO_CHECK_ON_STARTUP:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    .line 261
    iput-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mOomReservation:[B

    .line 271
    const-wide/32 v0, 0x180000

    iput-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    .line 337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    .line 984
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    .line 1012
    iput-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mPreallocFileName:Ljava/io/File;

    .line 1015
    new-instance v0, Lcom/facebook/acra/util/SimpleTraceLogger;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/facebook/acra/util/SimpleTraceLogger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    .line 1024
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    .line 1026
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mExceptionTranslationHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1029
    iput-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mExcludedReportObserver:Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;

    .line 1889
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mCrashReportedObserver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/acra/ErrorReporter$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/Spool$FileBeingConsumed;)Lcom/facebook/acra/CrashReportData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->loadAcraCrashReport(Lcom/facebook/acra/Spool$FileBeingConsumed;)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/acra/ErrorReporter;Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/acra/ErrorReporter;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->startUploadIfReady()V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/acra/ErrorReporter;)Lcom/facebook/acra/BatchUploader;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mBatchUploader:Lcom/facebook/acra/BatchUploader;

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/acra/ErrorReporter;)Z
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->shouldReportANRs()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/acra/ErrorReporter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/facebook/acra/ErrorReporter;->purgeDirectory(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mSendAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$908(Lcom/facebook/acra/ErrorReporter;)I
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/facebook/acra/ErrorReporter;->mPendingReportWriters:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/acra/ErrorReporter;->mPendingReportWriters:I

    return v0
.end method

.method static synthetic access$910(Lcom/facebook/acra/ErrorReporter;)I
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/facebook/acra/ErrorReporter;->mPendingReportWriters:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/facebook/acra/ErrorReporter;->mPendingReportWriters:I

    return v0
.end method

.method private addCriticalData()V
    .locals 4

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/criticaldata/CriticalAppData;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/acra/criticaldata/CriticalAppData;->getClientUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1342
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/acra/criticaldata/CriticalAppData;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1343
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1344
    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->setUserId(Ljava/lang/String;)V

    .line 1346
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1347
    invoke-virtual {p0, v1}, Lcom/facebook/acra/ErrorReporter;->setClientUserId(Ljava/lang/String;)V

    .line 1349
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1350
    const-string v0, "marauder_device_id"

    invoke-static {v0, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/criticaldata/CriticalAppData;->getAdditionalParamValues(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 1354
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1357
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_4
    return-void
.end method

.method private attachIabInfo(Lcom/facebook/acra/CrashReportData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "iab_open_times"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3172
    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 3173
    const-string v2, "NO_FILE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3175
    const-string v1, "IAB_OPEN_TIMES"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3179
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3180
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3182
    :cond_1
    return-void

    .line 3176
    :cond_2
    if-eqz v1, :cond_0

    .line 3177
    const-string v2, "IAB_OPEN_TIMES"

    invoke-virtual {p1, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private attachLastActivityInfo(Lcom/facebook/acra/CrashReportData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3152
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "last_activity_opened"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3153
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3154
    const-string v0, "LAST_ACTIVITY_LOGGED"

    const-string v1, "NO_FILE"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    :cond_0
    :goto_0
    return-void

    .line 3156
    :cond_1
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 3157
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v1, 0x400

    invoke-direct {v4, v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 3158
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 3159
    if-eqz v5, :cond_2

    .line 3160
    const-string v6, "LAST_ACTIVITY_LOGGED"

    invoke-virtual {p1, v6, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    const-string v5, "LAST_ACTIVITY_LOGGED_TIME"

    .line 3162
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 3161
    invoke-virtual {p1, v5, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 3165
    if-eqz v4, :cond_3

    if-eqz v2, :cond_5

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3166
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3165
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3156
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3166
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_9

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_3
    throw v0

    .line 3165
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 3166
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 3157
    :catch_3
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3165
    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_6
    :goto_5
    :try_start_a
    throw v0

    :catch_4
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 3166
    :cond_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_3

    .line 3165
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method private buildAttachmentWrapperCrashReport(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/Spool$FileBeingConsumed;Ljava/io/Writer;Z)V
    .locals 8
    .param p3    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    .line 2595
    :try_start_0
    const-string v0, "ACRA_REPORT_TYPE"

    invoke-virtual {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2596
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v2, "crash attachment"

    new-instance v3, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/facebook/acra/ErrorReporter$CrashAttachmentException;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/ErrorReporter$1;)V

    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p2, v0, :cond_0

    move-object v6, p3

    :cond_0
    move-object v0, p0

    move-object v4, p1

    move-object v5, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Lcom/facebook/acra/Spool$FileBeingConsumed;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    :goto_0
    return-void

    .line 2605
    :catch_0
    move-exception v0

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieve exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2608
    const-string v1, "REPORT_LOAD_THROW"

    invoke-static {v1, v0, p1, p4}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto :goto_0
.end method

.method private buildCachedCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Ljava/lang/String;Ljava/io/File;Lcom/facebook/acra/FileGenerator;)I
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2864
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->shouldSkipReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    :cond_0
    :goto_0
    return v6

    .line 2867
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 2868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stackTrace and traceFile can\'t be null at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2873
    :cond_2
    if-eqz p2, :cond_6

    .line 2874
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/facebook/acra/ErrorReporter;->createCrashReportFromStackTrace(Ljava/lang/String;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;

    move-result-object v2

    .line 2883
    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->maybeSendCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/FileGenerator;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v0, v6

    .line 2896
    if-eqz v2, :cond_4

    .line 2897
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V

    .line 2899
    :cond_4
    if-eqz p3, :cond_5

    .line 2900
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    :cond_5
    :goto_1
    move v6, v0

    .line 2903
    goto :goto_0

    .line 2875
    :cond_6
    if-eqz p3, :cond_3

    .line 2876
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->mustEmbedAttachments(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v0

    .line 2877
    invoke-direct {p0, p3, p1, v0}, Lcom/facebook/acra/ErrorReporter;->loadCrashAttachment(Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;Z)Lcom/facebook/acra/CrashReportData;

    move-result-object v2

    .line 2878
    if-nez v2, :cond_3

    .line 2879
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to load crash attachment report %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v0, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2896
    if-eqz v2, :cond_7

    .line 2897
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V

    .line 2899
    :cond_7
    if-eqz p3, :cond_0

    .line 2900
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    goto :goto_0

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to build cached crash report"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2886
    if-eqz p3, :cond_8

    .line 2887
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2889
    :cond_8
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2890
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANRValidationError<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2892
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "::Non-cached>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2893
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2890
    invoke-static {v0, v1, v3, p0}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2896
    if-eqz v2, :cond_9

    .line 2897
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V

    .line 2899
    :cond_9
    if-eqz p3, :cond_c

    .line 2900
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    move v0, v6

    goto :goto_1

    .line 2896
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    .line 2897
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V

    .line 2899
    :cond_a
    if-eqz p3, :cond_b

    .line 2900
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    :cond_b
    throw v0

    :cond_c
    move v0, v6

    goto/16 :goto_1
.end method

.method private cancelBlockingNotification()V
    .locals 2

    .prologue
    .line 3686
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3687
    return-void
.end method

.method private checkAndHandleReportsLocked(ILcom/facebook/acra/ErrorReporter$CrashReportType;Z)I
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2517
    invoke-virtual {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getHandler()Lcom/facebook/acra/ErrorReporter$ReportHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2518
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ErrorReporter::checkAndHandleReportsLocked report type requires a handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2524
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/CrashTimeDataCollector;->getProcessNameFromAms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 2528
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1400(Lcom/facebook/acra/ErrorReporter$CrashReportType;Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v7

    move v0, v1

    move v5, v1

    .line 2529
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    if-ge v5, p1, :cond_5

    .line 2530
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->next()Lcom/facebook/acra/Spool$FileBeingConsumed;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    const/4 v9, 0x0

    .line 2531
    add-int/lit8 v4, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    .line 2537
    :try_start_1
    iget-object v0, v8, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2566
    if-eqz v8, :cond_10

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v0, v4

    goto :goto_0

    .line 2542
    :cond_2
    :try_start_4
    iget-object v0, v8, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    move-object v3, v0

    .line 2547
    :goto_1
    :try_start_5
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    .line 2548
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v0

    if-eqz v0, :cond_11

    .line 2549
    const/4 v0, 0x1

    .line 2550
    if-eqz p3, :cond_4

    .line 2566
    if-eqz v8, :cond_10

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v0, v4

    goto :goto_0

    .line 2543
    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_1

    .line 2566
    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v0, v4

    goto :goto_0

    .line 2555
    :cond_4
    :try_start_8
    iget-object v10, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2560
    :goto_2
    invoke-virtual {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getHandler()Lcom/facebook/acra/ErrorReporter$ReportHandler;

    move-result-object v3

    .line 2561
    invoke-interface {v3, p0, v8, v6, v0}, Lcom/facebook/acra/ErrorReporter$ReportHandler;->handleReport(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/Spool$FileBeingConsumed;Ljava/lang/String;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v0

    if-nez v0, :cond_9

    .line 2566
    if-eqz v8, :cond_5

    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2568
    :cond_5
    :goto_3
    if-eqz v7, :cond_6

    if-eqz v2, :cond_e

    :try_start_a
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8

    .line 2570
    :cond_6
    :goto_4
    return v5

    .line 2566
    :catch_3
    move-exception v0

    :try_start_b
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 2528
    :catch_4
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2568
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v7, :cond_7

    if-eqz v2, :cond_f

    :try_start_d
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    :cond_7
    :goto_6
    throw v0

    .line 2566
    :cond_8
    :try_start_e
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    .line 2568
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 2565
    :cond_9
    add-int/lit8 v0, v5, 0x1

    .line 2566
    if-eqz v8, :cond_a

    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_a
    :goto_7
    move v5, v0

    move v0, v4

    goto/16 :goto_0

    :catch_5
    move-exception v3

    :try_start_10
    invoke-virtual {v9, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_7

    .line 2530
    :catch_6
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2566
    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_8
    if-eqz v8, :cond_c

    if-eqz v1, :cond_d

    :try_start_12
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_c
    :goto_9
    :try_start_13
    throw v0

    :catch_7
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v8}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_9

    .line 2568
    :catch_8
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->close()V

    goto :goto_4

    :catch_9
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v7}, Lcom/facebook/acra/Spool$Snapshot;->close()V

    goto :goto_6

    .line 2566
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :cond_10
    move v0, v4

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_2
.end method

.method private checkDeathmonReports()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 3610
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 3656
    :cond_0
    :goto_0
    return-void

    .line 3614
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/acra/criticaldata/CriticalAppData;->getDeathmonLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3617
    :try_start_0
    new-instance v0, Lcom/facebook/acra/ErrorReporter$4;

    invoke-direct {v0, p0}, Lcom/facebook/acra/ErrorReporter$4;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    .line 3618
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 3630
    if-eqz v5, :cond_0

    .line 3635
    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v7, v5, v3

    .line 3638
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3639
    const/16 v1, 0x5f

    .line 3641
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v8, 0x2e

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 3640
    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 3646
    :goto_2
    if-eqz v0, :cond_2

    .line 3647
    :try_start_2
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v7}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6

    const/4 v1, 0x0

    .line 3648
    :try_start_3
    const-string v9, "\\Z"

    invoke-virtual {v8, v9}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v9

    .line 3649
    new-instance v10, Ljava/lang/Throwable;

    invoke-direct {v10}, Ljava/lang/Throwable;-><init>()V

    const-string v11, "deathmon_logcat"

    invoke-static {v10, v11, v9, v0, p0}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3650
    if-eqz v8, :cond_2

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6

    .line 3654
    :cond_2
    :goto_3
    invoke-static {v7}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    .line 3635
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 3625
    :catch_0
    move-exception v0

    .line 3626
    const-string v2, "ErrorReporter"

    const-string v3, "Can\'t list files in %s"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v2, v0, v3, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3642
    :catch_1
    move-exception v0

    .line 3643
    const-string v1, "ErrorReporter"

    const-string v8, "couldn\'t generate session ID from deathmon logcat filename"

    invoke-static {v1, v0, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    .line 3650
    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_3

    :catch_3
    move-exception v0

    .line 3651
    :goto_4
    const-string v1, "ErrorReporter"

    const-string v8, "Can\'t read contents of %s"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v1, v0, v8, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 3650
    :cond_3
    :try_start_6
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    .line 3647
    :catch_5
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3650
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_5
    if-eqz v8, :cond_4

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_6
    :try_start_9
    throw v0

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v8

    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method private checkNativeReportsOnApplicationStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3522
    new-array v0, v7, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v0

    .line 3523
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v1}, Lcom/facebook/acra/config/AcraReportingConfig;->getMaxPendingMiniDumpReports()I

    move-result v1

    .line 3524
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_0

    if-le v0, v1, :cond_0

    .line 3526
    const-string v2, "ErrorReporter"

    const-string v3, "Minidump count above threshold %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3527
    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sub-int v1, v0, v1

    invoke-direct {p0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->removeCrashFiles(Lcom/facebook/acra/ErrorReporter$CrashReportType;I)V

    .line 3530
    :cond_0
    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 3531
    new-instance v2, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    new-array v0, v7, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v6

    invoke-direct {v2, p0, v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 3532
    const/4 v0, 0x0

    .line 3533
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_3

    .line 3534
    invoke-static {}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->saveStrictMode()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 3535
    invoke-static {}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->disableStrictMode()V

    .line 3538
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->doSend()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3542
    if-eqz v1, :cond_1

    .line 3543
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->restoreStrictMode(Ljava/lang/Object;)V

    .line 3547
    :cond_1
    :goto_1
    return-void

    .line 3539
    :catch_0
    move-exception v0

    .line 3540
    :try_start_1
    const-string/jumbo v2, "sending native reports on app launch"

    invoke-direct {p0, v2, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3542
    if-eqz v1, :cond_1

    .line 3543
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->restoreStrictMode(Ljava/lang/Object;)V

    goto :goto_1

    .line 3542
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 3543
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->restoreStrictMode(Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method private closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V
    .locals 3

    .prologue
    .line 2979
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2980
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/util/InputStreamField;

    .line 2981
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/acra/util/InputStreamField;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2983
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/acra/util/InputStreamField;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2984
    :catch_0
    move-exception v0

    goto :goto_0

    .line 2989
    :cond_1
    return-void
.end method

.method public static containsKeyInCustomData(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1176
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createBackUpDirectory(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/io/File;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2630
    const/4 v1, 0x0

    .line 2632
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1600(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 2633
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reported_crashes"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2635
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2641
    :cond_0
    :goto_0
    return-object v0

    .line 2637
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 2638
    :goto_1
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to create backup directory %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "reported_crashes"

    aput-object v5, v4, v6

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2637
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private createCrashReportFromStackTrace(Ljava/lang/String;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/CrashReportData;
    .locals 5

    .prologue
    .line 3383
    new-instance v1, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v1}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 3384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3385
    const-string v0, "TIME_OF_CRASH"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3388
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/acra/util/AttachmentUtil;->compressToBase64String([B)Ljava/lang/String;

    move-result-object v0

    .line 3389
    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3396
    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/acra/ErrorReporter;->backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V

    .line 3397
    return-object v1

    .line 3390
    :catch_0
    move-exception v0

    .line 3391
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3392
    const-string v2, "REPORT_LOAD_THROW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "throwable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3393
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not load crash report. File will be deleted."

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static deleteFile(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 3446
    if-nez p0, :cond_0

    .line 3457
    :goto_0
    return v1

    .line 3449
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 3450
    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3453
    :cond_1
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Deleting error report: %s"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3454
    if-nez v0, :cond_2

    .line 3455
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not delete error report: %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v1, v0

    .line 3457
    goto :goto_0
.end method

.method private varargs discardOverlappingReports([Lcom/facebook/acra/ErrorReporter$CrashReportType;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2350
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 2351
    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne v3, v4, :cond_2

    .line 2353
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v3

    .line 2354
    if-lez v3, :cond_2

    .line 2355
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "traces"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/acra/ErrorReporter;->purgeDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 2360
    :cond_1
    return-void

    .line 2350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private foregroundNativeCrashDetect(Lcom/facebook/acra/Spool$FileBeingConsumed;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 3005
    :try_start_0
    new-instance v1, Lcom/facebook/acra/util/MinidumpReader;

    iget-object v2, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 3006
    const-string v2, "APP_STARTED_IN_BACKGROUND"

    invoke-virtual {v1, v2}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3007
    if-eqz v2, :cond_0

    const-string v3, "false"

    .line 3008
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 3009
    :cond_0
    const v2, -0x5313334

    invoke-virtual {v1, v2}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3011
    if-eqz v1, :cond_1

    const-string v2, "Resumed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v0, "\"activities\":[]"

    .line 3014
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 3015
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "FacebookApplication"

    const/4 v2, 0x0

    .line 3016
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3018
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "crash_foreground_timestamp"

    iget-object v2, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3019
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    :cond_3
    :goto_0
    return-void

    .line 3021
    :catch_0
    move-exception v0

    .line 3022
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error writing into the SharedPreferences"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private genCrashReportFileName(Ljava/lang/Class;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2336
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1166
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/facebook/acra/ErrorReporter;
    .locals 1

    .prologue
    .line 1255
    sget-object v0, Lcom/facebook/acra/ErrorReporter$Holder;->ERROR_REPORTER:Lcom/facebook/acra/ErrorReporter;

    return-object v0
.end method

.method private getLeanStackTraceIfNecessary(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1836
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->enableLeanCrashReporting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    invoke-static {p1}, Lcom/facebook/stacktracer/LeanStackTracer;->collectRawStackTrace(Ljava/lang/Throwable;)Lcom/facebook/stacktracer/LeanStackTracer$LeanStackTrace;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLogcatFileName(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2766
    const/4 v0, 0x0

    .line 2767
    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p1, v1, :cond_0

    .line 2769
    :try_start_0
    new-instance v1, Lcom/facebook/acra/util/MinidumpReader;

    iget-object v2, p0, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v1, v2}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 2770
    const-string v2, "logcatFileName"

    invoke-virtual {v1, v2}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2775
    :cond_0
    :goto_0
    return-object v0

    .line 2771
    :catch_0
    move-exception v1

    .line 2772
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to find logcat file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    aput-object v6, v4, v5

    invoke-static {v2, v1, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 3768
    instance-of v0, p0, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_1

    .line 3777
    :cond_0
    return-object p0

    .line 3773
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3774
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSendAttempts()I
    .locals 1

    .prologue
    .line 1103
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->mSendAttempts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private handleExceptionInternal(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;ILcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 12
    .param p2    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1910
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mInitializationComplete:Z

    if-nez v0, :cond_0

    .line 1911
    const/4 v0, 0x0

    .line 2179
    :goto_0
    return-object v0

    .line 1932
    :cond_0
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1933
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1934
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1939
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1943
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1945
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_18

    .line 1946
    or-int/lit8 v0, p4, 0x4

    .line 1949
    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 1950
    and-int/lit8 v0, v0, -0x4

    .line 1953
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/facebook/acra/CrashReportData;->throwAwayWrites:Z

    :cond_1
    move v8, v0

    .line 1958
    instance-of v0, p1, Lcom/facebook/acra/NonCrashException;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/facebook/acra/NonCrashException;

    .line 1960
    invoke-interface {v0}, Lcom/facebook/acra/NonCrashException;->getExceptionFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 1962
    :goto_2
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling exception for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1, p3}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1964
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Generating report file for %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1966
    const/4 v3, 0x0

    .line 1967
    const/4 v1, 0x0

    .line 1972
    const/4 v6, 0x0

    .line 1973
    const/4 v9, 0x0

    .line 1974
    const/4 v2, 0x0

    .line 1975
    const/4 v5, 0x0

    .line 1978
    :try_start_1
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    iget-object v10, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getSpool(Landroid/content/Context;)Lcom/facebook/acra/Spool;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    move-object v6, v0

    .line 1984
    :goto_3
    if-eqz v6, :cond_17

    move-object v0, v1

    move-object v1, v3

    .line 1986
    :goto_4
    if-nez v9, :cond_3

    .line 1987
    :try_start_2
    invoke-static {}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->generateReportUuid()Ljava/util/UUID;

    move-result-object v1

    .line 1988
    const-string v0, ".stacktrace"

    .line 1989
    invoke-direct {p0, v7, v1, v0}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1990
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mPreallocFileName:Ljava/io/File;

    invoke-virtual {v6, v0, v3}, Lcom/facebook/acra/Spool;->produceWithDonorFile(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/acra/Spool$FileBeingProduced;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    goto :goto_4

    .line 1934
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1960
    :cond_2
    const-string v0, "crash"

    goto :goto_2

    .line 1979
    :catch_0
    move-exception v0

    .line 1980
    :try_start_4
    iput-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 1981
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2177
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-direct {p0, v5}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    .line 2178
    invoke-direct {p0, v1}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    .line 2179
    invoke-direct {p0, v9}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    move-object v3, v0

    .line 1999
    :goto_6
    if-eqz v9, :cond_12

    .line 2001
    :try_start_5
    new-instance v10, Ljava/io/FileOutputStream;

    iget-object v0, v9, Lcom/facebook/acra/Spool$FileBeingProduced;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2008
    :goto_7
    if-eqz v10, :cond_4

    .line 2010
    :try_start_6
    invoke-static {v10}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v5

    .line 2018
    :cond_4
    :goto_8
    if-nez v1, :cond_16

    .line 2019
    :try_start_7
    invoke-static {}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->generateReportUuid()Ljava/util/UUID;

    move-result-object v0

    .line 2022
    :goto_9
    const-string v1, "ACRA_REPORT_TYPE"

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 2024
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v2, "ACRA_REPORT_FILENAME"

    invoke-interface {v1, v2}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 2025
    const-string v1, "ACRA_REPORT_FILENAME"

    invoke-static {v1, v3, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 2028
    :cond_5
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v1}, Lcom/facebook/acra/config/AcraReportingConfig;->enableLeanCrashReporting()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p5, :cond_6

    .line 2029
    const-string v1, "STACK_TRACE_OFFSETS"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 2032
    :cond_6
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v2, "REPORT_ID"

    invoke-interface {v1, v2}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2033
    const-string v1, "REPORT_ID"

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 2036
    :cond_7
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "EXCEPTION_CAUSE"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2037
    const-string v0, "EXCEPTION_CAUSE"

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2040
    :cond_8
    if-nez p3, :cond_15

    .line 2042
    :try_start_8
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object p3

    move-object v2, p3

    .line 2048
    :goto_a
    if-eqz p2, :cond_a

    .line 2056
    :try_start_9
    invoke-virtual {p2}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2057
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-static {v1, v4, v3}, Lcom/facebook/acra/CrashTimeDataCollector;->shouldAddField(Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/config/AcraReportingConfig;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v1

    if-eqz v1, :cond_9

    .line 2059
    :try_start_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_b

    .line 2060
    :catch_1
    move-exception v1

    .line 2061
    :try_start_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0, v1}, Lcom/facebook/acra/CrashTimeDataCollector;->noteReportFieldFailure(Lcom/facebook/acra/CrashReportData;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_b

    .line 2065
    :catch_2
    move-exception v0

    .line 2066
    :try_start_c
    const-string v1, "pre-populating fields from draft"

    invoke-direct {p0, v1, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2070
    :cond_a
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Lcom/facebook/acra/Spool$FileBeingConsumed;Z)V

    .line 2076
    if-eqz p2, :cond_c

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result v0

    if-eqz v0, :cond_c

    .line 2078
    :try_start_d
    invoke-virtual {p2}, Lcom/facebook/acra/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2079
    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2080
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/facebook/acra/CrashReportData;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/facebook/acra/ErrorReporter;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2081
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Crash report field %s overwritten in CrashTimeDataCollector"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 2084
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v7

    .line 2081
    invoke-static {v1, v3, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    .line 2088
    :catch_3
    move-exception v0

    .line 2089
    :try_start_e
    const-string v1, "error while validating crash report fields"

    invoke-direct {p0, v1, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2107
    :cond_c
    :goto_d
    if-eqz v5, :cond_e

    .line 2109
    :try_start_f
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 2110
    if-eqz v10, :cond_d

    .line 2111
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    .line 2116
    :cond_d
    iget-object v0, v9, Lcom/facebook/acra/Spool$FileBeingProduced;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2126
    :cond_e
    :goto_e
    :try_start_10
    iget-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    if-eqz v0, :cond_f

    .line 2127
    const-string v0, "GENERATING_IO_ERROR"

    iget-object v1, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 2129
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2127
    invoke-static {v0, v1, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    .line 2138
    :cond_f
    iget-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    if-eqz v0, :cond_10

    and-int/lit8 v0, v8, 0x4

    if-nez v0, :cond_10

    .line 2140
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldImmediatelyUpload()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-result v0

    if-eqz v0, :cond_10

    .line 2141
    or-int/lit8 v8, v8, 0x1

    .line 2145
    :cond_10
    const/4 v0, 0x0

    .line 2147
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_14

    .line 2151
    :try_start_11
    const-string v1, "SENT_IMMEDIATELY"

    const-string/jumbo v2, "true"

    invoke-virtual {v4, v1, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    new-instance v1, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v1, p0, v4, v9}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingProduced;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 2153
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_13

    .line 2154
    :try_start_12
    invoke-virtual {v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->doSend()V

    .line 2156
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mCrashReportedObserver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter$CrashReportedObserver;

    .line 2157
    if-eqz v0, :cond_11

    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->access$1300(Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;)Lcom/facebook/acra/CrashReportData;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2159
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->access$1300(Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;)Lcom/facebook/acra/CrashReportData;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/acra/ErrorReporter$CrashReportedObserver;->onCrashReported(Lcom/facebook/acra/CrashReportData;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :cond_11
    move-object v0, v1

    move-object v1, v9

    :goto_f
    move-object v9, v1

    .line 2177
    :goto_10
    invoke-direct {p0, v5}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    .line 2178
    invoke-direct {p0, v10}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    .line 2179
    invoke-direct {p0, v9}, Lcom/facebook/acra/ErrorReporter;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1992
    :catch_4
    move-exception v0

    .line 1993
    :try_start_13
    iput-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 1994
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    .line 1995
    const/4 v0, 0x0

    move-object v3, v0

    goto/16 :goto_6

    .line 2002
    :catch_5
    move-exception v0

    .line 2003
    iput-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 2004
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_12
    move-object v10, v2

    goto/16 :goto_7

    .line 2011
    :catch_6
    move-exception v0

    .line 2012
    :try_start_14
    iput-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 2013
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2177
    :catchall_2
    move-exception v0

    move-object v1, v10

    goto/16 :goto_5

    .line 2043
    :catch_7
    move-exception v0

    move-object v2, p3

    goto/16 :goto_a

    .line 2092
    :catch_8
    move-exception v0

    .line 2098
    const-string v1, "gathering crash data"

    invoke-direct {p0, v1, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 2100
    :try_start_15
    const-string v1, "ACRA_INTERNAL"

    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_d

    .line 2101
    :catch_9
    move-exception v0

    .line 2102
    :try_start_16
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    .line 2103
    const-string v0, "ACRA_INTERNAL"

    const-string v1, "ACRA_INTERNAL=java.lang.Exception: An exception occurred while trying to collect data about an ACRA internal error\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:810)\n\tat com.facebook.acra.ErrorReporter.handleException(ErrorReporter.java:866)\n\tat com.facebook.acra.ErrorReporter.uncaughtException(ErrorReporter.java:666)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:693)\n\tat java.lang.ThreadGroup.uncaughtException(ThreadGroup.java:690)\n"

    invoke-static {v0, v1, v4, v5}, Lcom/facebook/acra/ErrorReporter;->put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V

    goto/16 :goto_d

    .line 2118
    :catch_a
    move-exception v0

    .line 2119
    iput-object v0, v4, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    .line 2120
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto/16 :goto_e

    .line 2163
    :cond_13
    :try_start_17
    invoke-virtual {v1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 2164
    const/4 v0, 0x0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 2167
    goto :goto_f

    .line 2165
    :catch_b
    move-exception v0

    .line 2166
    :try_start_18
    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 2170
    :catch_c
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 2173
    :goto_11
    :try_start_19
    const-string/jumbo v2, "sending in-memory report"

    invoke-direct {p0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    goto :goto_10

    .line 2170
    :catch_d
    move-exception v1

    goto :goto_11

    :cond_14
    move-object v1, v9

    goto :goto_f

    :cond_15
    move-object v2, p3

    goto/16 :goto_a

    :cond_16
    move-object v0, v1

    goto/16 :goto_9

    :cond_17
    move-object v11, v1

    move-object v1, v3

    move-object v3, v11

    goto/16 :goto_6

    :cond_18
    move/from16 v0, p4

    goto/16 :goto_1
.end method

.method private isConnectedToWifi()Z
    .locals 4

    .prologue
    .line 3112
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 3113
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3115
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3118
    :goto_0
    return v0

    .line 3116
    :catch_0
    move-exception v0

    .line 3117
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error retrieving wifi state"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepNLatestDumpFiles(Ljava/io/File;)I
    .locals 10
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 2651
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2677
    :cond_0
    return v0

    .line 2654
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 2655
    if-eqz v3, :cond_0

    .line 2659
    new-instance v1, Lcom/facebook/acra/ErrorReporter$2;

    invoke-direct {v1, p0}, Lcom/facebook/acra/ErrorReporter$2;-><init>(Lcom/facebook/acra/ErrorReporter;)V

    invoke-static {v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2671
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 2672
    add-int/lit8 v2, v2, 0x1

    int-to-long v6, v2

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 2673
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2674
    add-int/lit8 v0, v0, 0x1

    .line 2671
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private loadAcraCrashReport(Lcom/facebook/acra/Spool$FileBeingConsumed;)Lcom/facebook/acra/CrashReportData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3137
    sget-object v3, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    iget-wide v4, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashAttachment(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Z)Lcom/facebook/acra/CrashReportData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3148
    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1800(Lcom/facebook/acra/ErrorReporter$CrashReportType;)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashAttachment(Ljava/io/File;Lcom/facebook/acra/ErrorReporter$CrashReportType;Z)Lcom/facebook/acra/CrashReportData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3142
    const/4 v2, 0x0

    invoke-static {p2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1800(Lcom/facebook/acra/ErrorReporter$CrashReportType;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Ljava/io/File;Ljava/io/RandomAccessFile;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashReport(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3357
    iget-object v1, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    move-object v0, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/acra/ErrorReporter;->loadCrashReport(Ljava/io/File;Ljava/io/RandomAccessFile;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;

    move-result-object v0

    return-object v0
.end method

.method private loadCrashReport(Ljava/io/File;Ljava/io/RandomAccessFile;Lcom/facebook/acra/ErrorReporter$CrashReportType;JZ)Lcom/facebook/acra/CrashReportData;
    .locals 18
    .param p2    # Ljava/io/RandomAccessFile;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3212
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    .line 3213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3214
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 3215
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 3216
    const/4 v5, 0x0

    .line 3217
    new-instance v3, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v3}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 3218
    const-string v2, "TIME_OF_CRASH"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3221
    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/acraconfig/AcraConfig;->shouldReportOldANRs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3222
    const/4 v2, 0x0

    .line 3226
    :goto_0
    const/4 v4, 0x0

    .line 3227
    const-string v8, "MINIDUMP"

    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v9, "MINIDUMP"

    .line 3228
    invoke-interface {v8, v9}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3229
    const-string v2, "CONFIG_DONT_REPORT_DUMP"

    .line 3236
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/facebook/acraconfig/AcraConfig;->shouldDeleteCorruptedMinidumps(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_0

    .line 3240
    :try_start_0
    new-instance v4, Lcom/facebook/acra/util/MinidumpReader;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 3241
    invoke-virtual {v4}, Lcom/facebook/acra/util/MinidumpReader;->checkIfMinidumpCorrupted()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 3242
    const-string v2, "CORRUPTED_MINIDUMP"

    .line 3243
    invoke-virtual {v4}, Lcom/facebook/acra/util/MinidumpReader;->getJavaStack()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    move-object v5, v4

    .line 3249
    :cond_0
    :goto_3
    if-eqz v2, :cond_8

    .line 3250
    sget-object v4, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "deleting crash report %s: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v4, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3251
    invoke-static/range {p1 .. p1}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    .line 3252
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3253
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    :cond_1
    const-string v4, "MINIDUMP_EXCLUDE_REASON"

    invoke-virtual {v3, v4, v2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    if-eqz v5, :cond_2

    .line 3259
    const-string v2, "JAVA_STACK_FROM_DUMP"

    invoke-virtual {v3, v2, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/acra/ErrorReporter;->mExcludedReportObserver:Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;

    .line 3262
    if-eqz v2, :cond_3

    .line 3264
    :try_start_1
    invoke-interface {v2, v3}, Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;->onExclude(Lcom/facebook/acra/CrashReportData;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3335
    :cond_3
    :goto_4
    return-object v3

    .line 3224
    :cond_4
    sub-long/2addr v8, v10

    const-wide/32 v10, 0x240c8400

    cmp-long v2, v8, v10

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3230
    :cond_6
    if-eqz v2, :cond_7

    .line 3231
    const-string v2, "DUMP_TOO_OLD"

    goto :goto_1

    .line 3232
    :cond_7
    cmp-long v2, v6, p4

    if-lez v2, :cond_19

    .line 3233
    const-string v2, "ATTACHMENT_ORIGINAL_SIZE"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    const-string v2, "DUMP_TOO_BIG"

    goto :goto_1

    .line 3245
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v16

    .line 3246
    sget-object v8, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Failed to read minidump file"

    invoke-static {v8, v2, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_3

    .line 3265
    :catch_1
    move-exception v2

    .line 3266
    const-string v4, "ErrorReporter"

    const-string v5, "Exception in observer"

    invoke-static {v4, v5, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3273
    :cond_8
    if-eqz p6, :cond_16

    .line 3274
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v9, 0x0

    .line 3275
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3274
    const/4 v8, 0x0

    .line 3277
    :try_start_3
    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_c

    .line 3278
    invoke-virtual {v3, v4}, Lcom/facebook/acra/CrashReportData;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3319
    :cond_9
    :goto_5
    if-eqz v4, :cond_a

    if-eqz v8, :cond_12

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_a
    :goto_6
    if-eqz v13, :cond_b

    if-eqz v9, :cond_14

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    .line 3333
    :cond_b
    :goto_7
    const-string v2, "ACRA_REPORT_FILENAME"

    invoke-virtual {v3, v2, v12}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/facebook/acra/ErrorReporter;->backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V

    goto :goto_4

    .line 3280
    :cond_c
    const/4 v5, 0x0

    .line 3281
    const/4 v2, 0x0

    .line 3282
    :try_start_6
    sget-object v10, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_17

    .line 3283
    invoke-static {v4}, Lcom/facebook/acra/ErrorReporter;->readVersionLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v5

    .line 3284
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 3285
    invoke-static {v4}, Lcom/facebook/acra/ErrorReporter;->readVersionLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2

    .line 3287
    :cond_d
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3288
    const/16 v10, 0x400

    invoke-virtual {v4, v10}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 3289
    const/16 v10, 0x400

    new-array v10, v10, [B

    .line 3290
    const/4 v11, 0x0

    const/16 v14, 0x400

    invoke-virtual {v4, v10, v11, v14}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    .line 3291
    if-lez v11, :cond_e

    .line 3292
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v14, v10, v15, v11}, Ljava/lang/String;-><init>([BII)V

    .line 3293
    sget-object v10, Lcom/facebook/acra/ErrorReporter;->mSigquitCmdLinePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 3294
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 3295
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 3296
    if-eqz v10, :cond_e

    .line 3297
    const-string v11, "PROCESS_NAME"

    invoke-virtual {v3, v11, v10}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    :cond_e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V

    :cond_f
    move-object v10, v2

    move-object v11, v5

    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v5, p3

    .line 3304
    invoke-direct/range {v2 .. v7}, Lcom/facebook/acra/ErrorReporter;->slurpAttachment(Lcom/facebook/acra/CrashReportData;Ljava/io/InputStream;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)V

    .line 3305
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3306
    const-string v2, "APP_VERSION_CODE"

    invoke-virtual {v3, v2, v11}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3307
    const-string v2, "APP_VERSION_NAME"

    invoke-virtual {v3, v2, v10}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_5

    .line 3310
    :catch_2
    move-exception v2

    .line 3311
    :try_start_7
    const-string v5, "REPORT_LOAD_THROW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "throwable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    sget-object v5, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Could not load crash report: %s. File will be deleted."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v7, v10

    invoke-static {v5, v2, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_5

    .line 3274
    :catch_3
    move-exception v2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3319
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_9
    if-eqz v4, :cond_10

    if-eqz v3, :cond_13

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_10
    :goto_a
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 3274
    :catch_4
    move-exception v2

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3319
    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_b
    if-eqz v13, :cond_11

    if-eqz v3, :cond_15

    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_11
    :goto_c
    throw v2

    :catch_5
    move-exception v2

    :try_start_d
    invoke-virtual {v8, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catchall_2
    move-exception v2

    move-object v3, v9

    goto :goto_b

    :cond_12
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    goto/16 :goto_6

    :catch_6
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_13
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_a

    :catch_7
    move-exception v2

    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto/16 :goto_7

    :catch_8
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_15
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_c

    .line 3321
    :cond_16
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3325
    invoke-virtual {v3}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v2

    .line 3327
    invoke-static/range {p3 .. p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Lcom/facebook/acra/util/InputStreamField;

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3328
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct/range {v4 .. v9}, Lcom/facebook/acra/util/InputStreamField;-><init>(Ljava/io/InputStream;ZZJ)V

    .line 3326
    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 3319
    :catchall_3
    move-exception v2

    move-object v3, v8

    goto :goto_9

    :cond_17
    move-object v10, v2

    move-object v11, v5

    goto/16 :goto_8

    :cond_18
    move-object v4, v5

    goto/16 :goto_2

    :cond_19
    move-object v2, v4

    goto/16 :goto_1
.end method

.method private maybeSendCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/FileGenerator;Z)I
    .locals 8
    .param p3    # Lcom/facebook/acra/Spool$FileBeingConsumed;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/acra/FileGenerator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2914
    const/4 v4, 0x0

    .line 2917
    if-eqz p4, :cond_5

    .line 2918
    :try_start_0
    invoke-interface {p4}, Lcom/facebook/acra/FileGenerator;->generate()Ljava/io/File;

    move-result-object v1

    .line 2919
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2920
    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p1, v2, :cond_0

    if-eqz p5, :cond_0

    .line 2921
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2923
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v4

    move-object v7, v0

    .line 2927
    :goto_0
    new-instance v1, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v1}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 2929
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2930
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2931
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2934
    :cond_1
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p1, v0, :cond_7

    .line 2935
    const-string v0, "PROCESS_NAME"

    invoke-virtual {p2, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2936
    if-eqz v0, :cond_7

    .line 2937
    const-string v2, "PROCESS_NAME"

    invoke-virtual {v1, v2, v0, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2941
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->buildAttachmentWrapperCrashReport(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/Spool$FileBeingConsumed;Ljava/io/Writer;Z)V

    .line 2943
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p1, v0, :cond_2

    if-nez p5, :cond_2

    .line 2945
    const-string v0, "partial_anr_report"

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2947
    const-string v0, "anr_recovery_delay"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2951
    const-string v0, "anr_with_sigquit_traces"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2954
    :cond_2
    const-string v0, "REPORT_ID"

    const/4 v2, 0x0

    const/16 v3, 0x2e

    invoke-virtual {v7, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2955
    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0, v4}, Lcom/facebook/acra/CrashReportData;->merge(Ljava/util/Map;ZLjava/io/Writer;)V

    .line 2956
    const-string v0, "APP_VERSION_CODE"

    invoke-virtual {v1, p2, v0, v4}, Lcom/facebook/acra/CrashReportData;->mergeFieldOverwrite(Ljava/util/Map;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2957
    const-string v0, "APP_VERSION_NAME"

    invoke-virtual {v1, p2, v0, v4}, Lcom/facebook/acra/CrashReportData;->mergeFieldOverwrite(Ljava/util/Map;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2958
    const-string v0, "ASL_SESSION_ID"

    invoke-virtual {v1, p2, v0, v4}, Lcom/facebook/acra/CrashReportData;->mergeFieldOverwrite(Ljava/util/Map;Ljava/lang/String;Ljava/io/Writer;)V

    .line 2959
    const-string v0, "EXCEPTION_CAUSE"

    const-string v2, "crash attachment"

    invoke-virtual {v1, v0, v2, v4}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 2962
    if-nez v4, :cond_3

    .line 2963
    invoke-direct {p0, v1}, Lcom/facebook/acra/ErrorReporter;->sendCrashReport(Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2966
    :cond_3
    if-eqz v4, :cond_4

    .line 2968
    :try_start_1
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2975
    :cond_4
    :goto_2
    return v6

    .line 2925
    :cond_5
    :try_start_2
    iget-object v0, p3, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "IO Exception"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2971
    const-string v1, "ANRValidationError<IOException::Non-cached>"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V

    goto :goto_2

    .line 2966
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_6

    .line 2968
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2972
    :cond_6
    :goto_3
    throw v0

    .line 2969
    :catch_1
    move-exception v1

    .line 2970
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "IO Exception"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2971
    const-string v2, "ANRValidationError<IOException::Non-cached>"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p0}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V

    goto :goto_3

    :cond_7
    move v5, v6

    goto/16 :goto_1
.end method

.method private mustEmbedAttachments(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2309
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-eq p1, v0, :cond_0

    move v0, v1

    .line 2322
    :goto_0
    return v0

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/sender/ReportSender;

    .line 2313
    instance-of v3, v0, Lcom/facebook/acra/sender/HttpPostSender;

    if-nez v3, :cond_2

    move v0, v1

    .line 2314
    goto :goto_0

    .line 2317
    :cond_2
    check-cast v0, Lcom/facebook/acra/sender/HttpPostSender;

    .line 2318
    invoke-virtual {v0}, Lcom/facebook/acra/sender/HttpPostSender;->getUseMultipartPost()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2319
    goto :goto_0

    .line 2322
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2185
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateConstantFields()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 1364
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    .line 1366
    new-instance v1, Lcom/facebook/acra/util/PackageManagerWrapper;

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/facebook/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v1}, Lcom/facebook/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1368
    if-eqz v2, :cond_15

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v3

    if-ne v0, v3, :cond_15

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1369
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    .line 1374
    :goto_0
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1376
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v4, "ANDROID_ID"

    invoke-interface {v0, v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 1380
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1387
    :goto_1
    const-string v4, "ANDROID_ID"

    invoke-virtual {v3, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v4, "APP_VERSION_CODE"

    invoke-interface {v0, v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    const-string v0, "APP_VERSION_CODE"

    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v4, "APP_VERSION_NAME"

    invoke-interface {v0, v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    const-string v0, "APP_VERSION_NAME"

    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v4, "PACKAGE_NAME"

    invoke-interface {v0, v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1399
    const-string v0, "PACKAGE_NAME"

    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_3
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v4, "INSTALLER_NAME"

    invoke-interface {v0, v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1403
    const-string v0, "INSTALLER_NAME"

    invoke-virtual {v1}, Lcom/facebook/acra/util/PackageManagerWrapper;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    :cond_4
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "PHONE_MODEL"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1407
    const-string v0, "PHONE_MODEL"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    :cond_5
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "DEVICE"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1411
    const-string v0, "DEVICE"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_6
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "ANDROID_VERSION"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1415
    const-string v0, "ANDROID_VERSION"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    :cond_7
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "OS_VERSION"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1419
    const-string v0, "OS_VERSION"

    const-string v1, "os.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :cond_8
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "BUILD_HOST"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1423
    const-string v0, "BUILD_HOST"

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    :cond_9
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "BRAND"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1427
    const-string v0, "BRAND"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_a
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "PRODUCT"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1431
    const-string v0, "PRODUCT"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :cond_b
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "FILE_PATH"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1435
    const-string v0, "n/a"

    .line 1436
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 1437
    if-eqz v1, :cond_c

    .line 1438
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1440
    :cond_c
    const-string v1, "FILE_PATH"

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    :cond_d
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "APP_INSTALL_TIME"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1444
    if-eqz v2, :cond_e

    .line 1445
    const-string v0, "APP_INSTALL_TIME"

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1447
    invoke-static {v4, v5}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->formatAppInstallTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    :cond_e
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "APP_INSTALL_EPOCH_TIME"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1452
    if-eqz v2, :cond_f

    .line 1453
    const-string v0, "APP_INSTALL_EPOCH_TIME"

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    :cond_f
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "APP_UPGRADE_TIME"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1458
    if-eqz v2, :cond_10

    .line 1459
    const-string v0, "APP_UPGRADE_TIME"

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1460
    invoke-static {v4, v5}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->formatAppUpgradeTime(J)Ljava/lang/String;

    move-result-object v1

    .line 1459
    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_10
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "APP_UPGRADE_EPOCH_TIME"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1465
    if-eqz v2, :cond_11

    .line 1466
    const-string v0, "APP_UPGRADE_EPOCH_TIME"

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1470
    :cond_11
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "APP_SINCE_UPGRADE_TIME"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1471
    if-eqz v2, :cond_12

    .line 1472
    const-string v0, "APP_SINCE_UPGRADE_TIME"

    .line 1473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1472
    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    :cond_12
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "PUBLIC_SOURCE_DIR"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1478
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_16

    .line 1481
    const-string v0, "PUBLIC_SOURCE_DIR"

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    :cond_13
    :goto_2
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->enableLeanCrashReporting()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1488
    const-string v0, "RAW_STACK_TRACE_ATTEMPTED"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    :cond_14
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    .line 1492
    return-void

    .line 1371
    :cond_15
    const-string v0, "not set"

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1384
    const-string v4, "ErrorReporter"

    const-string v5, "Failed to fetch the constant field ANDROID_ID"

    invoke-static {v4, v5, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1385
    const-string/jumbo v0, "unknown"

    goto/16 :goto_1

    .line 1483
    :cond_16
    const-string v0, "PUBLIC_SOURCE_DIR"

    const-string v1, "null application info"

    invoke-virtual {v3, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private preallocateReportFile(Ljava/io/File;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1503
    const-class v0, Lcom/facebook/acra/ErrorReporter;

    .line 1506
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v3, ".stacktrace"

    .line 1504
    invoke-direct {p0, v0, v1, v3}, Lcom/facebook/acra/ErrorReporter;->genCrashReportFileName(Ljava/lang/Class;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getSpool(Landroid/content/Context;)Lcom/facebook/acra/Spool;

    move-result-object v1

    .line 1509
    invoke-virtual {v1, v0}, Lcom/facebook/acra/Spool;->produce(Ljava/lang/String;)Lcom/facebook/acra/Spool$FileBeingProduced;

    move-result-object v3

    .line 1511
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, v3, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    .line 1516
    const v0, 0x8000

    :try_start_1
    new-array v6, v0, [B

    .line 1517
    const-wide/16 v0, 0x0

    .line 1518
    :goto_0
    cmp-long v7, v0, p2

    if-gez v7, :cond_0

    .line 1519
    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 1518
    array-length v7, v6

    int-to-long v8, v7

    add-long/2addr v0, v8

    goto :goto_0

    .line 1522
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1523
    if-eqz v4, :cond_1

    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1524
    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, v3, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-static {v0, p1}, Lcom/facebook/acra/ErrorReporter;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1526
    :try_start_4
    iget-object v0, v3, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1528
    if-eqz v3, :cond_2

    if-eqz v2, :cond_7

    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/acra/Spool$FileBeingProduced;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1529
    :cond_2
    :goto_2
    return-void

    .line 1523
    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1526
    :catchall_0
    move-exception v0

    :try_start_7
    iget-object v1, v3, Lcom/facebook/acra/Spool$FileBeingProduced;->fileName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1509
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1528
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_3

    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/acra/Spool$FileBeingProduced;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    :cond_3
    :goto_4
    throw v0

    .line 1523
    :cond_4
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1511
    :catch_2
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1523
    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_5
    if-eqz v4, :cond_5

    if-eqz v1, :cond_6

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_5
    :goto_6
    :try_start_d
    throw v0

    :catch_3
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 1528
    :catch_4
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/facebook/acra/Spool$FileBeingProduced;->close()V

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/facebook/acra/Spool$FileBeingProduced;->close()V

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1523
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method private processCoreDump(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingConsumed;)V
    .locals 13

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v1, "CORE_DUMP"

    invoke-interface {v0, v1}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldReportField(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-void

    .line 3046
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "core"

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3052
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/app_process32"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3055
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/app_process"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 3057
    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3062
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iget-object v2, p2, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 3068
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->isConnectedToWifi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3074
    const-wide/32 v0, 0x5265c00

    sub-long v0, v8, v0

    .line 3075
    new-instance v10, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 3076
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "core_dump_proccessed"

    invoke-direct {v10, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 3082
    :cond_2
    const/4 v2, 0x1

    .line 3083
    const/4 v3, 0x1

    .line 3085
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3087
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v11

    const-string v12, "CORE_DUMP"

    new-instance v0, Lcom/facebook/acra/util/InputStreamField;

    .line 3090
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/util/InputStreamField;-><init>(Ljava/io/InputStream;ZZJ)V

    .line 3088
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3093
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v11

    const-string v12, "APP_PROCESS_FILE"

    new-instance v0, Lcom/facebook/acra/util/InputStreamField;

    .line 3096
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/util/InputStreamField;-><init>(Ljava/io/InputStream;ZZJ)V

    .line 3094
    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3100
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3104
    :catch_0
    move-exception v0

    .line 3105
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error openning core dump file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3106
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3105
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/facebook/acra/ErrorReporter;->writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3102
    :cond_3
    :try_start_1
    invoke-virtual {v10, v8, v9}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object v6, v0

    goto/16 :goto_1
.end method

.method private processCrashAttachmentAfterSend(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2830
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2831
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2833
    iget-object v1, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2834
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Backup minidump file from %s to %s"

    iget-object v3, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    .line 2837
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 2838
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 2834
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2846
    :goto_0
    if-eqz p4, :cond_0

    .line 2847
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    .line 2849
    :cond_0
    return-void

    .line 2840
    :cond_1
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No need to backup. Deleting minidump %s"

    iget-object v2, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    .line 2841
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 2840
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2842
    iget-object v0, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method private processCrashAttachmentBeforeSend(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/CrashReportData;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2784
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p2, v0, :cond_7

    .line 2785
    if-nez p4, :cond_0

    .line 2786
    invoke-direct {p0, p3, p1}, Lcom/facebook/acra/ErrorReporter;->processCoreDump(Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingConsumed;)V

    .line 2788
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->foregroundNativeCrashDetect(Lcom/facebook/acra/Spool$FileBeingConsumed;)V

    .line 2790
    new-instance v0, Lcom/facebook/acra/util/MinidumpReader;

    iget-object v1, p1, Lcom/facebook/acra/Spool$FileBeingConsumed;->file:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;-><init>(Ljava/io/RandomAccessFile;)V

    .line 2791
    const-string/jumbo v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2792
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2793
    const-string v2, "ASL_SESSION_ID"

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    :cond_1
    const-string v1, "is_first_run_after_upgrade"

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2796
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2797
    const-string v2, "is_first_run_after_upgrade"

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    :cond_2
    const-string/jumbo v1, "should_report_disk_info_native"

    .line 2800
    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2801
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2802
    const-string/jumbo v2, "should_report_disk_info_native"

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2804
    :cond_3
    const-string v1, "no_device_memory"

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2805
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2806
    const-string v2, "no_device_memory"

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    :cond_4
    const v1, -0x5313505

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getInt(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2809
    if-eqz v1, :cond_5

    .line 2810
    const-string v2, "APP_VERSION_CODE"

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2812
    :cond_5
    const v1, -0x5313504

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2813
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2814
    const-string v2, "APP_VERSION_NAME"

    invoke-virtual {p3, v2, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2816
    :cond_6
    const-string v1, "breakpad_lib_name"

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/MinidumpReader;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2818
    const-string v1, "BREAKPAD_LIB_NAME"

    invoke-virtual {p3, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    :cond_7
    return-void
.end method

.method private processCrashAttachmentsLocked(ILcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/FileGenerator;Z)I
    .locals 17

    .prologue
    .line 2691
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "#processCrashAttachmentsLocked - start"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    const/4 v4, 0x0

    .line 2693
    const/4 v9, 0x0

    .line 2694
    const/4 v3, 0x0

    .line 2695
    const/4 v2, 0x0

    .line 2696
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/facebook/acra/ErrorReporter;->shouldSkipReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2697
    const/4 v2, 0x0

    .line 2761
    :goto_0
    return v2

    .line 2699
    :cond_0
    sget-object v5, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    move-object/from16 v0, p2

    if-ne v0, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 2700
    invoke-static {v5}, Lcom/facebook/acraconfig/AcraConfig;->shouldDeviceStoreReports(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2702
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/facebook/acra/ErrorReporter;->createBackUpDirectory(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/io/File;

    move-result-object v2

    move-object v8, v2

    .line 2704
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1400(Lcom/facebook/acra/ErrorReporter$CrashReportType;Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v14

    const/4 v11, 0x0

    move v12, v3

    move v2, v4

    .line 2705
    :goto_2
    :try_start_0
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    move/from16 v0, p1

    if-ge v12, v0, :cond_15

    .line 2706
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->next()Lcom/facebook/acra/Spool$FileBeingConsumed;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v5

    const/4 v10, 0x0

    .line 2707
    add-int/lit8 v13, v2, 0x1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_2

    .line 2708
    :try_start_1
    iget-object v2, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2755
    if-eqz v5, :cond_17

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v2, v13

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v2, v13

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v2, v13

    goto :goto_2

    .line 2711
    :cond_2
    const/4 v4, 0x0

    .line 2713
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/facebook/acra/ErrorReporter;->mustEmbedAttachments(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v2

    .line 2714
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/facebook/acra/ErrorReporter;->loadCrashAttachment(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Z)Lcom/facebook/acra/CrashReportData;
    :try_end_4
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 2715
    if-nez v4, :cond_5

    .line 2751
    if-eqz v4, :cond_3

    .line 2752
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2755
    :cond_3
    if-eqz v5, :cond_17

    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v2, v13

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v2, v13

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v2, v13

    goto :goto_2

    .line 2718
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v4, v2}, Lcom/facebook/acra/ErrorReporter;->processCrashAttachmentBeforeSend(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/CrashReportData;Z)V

    .line 2719
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/facebook/acra/ErrorReporter;->getLogcatFileName(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    .line 2721
    invoke-direct/range {v2 .. v7}, Lcom/facebook/acra/ErrorReporter;->maybeSendCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/CrashReportData;Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/FileGenerator;Z)I
    :try_end_8
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v2

    add-int v3, v9, v2

    .line 2723
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1, v8, v15}, Lcom/facebook/acra/ErrorReporter;->processCrashAttachmentAfterSend(Lcom/facebook/acra/Spool$FileBeingConsumed;Lcom/facebook/acra/ErrorReporter$CrashReportType;Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2724
    add-int/lit8 v2, v12, 0x1

    .line 2751
    if-eqz v4, :cond_6

    .line 2752
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 2755
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v10, :cond_11

    :try_start_b
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :cond_7
    :goto_3
    move v12, v2

    move v9, v3

    move v2, v13

    goto/16 :goto_2

    .line 2725
    :catch_2
    move-exception v2

    move v3, v9

    .line 2727
    :goto_4
    :try_start_c
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Failed to send crash attachment report %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v15, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    aput-object v15, v9, v13

    invoke-static {v6, v2, v7, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2729
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v6}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldSkipReportOnSocketTimeout()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2730
    invoke-virtual {v2}, Lcom/facebook/acra/sender/ReportSenderException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 2731
    invoke-virtual {v2}, Lcom/facebook/acra/sender/ReportSenderException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_8

    .line 2736
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Timeout while sending, deleting report %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v15, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    aput-object v15, v9, v13

    invoke-static {v6, v2, v7, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2737
    iget-object v2, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2751
    :cond_8
    if-eqz v4, :cond_9

    .line 2752
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2755
    :cond_9
    if-eqz v5, :cond_16

    if-eqz v10, :cond_b

    :try_start_e
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move v2, v3

    .line 2757
    :goto_5
    if-eqz v14, :cond_a

    if-eqz v11, :cond_13

    :try_start_f
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_a

    .line 2759
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/facebook/acra/ErrorReporter;->keepNLatestDumpFiles(Ljava/io/File;)I

    .line 2760
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "#processCrashAttachmentsLocked - finish, sent: %d"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2755
    :catch_3
    move-exception v2

    :try_start_10
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move v2, v3

    goto :goto_5

    .line 2740
    :catch_4
    move-exception v2

    .line 2741
    :goto_7
    :try_start_11
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Failed on crash attachment file %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v15, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    aput-object v15, v7, v13

    invoke-static {v3, v2, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2742
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANRValidationError<"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2744
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "::Non-cached>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2745
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2742
    move-object/from16 v0, p0

    invoke-static {v2, v3, v6, v0}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V

    .line 2747
    iget-object v2, v5, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-static {v2}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2751
    if-eqz v4, :cond_c

    .line 2752
    :try_start_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 2755
    :cond_c
    if-eqz v5, :cond_15

    if-eqz v10, :cond_d

    :try_start_13
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    move v2, v9

    goto :goto_5

    :catch_5
    move-exception v2

    :try_start_14
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move v2, v9

    goto :goto_5

    :cond_d
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move v2, v9

    goto :goto_5

    .line 2751
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_e

    .line 2752
    :try_start_15
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/facebook/acra/ErrorReporter;->closeInputStreamFields(Lcom/facebook/acra/CrashReportData;)V

    :cond_e
    throw v2
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 2706
    :catch_6
    move-exception v2

    :try_start_16
    throw v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 2755
    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_8
    if-eqz v5, :cond_f

    if-eqz v3, :cond_12

    :try_start_17
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :cond_f
    :goto_9
    :try_start_18
    throw v2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 2704
    :catch_7
    move-exception v2

    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 2757
    :catchall_2
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_a
    if-eqz v14, :cond_10

    if-eqz v3, :cond_14

    :try_start_1a
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    :cond_10
    :goto_b
    throw v2

    .line 2755
    :catch_8
    move-exception v4

    :try_start_1b
    invoke-virtual {v10, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2757
    :catchall_3
    move-exception v2

    move-object v3, v11

    goto :goto_a

    .line 2755
    :cond_11
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V

    goto/16 :goto_3

    :catch_9
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_12
    invoke-virtual {v5}, Lcom/facebook/acra/Spool$FileBeingConsumed;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_7
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    goto :goto_9

    .line 2757
    :catch_a
    move-exception v3

    invoke-virtual {v11, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->close()V

    goto/16 :goto_6

    :catch_b
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_14
    invoke-virtual {v14}, Lcom/facebook/acra/Spool$Snapshot;->close()V

    goto :goto_b

    .line 2755
    :catchall_4
    move-exception v2

    move-object v3, v10

    goto :goto_8

    .line 2740
    :catch_c
    move-exception v2

    move v9, v3

    goto/16 :goto_7

    .line 2725
    :catch_d
    move-exception v2

    goto/16 :goto_4

    :cond_15
    move v2, v9

    goto/16 :goto_5

    :cond_16
    move v2, v3

    goto/16 :goto_5

    :cond_17
    move v2, v13

    goto/16 :goto_2

    :cond_18
    move-object v8, v2

    goto/16 :goto_1
.end method

.method private static purgeDirectory(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 409
    const/4 v0, 0x0

    .line 410
    if-eqz p1, :cond_0

    .line 411
    new-instance v0, Lcom/facebook/acra/ErrorReporter$1;

    invoke-direct {v0, p1}, Lcom/facebook/acra/ErrorReporter$1;-><init>(Ljava/lang/String;)V

    .line 419
    :cond_0
    if-eqz p0, :cond_2

    .line 420
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 421
    if-eqz v1, :cond_2

    .line 422
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 423
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    invoke-static {v3, p1}, Lcom/facebook/acra/ErrorReporter;->purgeDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    :cond_1
    invoke-static {v3}, Lcom/facebook/acra/ErrorReporter;->deleteFile(Ljava/io/File;)Z

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_2
    return-void
.end method

.method static put(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;)V
    .locals 1
    .param p3    # Ljava/io/Writer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1786
    iget-object v0, p2, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1787
    const/4 p3, 0x0

    .line 1790
    :cond_0
    :try_start_0
    invoke-virtual {p2, p0, p1, p3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1795
    :goto_0
    return-void

    .line 1791
    :catch_0
    move-exception v0

    .line 1793
    iput-object v0, p2, Lcom/facebook/acra/CrashReportData;->generatingIoError:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public static putCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1143
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1144
    return-void
.end method

.method private static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3401
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3402
    const-string v0, "NO_FILE"

    .line 3415
    :cond_0
    :goto_0
    return-object v0

    .line 3404
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 3405
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v0, 0x400

    invoke-direct {v4, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v5, 0x0

    .line 3406
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 3407
    if-eqz v0, :cond_7

    .line 3410
    if-eqz v4, :cond_2

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3411
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    :goto_2
    move-object v0, v1

    .line 3415
    goto :goto_0

    .line 3410
    :catch_2
    move-exception v4

    :try_start_6
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 3404
    :catch_3
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3411
    :catchall_0
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_d

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 3410
    :cond_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 3411
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :cond_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    .line 3410
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 3411
    :cond_8
    :goto_5
    if-eqz v3, :cond_3

    if-eqz v1, :cond_c

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_2

    .line 3410
    :catch_5
    move-exception v0

    :try_start_f
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_5

    .line 3405
    :catch_6
    move-exception v2

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 3410
    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v4, :cond_a

    if-eqz v2, :cond_b

    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_a
    :goto_7
    :try_start_12
    throw v0

    :catch_7
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_7

    .line 3411
    :cond_c
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_2

    :catch_8
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto :goto_4

    .line 3410
    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_6
.end method

.method private static readVersionLine(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x14

    const/4 v1, 0x0

    .line 3362
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 3363
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 3364
    new-array v4, v5, [C

    move v3, v0

    move v0, v1

    .line 3366
    :goto_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_0

    if-ge v0, v5, :cond_0

    .line 3367
    const/16 v2, 0xa

    if-ne v3, v2, :cond_1

    .line 3378
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 3370
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x2e

    if-eq v3, v2, :cond_2

    .line 3372
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    move v0, v1

    .line 3373
    goto :goto_1

    .line 3375
    :cond_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v4, v0

    .line 3376
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    move v3, v0

    move v0, v2

    goto :goto_0
.end method

.method private removeCoreDump()V
    .locals 3

    .prologue
    .line 3123
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "core"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3125
    return-void
.end method

.method private removeCrashFiles(Lcom/facebook/acra/ErrorReporter$CrashReportType;I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 3837
    if-gtz p2, :cond_1

    .line 3878
    :cond_0
    :goto_0
    return-void

    .line 3841
    :cond_1
    :try_start_0
    const-string v0, "ErrorReporter"

    const-string/jumbo v1, "removeCrashFiles count=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3842
    new-instance v0, Lcom/facebook/acra/ErrorReporter$5;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/ErrorReporter$5;-><init>(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 3856
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getSpool(Landroid/content/Context;)Lcom/facebook/acra/Spool;

    move-result-object v1

    new-instance v2, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;-><init>(Lcom/facebook/acra/ErrorReporter$1;)V

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/Spool;->snapshot(Ljava/util/Comparator;Ljava/io/FilenameFilter;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v0

    .line 3857
    if-nez v0, :cond_2

    .line 3858
    const-string v0, "ErrorReporter"

    const-string/jumbo v1, "removeCrashFiles no snapshot"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3875
    :catch_0
    move-exception v0

    .line 3876
    const-string v1, "ErrorReporter"

    const-string/jumbo v2, "removeCrashFiles"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 3862
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/facebook/acra/Spool$Snapshot;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    .line 3863
    invoke-virtual {v0}, Lcom/facebook/acra/Spool$Snapshot;->next()Lcom/facebook/acra/Spool$FileBeingConsumed;

    move-result-object v1

    .line 3864
    iget-object v2, v1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 3868
    iget-object v2, v1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3869
    const-string v2, "ErrorReporter"

    const-string/jumbo v3, "removeCrashFiles Crash file not deleted %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v1, v1, Lcom/facebook/acra/Spool$FileBeingConsumed;->fileName:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3873
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 3874
    goto :goto_1
.end method

.method public static removeCustomData(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1154
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->removeCustomData(Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private static renameOrThrow(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1533
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "rename of %s to %s failed"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_0
    return-void
.end method

.method private static reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/facebook/acra/ErrorReporter;->reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V

    .line 320
    return-void
.end method

.method private static reportSoftError(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/acra/ErrorReporter;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 328
    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 329
    const-string/jumbo v1, "soft_error_category"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v1, "soft_error_message"

    invoke-virtual {v0, v1, p2}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    if-eqz p3, :cond_0

    .line 332
    const-string v1, "ASL_SESSION_ID"

    invoke-virtual {v0, v1, p3}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    invoke-virtual {p4, p0, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 335
    return-void
.end method

.method private safeClose(Ljava/io/Closeable;)V
    .locals 2

    .prologue
    .line 1865
    if-eqz p1, :cond_0

    .line 1867
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :cond_0
    :goto_0
    return-void

    .line 1868
    :catch_0
    move-exception v0

    .line 1869
    const-string/jumbo v1, "safeClose"

    invoke-direct {p0, v1, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendCrashReport(Lcom/facebook/acra/CrashReportData;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2223
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->isZeroCrashlogBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2268
    :cond_0
    :goto_0
    return-void

    .line 2226
    :cond_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldOnlyWriteReport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2227
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Writing report to file"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->writeJsonReport(Lcom/facebook/acra/CrashReportData;)Z

    goto :goto_0

    .line 2236
    :cond_2
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2237
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2241
    new-instance v0, Lcom/facebook/acra/sender/ReportSenderException;

    const-string v1, "no configured report senders"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2238
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2244
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/sender/ReportSender;

    .line 2246
    :try_start_2
    invoke-interface {v0, p1}, Lcom/facebook/acra/sender/ReportSender;->send(Lcom/facebook/acra/CrashReportData;)V
    :try_end_2
    .catch Lcom/facebook/acra/sender/ReportSenderException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v3

    :goto_2
    move v1, v0

    .line 2267
    goto :goto_1

    .line 2250
    :catch_0
    move-exception v5

    .line 2251
    if-nez v1, :cond_5

    .line 2252
    instance-of v0, v0, Lcom/facebook/acra/sender/HttpPostSender;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldUseUploadService()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2253
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->writeJsonReport(Lcom/facebook/acra/CrashReportData;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2254
    throw v5

    .line 2257
    :cond_4
    throw v5

    .line 2260
    :cond_5
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "ReportSender of class %s failed but other senders completed their task. ACRA will not send this report again."

    new-array v8, v3, [Ljava/lang/Object;

    .line 2264
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 2260
    invoke-static {v6, v5, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private shouldReportANRs()Z
    .locals 1

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    .line 3133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDataProvider;->shouldANRDetectorRun()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldSkipReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z
    .locals 3

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1600(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2620
    new-instance v1, Ljava/io/File;

    const-string v2, ".noupload"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2621
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private showBlockingNotification(Lcom/facebook/acra/config/StartupBlockingConfig;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ImprovedNewApi",
            "CatchGeneralException",
            "DeprecatedMethod"
        }
    .end annotation

    .prologue
    .line 3661
    :try_start_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/facebook/acra/config/StartupBlockingConfig;->notificationTitle:I

    .line 3663
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/facebook/acra/config/StartupBlockingConfig;->notificationText:I

    .line 3664
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x1080027

    .line 3665
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 3666
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 3667
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/facebook/acra/config/StartupBlockingConfig;->notificationText:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/acra/ErrorReporter$Api16Utils;->applyBigTextStyle(Landroid/app/Notification$Builder;Ljava/lang/String;)V

    .line 3669
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x2

    .line 3670
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    :goto_0
    return-void

    .line 3671
    :catch_0
    move-exception v0

    .line 3673
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error showing notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private slurpAttachment(Lcom/facebook/acra/CrashReportData;Ljava/io/InputStream;Lcom/facebook/acra/ErrorReporter$CrashReportType;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3187
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    if-ne p3, v0, :cond_0

    .line 3189
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->attachLastActivityInfo(Lcom/facebook/acra/CrashReportData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3195
    :goto_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->attachIabInfo(Lcom/facebook/acra/CrashReportData;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3200
    :cond_0
    :goto_1
    long-to-int v0, p4

    invoke-static {p2, v0}, Lcom/facebook/acra/util/AttachmentUtil;->loadAttachment(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    .line 3201
    invoke-static {p3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    const-string v0, "ATTACHMENT_ORIGINAL_SIZE"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3203
    return-void

    .line 3190
    :catch_0
    move-exception v0

    .line 3191
    const-string v1, "ErrorReporter"

    const-string v2, "error attaching activity information"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 3196
    :catch_1
    move-exception v0

    .line 3197
    const-string v1, "ErrorReporter"

    const-string v2, "error attaching IAB information"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized startUploadIfReady()V
    .locals 3

    .prologue
    .line 3475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldUseUploadService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mBatchUploader:Lcom/facebook/acra/BatchUploader;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mFinishedCheckingReports:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/acra/ErrorReporter;->mPendingReportWriters:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 3479
    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldOnlyWriteReport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mStartedBatchUploader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3496
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3484
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "traces_upload"

    const/4 v2, 0x0

    .line 3485
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 3486
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 3487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/acra/ErrorReporter;->mStartedBatchUploader:Z

    .line 3488
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/facebook/acra/ErrorReporter$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/acra/ErrorReporter$3;-><init>(Lcom/facebook/acra/ErrorReporter;[Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3495
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1760
    if-nez p0, :cond_0

    .line 1761
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Report requested by developer"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1764
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1765
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1766
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1767
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private translateException(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1540
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mExceptionTranslationHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ExceptionTranslationHook;

    move v1, v2

    :goto_0
    move-object v4, v0

    move-object v3, p1

    .line 1544
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1547
    :try_start_0
    invoke-virtual {v4, v3, p2}, Lcom/facebook/acra/ExceptionTranslationHook;->translate(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1545
    :goto_2
    iget-object v4, v4, Lcom/facebook/acra/ExceptionTranslationHook;->next:Lcom/facebook/acra/ExceptionTranslationHook;

    goto :goto_1

    .line 1548
    :catch_0
    move-exception v5

    .line 1549
    sget-object v6, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v7, "ignoring error in exception translation hook %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v6, v5, v7, v8}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1552
    :cond_0
    if-eq v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_2

    .line 1553
    :cond_1
    return-object v3

    :cond_2
    move-object p1, v3

    goto :goto_0
.end method

.method private tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1653
    if-nez p1, :cond_0

    .line 1654
    :try_start_0
    const-string p1, "???"

    .line 1656
    :cond_0
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "internal ACRA error: %s: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    return-void

    .line 1657
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private tryLogInternalError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1649
    return-void
.end method

.method private uncaughtExceptionImpl(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;Z)V
    .locals 9
    .param p3    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1574
    iput-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mOomReservation:[B

    .line 1576
    new-array v1, v8, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v4, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v4, v1, v5

    invoke-direct {p0, v1}, Lcom/facebook/acra/ErrorReporter;->discardOverlappingReports([Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 1579
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_0

    .line 1580
    invoke-static {}, Lcom/facebook/acra/ErrorReporter$Api9Utils;->disableStrictMode()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :cond_0
    :goto_0
    :try_start_1
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ACRA caught a %s exception for %s version %s. Building report."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1590
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 1591
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1587
    invoke-static {v1, v4, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1597
    :goto_1
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 1598
    invoke-direct {p0, p2, v5}, Lcom/facebook/acra/ErrorReporter;->translateException(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object v1

    .line 1599
    if-nez v1, :cond_2

    .line 1645
    :cond_1
    :goto_2
    return-void

    .line 1582
    :catch_0
    move-exception v1

    .line 1583
    invoke-direct {p0, v1}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1593
    :catch_1
    move-exception v1

    .line 1594
    invoke-direct {p0, v1}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1605
    :cond_2
    if-eqz p4, :cond_3

    move v0, v2

    .line 1614
    :cond_3
    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v4}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldImmediatelyUpload()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1621
    :goto_3
    invoke-static {v1}, Lcom/facebook/acra/ErrorReporter;->getMostSignificantCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_6

    .line 1622
    and-int/lit8 v4, v2, -0x2

    .line 1627
    :goto_4
    :try_start_2
    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter;->mBlackBoxRecorderControl:Lcom/facebook/acra/BlackBoxRecorderControl;

    .line 1628
    if-eqz v7, :cond_5

    .line 1629
    const/4 v0, 0x1

    invoke-interface {v7, v5, v0}, Lcom/facebook/acra/BlackBoxRecorderControl;->captureBlackBoxTrace(Ljava/util/Map;I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    .line 1632
    :goto_5
    new-instance v2, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v2, v5}, Lcom/facebook/acra/CrashReportData;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;ILcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 1634
    if-eqz v7, :cond_1

    .line 1636
    invoke-interface {v7, v6}, Lcom/facebook/acra/BlackBoxRecorderControl;->awaitForBlackBoxTraceCompletion(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1638
    :catch_2
    move-exception v0

    .line 1639
    if-eqz p4, :cond_4

    .line 1640
    throw v0

    .line 1642
    :cond_4
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "error during error reporting: will attempt to report error"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0, p1, v0, p3, v8}, Lcom/facebook/acra/ErrorReporter;->uncaughtExceptionImpl(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;Z)V

    goto :goto_2

    :cond_5
    move-object v6, v3

    goto :goto_5

    :cond_6
    move v4, v2

    goto :goto_4

    :cond_7
    move v2, v0

    goto :goto_3
.end method

.method private writeJsonReport(Lcom/facebook/acra/CrashReportData;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2272
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2273
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Writing report"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    :try_start_0
    new-instance v4, Ljava/util/UUID;

    .line 2279
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartTickTimeMs:J

    xor-long/2addr v6, v2

    .line 2280
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    xor-long/2addr v2, v8

    invoke-direct {v4, v6, v7, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 2281
    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2286
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "traces_upload"

    .line 2288
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".gz"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2290
    invoke-virtual {p1}, Lcom/facebook/acra/CrashReportData;->getInputStreamFields()Ljava/util/Map;

    move-result-object v0

    .line 2289
    invoke-static {p1, v0, v2}, Lcom/facebook/acra/util/JsonReportWriter;->writeGzipJsonReport(Ljava/util/Map;Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    const-string v0, "ErrorReporter"

    const-string v1, "Wrote file for uploader %s"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2292
    const/4 v0, 0x1

    .line 2294
    :goto_2
    return v0

    .line 2280
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 2282
    :catch_0
    move-exception v0

    .line 2283
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 2294
    goto :goto_2
.end method

.method private writeToLogBridge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 3805
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v2, v0, v1

    .line 3806
    invoke-virtual {p3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 3807
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3808
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3809
    const-string v0, "ErrorReporter"

    const-string v1, "Unable to log over log bridge due to exception."

    invoke-static {v0, p3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3832
    :goto_1
    return-void

    .line 3806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3814
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getLogBridge()Lcom/facebook/acra/LogBridge;

    move-result-object v0

    .line 3815
    if-eqz v0, :cond_3

    .line 3818
    if-eqz p4, :cond_2

    .line 3819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3821
    :cond_2
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/acra/LogBridge;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3826
    :cond_3
    if-eqz p4, :cond_4

    .line 3827
    const-string v0, "%s\n%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    aput-object p4, v2, v8

    invoke-static {p1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3829
    :cond_4
    const-string v0, "%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-static {p1, p3, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public addExceptionTranslationHook(Lcom/facebook/acra/ExceptionTranslationHook;)V
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mExceptionTranslationHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ExceptionTranslationHook;

    iput-object v0, p1, Lcom/facebook/acra/ExceptionTranslationHook;->next:Lcom/facebook/acra/ExceptionTranslationHook;

    .line 1041
    return-void
.end method

.method public addReportSender(Lcom/facebook/acra/sender/ReportSender;)V
    .locals 2

    .prologue
    .line 3695
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3696
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3697
    monitor-exit v1

    .line 3698
    return-void

    .line 3697
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addToAnrInProgressUpdateFile(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1115
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    const/4 v0, 0x0

    .line 1128
    :goto_0
    return v0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAnrFilesInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1122
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".upd"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1124
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1125
    new-instance v2, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v2, p1}, Lcom/facebook/acra/CrashReportData;-><init>(Ljava/util/Map;)V

    .line 1126
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/facebook/acra/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1127
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    move v0, v1

    .line 1128
    goto :goto_0
.end method

.method backfillCrashReportData(Lcom/facebook/acra/CrashReportData;)V
    .locals 3

    .prologue
    .line 3427
    const-string v0, "REPORT_ID"

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3428
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 3429
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3431
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3438
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 3439
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Lcom/facebook/acra/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3440
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3441
    const-string v0, "UID"

    invoke-virtual {p1, v0, v1}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3443
    :cond_3
    return-void
.end method

.method public checkAndMaybeUpdateDailySentReportCount(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1676
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1692
    :goto_0
    return v0

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getSentReportsCountToday(Landroid/content/Context;)Lcom/facebook/acra/ErrorReporter$CrashReportCounter;

    move-result-object v3

    .line 1681
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v1}, Lcom/facebook/acra/config/AcraReportingConfig;->getMaxReportsSentPerDay()I

    move-result v4

    .line 1682
    iget v1, v3, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->count:I

    if-lt v1, v4, :cond_2

    move v1, v2

    .line 1683
    :goto_1
    if-eqz v1, :cond_3

    .line 1684
    const-string v4, "ErrorReporter"

    const-string v5, "Maximum daily sent crash reports threshold reached, Not storing count=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v3, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->count:I

    .line 1687
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1684
    invoke-static {v4, v5, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_2
    move v0, v1

    .line 1692
    goto :goto_0

    :cond_2
    move v1, v0

    .line 1682
    goto :goto_1

    .line 1688
    :cond_3
    const v0, 0x7fffffff

    if-ge v4, v0, :cond_1

    .line 1690
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v3}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->setSentReportsCountToday(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportCounter;)V

    goto :goto_2
.end method

.method public checkNativeReports()V
    .locals 4
    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3504
    new-array v0, v3, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3505
    new-array v0, v3, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v1, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 3507
    :cond_0
    return-void
.end method

.method public varargs checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 10

    .prologue
    .line 3577
    new-instance v0, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;-><init>(Lcom/facebook/acra/ErrorReporter;[Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 3578
    invoke-virtual {v0}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->start()V

    .line 3583
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v1

    .line 3584
    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v2}, Lcom/facebook/acra/config/AcraReportingConfig;->getStartupBlockingConfig()Lcom/facebook/acra/config/StartupBlockingConfig;

    move-result-object v2

    .line 3585
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/facebook/acra/config/StartupBlockingConfig;->minNumQueuedReportsToBlockStartup:I

    if-le v1, v3, :cond_2

    .line 3586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3588
    :try_start_0
    sget-object v3, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blocking for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lcom/facebook/acra/config/StartupBlockingConfig;->maxTimeSpentBlockedOnUploadMs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "s to upload errors"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    iget-boolean v3, v2, Lcom/facebook/acra/config/StartupBlockingConfig;->notifyWhileBlockingStartup:Z

    if-eqz v3, :cond_0

    .line 3591
    invoke-direct {p0, v2}, Lcom/facebook/acra/ErrorReporter;->showBlockingNotification(Lcom/facebook/acra/config/StartupBlockingConfig;)V

    .line 3593
    :cond_0
    iget-wide v6, v2, Lcom/facebook/acra/config/StartupBlockingConfig;->maxTimeSpentBlockedOnUploadMs:J

    invoke-virtual {v0, v6, v7}, Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;->join(J)V

    .line 3594
    iget-boolean v2, v2, Lcom/facebook/acra/config/StartupBlockingConfig;->notifyWhileBlockingStartup:Z

    if-eqz v2, :cond_1

    .line 3595
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->cancelBlockingNotification()V

    .line 3597
    :cond_1
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "done blocking"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setDurationStartupBlocked(J)V

    .line 3602
    invoke-static {v1}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setTotalCrashesUploaded(I)V

    .line 3606
    :cond_2
    :goto_0
    return-object v0

    .line 3598
    :catch_0
    move-exception v2

    .line 3599
    :try_start_1
    sget-object v2, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "interrupted while waiting for error reports to upload"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setDurationStartupBlocked(J)V

    .line 3602
    invoke-static {v1}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setTotalCrashesUploaded(I)V

    goto :goto_0

    .line 3601
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setDurationStartupBlocked(J)V

    .line 3602
    invoke-static {v1}, Lcom/facebook/acra/StartTimeBlockedRecorder;->setTotalCrashesUploaded(I)V

    throw v0
.end method

.method public checkReportsOnApplicationStart()V
    .locals 1

    .prologue
    .line 3462
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->checkNativeReportsOnApplicationStart()V

    .line 3463
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->REPORTS_TO_CHECK_ON_STARTUP:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3464
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->REPORTS_TO_CHECK_ON_STARTUP:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->checkReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 3466
    :cond_0
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->checkDeathmonReports()V

    .line 3468
    monitor-enter p0

    .line 3469
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mFinishedCheckingReports:Z

    .line 3470
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3471
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->startUploadIfReady()V

    .line 3472
    return-void

    .line 3470
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public deletePartialANRReports()V
    .locals 4

    .prologue
    .line 2363
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->ANR_REPORTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2364
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "traces"

    const/4 v3, 0x0

    .line 2365
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v2, ".stacktrace"

    .line 2364
    invoke-static {v0, v2}, Lcom/facebook/acra/ErrorReporter;->purgeDirectory(Ljava/io/File;Ljava/lang/String;)V

    .line 2366
    monitor-exit v1

    .line 2367
    return-void

    .line 2366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getActivityLogger()Lcom/facebook/acra/util/SimpleTraceLogger;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    return-object v0
.end method

.method public getAppStartDateFormat3339()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    monitor-enter v1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAppStartTickTimeMs()J
    .locals 2

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartTickTimeMs:J

    return-wide v0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mClientUserId:Ljava/lang/String;

    return-object v0
.end method

.method getConstantFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConstantFields:Ljava/util/Map;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getCustomFieldsSnapshot()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEventsLog()Ljava/lang/String;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 2505
    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const-string v2, "events"

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 2512
    invoke-interface {v6}, Lcom/facebook/acra/config/AcraReportingConfig;->allowCollectionOfMaxNumberOfLinesInLogcat()Z

    move-result v6

    .line 2505
    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method getLazyCustomFieldsSnapshot()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/CustomReportDataSupplier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    monitor-enter v1

    .line 1245
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    .line 1246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLogBridge()Lcom/facebook/acra/LogBridge;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3782
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    return-object v0
.end method

.method public getLogcatOutputIfPidFound(ZLjava/lang/Integer;)Ljava/lang/String;
    .locals 7
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2468
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 2476
    invoke-interface {v3}, Lcom/facebook/acra/config/AcraReportingConfig;->allowCollectionOfMaxNumberOfLinesInLogcat()Z

    move-result v6

    move-object v3, v2

    move v5, p1

    .line 2469
    invoke-static/range {v0 .. v6}, Lcom/facebook/acra/LogCatCollector;->collectLogCat(Landroid/content/Context;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 2477
    if-eqz v0, :cond_0

    .line 2478
    if-nez p2, :cond_1

    move-object v2, v0

    .line 2493
    :cond_0
    :goto_0
    return-object v2

    .line 2483
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^\\d+-\\d+\\s+\\d+:\\d+:\\d+\\.\\d+\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2485
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\s+\\d+\\s+[A-Z]\\s+(.*?)$"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2487
    const/16 v3, 0x8

    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2488
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2489
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, v0

    .line 2490
    goto :goto_0
.end method

.method public getSigquitTracesExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    const-string v0, ".stacktrace"

    return-object v0
.end method

.method public getSigquitTracesPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "traces"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .param p2    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1830
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1831
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getLeanStackTraceIfNecessary(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1830
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;ILcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/lang/String;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 6
    .param p3    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2210
    const/4 v4, 0x1

    .line 2211
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getLeanStackTraceIfNecessary(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    .line 2210
    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;ILcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1849
    if-eqz p2, :cond_0

    new-instance v0, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v0, p2}, Lcom/facebook/acra/CrashReportData;-><init>(Ljava/util/Map;)V

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/facebook/acra/ErrorReporter;->handleException(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleExceptionDelayed(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;)V
    .locals 6
    .param p2    # Lcom/facebook/acra/CrashReportData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1861
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter;->getLeanStackTraceIfNecessary(Ljava/lang/Throwable;)Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/acra/ErrorReporter;->handleExceptionInternal(Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/lang/String;ILcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)Lcom/facebook/acra/ErrorReporter$ReportsSenderWorker;

    .line 1862
    return-void
.end method

.method public handleUncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;)V
    .locals 5
    .param p3    # Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1721
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {p0, v0}, Lcom/facebook/acra/ErrorReporter;->checkAndMaybeUpdateDailySentReportCount(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    :goto_0
    return-void

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getMaxPendingJavaCrashReports()I

    move-result v0

    .line 1727
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2

    .line 1728
    new-array v1, v3, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v1, v4

    .line 1729
    invoke-virtual {p0, v1}, Lcom/facebook/acra/ErrorReporter;->roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    move-result v1

    .line 1730
    if-lt v1, v0, :cond_1

    .line 1731
    const-string v0, "ErrorReporter"

    const-string v2, "Maximum pending Java crash threshold reached, Not storing count=%d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 1731
    invoke-static {v0, p2, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1739
    :cond_1
    const-string v0, "ErrorReporter"

    const-string v2, "Current pending Java crash report count = %d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1742
    :cond_2
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1744
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/acra/ErrorReporter;->uncaughtExceptionImpl(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/facebook/common/exceptionhandler/CustomStackTracerInterface$CustomStackTrace;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public init(Lcom/facebook/acra/config/AcraReportingConfig;)V
    .locals 4

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mInitializationComplete:Z

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ErrorReporter already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_0
    invoke-interface {p1}, Lcom/facebook/acra/config/AcraReportingConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    .line 1269
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 1272
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "context must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1275
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstallTime:J

    .line 1276
    iget-wide v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstallTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1277
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "could not retrieve APK mod time"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_2
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    .line 1280
    invoke-interface {p1}, Lcom/facebook/acra/config/AcraReportingConfig;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mChainedHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1282
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1283
    const-string v0, "ASL_SESSION_ID"

    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v1}, Lcom/facebook/acra/config/AcraReportingConfig;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :cond_3
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->addCriticalData()V

    .line 1291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/ErrorReporter;->mInitializationComplete:Z

    .line 1292
    return-void
.end method

.method public initFallible()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1299
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getOomReservationOverride()I

    move-result v0

    .line 1301
    if-gtz v0, :cond_0

    .line 1302
    const/high16 v0, 0x10000

    .line 1304
    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mOomReservation:[B

    .line 1306
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    monitor-enter v1

    .line 1307
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartDate:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1309
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mOomReservation:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-byte v3, v0, v2

    .line 1310
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->populateConstantFields()V

    .line 1319
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    const-string v1, "acra-reports"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1320
    new-instance v2, Ljava/io/File;

    const-string/jumbo v1, "reportfile.prealloc"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->getPreallocatedFileSizeOverride()J

    move-result-wide v0

    .line 1324
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 1325
    const-wide/32 v0, 0x180000

    .line 1328
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_2

    .line 1330
    :try_start_1
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/acra/ErrorReporter;->preallocateReportFile(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 1336
    :goto_0
    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mPreallocFileName:Ljava/io/File;

    .line 1337
    return-void

    .line 1310
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1331
    :catch_0
    move-exception v0

    .line 1332
    invoke-direct {p0, v0}, Lcom/facebook/acra/ErrorReporter;->tryLogInternalError(Ljava/lang/Throwable;)V

    .line 1333
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public prepareANRReport(Ljava/lang/String;Lcom/facebook/acra/FileGenerator;)I
    .locals 2

    .prologue
    .line 2435
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2436
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/facebook/acra/ErrorReporter;->buildCachedCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Ljava/lang/String;Ljava/io/File;Lcom/facebook/acra/FileGenerator;)I

    move-result v0

    return v0

    .line 2437
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepareANRReport(Lcom/facebook/acra/FileGenerator;)V
    .locals 6

    .prologue
    .line 2384
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2385
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->ANR_REPORTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2389
    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v4, 0x0

    sget-object v5, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/facebook/acra/ErrorReporter;->prepareReports(ILcom/facebook/acra/FileGenerator;Z[Lcom/facebook/acra/ErrorReporter$CrashReportType;)I

    .line 2390
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2391
    return-void

    .line 2386
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2390
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public prepareANRReport(Ljava/io/File;Lcom/facebook/acra/FileGenerator;)V
    .locals 3

    .prologue
    .line 2372
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2373
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2374
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->ANR_REPORTING_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2377
    :try_start_1
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/facebook/acra/ErrorReporter;->buildCachedCrashReport(Lcom/facebook/acra/ErrorReporter$CrashReportType;Ljava/lang/String;Ljava/io/File;Lcom/facebook/acra/FileGenerator;)I

    .line 2378
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2379
    return-void

    .line 2374
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2378
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public prepareCachedANRReports(I)I
    .locals 2

    .prologue
    .line 2453
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2454
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2455
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/acra/ErrorReporter;->checkAndHandleReportsLocked(ILcom/facebook/acra/ErrorReporter$CrashReportType;Z)I

    move-result v0

    return v0

    .line 2455
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public varargs prepareReports(ILcom/facebook/acra/FileGenerator;Z[Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 2404
    sget-object v1, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2405
    :try_start_0
    sget-object v0, Lcom/facebook/acra/ErrorReporter;->UNCAUGHT_EXCEPTION_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2406
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2408
    sget-object v0, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "#prepareReports - start"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    invoke-direct {p0, p4}, Lcom/facebook/acra/ErrorReporter;->discardOverlappingReports([Lcom/facebook/acra/ErrorReporter$CrashReportType;)V

    .line 2411
    array-length v3, p4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p4, v1

    .line 2412
    sub-int v5, p1, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2413
    invoke-virtual {v4}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getHandler()Lcom/facebook/acra/ErrorReporter$ReportHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2414
    invoke-direct {p0, v5, v4, v2}, Lcom/facebook/acra/ErrorReporter;->checkAndHandleReportsLocked(ILcom/facebook/acra/ErrorReporter$CrashReportType;Z)I

    move-result v4

    add-int/2addr v0, v4

    .line 2411
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2420
    :cond_0
    invoke-direct {p0, v5, v4, p2, p3}, Lcom/facebook/acra/ErrorReporter;->processCrashAttachmentsLocked(ILcom/facebook/acra/ErrorReporter$CrashReportType;Lcom/facebook/acra/FileGenerator;Z)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 2426
    :cond_1
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->removeCoreDump()V

    .line 2428
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "#prepareReports - finish"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    return v0
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V
    .locals 2

    .prologue
    .line 1186
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    monitor-enter v1

    .line 1187
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    monitor-exit v1

    .line 1189
    return-void

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerActivity(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3751
    if-eqz p1, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mActivityLogger:Lcom/facebook/acra/util/SimpleTraceLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/util/SimpleTraceLogger;->append(Ljava/lang/String;)V

    .line 3754
    :cond_0
    return-void
.end method

.method public removeAllReportSenders()V
    .locals 2

    .prologue
    .line 3705
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3706
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3707
    monitor-exit v1

    .line 3708
    return-void

    .line 3707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLazyCustomData(Ljava/lang/String;)Lcom/facebook/acra/CustomReportDataSupplier;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1214
    if-nez p1, :cond_0

    .line 1215
    const/4 v0, 0x0

    .line 1218
    :goto_0
    return-object v0

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    monitor-enter v1

    .line 1218
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mInstanceLazyCustomParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/CustomReportDataSupplier;

    monitor-exit v1

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportErrorAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1665
    invoke-static {p1, p2}, Lcom/facebook/common/exceptionhandler/ExceptionHandlerManager;->handleThrowableAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1666
    return-void
.end method

.method public varargs roughlyCountPendingReportsOfType([Lcom/facebook/acra/ErrorReporter$CrashReportType;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3557
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 3558
    sget-object v1, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3566
    :cond_0
    return v0

    .line 3563
    :cond_1
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p1, v1

    .line 3564
    iget-object v4, p0, Lcom/facebook/acra/ErrorReporter;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->access$1400(Lcom/facebook/acra/ErrorReporter$CrashReportType;Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/acra/Spool$Snapshot;->getEstimate()I

    move-result v2

    add-int/2addr v2, v0

    .line 3563
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    .locals 0

    .prologue
    .line 3128
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mANRDataProvider:Lcom/facebook/acra/anr/ANRDataProvider;

    .line 3129
    return-void
.end method

.method public setAppStartTickTimeMs(J)V
    .locals 1

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/facebook/acra/ErrorReporter;->mAppStartTickTimeMs:J

    .line 301
    return-void
.end method

.method public declared-synchronized setBatchUploader(Lcom/facebook/acra/BatchUploader;)V
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    invoke-interface {v0}, Lcom/facebook/acra/config/AcraReportingConfig;->shouldUseUploadService()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mBatchUploader:Lcom/facebook/acra/BatchUploader;

    .line 292
    invoke-direct {p0}, Lcom/facebook/acra/ErrorReporter;->startUploadIfReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBlackBoxRecorderControl(Lcom/facebook/acra/BlackBoxRecorderControl;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mBlackBoxRecorderControl:Lcom/facebook/acra/BlackBoxRecorderControl;

    .line 1193
    return-void
.end method

.method public setClientUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mClientUserId:Ljava/lang/String;

    .line 1080
    return-void
.end method

.method public setCrashReportedObserver(Lcom/facebook/acra/ErrorReporter$CrashReportedObserver;)V
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mCrashReportedObserver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2195
    return-void
.end method

.method public setExcludedReportObserver(Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;)V
    .locals 0
    .param p1    # Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mExcludedReportObserver:Lcom/facebook/acra/ErrorReporter$ExcludedReportObserver;

    .line 1202
    return-void
.end method

.method public setLogBridge(Lcom/facebook/acra/LogBridge;)V
    .locals 0
    .param p1    # Lcom/facebook/acra/LogBridge;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3791
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mLogBridge:Lcom/facebook/acra/LogBridge;

    .line 3792
    return-void
.end method

.method public setMaxReportSize(J)V
    .locals 1

    .prologue
    .line 3716
    iput-wide p1, p0, Lcom/facebook/acra/ErrorReporter;->mMaxReportSize:J

    .line 3717
    return-void
.end method

.method public setReportProxy(Ljava/net/Proxy;)V
    .locals 4

    .prologue
    .line 3735
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3736
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/sender/ReportSender;

    .line 3737
    instance-of v3, v0, Lcom/facebook/acra/sender/FlexibleReportSender;

    if-eqz v3, :cond_0

    .line 3738
    check-cast v0, Lcom/facebook/acra/sender/FlexibleReportSender;

    invoke-interface {v0, p1}, Lcom/facebook/acra/sender/FlexibleReportSender;->setProxy(Ljava/net/Proxy;)V

    goto :goto_0

    .line 3741
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3742
    return-void
.end method

.method public setReportSender(Lcom/facebook/acra/sender/ReportSender;)V
    .locals 2

    .prologue
    .line 3728
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mReportSenders:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3729
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/acra/ErrorReporter;->removeAllReportSenders()V

    .line 3730
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter;->addReportSender(Lcom/facebook/acra/sender/ReportSender;)V

    .line 3731
    monitor-exit v1

    .line 3732
    return-void

    .line 3731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/facebook/acra/ErrorReporter;->mUserId:Ljava/lang/String;

    .line 1071
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1704
    invoke-virtual {p0, p1, p2}, Lcom/facebook/acra/ErrorReporter;->reportErrorAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1705
    return-void
.end method

.method public writeReportToStream(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1805
    new-instance v4, Lcom/facebook/acra/CrashReportData;

    invoke-direct {v4}, Lcom/facebook/acra/CrashReportData;-><init>()V

    .line 1806
    invoke-static {p2}, Lcom/facebook/acra/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v5

    .line 1807
    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 1808
    invoke-static {}, Lcom/facebook/acra/util/CrashTimeDataCollectorHelper;->generateReportUuid()Ljava/util/UUID;

    move-result-object v0

    .line 1809
    const-string v1, "REPORT_ID"

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0, v5}, Lcom/facebook/acra/CrashReportData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;

    .line 1810
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter;->mConfig:Lcom/facebook/acra/config/AcraReportingConfig;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/facebook/acra/CrashTimeDataCollector;->gatherCrashData(Lcom/facebook/acra/ErrorReporter;Lcom/facebook/acra/config/AcraReportingConfig;Ljava/lang/String;Ljava/lang/Throwable;Lcom/facebook/acra/CrashReportData;Ljava/io/Writer;Lcom/facebook/acra/Spool$FileBeingConsumed;Z)V

    .line 1812
    return-void
.end method
