.class public Lcom/facebook/common/dextricks/DalvikInternals;
.super Ljava/lang/Object;
.source "DalvikInternals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DalvikInternals$ClassInitFailureHook;,
        Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;,
        Lcom/facebook/common/dextricks/DalvikInternals$Stat;
    }
.end annotation


# static fields
.field public static final APK_BASE_NAME:Ljava/lang/String; = "base.apk"

.field public static final ART_HACK_DISABLE_COLLISION_CHECK:I = 0x20

.field public static final ART_HACK_DISABLE_FORK:I = 0x2

.field public static final ART_HACK_DISABLE_ISUPTODATE_CHECK:I = 0x40

.field public static final ART_HACK_DISABLE_MONITOR_VISITLOCKS:I = 0x80

.field public static final ART_HACK_DISABLE_VERIFIER:I = 0x4

.field public static final FADV_DONTNEED:I = 0x4

.field public static final FADV_NOREUSE:I = 0x5

.field public static final FADV_NORMAL:I = 0x0

.field public static final FADV_RANDOM:I = 0x1

.field public static final FADV_SEQUENTIAL:I = 0x2

.field public static final FADV_WILLNEED:I = 0x3

.field public static final IOPRIO_BACKGROUND:I = 0x6000

.field public static final IOPRIO_CLASS_BE:I = 0x2

.field public static final IOPRIO_CLASS_IDLE:I = 0x3

.field public static final IOPRIO_CLASS_NONE:I = 0x0

.field public static final IOPRIO_CLASS_RT:I = 0x1

.field public static final IOPRIO_CLASS_SHIFT:B = 0xdt

.field public static final IOPRIO_WHO_PGRP:I = 0x2

.field public static final IOPRIO_WHO_PROCESS:I = 0x1

.field public static final IOPRIO_WHO_USER:I = 0x3

.field public static final LIBCOLDSTART_BASE_NAME:Ljava/lang/String; = "libcoldstart.so"

.field public static final LINK_ATOMIC_OVERWRITE:I = 0x2

.field public static final LINK_SYMLINK:I = 0x1

.field public static final SYSTEM_BOOT_BASE_NAME:Ljava/lang/String; = "system@framework@boot"

.field public static final SYSTEM_LIB_BASE_NAME:Ljava/lang/String; = "system/lib"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x15

    const/4 v4, 0x0

    .line 27
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v1, v0

    .line 29
    :goto_0
    const-string v0, "dextricks"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 30
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikInternals;->ignoreSIGPIPE()V

    .line 31
    sget-boolean v0, Lcom/facebook/common/isart/IsArt;->yes:Z

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->setIsArt(Z)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsArt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcom/facebook/common/isart/IsArt;->yes:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " context = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget-boolean v0, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-nez v0, :cond_1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    :try_start_0
    invoke-static {v1}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;

    .line 47
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;->dalvikNopVerifyClass()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikInternals;->nopDvmVerifyClass()V

    .line 49
    const-string v0, "Hooked nop dvmVerifyClass"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_1
    :goto_2
    sget-boolean v0, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    .line 58
    if-nez v1, :cond_6

    .line 60
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getDefaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/NativeSignalHandlingExperiment;

    .line 62
    :goto_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    invoke-interface {v0}, Lcom/facebook/common/coldstartexperiments/experiments/NativeSignalHandlingExperiment;->useAlternateSignalStackForSigsegv()Z

    move-result v0

    .line 62
    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/DalvikInternals;->integrateWithLibSigChain(IZ)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_2

    .line 66
    :try_start_1
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikInternals;->fixArtMirandaBug()V

    .line 67
    const-string v0, "patched ART 5.0.x miranda bug"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :cond_2
    :goto_4
    return-void

    .line 28
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 42
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;

    .line 43
    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getDefaultValues()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksClassVerifierExperiment;

    goto :goto_1

    .line 51
    :cond_5
    const-string v0, "Skipped nop dvmVerifyClass"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v2, "Failed to nop dvmVerifyClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 61
    :cond_6
    invoke-static {v1}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/NativeSignalHandlingExperiment;

    goto :goto_3

    .line 68
    :catch_1
    move-exception v0

    .line 69
    const-string v1, "could not patch ART 5.0.x miranda bug"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synchronized native declared-synchronized allocateNativeMemory(I)V
