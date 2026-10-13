.class public Lcom/facebook/acra/anr/SigquitBasedANRDetector;
.super Lcom/facebook/acra/anr/AbstractANRDetector;
.source "SigquitBasedANRDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "SigquitBasedANRDetector.class"
    .end annotation
.end field

.field private static final sIsArt:Z

.field private static sNativeInited:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field


# instance fields
.field private final mAnrDetectionLock:Ljava/lang/Object;

.field private final mClearAnrStateRunnable:Ljava/lang/Runnable;

.field private final mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mDetectorReadyTime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private mErrorDetected:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mErrorDetectedUptime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private final mErrorMonitorListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

.field private mErrorMsg:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mErrorTag:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mHookInPlace:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private mNativeInitListener:Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private mProcessingThread:Landroid/os/HandlerThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mProcessingThreadLock"
    .end annotation
.end field

.field private mProcessingThreadHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mProcessingThreadLock"
    .end annotation
.end field

.field private final mProcessingThreadLock:Ljava/lang/Object;

.field private volatile mRunning:Z

.field private mSigquitCallbackUptime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mSigquitData:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mSigquitFileName:Ljava/lang/String;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private mSigquitReceived:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mAnrDetectionLock"
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mSwitchTime:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mStateLock"
    .end annotation
.end field

.field private mWaitingForANRClearTimeout:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mWaitingToClearANRLock"
    .end annotation
.end field

.field private final mWaitingToClearANRLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    .line 152
    const-string v1, "java.vm.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
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
    sput-boolean v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sIsArt:Z

    .line 154
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;)V
    .locals 8
    .param p1, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 609
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldStartProcessErrorMonitorEarly()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, p1, v0, v5}, Lcom/facebook/acra/anr/AbstractANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZZ)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingToClearANRLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mAnrDetectionLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mClearAnrStateRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMonitorListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    .line 610
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldStartProcessErrorMonitorEarly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    new-instance v0, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 613
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 614
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getProcessName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x1f4

    move v6, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZII)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 623
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 609
    goto :goto_0

    .line 621
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    goto :goto_1
.end method

.method private constructor <init>(Lcom/facebook/acra/anr/ANRDetectorConfig;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)V
    .locals 2
    .param p1, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p2, "monitor"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 627
    invoke-virtual {p1}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldStartProcessErrorMonitorEarly()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/acra/anr/AbstractANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;ZLcom/facebook/acra/anr/ProcessAnrErrorMonitor;Z)V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingToClearANRLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mAnrDetectionLock:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$1;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mClearAnrStateRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$2;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMonitorListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    .line 629
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingToClearANRLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingForANRClearTimeout:Z

    return v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->cleanupAppStateFile()V

    return-void
.end method

.method static synthetic access$102(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingForANRClearTimeout:Z

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->hookMethods()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mHookInPlace:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mNativeInitListener:Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;)Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mNativeInitListener:Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    return-object p1
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->startDetector()V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->stopHandlerThread()V

    return-void
.end method

.method static synthetic access$1600()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->addSignalHandler()V

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # J

    .prologue
    .line 18
    invoke-direct/range {p0 .. p8}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->processANRData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->endAndProcessANRDataCapture()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mAnrDetectionLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorDetected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/facebook/acra/anr/SigquitBasedANRDetector;J)J
    .locals 1
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorDetectedUptime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->handleAnrDetected()V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->hookMethodsAndMaybeStart(Z)V

    return-void
.end method

.method private static native addSignalHandler()V
.end method

.method private static native cleanupAppStateFile()V
.end method

.method private endAndProcessANRDataCapture()V
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Recovered from ANR"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->inAnrState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->postAnrEnd(J)V

    goto :goto_0
.end method

