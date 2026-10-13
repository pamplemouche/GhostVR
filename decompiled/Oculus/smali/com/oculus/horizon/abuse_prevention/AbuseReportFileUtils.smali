.class public Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;
.super Ljava/lang/Object;
.source "AbuseReportFileUtils.java"


# static fields
.field private static final RECORDING_PATH:Ljava/lang/String;

.field private static final STAGING_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOADING_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->RECORDING_PATH:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->STAGING_PATH:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->UPLOADING_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createVideoRecordingFile(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "vid.mp4"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static deleteAllRecordingFiles(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 64
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getRecordingRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_0

    .line 74
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 75
    invoke-static {v3}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->deleteVideo(Ljava/io/File;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteRecordingFiles(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getRecordingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->deleteVideo(Ljava/io/File;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static deleteSimpleDirectory(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 148
    if-nez v2, :cond_1

    .line 149
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v2, "not deleting %s: already deleted"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 153
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_3

    .line 154
    sget-object v5, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v6, "found unexpected non-file: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    sget-object v5, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v6, "could not delete file: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    sget-object v0, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v2, "could not delete directory: %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static deleteVideo(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 131
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->createVideoRecordingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    return-void
.end method

.method public static ensureDirectoryExists(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method

.method public static getAllRoots(Landroid/content/Context;)[Ljava/io/File;
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    .line 137
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getRecordingRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 138
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getStagingRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 139
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getUploadingRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getRecordingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->RECORDING_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getRecordingRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->RECORDING_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getStagingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->STAGING_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getStagingRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->STAGING_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUploadingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 41
    invoke-static {p0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getUploadingRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUploadingRootDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->UPLOADING_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static moveRecordingToStaging(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getRecordingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p0, p1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getStagingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->ensureDirectoryExists(Ljava/io/File;)V

    .line 100
    invoke-static {v0, v1}, Lcom/google/common/io/Files;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static moveStagingToUploading(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p0, p2}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getUploadingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->ensureDirectoryExists(Ljava/io/File;)V

    .line 110
    invoke-static {p0, p1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->getStagingDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 111
    invoke-static {v1}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->createVideoRecordingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 112
    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->createVideoRecordingFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    sget-object v4, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v5, "not moving %s to %s: latter already exists"

    .line 118
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v4, v5, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    sget-object v2, Lcom/oculus/horizon/abuse_prevention/AbuseReportFileUtils;->TAG:Ljava/lang/String;

    const-string v3, "failed to delete %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-object v0

    .line 121
    :cond_1
    invoke-static {v2, v3}, Lcom/google/common/io/Files;->move(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method
