.class public Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;
.super Ljava/lang/Object;
.source "FbColdStartExperimentsLoader.java"


# annotations
.annotation build Lcom/facebook/common/coldstartexperiments/annotations/ColdStartExperimentsLoader;
    coldStartExperimentsClass = Lcom/facebook/common/coldstartexperiments/experiments/FBExperimentsLoader;
    loader = "FbColdStartExperimentsLoaderWorker"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sLogError:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "FbColdStartExperimentsLoader"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFbColdStartExperimentsValues(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 2

    .prologue
    .line 89
    const-string v0, "startup_experiments"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {v0}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->readFbColdStartExperimentsValuesFromDisk(Ljava/io/File;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 97
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    goto :goto_0
.end method

.method public static defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    return-object v0
.end method

.method public static getFbColdStartExperimentsValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    return-object v0
.end method

.method public static getFbColdStartExperimentsValues(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    :cond_0
    sget-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    .line 71
    :goto_0
    return-object v0

    .line 58
    :cond_1
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-string v1, "context is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->defaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_2
    const-class v1, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    monitor-exit v1

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_3
    :try_start_1
    invoke-static {p0}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->createFbColdStartExperimentsValues(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sFbColdStartExperimentsValues:Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static varargs declared-synchronized logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 177
    const-class v1, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;

    monitor-enter v1

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v2, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    sget-object v2, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sLogError:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 181
    sput-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sLogError:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit v1

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static varargs declared-synchronized logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatUse"
        }
    .end annotation

    .prologue
    .line 167
    const-class v1, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 168
    sget-object v2, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v2, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sLogError:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 171
    sput-object v0, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->sLogError:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    monitor-exit v1

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static readFbColdStartExperimentsValuesFromDisk(Ljava/io/File;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 110
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 111
    const-string v1, "File too large: %d %s"

    new-array v2, v9, [Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "startup_experiments"

    aput-object v3, v2, v8

    .line 111
    invoke-static {v1, v2}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 118
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    .line 120
    :try_start_1
    new-array v4, v1, [B

    .line 121
    invoke-static {v3, v4, v1}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->slurp(Ljava/io/InputStream;[BI)I

    move-result v1

    .line 122
    if-gtz v1, :cond_3

    .line 123
    const-string v4, "Unable to slurp file: %d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    const-string v6, "startup_experiments"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 132
    const-string v2, "Cannot read file: %s %s"

    new-array v3, v9, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "startup_experiments"

    aput-object v4, v3, v8

    .line 132
    invoke-static {v1, v2, v3}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 127
    :cond_3
    const/4 v5, 0x0

    :try_start_5
    invoke-static {v4, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperimentsLoaderWorker;->readBuffer(Ljava/nio/ByteBuffer;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperimentsValues;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 131
    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 118
    :catch_3
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_3
    :try_start_a
    throw v1

    :catch_4
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private static slurp(Ljava/io/InputStream;[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 145
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, v2

    .line 149
    :goto_0
    if-ge v1, v3, :cond_0

    .line 150
    sub-int v2, v3, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 151
    if-gez v2, :cond_1

    .line 157
    :cond_0
    if-ne v2, v0, :cond_2

    if-nez v1, :cond_2

    .line 161
    :goto_1
    return v0

    .line 154
    :cond_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