.method private static declared-synchronized getInstance()Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .locals 3

    .prologue
    .line 164
    const-class v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Instance has not been initialized yet"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 167
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;)Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .locals 2
    .param p0, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;

    .prologue
    .line 157
    const-class v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-direct {v0, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;)V

    sput-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .line 160
    :cond_0
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getTestInstance(Lcom/facebook/acra/anr/ANRDetectorConfig;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    .locals 2
    .param p0, "anrConfig"    # Lcom/facebook/acra/anr/ANRDetectorConfig;
    .param p1, "monitor"    # Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 173
    const-class v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 176
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    invoke-direct {v0, p0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;-><init>(Lcom/facebook/acra/anr/ANRDetectorConfig;Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;)V

    sput-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    .line 177
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sInstance:Lcom/facebook/acra/anr/SigquitBasedANRDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private handleAnrDetected()V
    .locals 14

    .prologue
    .line 482
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAnrDetected called"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mAnrDetectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldStartProcessErrorMonitorEarly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitReceived:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorDetected:Z

    if-nez v0, :cond_2

    .line 495
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 498
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitData:Ljava/lang/String;

    .line 499
    .local v4, "sigquitData":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitFileName:Ljava/lang/String;

    .line 500
    .local v5, "sigquitFileName":Ljava/lang/String;
    iget-object v8, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMsg:Ljava/lang/String;

    .line 501
    .local v8, "errorMsg":Ljava/lang/String;
    iget-object v9, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorTag:Ljava/lang/String;

    .line 502
    .local v9, "errorTag":Ljava/lang/String;
    iget-wide v6, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitCallbackUptime:J

    .line 503
    .local v6, "callbackUptime":J
    iget-wide v10, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorDetectedUptime:J

    .line 505
    .local v10, "errorUptime":J
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitReceived:Z

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitData:Ljava/lang/String;

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitFileName:Ljava/lang/String;

    .line 508
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitCallbackUptime:J

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMsg:Ljava/lang/String;

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorTag:Ljava/lang/String;

    .line 511
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorDetectedUptime:J

    .line 514
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getRecoveryTimeout()I

    move-result v0

    if-lez v0, :cond_4

    .line 516
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingToClearANRLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_2
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 518
    :try_start_3
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingForANRClearTimeout:Z

    .line 520
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mClearAnrStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 522
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 523
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->inAnrState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 529
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Detected a new ANR before the end of the previous one"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v3, 0x1

    .line 534
    .local v3, "clearFirst":Z
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->setInAnrState(Z)V

    .line 535
    iget-object v12, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v12

    .line 536
    :try_start_5
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 537
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$8;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    :cond_5
    monitor-exit v12

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 522
    .end local v3    # "clearFirst":Z
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 523
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 532
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "clearFirst":Z
    goto :goto_1
.end method

.method private static native hookMethods()Z
.end method

.method private hookMethodsAndMaybeStart(Z)V
    .locals 21
    .param p1, "shouldStart"    # Z

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 273
    :try_start_0
    sget-boolean v3, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sNativeInited:Z

    if-nez v3, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getAppStateUpdater()Lcom/facebook/acra/anr/AppStateUpdater;

    move-result-object v17

    .line 275
    .local v17, "originalUpdater":Lcom/facebook/acra/anr/AppStateUpdater;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    new-instance v4, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$4;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Lcom/facebook/acra/anr/AppStateUpdater;)V

    invoke-virtual {v3, v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->setAppStateUpdater(Lcom/facebook/acra/anr/AppStateUpdater;)V

    .line 300
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v18

    .line 301
    .local v18, "reporter":Lcom/facebook/acra/ErrorReporter;
    sget-boolean v4, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sIsArt:Z

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 305
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/acra/ErrorReporter;->getAppVersionCode()Ljava/lang/String;

    move-result-object v6

    .line 306
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/acra/ErrorReporter;->getAppVersionName()Ljava/lang/String;

    move-result-object v7

    .line 307
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/acra/ErrorReporter;->getSigquitTracesPath()Ljava/lang/String;

    move-result-object v8

    .line 308
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/acra/ErrorReporter;->getSigquitTracesExtension()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 309
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldReportSoftErrors()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 310
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldLogOnSignalHandler()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 311
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldAvoidMutexOnSignalHandler()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 312
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldUseStaticMethodCallback()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 313
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getSigquitTimeFilePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 314
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldRecordSignalTime()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 315
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->processShouldSendAnrReports()Z

    move-result v16

    move-object/from16 v3, p0

    .line 301
    invoke-static/range {v3 .. v16}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->init(Ljava/lang/Object;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;ZZ)V

    .line 316
    const/4 v3, 0x1

    sput-boolean v3, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sNativeInited:Z

    .line 318
    .end local v17    # "originalUpdater":Lcom/facebook/acra/anr/AppStateUpdater;
    .end local v18    # "reporter":Lcom/facebook/acra/ErrorReporter;
    :cond_0
    new-instance v19, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$5;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)V

    .line 336
    .local v19, "startDetectorRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 337
    invoke-virtual {v3}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$6;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Ljava/lang/Runnable;)V

    .line 338
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    monitor-exit v20

    .line 353
    return-void

    .line 352
    .end local v19    # "startDetectorRunnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static native init(Ljava/lang/Object;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;ZZ)V
