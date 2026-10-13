.class public final enum Lcom/facebook/acra/ErrorReporter$CrashReportType;
.super Ljava/lang/Enum;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CrashReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/acra/ErrorReporter$CrashReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

.field public static final enum NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;


# instance fields
.field private final attachmentField:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final defaultMaxSize:J

.field private final directory:Ljava/lang/String;

.field private final fileExtensions:[Ljava/lang/String;

.field private final handler:Lcom/facebook/acra/ErrorReporter$ReportHandler;

.field private final mLock:Ljava/lang/Object;

.field private mSpool:Lcom/facebook/acra/Spool;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 703
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "ACRA_CRASH_REPORT"

    const/4 v2, 0x0

    const-string v3, "acra-reports"

    const-wide/32 v4, 0x180000

    const/4 v6, 0x0

    new-instance v7, Lcom/facebook/acra/ErrorReporter$AcraReportHandler;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/facebook/acra/ErrorReporter$AcraReportHandler;-><init>(Lcom/facebook/acra/ErrorReporter$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ".stacktrace"

    aput-object v10, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lcom/facebook/acra/ErrorReporter$ReportHandler;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 710
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "NATIVE_CRASH_REPORT"

    const/4 v2, 0x1

    const-string v3, "minidumps"

    const-wide/32 v4, 0x800000

    const-string v6, "MINIDUMP"

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ".dmp"

    aput-object v10, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lcom/facebook/acra/ErrorReporter$ReportHandler;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 717
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "ANR_REPORT"

    const/4 v2, 0x2

    const-string v3, "traces"

    const-wide/32 v4, 0x80000

    const-string v6, "SIGQUIT"

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ".stacktrace"

    aput-object v10, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lcom/facebook/acra/ErrorReporter$ReportHandler;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 724
    new-instance v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const-string v1, "CACHED_ANR_REPORT"

    const/4 v2, 0x3

    const-string v3, "traces"

    const-wide/32 v4, 0x80000

    const-string v6, "SIGQUIT"

    new-instance v7, Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;

    invoke-direct {v7}, Lcom/facebook/acra/ErrorReporter$CachedANRReportHandler;-><init>()V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ".cachedreport"

    aput-object v10, v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/acra/ErrorReporter$CrashReportType;-><init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lcom/facebook/acra/ErrorReporter$ReportHandler;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .line 702
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ACRA_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->NATIVE_CRASH_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/facebook/acra/ErrorReporter$CrashReportType;->CACHED_ANR_REPORT:Lcom/facebook/acra/ErrorReporter$CrashReportType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Lcom/facebook/acra/ErrorReporter$ReportHandler;[Ljava/lang/String;)V
    .locals 2
    .param p3, "directory"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "maxSize"    # J
    .param p6, "attachmentField"    # Ljava/lang/String;
    .param p7, "handler"    # Lcom/facebook/acra/ErrorReporter$ReportHandler;
    .param p8, "fileExtensions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/facebook/acra/ErrorReporter$ReportHandler;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 736
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->mLock:Ljava/lang/Object;

    .line 746
    iput-object p3, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 747
    iput-wide p4, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    .line 748
    iput-object p6, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Ljava/lang/String;

    .line 749
    iput-object p7, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->handler:Lcom/facebook/acra/ErrorReporter$ReportHandler;

    .line 750
    iput-object p8, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    .line 751
    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/acra/ErrorReporter$CrashReportType;Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getPendingCrashReports(Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/facebook/acra/ErrorReporter$CrashReportType;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->attachmentField:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/facebook/acra/ErrorReporter$CrashReportType;)J
    .locals 2
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    .line 702
    iget-wide v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->defaultMaxSize:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/facebook/acra/ErrorReporter$CrashReportType;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/ErrorReporter$CrashReportType;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    return-object v0
.end method

.method private getPendingCrashReports(Landroid/content/Context;)Lcom/facebook/acra/Spool$Snapshot;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->fileExtensions:[Ljava/lang/String;

    .line 823
    .local v0, "extensions":[Ljava/lang/String;
    new-instance v1, Lcom/facebook/acra/ErrorReporter$CrashReportType$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/acra/ErrorReporter$CrashReportType$1;-><init>(Lcom/facebook/acra/ErrorReporter$CrashReportType;[Ljava/lang/String;)V

    .line 835
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {p0, p1}, Lcom/facebook/acra/ErrorReporter$CrashReportType;->getSpool(Landroid/content/Context;)Lcom/facebook/acra/Spool;

    move-result-object v2

    new-instance v3, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/facebook/acra/ErrorReporter$FifoSpoolComparator;-><init>(Lcom/facebook/acra/ErrorReporter$1;)V

    invoke-virtual {v2, v3, v1}, Lcom/facebook/acra/Spool;->snapshot(Ljava/util/Comparator;Ljava/io/FilenameFilter;)Lcom/facebook/acra/Spool$Snapshot;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 702
    const-class v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/acra/ErrorReporter$CrashReportType;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->$VALUES:[Lcom/facebook/acra/ErrorReporter$CrashReportType;

    invoke-virtual {v0}, [Lcom/facebook/acra/ErrorReporter$CrashReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/acra/ErrorReporter$CrashReportType;

    return-object v0
.end method


# virtual methods
.method public getHandler()Lcom/facebook/acra/ErrorReporter$ReportHandler;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->handler:Lcom/facebook/acra/ErrorReporter$ReportHandler;

    return-object v0
.end method

.method public getSentReportsCountToday(Landroid/content/Context;)Lcom/facebook/acra/ErrorReporter$CrashReportCounter;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 763
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    .line 764
    invoke-virtual {p1, v8, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    const-string v9, "report_count"

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 765
    .local v6, "reportCountFile":Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v7, v6, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v7, "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 767
    const/16 v8, 0x10

    :try_start_1
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 768
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->read([B)I

    .line 770
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 771
    .local v4, "lastLogTime":J
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 772
    .local v3, "lastVersionCode":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 775
    .local v1, "count":I
    new-instance v8, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;

    invoke-direct {v8, v4, v5, v3, v1}, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;-><init>(JII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 776
    if-eqz v7, :cond_0

    if-eqz v9, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 780
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "count":I
    .end local v3    # "lastVersionCode":I
    .end local v4    # "lastLogTime":J
    .end local v7    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-object v8

    .line 776
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "count":I
    .restart local v3    # "lastVersionCode":I
    .restart local v4    # "lastLogTime":J
    .restart local v7    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v10

    :try_start_3
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "count":I
    .end local v3    # "lastVersionCode":I
    .end local v4    # "lastLogTime":J
    .end local v7    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 777
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Failed to get crash report count"

    invoke-static {v8, v2, v9}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 780
    new-instance v8, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;

    const-wide/16 v10, 0x0

    invoke-direct {v8, v10, v11, v12, v12}, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;-><init>(JII)V

    goto :goto_0

    .line 776
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v1    # "count":I
    .restart local v3    # "lastVersionCode":I
    .restart local v4    # "lastLogTime":J
    .restart local v7    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 765
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "count":I
    .end local v3    # "lastVersionCode":I
    .end local v4    # "lastLogTime":J
    :catch_2
    move-exception v8

    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 776
    :catchall_0
    move-exception v9

    move-object v13, v9

    move-object v9, v8

    move-object v8, v13

    :goto_1
    if-eqz v7, :cond_2

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v8

    :catch_3
    move-exception v10

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v8

    goto :goto_1
.end method

.method public getSpool(Landroid/content/Context;)Lcom/facebook/acra/Spool;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 754
    iget-object v1, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->mSpool:Lcom/facebook/acra/Spool;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Lcom/facebook/acra/Spool;

    iget-object v2, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/facebook/acra/Spool;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->mSpool:Lcom/facebook/acra/Spool;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->mSpool:Lcom/facebook/acra/Spool;

    monitor-exit v1

    return-object v0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSentReportsCountToday(Landroid/content/Context;Lcom/facebook/acra/ErrorReporter$CrashReportCounter;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "crashReportCounter"    # Lcom/facebook/acra/ErrorReporter$CrashReportCounter;

    .prologue
    .line 788
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/facebook/acra/ErrorReporter$CrashReportType;->directory:Ljava/lang/String;

    const/4 v8, 0x0

    .line 789
    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    const-string v8, "report_count"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 791
    .local v5, "reportCountFile":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    div-long v2, v8, v10

    .line 792
    .local v2, "currentTime":J
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v1

    .line 793
    .local v1, "currentVersionCode":I
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v6, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v6, "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v8, 0x0

    .line 795
    :try_start_1
    iget-wide v10, p2, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->logTime:J

    cmp-long v7, v2, v10

    if-nez v7, :cond_1

    iget v7, p2, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->versionCode:I

    if-ne v1, v7, :cond_1

    .line 797
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 798
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget v7, p2, Lcom/facebook/acra/ErrorReporter$CrashReportCounter;->count:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 799
    const-wide/16 v10, 0xc

    invoke-virtual {v6, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 800
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 808
    :goto_0
    if-eqz v6, :cond_0

    if-eqz v8, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 811
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :cond_0
    :goto_1
    return-void

    .line 802
    .restart local v6    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :cond_1
    const/16 v7, 0x10

    :try_start_3
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 803
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 804
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 805
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 806
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 793
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 808
    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_2
    if-eqz v6, :cond_2

    if-eqz v8, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .end local v6    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v4

    .line 809
    .local v4, "e":Ljava/io/IOException;
    sget-object v7, Lcom/facebook/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Failed to set crash report count"

    invoke-static {v7, v4, v8}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 808
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "reportCountRandomAccessFile":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v7

    :try_start_7
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :catch_3
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v7

    goto :goto_2
.end method
