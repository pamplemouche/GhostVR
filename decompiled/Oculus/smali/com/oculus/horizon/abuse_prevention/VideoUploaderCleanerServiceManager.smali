.class public Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;
.super Ljava/lang/Object;
.source "VideoUploaderCleanerServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClock:Lcom/oculus/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/oculus/time/Clock;

    invoke-direct {v0}, Lcom/oculus/time/Clock;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->mClock:Lcom/oculus/time/Clock;

    .line 24
    return-void
.end method

.method private static getCanonicalPath(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    sget-object v1, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v2, "error in getCanonicalPath"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public clean(Landroid/os/AsyncTask;[Ljava/io/File;)Z
    .locals 16

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->mClock:Lcom/oculus/time/Clock;

    invoke-virtual {v2}, Lcom/oculus/time/Clock;->now()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long v6, v2, v4

    .line 37
    const/4 v3, 0x0

    .line 38
    sget-object v2, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "cutoff is %s"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    move v4, v2

    move v2, v3

    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v3, p2, v4

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 42
    if-nez v8, :cond_0

    .line 43
    sget-object v8, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unable to listFiles for %s: not a directory"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v11

    invoke-static {v8, v9, v10}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 47
    :cond_0
    sget-object v9, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v10, "found %s subdirectories for %s"

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v10, v11, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    array-length v9, v8

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_4

    aget-object v10, v8, v3

    .line 50
    invoke-virtual/range {p1 .. p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 51
    sget-object v2, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "job cancelled"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x0

    .line 79
    :goto_3
    return v2

    .line 55
    :cond_1
    invoke-static {v10}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 56
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-nez v12, :cond_2

    .line 57
    sget-object v10, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v12, "found unexpected non-directory: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    invoke-static {v10, v12, v13}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 62
    cmp-long v14, v12, v6

    if-lez v14, :cond_3

    .line 63
    sget-object v10, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v14, "keeping %s (modified %d)"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v10, v14, v11, v12}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 66
    :cond_3
    sget-object v14, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v15, "deleting %s (modified %d)"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v14, v15, v11, v12}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 70
    :try_start_0
    invoke-static {v10}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->deleteSimpleDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 71
    :catch_0
    move-exception v11

    .line 72
    sget-object v12, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v13, "error deleting dir %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v10}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->getCanonicalPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v15

    invoke-static {v12, v11, v13, v14}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 76
    :cond_4
    sget-object v3, Lcom/oculus/horizon/abuse_prevention/VideoUploaderCleanerServiceManager;->TAG:Ljava/lang/String;

    const-string v8, "job completed, removed %d directory(ies)"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    :cond_5
    const/4 v2, 0x1

    goto :goto_3
.end method