.end method

.method private maybeStartContinousProcessAnrMonitor()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->getState()Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    move-result-object v0

    sget-object v1, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;->NOT_MONITORING:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$State;

    if-ne v0, v1, :cond_0

    .line 448
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "About to start continuous process anr error monitor with delay"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mContinuousProcessAnrErrorMonitor:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;

    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mErrorMonitorListener:Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/acra/anr/ProcessAnrErrorMonitor;->startMonitoringAfterDelay(Lcom/facebook/acra/anr/ProcessAnrErrorMonitor$ProcessErrorStateListener;J)V

    .line 452
    :cond_0
    return-void
.end method

.method static onAnrDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "logData"    # Ljava/lang/String;
    .param p1, "tracesFileName"    # Ljava/lang/String;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "On static anr detected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->getInstance()Lcom/facebook/acra/anr/SigquitBasedANRDetector;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->anrDetected(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method private postAnrEnd(J)V
    .locals 3
    .param p1, "uptimeMillisWhenSomethingCouldRunOnMainThread"    # J

    .prologue
    .line 397
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$7;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 412
    :cond_0
    monitor-exit v1

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processANRData(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "logData"    # Ljava/lang/String;
    .param p2, "tracesFileName"    # Ljava/lang/String;
    .param p3, "callbackUptime"    # J
    .param p5, "errorMsg"    # Ljava/lang/String;
    .param p6, "errorTag"    # Ljava/lang/String;
    .param p7, "errorUptime"    # J

    .prologue
    .line 563
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 565
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mInForeground:Z

    .line 566
    const/4 v1, 0x0

    .line 572
    .local v1, "shouldReport":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 573
    sget-object v2, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Reporting ANR start"

    invoke-static {v2, v3}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->captureANRData(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_1
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRDetectorConfig;->shouldStartProcessErrorMonitorEarly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getANRReport()Lcom/facebook/acra/anr/ANRReport;

    move-result-object v2

    invoke-virtual {v2, p5, p6, p7, p8}, Lcom/facebook/acra/anr/ANRReport;->logSystemInfo(Ljava/lang/String;Ljava/lang/String;J)V

    .line 589
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 590
    invoke-virtual {v2}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/facebook/acra/anr/SigquitBasedANRDetector$9;

    invoke-direct {v3, p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$9;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;)V

    .line 591
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void

    .line 569
    .end local v1    # "shouldReport":Z
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mInForeground:Z

    .line 570
    invoke-virtual {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->shouldCollectAndUploadANRReports()Z

    move-result v1

    .restart local v1    # "shouldReport":Z
    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error saving ANR report"

    invoke-static {v2, v0, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 584
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz p2, :cond_0

    .line 586
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private static native startDetector()V
.end method

.method private static native stopDetector()V
.end method

.method private stopHandlerThread()V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    .line 379
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    .line 383
    :cond_0
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method anrDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "logData"    # Ljava/lang/String;
    .param p2, "tracesFileName"    # Ljava/lang/String;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 471
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "On anrDetected call"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mAnrDetectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 473
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitReceived:Z

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitCallbackUptime:J

    .line 475
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitData:Ljava/lang/String;

    .line 476
    iput-object p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSigquitFileName:Ljava/lang/String;

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->handleAnrDetected()V

    .line 479
    return-void

    .line 477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected anrErrorClearedOnProcessMonitor()V
    .locals 2

    .prologue
    .line 437
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "On anrErrorClearedOnProcessMonitor"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-super {p0}, Lcom/facebook/acra/anr/AbstractANRDetector;->anrErrorClearedOnProcessMonitor()V

    .line 439
    invoke-virtual {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->shouldCollectAndUploadANRReportsNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->anrHasEnded(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method protected getReadyTime()J
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorReadyTime:J

    monitor-exit v1

    return-wide v2

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getSwitchTime()J
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSwitchTime:J

    monitor-exit v1

    return-wide v2

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isRunning()Z
    .locals 1
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 605
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    return v0
.end method

.method public nativeLibraryLoaded(Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;Z)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;
    .param p2, "shouldStart"    # Z
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mNativeInitListener:Lcom/facebook/acra/anr/SigquitBasedANRDetector$NativeInitListener;

    .line 214
    invoke-virtual {p0, p2}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->nativeLibraryLoaded(Z)V

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nativeLibraryLoaded(Z)V
    .locals 4
    .param p1, "shouldStart"    # Z

    .prologue
    .line 248
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NativeLibLoaded shouldStart = %b"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mHookInPlace:Z

    if-nez v0, :cond_1

    .line 251
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "SigquitBasedANRDetectorThread"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    .line 254
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;

    invoke-direct {v3, p0, p1}, Lcom/facebook/acra/anr/SigquitBasedANRDetector$3;-><init>(Lcom/facebook/acra/anr/SigquitBasedANRDetector;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    return-void

    .line 266
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected processMonitorStopped(I)V
    .locals 6
    .param p1, "cause"    # I

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/facebook/acra/anr/AbstractANRDetector;->processMonitorStopped(I)V

    .line 420
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    invoke-virtual {v0}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getRecoveryTimeout()I

    move-result v0

    if-lez v0, :cond_1

    .line 422
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingToClearANRLock:Ljava/lang/Object;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    :try_start_1
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Scheduling cleanup ANR task"

    invoke-static {v0, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mWaitingForANRClearTimeout:Z

    .line 427
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mClearAnrStateRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mANRConfig:Lcom/facebook/acra/anr/ANRDetectorConfig;

    .line 428
    invoke-virtual {v4}, Lcom/facebook/acra/anr/ANRDetectorConfig;->getRecoveryTimeout()I

    move-result v4

    int-to-long v4, v4

    .line 427
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 433
    :cond_1
    return-void

    .line 430
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 431
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setReadyTime(J)V
    .locals 3
    .param p1, "readyTime"    # J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorReadyTime:J

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSwitchTime(J)V
    .locals 3
    .param p1, "switchTime"    # J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mSwitchTime:J

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start(J)V
    .locals 7
    .param p1, "startTimeToReport"    # J

    .prologue
    .line 182
    sget-object v0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Started"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 185
    iput-wide p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorStartTime:J

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mHookInPlace:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    if-nez v0, :cond_2

    .line 188
    iget-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorStartTime:J

    .line 191
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    .line 193
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->maybeStartContinousProcessAnrMonitor()V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startForTesting(Landroid/os/HandlerThread;J)V
    .locals 2
    .param p1, "processingThread"    # Landroid/os/HandlerThread;
    .param p2, "detectorStartTime"    # J
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->isTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 202
    :cond_0
    sput-boolean v1, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->sNativeInited:Z

    .line 203
    iput-boolean v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    .line 204
    iput-object p1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    .line 205
    iget-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mProcessingThreadHandler:Landroid/os/Handler;

    .line 207
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .end local p2    # "detectorStartTime":J
    :cond_1
    iput-wide p2, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mDetectorStartTime:J

    .line 208
    return-void
.end method

.method public stop(Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;)V
    .locals 2
    .param p1, "stopListener"    # Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mHookInPlace:Z

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->mRunning:Z

    .line 367
    invoke-static {}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->stopDetector()V

    .line 368
    invoke-direct {p0}, Lcom/facebook/acra/anr/SigquitBasedANRDetector;->stopHandlerThread()V

    .line 370
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    if-eqz p1, :cond_1

    .line 372
    invoke-interface {p1}, Lcom/facebook/acra/anr/IANRDetector$ANRDetectorStopListener;->onStop()V

    .line 374
    :cond_1
    return-void

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
