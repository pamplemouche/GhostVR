.class public Lcom/oculus/horizon/vrbugreporter/BugReport;
.super Ljava/lang/Object;
.source "BugReport.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:Ljava/util/Date;

.field private final mMetadata:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/util/Date;)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    .line 143
    iput-object p1, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mContext:Landroid/content/Context;

    .line 144
    iput-object p2, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mDate:Ljava/util/Date;

    .line 145
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/oculus/horizon/vrbugreporter/BugReport;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/oculus/horizon/vrbugreporter/BugReport;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/oculus/horizon/vrbugreporter/BugReport;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    .line 42
    const/4 v3, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v4, "could not create artifact directory"

    invoke-static {v2, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return-object v1

    .line 51
    :cond_0
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v4, "bug report %s created"

    invoke-virtual {v0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v2, 0x1

    .line 57
    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    move-object v1, v0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    sget-object v4, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v5, "permission to the bug report directory denied"

    invoke-static {v4, v5, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 57
    goto :goto_2
.end method

.method public static findAll(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/vrbugreporter/BugReport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->assertOnNonUiThread()V

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "vrbugreports"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 74
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "bug reports directory does not exist"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "bug reports directory does not contain bug reports"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v3, "permission to the bug report directory denied"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :cond_2
    :try_start_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 87
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getBugReportIdentifierFormat()Ljava/text/SimpleDateFormat;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 88
    if-eqz v4, :cond_3

    .line 89
    new-instance v5, Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-direct {v5, p0, v4}, Lcom/oculus/horizon/vrbugreporter/BugReport;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :catch_1
    move-exception v1

    .line 95
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v3, "invalid folder in the bug report directory"

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static findById(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/horizon/vrbugreporter/BugReport;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/oculus/util/thread/ThreadUtils;->assertOnNonUiThread()V

    .line 111
    :try_start_0
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getBugReportIdentifierFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vrbugreports/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/oculus/horizon/vrbugreporter/BugReport;

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/vrbugreporter/BugReport;-><init>(Landroid/content/Context;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 124
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "permission to the bug report directory denied"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "invalid bug report identifier: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getBugReportIdentifierFormat()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private getMetadataFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "metadata.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private loadMetadata()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getMetadataFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 254
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "failed to readFileContent bug report metadata"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 253
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 251
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private storeMetadata()V
    .locals 5

    .prologue
    .line 259
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getMetadataFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    const-string v3, "Bug report metadata"

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 262
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "failed to write bug report metadata"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 261
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 259
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_2
    :try_start_7
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public delete()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    :cond_0
    :goto_1
    return v0

    .line 158
    :cond_1
    sget-object v5, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v6, "deleting artifact %s"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v1, "deleting bug report directory %s"

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->loadMetadata()V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioClipFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "audio-clip.wav"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->loadMetadata()V

    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailsFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "oculus-details.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vrbugreports/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getBugReportIdentifierFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 199
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "log.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackagesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "oculus-packages.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenshotFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "screenshot.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordDetails()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Build Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getDetailsFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 243
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 242
    const/4 v5, 0x0

    .line 244
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 245
    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 248
    :cond_1
    :goto_1
    return-void

    .line 245
    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 245
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    .line 246
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "failed to write details file"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 245
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 242
    :catch_3
    move-exception v1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 245
    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_4
    :goto_5
    :try_start_c
    throw v0

    :catch_4
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->storeMetadata()V

    .line 276
    return-void
.end method

.method public setAudioClipFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getAudioClipFile()Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "failed to copy audio clip file"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/vrbugreporter/BugReport;->mMetadata:Ljava/util/Properties;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-direct {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->storeMetadata()V

    .line 288
    return-void
.end method

.method public setPackages(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 231
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/oculus/horizon/vrbugreporter/BugReport;->getPackagesFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    .line 232
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    const/4 v1, 0x0

    .line 233
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 234
    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 237
    :cond_1
    :goto_1
    return-void

    .line 234
    :catch_0
    move-exception v4

    :try_start_5
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    .line 235
    sget-object v1, Lcom/oculus/horizon/vrbugreporter/BugReport;->TAG:Ljava/lang/String;

    const-string v2, "failed to write processes file"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 234
    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 231
    :catch_3
    move-exception v1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 234
    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_4
    :goto_5
    :try_start_c
    throw v0

    :catch_4
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v1

    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method