.end method

.method public static native attemptAllocate(IJI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native closeUnixFd(I)V
.end method

.method public static native deleteRecursive(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native detectSamsungOatFormat()Z
.end method

.method public static native dexOptCreateEmptyHeader(I)V
.end method

.method public static synchronized native declared-synchronized ensureNativeMemoryHooksInitialized()V
.end method

.method public static native fadvise(IJJI)V
.end method

.method public static native fdatasync(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native fixArtMirandaBug()V
.end method

.method public static synchronized native declared-synchronized fixDvmForCrossDexHack()V
.end method

.method public static synchronized native declared-synchronized fixLinearAllocBuffer(I)V
.end method

.method public static synchronized native declared-synchronized freeAllPreviouslyAllocatedNativeMemory()V
.end method

.method public static native fsync(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native fsyncNamed(Ljava/lang/String;I)V
.end method

.method public static native getArtImageLocation()Ljava/lang/String;
.end method

.method public static native getEnabledThreadArtHacks()I
.end method

.method public static native getOatFormatVersion()Ljava/lang/String;
.end method

.method public static native getOpenFileInode(I)J
.end method

.method public static native getOpenFileLinkCount(I)I
.end method

.method public static native getOwnerUid(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native hookMmap(Ljava/lang/String;)V
.end method

.method public static synchronized native declared-synchronized ignoreSIGPIPE()V
.end method

.method public static synchronized native declared-synchronized installArtHacks(II)I
.end method

.method public static declared-synchronized integrateWithCrashLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 425
    const-class v1, Lcom/facebook/common/dextricks/DalvikInternals;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;-><init>(I)V

    .line 426
    invoke-static {p0, p1, v0}, Lcom/facebook/common/dextricks/DalvikInternals;->integrateWithCrashLog(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit v1

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synchronized native declared-synchronized integrateWithCrashLog(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/common/dextricks/DalvikInternals$CrashLogParameters;)V
.end method

.method public static synchronized native declared-synchronized integrateWithLibSigChain(IZ)V
.end method

.method public static native ioprio_get(II)I
.end method

.method public static native ioprio_set(III)V
.end method

.method public static native link(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native madviseFile(Ljava/lang/String;)V
.end method

.method public static mlockColdstartSet()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public static munlockColdstartSet()V
    .locals 0

    .prologue
    .line 412
    return-void
.end method

.method public static native nopDvmVerifyClass()V
.end method

.method public static native onColdStartEnd()V
.end method

.method public static native openUnixReadFd(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native openUnixSyncReadWriteFd(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized printTopDalvikAllocationCounts()V
.end method

.method public static native readOdexDepBlock(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native realpath(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native replaceOdexDepBlock(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized setClassInitFailureHook(Lcom/facebook/common/dextricks/DalvikInternals$ClassInitFailureHook;)V
.end method

.method public static native setEnabledThreadArtHacks(I)I
.end method

.method public static synchronized native declared-synchronized setIsArt(Z)V
.end method

.method public static synchronized native declared-synchronized startDalvikAllocationTracking()V
.end method

.method public static synchronized native declared-synchronized startNativeAllocationTracking(I)V
.end method

.method public static native statNamedFile(Ljava/lang/String;Lcom/facebook/common/dextricks/DalvikInternals$Stat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native statOpenFile(ILcom/facebook/common/dextricks/DalvikInternals$Stat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized stopDalvikAllocationTracking()V
.end method

.method public static synchronized native declared-synchronized stopNativeAllocationTracking()V
.end method

.method public static synchronized native declared-synchronized toggleFastDex2Oat(Z)Z
.end method

.method public static native unhookMmap()V
.end method

.method public static synchronized native declared-synchronized writeNativeAllocationDataToLogcat(I)V
.end method

.method public static synchronized native declared-synchronized writeNativeAllocationStacktracesToLogcat(I)V
.end method
