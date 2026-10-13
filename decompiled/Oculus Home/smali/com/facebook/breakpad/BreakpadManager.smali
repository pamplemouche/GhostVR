.class public Lcom/facebook/breakpad/BreakpadManager;
.super Ljava/lang/Object;
.source "BreakpadManager.java"


# static fields
.field public static final BREAKPAD_DEFAULT_MINIDUMP_SIZE_LIMIT:I = 0x177000

.field private static final BREAKPAD_DIRECTORY:Ljava/lang/String; = "minidumps"

.field public static final MD_FB_ALL_MAPS_DUMP:J = 0x80L

.field public static final MD_FB_EVERYTHING_INTERESTING:J = 0x100L

.field public static final MD_FB_EXIT_AFTER_DUMP_ATTEMPT:J = 0x8L

.field public static final MD_FB_NODUMP:J = 0x10L

.field public static final MD_FB_RECORD_ALL_LIBS:J = 0x400L

.field public static final MD_FB_RECORD_STACK_PTR_LIBS:J = 0x200L

.field public static final MD_FB_STACK_PTR_MAPS_DUMP:J = 0x40L

.field public static final MD_FB_TRIVIAL_DUMP:J = 0x20L

.field public static final MD_FB_WITH_ALL_THREADS:J = 0x1L

.field public static final MD_FB_WITH_CUSTOM_STREAMS:J = 0x4L

.field public static final MD_FB_WITH_UNWINDSTACK_STREAM:J = 0x800L

.field public static final MD_FB_WITH_UNWIND_STREAM:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "BreakpadManager"

.field public static final USE_STATIC_LIBRARY:J = -0x8000000000000000L

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

.method public static disableCoreDumping()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->loadLibrary(Z)V

    .line 187
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->disableCoreDumpingImpl()Z

    move-result v0

    return v0
.end method

.method private static native disableCoreDumpingImpl()Z
.end method

