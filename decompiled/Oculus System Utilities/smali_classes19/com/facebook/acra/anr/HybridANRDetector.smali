.class public Lcom/facebook/acra/anr/HybridANRDetector;
.super Ljava/lang/Object;
.source "HybridANRDetector.java"

# interfaces
.implements Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
.implements Lcom/facebook/acra/anr/IANRDetector;
.implements Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/acra/anr/HybridANRDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "HybridANRDetector.class"
    .end annotation
.end field


# instance fields
.field private mDetectorStartTime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNativeLibLoadedCalled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mRunning:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/acra/anr/HybridANRDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;I)V
    .locals 1
    .param p1, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p2, "errorMonitorCheckInterval"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-static {p1, p2}, Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;->getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;I)Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    .line 154
    invoke-static {p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;)Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .line 155
    return-void
.end method

.method private constructor <init>(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0
    .param p1, "initialDetector"    # Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    .param p2, "sigquitBasedDetector"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    .line 162
    iput-object p2, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .line 163
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;I)Lcom/facebook/acra/anr/HybridANRDetector;
    .locals 2
    .param p0, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p1, "errorMonitorCheckInterval"    # I

    .prologue
    .line 41
    const-class v1, Lcom/facebook/acra/anr/HybridANRDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->sInstance:Lcom/facebook/acra/anr/HybridANRDetector;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/facebook/acra/anr/HybridANRDetector;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/anr/HybridANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;I)V

    sput-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->sInstance:Lcom/facebook/acra/anr/HybridANRDetector;

    .line 44
    :cond_0
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->sInstance:Lcom/facebook/acra/anr/HybridANRDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getTestInstance(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Lcom/facebook/acra/anr/HybridANRDetector;
    .locals 2
    .param p0, "initialDetector"    # Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
    .param p1, "sigquitBasedDetector"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 51
    const-class v1, Lcom/facebook/acra/anr/HybridANRDetector;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/facebook/acra/anr/HybridANRDetector;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/anr/HybridANRDetector;-><init>(Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    sput-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->sInstance:Lcom/facebook/acra/anr/HybridANRDetector;

    .line 52
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->sInstance:Lcom/facebook/acra/anr/HybridANRDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized nativeLibraryLoaded(Z)V
    .locals 3
    .param p1, "shouldStart"    # Z

    .prologue
    const/4 v0, 0x1

    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mNativeLibLoadedCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mNativeLibLoadedCalled:Z

    .line 84
    iget-object v1, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v2, "About to switch detectors"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    if-nez p1, :cond_2

    iget-boolean v2, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mRunning:Z

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, p0, v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->nativeLibraryLoaded(Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized onNativeInit()V
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SigquitBasedANRDetector native init done"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0, p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->setSwitchTime(J)V

    .line 102
    monitor-enter p0

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    .line 105
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->setReadyTime(J)V

    .line 106
    iget-boolean v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mRunning:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start new detector"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-wide v2, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mDetectorStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->start(J)V

    .line 112
    :goto_0
    monitor-exit p0

    .line 113
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "New detector was activated but won\'t be started right now"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/AbstractANRDetector;->pause()V

    .line 122
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->pause()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    .locals 1
    .param p1, "anrDataProvider"    # Lcom/facebook/acra/anr/ANRDataProvider;

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/AbstractANRDetector;->setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->setANRDataProvider(Lcom/facebook/acra/anr/ANRDataProvider;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCheckIntervalMs(J)V
    .locals 1
    .param p1, "checkIntervalMs"    # J

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/acra/anr/AbstractANRDetector;->setCheckIntervalMs(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/facebook/acra/anr/ANRDetectorListener;

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/AbstractANRDetector;->setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->setListener(Lcom/facebook/acra/anr/ANRDetectorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Start called."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mDetectorStartTime:J

    .line 67
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Starting initial detector"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    iget-wide v2, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mDetectorStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/AbstractANRDetector;->start(J)V

    .line 74
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/acra/anr/HybridANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Starting sigquit detector"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    iget-wide v2, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mDetectorStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->start(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
    .locals 1
    .param p1, "stopListener"    # Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mInitialDetector:Lcom/facebook/acra/anr/AbstractANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/AbstractANRDetector;->stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V

    .line 132
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/HybridANRDetector;->mSigquitBasedDetector:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
