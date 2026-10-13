.class public Lcom/oculus/logging/legacy/LogSizeController;
.super Ljava/lang/Object;
.source "LogSizeController.java"


# static fields
.field private static final BATCH_MAX_TOTAL_SIZE:I = 0x1f400000

.field private static final NEARLY_FULL_PERCENTAGE_TRESHOLD:D = 0.75

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/oculus/logging/legacy/LogSizeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanUpLogFiles(Ljava/io/File;)V
    .locals 12
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 23
    sget-object v6, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    const-string v7, "No analytics directory exists, doesn\'t need to clean up"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 28
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_2

    .line 29
    sget-object v6, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    const-string v7, "Analytics directory error"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :cond_2
    new-instance v6, Lcom/oculus/logging/legacy/LogSizeController$1;

    invoke-direct {v6}, Lcom/oculus/logging/legacy/LogSizeController$1;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "deletedFiles":I
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "length":J
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v2, v3, v6

    .line 43
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v8, v4

    const-wide/32 v10, 0x1f400000

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 45
    .local v0, "deleted":Z
    if-nez v0, :cond_3

    .line 46
    sget-object v8, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " was not deleted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .end local v0    # "deleted":Z
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 48
    .restart local v0    # "deleted":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 51
    .end local v0    # "deleted":Z
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_2

    .line 55
    .end local v2    # "file":Ljava/io/File;
    :cond_5
    if-lez v1, :cond_0

    .line 56
    sget-object v6, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too big batch files, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " files deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLogStorageNearlyFull(Ljava/io/File;)Z
    .locals 10
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    sget-object v5, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    const-string v6, "No analytics directory exists, doesn\'t need to clean up"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    return v4

    .line 66
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 67
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_2

    .line 68
    sget-object v5, Lcom/oculus/logging/legacy/LogSizeController;->TAG:Ljava/lang/String;

    const-string v6, "Analytics directory error"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_2
    const-wide/16 v2, 0x0

    .line 73
    .local v2, "length":J
    array-length v6, v1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v2, v8

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    long-to-double v6, v2

    const-wide v8, 0x41b7700000000000L    # 3.93216E8

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method
