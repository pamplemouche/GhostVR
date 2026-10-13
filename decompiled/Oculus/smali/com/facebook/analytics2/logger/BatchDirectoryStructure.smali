.class Lcom/facebook/analytics2/logger/BatchDirectoryStructure;
.super Ljava/lang/Object;
.source "BatchDirectoryStructure.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;
    }
.end annotation


# static fields
.field static final DAY_IN_MS:J

.field static final HOUR_IN_MS:J

.field public static final TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->DAY_IN_MS:J

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->HOUR_IN_MS:J

    .line 136
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->compareInt(II)I

    move-result v0

    return v0
.end method

.method private static compareInt(II)I
    .locals 1

    .prologue
    .line 155
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static daysSinceEpoch()J
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->wallTimeNow()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->DAY_IN_MS:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getBaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .prologue
    .line 58
    const-string v0, "analytics"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getBatchFileForNow(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Ljava/io/File;

    .line 107
    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getCurrentHourDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getMonotonicTimeSinceBoot()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {p1, v2}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->createNameWithBatchPrefixAndSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentDayDir(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->daysSinceEpoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentHourDir(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getCurrentDayDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized getMonotonicTimeSinceBoot()J
    .locals 4

    .prologue
    .line 127
    const-class v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getMyProcessDir(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "unknown"

    .line 70
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getSpecificProcessDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getSpecificProcessDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->userIdToDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hoursSinceEpoch()J
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->wallTimeNow()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->HOUR_IN_MS:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static userIdToDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 88
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string p0, "null"

    goto :goto_0
.end method

.method static declared-synchronized wallTimeNow()J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    .line 123
    const-class v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
