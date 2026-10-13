.class public final Lcom/facebook/common/jit/profile/PGOProfileUtil;
.super Ljava/lang/Object;
.source "PGOProfileUtil.java"


# static fields
.field private static final INST_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/facebook/common/jit/profile/PGOProfileUtil;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasResourceFile:Z

.field private volatile mInited:Z

.field private final mPgoLock:Ljava/lang/Object;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->INST_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mPgoLock:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mProfileName:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mHasResourceFile:Z

    .line 43
    iput-boolean v1, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mInited:Z

    .line 62
    iput-object p1, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static convertFileToPath(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 265
    const/16 v0, 0x200

    :try_start_0
    new-array v0, v0, [B

    .line 268
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 269
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    throw v0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    :cond_2
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 271
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static extractProfileFromApk(Landroid/content/Context;Ljava/io/File;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 240
    const/4 v2, 0x0

    .line 242
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v3, "art_pgo_input.txt"

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 245
    if-nez v3, :cond_0

    .line 246
    const-string v1, "PGOProfileUtil"

    const-string v3, "Cannot find profile in apk zip."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    invoke-static {v2}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->close(Ljava/io/InputStream;)V

    :goto_0
    return v0

    .line 250
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 252
    invoke-static {v2, p1}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 258
    invoke-static {v2}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    :try_start_2
    const-string v3, "PGOProfileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read profile from apk zip. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-static {v2}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->close(Ljava/io/InputStream;)V

    throw v0
.end method

.method private extractProfileIfNotOnDisk()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->getProfilePathFile()Ljava/io/File;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "PGOProfileUtil"

    const-string v3, "Already have profile, using that instead. Path: %s"

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 214
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->extractProfileFromApk(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private static genProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    invoke-static {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "art_pgo_profile"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/facebook/common/jit/profile/PGOProfileUtil;
    .locals 3

    .prologue
    .line 46
    sget-object v0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->sInstance:Lcom/facebook/common/jit/profile/PGOProfileUtil;

    .line 47
    if-nez v0, :cond_2

    .line 48
    sget-object v2, Lcom/facebook/common/jit/profile/PGOProfileUtil;->INST_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 49
    if-nez v0, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 52
    new-instance v0, Lcom/facebook/common/jit/profile/PGOProfileUtil;

    if-eqz v1, :cond_0

    move-object p0, v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;-><init>(Landroid/content/Context;)V

    .line 53
    sput-object v0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->sInstance:Lcom/facebook/common/jit/profile/PGOProfileUtil;

    .line 55
    :cond_1
    monitor-exit v2

    .line 58
    :cond_2
    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mProfileName:Ljava/lang/String;

    .line 164
    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->genProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mProfileName:Ljava/lang/String;

    .line 169
    :cond_0
    return-object v0
.end method

.method private getProfilePathFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 291
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 293
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-object v0

    .line 294
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 295
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v3, "PGOProfileUtil"

    const-string v4, "Could not find package name %s. Using UUID: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    .line 298
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initResourceFile()Z
    .locals 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mInited:Z

    if-nez v0, :cond_1

    .line 146
    iget-object v1, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mPgoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mInited:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->extractProfileIfNotOnDisk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mHasResourceFile:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mInited:Z

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/common/jit/profile/PGOProfileUtil;->mHasResourceFile:Z

    return v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getPgoProfileFile()Ljava/io/File;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->initResourceFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->getProfilePathFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getPgoProfileFilePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->getPgoProfileFile()Ljava/io/File;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->convertFileToPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPgoProfileFile()Z
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/common/jit/profile/PGOProfileUtil;->initResourceFile()Z

    move-result v0

    return v0
.end method
