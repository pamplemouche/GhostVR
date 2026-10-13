.class Lcom/facebook/analytics2/logger/BatchDirectoryStructure;
.super Ljava/lang/Object;
.source "BatchDirectoryStructure.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;
    }
.end annotation


# static fields
.field private static final BASE_DIRECTORY:Ljava/lang/String; = "analytics"

.field static final DAY_IN_MS:J

.field static final HOUR_IN_MS:J

.field public static final PRIORITY_HIGH:Ljava/lang/String; = "high"

.field public static final PRIORITY_NORMAL:Ljava/lang/String; = "normal"

.field public static final TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_PROCESS_DIRECTORY:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->DAY_IN_MS:J

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->HOUR_IN_MS:J

    .line 137
    new-instance v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$1;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$1;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->TIMESTAMP_FILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->compareInt(II)I

    move-result p0

    return p0
.end method

.method private static compareInt(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static daysSinceEpoch()J
    .locals 4

    .line 118
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->wallTimeNow()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->DAY_IN_MS:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getBaseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "analytics"

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static getBatchFile(Ljava/io/File;J)Ljava/io/File;
    .locals 1

    .line 112
    new-instance v0, Ljava/io/File;

    .line 113
    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getCurrentHourDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 114
    invoke-static {p1, p2}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->createNameWithBatchPrefixAndSuffix(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getBatchFileForNow(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 105
    new-instance v0, Ljava/io/File;

    .line 106
    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getCurrentHourDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 107
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure$BatchFilenameStructure;->createNameWithBatchPrefixAndSuffixForNow()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentDayDir(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->daysSinceEpoch()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentHourDir(Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getCurrentDayDir(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->hoursSinceEpoch()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMyProcessDir(Ljava/io/File;)Ljava/io/File;
    .locals 1

    .line 65
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getMyProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 69
    :cond_0
    invoke-static {p0, v0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getSpecificProcessDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getMyProcessName()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriorityDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 61
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->getBaseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getSpecificProcessDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->userIdToDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hoursSinceEpoch()J
    .locals 4

    .line 122
    invoke-static {}, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->wallTimeNow()J

    move-result-wide v0

    sget-wide v2, Lcom/facebook/analytics2/logger/BatchDirectoryStructure;->HOUR_IN_MS:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static userIdToDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nonnull;
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    return-object p0
.end method

.method static wallTimeNow()J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
