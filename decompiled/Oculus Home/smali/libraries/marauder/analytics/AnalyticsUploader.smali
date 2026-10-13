.class public Llibraries/marauder/analytics/AnalyticsUploader;
.super Ljava/lang/Object;
.source "AnalyticsUploader.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mDirectory:Ljava/io/File;

.field private final mLoginSecret:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Llibraries/marauder/analytics/AnalyticsUploader;

    sput-object v0, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mUrl:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mDirectory:Ljava/io/File;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mAppId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mLoginSecret:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "loginSecret"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mUrl:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Llibraries/marauder/analytics/AnalyticsUtil;->getAnalyticsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mDirectory:Ljava/io/File;

    .line 34
    iput-object p3, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mAppId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mLoginSecret:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 114
    .local v3, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 115
    .end local v3    # "reader":Ljava/io/Reader;
    .local v4, "reader":Ljava/io/Reader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 118
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 119
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/Reader;
    .restart local v3    # "reader":Ljava/io/Reader;
    :goto_1
    if-eqz v3, :cond_0

    .line 125
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 128
    :cond_0
    :goto_2
    throw v6

    .line 121
    .end local v3    # "reader":Ljava/io/Reader;
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v4    # "reader":Ljava/io/Reader;
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 123
    if-eqz v4, :cond_2

    .line 125
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :cond_2
    :goto_3
    return-object v6

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ex":Ljava/io/IOException;
    sget-object v7, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v8, "IOException thrown while closing Closeable."

    invoke-static {v7, v2, v8}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 126
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/Reader;
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "reader":Ljava/io/Reader;
    :catch_1
    move-exception v2

    .line 127
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v7, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v8, "IOException thrown while closing Closeable."

    invoke-static {v7, v2, v8}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 123
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_1
.end method

.method private uploadBatch(Ljava/lang/String;)I
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {}, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->getInstance()Llibraries/marauder/analytics/request/protocol/AnalyticsClient;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mLoginSecret:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Llibraries/marauder/analytics/request/protocol/AnalyticsClient;->sendBatchLogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private uploadBatchInternal(Ljava/io/File;)I
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "Uploading file %s"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const/4 v3, -0x1

    .line 84
    .local v3, "responseCode":I
    :try_start_0
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/AnalyticsUploader;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "message":Ljava/lang/String;
    invoke-direct {p0, v2}, Llibraries/marauder/analytics/AnalyticsUploader;->uploadBatch(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 90
    .end local v2    # "message":Ljava/lang/String;
    :goto_0
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 92
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "Successfully uploaded file %s"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 94
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 95
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "File %s was not deleted"

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .end local v0    # "deleted":Z
    :cond_0
    :goto_1
    return v3

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "Unable to read file %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object v1, v6, v9

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "Failed to upload file %s with HTTP response %d"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Llibraries/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/16 v4, 0x193

    if-ne v3, v4, :cond_0

    .line 100
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "It looks like the Facebook Marauder endpoint might be rate-limiting your log uploads. If you\'re on fbguest, try switching to lighthouse instead."

    invoke-static {v4, v5}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public uploadAllBatches()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 46
    sget-object v4, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v5, "Attempting to upload analytics"

    invoke-static {v4, v5}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    sget-object v3, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v4, "No analytics directory exists, nothing to do"

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    iget-object v4, p0, Llibraries/marauder/analytics/AnalyticsUploader;->mDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 54
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_2

    .line 55
    sget-object v3, Llibraries/marauder/analytics/AnalyticsUploader;->TAG:Ljava/lang/Class;

    const-string v4, "Analytics directory error"

    invoke-static {v3, v4}, Llibraries/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 60
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Llibraries/marauder/analytics/AnalyticsUploader;->uploadBatch(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v3

    .line 61
    goto :goto_0

    .line 59
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public uploadBatch(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/AnalyticsUploader;->uploadBatchInternal(Ljava/io/File;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
