.class public Lcom/facebook/breakpadmanager/BreakpadManager;
.super Ljava/lang/Object;
.source "BreakpadManager.java"


# static fields
.field private static final BREAKPAD_DIRECTORY:Ljava/lang/String; = "minidumps"

.field public static final MD_FB_EXIT_AFTER_DUMP_ATTEMPT:J = 0x8L

.field public static final MD_FB_NODUMP:J = 0x10L

.field public static final MD_FB_TRIVIAL_DUMP:J = 0x20L

.field public static final MD_FB_WITH_ALL_THREADS:J = 0x1L

.field public static final MD_FB_WITH_CUSTOM_STREAMS:J = 0x4L

.field public static final MD_FB_WITH_UNWIND_STREAM:J = 0x2L

.field private static final TAG:Ljava/lang/String; = "BreakpadManager"

.field public static final USE_STATIC_LIBRARY:I = 0x2

.field private static mCrashDirectory:Ljava/io/File;

.field private static mNativeLibraryName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native crashThisProcess()V
.end method

.method public static getCrashDirectory()Ljava/io/File;
    .locals 2

    .line 69
    sget-object v0, Lcom/facebook/breakpadmanager/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad not installed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getMinidumpFlags()J
.end method

.method public static getNativeLibraryName()Ljava/lang/String;
    .locals 2

    .line 61
    sget-object v0, Lcom/facebook/breakpadmanager/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad not installed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native install(Ljava/lang/String;)V
.end method

.method public static isActive()Z
    .locals 1

    .line 80
    sget-object v0, Lcom/facebook/breakpadmanager/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static native setMinidumpFlags(J)V
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/facebook/breakpadmanager/BreakpadManager;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/facebook/breakpadmanager/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "breakpad"

    .line 44
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    sput-object v1, Lcom/facebook/breakpadmanager/BreakpadManager;->mNativeLibraryName:Ljava/lang/String;

    .line 48
    :cond_0
    sget-object v1, Lcom/facebook/breakpadmanager/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    if-nez v1, :cond_2

    const-string v1, "minidumps"

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/breakpadmanager/BreakpadManager;->install(Ljava/lang/String;)V

    .line 56
    sput-object p0, Lcom/facebook/breakpadmanager/BreakpadManager;->mCrashDirectory:Ljava/io/File;

    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Breakpad init failed to create crash directory: minidumps"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static native uninstall()V
.end method
