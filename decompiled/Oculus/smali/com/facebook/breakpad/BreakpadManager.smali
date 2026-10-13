.class public Lcom/facebook/breakpad/BreakpadManager;
.super Ljava/lang/Object;
.source "BreakpadManager.java"


# static fields
.field private static volatile mCrashDirectory:Ljava/io/File;

.field private static mIsUnifiedCustomDataEnabled:Z

.field private static mNativeLibraryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/breakpad/BreakpadManager;->mIsUnifiedCustomDataEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native containsKey(Ljava/lang/String;)Z
.end method

.method public static native crashProcessByAssert(Ljava/lang/String;)V
.end method

.method public static native crashThisProcess()V
.end method

.method private static native disableCoreDumpingImpl()Z
.end method

.method private static native enableCoreDumpingImpl(Ljava/lang/String;)Z
.end method

.method public static getCrashDirectory()Ljava/io/File;
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad not installed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static native getCustomData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCustomDataSnapshot()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 273
    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->nativeGetCustomDataSnapshot(Ljava/util/TreeMap;)V

    .line 274
    return-object v0
.end method

.method public static native getMinidumpFlags()J
.end method

.method private static native install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native isCoreResouceHardUnlimited()Z
.end method

.method public static native isPrivacyModeEnabled()Z
.end method

.method private static loadLibrary(Z)V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    const-string v0, "breakpad_static"

    .line 69
    :goto_0
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 70
    sput-object v0, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    .line 72
    :cond_0
    return-void

    .line 66
    :cond_1
    const-string v0, "breakpad"

    goto :goto_0
.end method

.method private static native nativeGetCustomDataSnapshot(Ljava/util/TreeMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeSetCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private static native nativeSetJvmStreamEnabled(ZZ)Z
.end method

.method public static native removeCustomData(Ljava/lang/String;)V
.end method

.method public static varargs setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 259
    array-length v0, p2

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 264
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 265
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/breakpad/BreakpadManager;->nativeSetCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static native setMinidumpFlags(J)V
.end method

.method private static native setVersionInfo(ILjava/lang/String;)V
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/breakpad/BreakpadManager;->start(Landroid/content/Context;J)V

    .line 148
    return-void
.end method

.method public static start(Landroid/content/Context;J)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 143
    const v4, 0x177000

    move-object v1, p0

    move-wide v2, p1

    move-object v6, v5

    invoke-static/range {v1 .. v6}, Lcom/facebook/breakpad/BreakpadManager;->start(Landroid/content/Context;JILjava/lang/String;Ljava/io/File;)V

    .line 144
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;JILjava/lang/String;Ljava/io/File;)V
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 93
    const-class v1, Lcom/facebook/breakpad/BreakpadManager;

    monitor-enter v1

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->loadLibrary(Z)V

    .line 95
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-nez v0, :cond_5

    .line 96
    const-string v0, "minidumps"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 97
    if-nez v2, :cond_1

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Breakpad init failed to create crash directory: minidumps"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    if-nez p5, :cond_6

    const-string v0, ""

    .line 105
    :goto_0
    if-nez p4, :cond_2

    const-string p4, ""

    .line 103
    :cond_2
    invoke-static {v3, v0, p4, p3}, Lcom/facebook/breakpad/BreakpadManager;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sput-object v2, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    .line 110
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->getMinidumpFlags()J

    move-result-wide v2

    or-long/2addr v2, p1

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    .line 109
    invoke-static {v2, v3}, Lcom/facebook/breakpad/BreakpadManager;->setMinidumpFlags(J)V

    .line 111
    sget-boolean v0, Lcom/facebook/breakpad/BreakpadManager;->mIsUnifiedCustomDataEnabled:Z

    if-eqz v0, :cond_3

    .line 113
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v0

    new-instance v2, Lcom/facebook/breakpad/BreakpadCustomDataStore;

    invoke-direct {v2}, Lcom/facebook/breakpad/BreakpadCustomDataStore;-><init>()V

    invoke-virtual {v0, v2}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->setDataStore(Lcom/facebook/acra/customdata/CustomDataStore;)V

    .line 117
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 120
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 121
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v0}, Lcom/facebook/breakpad/BreakpadManager;->setVersionInfo(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :cond_4
    :goto_2
    :try_start_3
    const-string v0, "Fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/breakpad/BreakpadManager;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :cond_5
    monitor-exit v1

    return-void

    .line 105
    :cond_6
    :try_start_4
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_7
    :try_start_5
    const-string/jumbo v0, "unknown"
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    :try_start_6
    const-string v0, "BreakpadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find PackageInfo for current App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 125
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static native uninstall()V
.end method