.method public static enableCoreDumping(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->isCoreDumpingFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->enableCoreDumpingImpl(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static native enableCoreDumpingImpl(Ljava/lang/String;)Z
.end method

.method public static declared-synchronized enableUnifiedCustomData()V
    .locals 2

    .prologue
    .line 139
    const-class v0, Lcom/facebook/breakpad/BreakpadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/facebook/breakpad/BreakpadManager;->mIsUnifiedCustomDataEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
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
    .local v0, "customData":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->nativeGetCustomDataSnapshot(Ljava/util/TreeMap;)V

    .line 274
    return-object v0
.end method

.method public static native getMinidumpFlags()J
.end method

.method public static getNativeLibraryName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad not installed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method private static native install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static isActive()Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isArt()Z
    .locals 2

    .prologue
    .line 245
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "vmVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCoreDumpingFeatureAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {v1}, Lcom/facebook/breakpad/BreakpadManager;->loadLibrary(Z)V

    .line 192
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->readCorePattern()Ljava/io/File;

    move-result-object v0

    .line 193
    .local v0, "corePattern":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const-string v2, "BreakpadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not write permissions into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->isCoreResouceHardUnlimited()Z

    move-result v1

    goto :goto_0
.end method

.method private static native isCoreResouceHardUnlimited()Z
.end method

.method public static native isPrivacyModeEnabled()Z
.end method

.method private static loadLibrary(Z)V
    .locals 2
    .param p0, "staticLib"    # Z

    .prologue
    .line 61
    sget-object v1, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    const-string v0, "breakpad_static"

    .line 69
    .local v0, "nativeLibraryName":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 70
    sput-object v0, Lcom/facebook/breakpad/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    .line 72
    .end local v0    # "nativeLibraryName":Ljava/lang/String;
    :cond_0
    return-void

    .line 66
    :cond_1
    const-string v0, "breakpad"

    .restart local v0    # "nativeLibraryName":Ljava/lang/String;
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

.method private static readCorePattern()Ljava/io/File;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    new-instance v3, Ljava/io/File;

    const-string v7, "/proc/sys/kernel/core_pattern"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v3, "corePatternFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 207
    .local v4, "corePatternReader":Ljava/io/Reader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v4    # "corePatternReader":Ljava/io/Reader;
    .local v5, "corePatternReader":Ljava/io/Reader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 214
    .local v0, "bufReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 216
    .local v1, "corePattern":Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "corePattern":Ljava/io/File;
    .local v2, "corePattern":Ljava/io/File;
    move-object v1, v2

    .line 222
    .end local v2    # "corePattern":Ljava/io/File;
    .restart local v1    # "corePattern":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v4, v5

    .line 227
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .end local v1    # "corePattern":Ljava/io/File;
    .end local v5    # "corePatternReader":Ljava/io/Reader;
    .restart local v4    # "corePatternReader":Ljava/io/Reader;
    :goto_2
    return-object v1

    .line 208
    :catch_0
    move-exception v6

    .line 209
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v7, "BreakpadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Core pattern file not found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, 0x0

    goto :goto_2

    .line 217
    .end local v4    # "corePatternReader":Ljava/io/Reader;
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "corePattern":Ljava/io/File;
    .restart local v5    # "corePatternReader":Ljava/io/Reader;
    :catch_1
    move-exception v6

    .line 218
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "BreakpadManager"

    const-string v8, "There was a problem reading core pattern file"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 223
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 224
    .restart local v6    # "e":Ljava/io/IOException;
    const-string v7, "BreakpadManager"

    const-string v8, "There was a problem closing core pattern file"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static native removeCustomData(Ljava/lang/String;)V
.end method

.method public static varargs setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "fmt"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 258
    move-object v2, p1

    .line 259
    .local v2, "value":Ljava/lang/String;
    array-length v3, p2

    if-lez v3, :cond_0

    if-eqz p1, :cond_0

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 264
    .local v0, "formatter":Ljava/util/Formatter;
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 265
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .end local v0    # "formatter":Ljava/util/Formatter;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {p0, v2}, Lcom/facebook/breakpad/BreakpadManager;->nativeSetCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static declared-synchronized setJvmStreamEnabled(Z)V
    .locals 3
    .param p0, "enabled"    # Z

    .prologue
    .line 237
    const-class v2, Lcom/facebook/breakpad/BreakpadManager;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->isArt()Z

    move-result v0

    .line 238
    .local v0, "isArt":Z
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 239
    const-string v1, "breakpad_cpp_helper"

    invoke-static {v1}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 241
    :cond_0
    invoke-static {v0, p0}, Lcom/facebook/breakpad/BreakpadManager;->nativeSetJvmStreamEnabled(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit v2

    return-void

    .line 237
    .end local v0    # "isArt":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native setMinidumpFlags(J)V
.end method

.method private static native setVersionInfo(ILjava/lang/String;)V
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/breakpad/BreakpadManager;->start(Landroid/content/Context;J)V

    .line 148
    return-void
.end method

.method public static start(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # J

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
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # J
    .param p3, "dumpSizeLimit"    # I
    .param p4, "sessionId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "glc_path"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 93
    const-class v5, Lcom/facebook/breakpad/BreakpadManager;

    monitor-enter v5

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, p1

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    :try_start_0
    invoke-static {v4}, Lcom/facebook/breakpad/BreakpadManager;->loadLibrary(Z)V

    .line 95
    sget-object v4, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-nez v4, :cond_5

    .line 96
    const-string v4, "minidumps"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 97
    .local v0, "crashDirectory":Ljava/io/File;
    if-nez v0, :cond_1

    .line 98
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Breakpad init failed to create crash directory: minidumps"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v0    # "crashDirectory":Ljava/io/File;
    .end local p4    # "sessionId":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 104
    .restart local v0    # "crashDirectory":Ljava/io/File;
    .restart local p4    # "sessionId":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    if-nez p5, :cond_6

    const-string v4, ""

    .line 105
    :goto_0
    if-nez p4, :cond_2

    const-string p4, ""

    .line 103
    .end local p4    # "sessionId":Ljava/lang/String;
    :cond_2
    invoke-static {v6, v4, p4, p3}, Lcom/facebook/breakpad/BreakpadManager;->install(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sput-object v0, Lcom/facebook/breakpad/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    .line 110
    invoke-static {}, Lcom/facebook/breakpad/BreakpadManager;->getMinidumpFlags()J

    move-result-wide v6

    or-long/2addr v6, p1

    const-wide/16 v8, 0x2

    or-long/2addr v6, v8

    const-wide/16 v8, 0x4

    or-long/2addr v6, v8

    .line 109
    invoke-static {v6, v7}, Lcom/facebook/breakpad/BreakpadManager;->setMinidumpFlags(J)V

    .line 111
    sget-boolean v4, Lcom/facebook/breakpad/BreakpadManager;->mIsUnifiedCustomDataEnabled:Z

    if-eqz v4, :cond_3

    .line 113
    invoke-static {}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->getInstance()Lcom/facebook/acra/customdata/ProxyCustomDataStore;

    move-result-object v4

    new-instance v6, Lcom/facebook/breakpad/BreakpadCustomDataStore;

    invoke-direct {v6}, Lcom/facebook/breakpad/BreakpadCustomDataStore;-><init>()V

    invoke-virtual {v4, v6}, Lcom/facebook/acra/customdata/ProxyCustomDataStore;->setDataStore(Lcom/facebook/acra/customdata/CustomDataStore;)V

    .line 117
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 118
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_4

    .line 120
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 121
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-static {v6, v4}, Lcom/facebook/breakpad/BreakpadManager;->setVersionInfo(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4
    :goto_2
    :try_start_3
    const-string v4, "Fingerprint"

    sget-object v6, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/facebook/breakpad/BreakpadManager;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .end local v0    # "crashDirectory":Ljava/io/File;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    monitor-exit v5

    return-void

    .line 105
    .restart local v0    # "crashDirectory":Ljava/io/File;
    .restart local p4    # "sessionId":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 121
    .end local p4    # "sessionId":Ljava/lang/String;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :try_start_5
    const-string v4, "unknown"
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 123
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6
    const-string v4, "BreakpadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find PackageInfo for current App : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 125
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static native uninstall()V
.end method
