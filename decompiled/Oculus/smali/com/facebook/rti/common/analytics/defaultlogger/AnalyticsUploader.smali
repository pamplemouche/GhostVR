.class public Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;
.super Ljava/lang/Object;
.source "AnalyticsUploader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAnalyticsHttpClient:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;

.field private final mDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;

    new-instance v2, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;

    invoke-direct {v2, p3}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;-><init>(Lcom/facebook/rti/common/util/NonInjectProvider;)V

    invoke-direct {v1, v0, v2, p4}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;-><init>(Ljava/lang/String;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsService;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mAnalyticsHttpClient:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;

    .line 33
    invoke-static {p1, p2}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->getAnalyticsDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mDirectory:Ljava/io/File;

    .line 34
    return-void
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 114
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 118
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 119
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    :goto_1
    if-eqz v1, :cond_0

    .line 125
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :cond_0
    :goto_2
    throw v0

    .line 121
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 124
    if-eqz v1, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :cond_2
    :goto_3
    return-object v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    .line 123
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private uploadBatchInternal(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    sget-object v2, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v3, "Uploading file %s"

    invoke-static {v2, v3, p1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return v1

    .line 89
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->readFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mAnalyticsHttpClient:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;

    invoke-virtual {v3, v2}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsHttpClient;->postAnalyticsRequest(Ljava/lang/String;)I

    move-result v2

    .line 97
    if-ne v2, v6, :cond_2

    .line 99
    sget-object v3, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v4, "Successful upload"

    invoke-static {v3, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 101
    if-nez v3, :cond_1

    .line 102
    sget-object v3, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v4, "File %s was not deleted"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_1
    :goto_1
    if-ne v2, v6, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    sget-object v2, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v3, "Unable to read file"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    sget-object v3, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v4, "Unsuccessful upload. response code=%d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 108
    goto :goto_2
.end method


# virtual methods
.method public uploadAllBatches()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    sget-object v2, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v3, "Attempting to upload analytics"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v2, "No analytics directory exists, nothing to do"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 52
    if-nez v3, :cond_4

    .line 53
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v2, "Analytics directory error"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 55
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v2, "directory_not_found"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v2, "directory_is_file"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->TAG:Ljava/lang/String;

    const-string v2, "directory_unknown_error"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_4
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 65
    invoke-direct {p0, v5}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;->uploadBatchInternal(Ljava/io/File;)Z

    move-result v5

    .line 66
    if-nez v5, :cond_5

    move v0, v1

    .line 68
    goto :goto_0

    .line 64
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
