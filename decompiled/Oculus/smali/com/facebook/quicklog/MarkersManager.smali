.class public Lcom/facebook/quicklog/MarkersManager;
.super Ljava/lang/Object;
.source "MarkersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAppStates:Lcom/facebook/quicklog/AppStates;

.field private final mDataProviders:[Lcom/facebook/quicklog/DataProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDirectEditorsPool:Lcom/facebook/quicklog/RecyclingPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/quicklog/RecyclingPool",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

.field private final mGuessLock:Ljava/lang/Object;

.field private final mInsideLockless:Z

.field private mLatestQuickEventForTest:Lcom/facebook/quicklog/QuickEvent;

.field private final mLock:Ljava/lang/Object;

.field private final mModuleTags:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mOpenTraces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/facebook/quicklog/QuickEvent;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mOpenTraces"
    .end annotation
.end field

.field private mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mQuicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

.field private final mStatsLoggerLazy:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/StatsLogger;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mValidTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/facebook/quicklog/MarkersManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/quicklog/MarkersManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/quicklog/AppStates;Ljavax/inject/Provider;Lcom/facebook/quicklog/RecyclingPool;[Lcom/facebook/quicklog/DataProvider;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;ZLcom/facebook/quicklog/QuicklogNameProvider;)V
    .locals 1
    .param p4    # [Lcom/facebook/quicklog/DataProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/quicklog/AppStates;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/StatsLogger;",
            ">;",
            "Lcom/facebook/quicklog/RecyclingPool",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/facebook/quicklog/DataProvider;",
            "Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;",
            "Z",
            "Lcom/facebook/quicklog/QuicklogNameProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mValidTags:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    .line 104
    iput-object p1, p0, Lcom/facebook/quicklog/MarkersManager;->mAppStates:Lcom/facebook/quicklog/AppStates;

    .line 105
    iput-object p2, p0, Lcom/facebook/quicklog/MarkersManager;->mStatsLoggerLazy:Ljavax/inject/Provider;

    .line 106
    iput-object p4, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    .line 107
    iput-object p7, p0, Lcom/facebook/quicklog/MarkersManager;->mQuicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 112
    const/16 v0, 0x28a

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mModuleTags:[Ljava/util/ArrayList;

    .line 116
    invoke-interface {p1}, Lcom/facebook/quicklog/AppStates;->wasAppStartedInBackground()Lcom/facebook/common/util/TriState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/util/TriState;->asBooleanObject()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    .line 117
    iput-object p5, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    .line 118
    iput-object p3, p0, Lcom/facebook/quicklog/MarkersManager;->mDirectEditorsPool:Lcom/facebook/quicklog/RecyclingPool;

    .line 119
    iput-boolean p6, p0, Lcom/facebook/quicklog/MarkersManager;->mInsideLockless:Z

    .line 120
    return-void
.end method

.method private getPLE(Lcom/facebook/quicklog/QuickEvent;JSZZI)Lcom/facebook/quicklog/PerformanceLoggingEvent;
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1503
    sget-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/quicklog/ObjectPool;->allocate()Lcom/facebook/quicklog/ObjectPool$Poolable;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;

    .line 1504
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mQuicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 1505
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    sub-long v2, p2, v2

    long-to-int v1, v2

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDurationMs:I

    .line 1506
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->getExtra()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->getExtraTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->addAnnotationsAsList(Ljava/util/List;Ljava/util/List;)V

    .line 1507
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->addTags(Ljava/util/List;)V

    .line 1508
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->detachPoints()Lcom/facebook/quicklog/IntermediatePoints;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 1509
    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    .line 1510
    if-ltz v1, :cond_0

    const/16 v2, 0x280

    if-gt v1, v2, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mModuleTags:[Ljava/util/ArrayList;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->addTags(Ljava/util/List;)V

    .line 1513
    :cond_0
    invoke-virtual {v0, p7}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->setType(I)V

    .line 1514
    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mUniqueId:I

    .line 1515
    iput-short p4, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mActionId:S

    .line 1516
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mTimestamp:J

    iput-wide v2, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mTimestamp:J

    .line 1517
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    iput-wide v2, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mMonotonicTimestamp:J

    .line 1518
    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mInstanceId:I

    .line 1519
    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mSampleRate:I

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mSampleRate:I

    .line 1520
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    iput-wide v2, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    .line 1521
    iget-boolean v1, p1, Lcom/facebook/quicklog/QuickEvent;->mIsAlwaysOn:Z

    iput-boolean v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mIsAlwaysOn:Z

    .line 1522
    iget-boolean v1, p1, Lcom/facebook/quicklog/QuickEvent;->mIsMissingConfig:Z

    iput-boolean v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mIsMissingConfig:Z

    .line 1523
    iget-short v1, p1, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    iput-short v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPrevActionId:S

    .line 1524
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    sub-long v2, p2, v2

    long-to-int v1, v2

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDurationSinceLastNote:I

    .line 1525
    iget-object v1, p1, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLegacyMarkerName:Ljava/lang/String;

    .line 1526
    iget-boolean v1, p1, Lcom/facebook/quicklog/QuickEvent;->mCheckForForegroundLaunch:Z

    iput-boolean v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mCheckForForegroundLaunch:Z

    .line 1527
    iget-object v1, p1, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 1528
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->getGuessWasBackgrounded()Lcom/facebook/common/util/TriState;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasBackgrounded:Lcom/facebook/common/util/TriState;

    .line 1529
    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mRestarted:I

    iput v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mRestarted:I

    .line 1530
    if-eqz p6, :cond_1

    .line 1531
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->detachDataProvidersStartData()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 1532
    invoke-virtual {p1}, Lcom/facebook/quicklog/QuickEvent;->detachDataProvidersStopData()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 1537
    :goto_0
    iput-boolean p5, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mCancelled:Z

    .line 1538
    iget-object v1, p1, Lcom/facebook/quicklog/QuickEvent;->mQplLibVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mQplLibVersion:Ljava/lang/String;

    .line 1539
    return-object v0

    .line 1534
    :cond_1
    iput-object v4, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 1535
    iput-object v4, v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private getStartMetadata(J)Landroid/util/SparseArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 1155
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->shouldUseDataProviders()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    :cond_0
    return-object v1

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    if-eqz v0, :cond_0

    cmp-long v0, p1, v8

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 1163
    :goto_0
    iget-object v3, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 1164
    invoke-interface {v5}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v6

    and-long/2addr v6, p1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    .line 1166
    invoke-interface {v5, v0}, Lcom/facebook/quicklog/DataProvider;->isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1167
    if-nez v1, :cond_2

    .line 1168
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1170
    :cond_2
    invoke-interface {v5}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    invoke-interface {v5}, Lcom/facebook/quicklog/DataProvider;->start()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1163
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;

    move-result-object v0

    goto :goto_0
.end method

.method private inactiveTraceStartInternal(IILjava/lang/String;JZZIZIILcom/facebook/quicklog/QPLListenersList;)V
    .locals 14

    .prologue
    .line 249
    invoke-static/range {p1 .. p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v12

    .line 250
    move-object/from16 v0, p12

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/QPLListenersList;->isAnyoneInterested(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v13, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 252
    :try_start_0
    invoke-direct {p0, v12}, Lcom/facebook/quicklog/MarkersManager;->traceMapIndexOfKey(I)I

    move-result v2

    .line 254
    if-ltz v2, :cond_1

    .line 255
    invoke-direct {p0, v2}, Lcom/facebook/quicklog/MarkersManager;->traceMapValueAt(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v2

    .line 256
    move-wide/from16 v0, p4

    iput-wide v0, v2, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    .line 257
    move/from16 v0, p6

    iput-boolean v0, v2, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 274
    :goto_0
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/facebook/quicklog/QuickEvent;->setQuickStartListenerBitmask(I)V

    .line 275
    move-object/from16 v0, p12

    invoke-static {v0, v2}, Lcom/facebook/quicklog/MarkersManager;->notifyListenersOnStart(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V

    .line 276
    monitor-exit v13

    .line 278
    :cond_0
    return-void

    .line 259
    :cond_1
    if-nez p9, :cond_2

    const/4 v9, 0x1

    .line 269
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/quicklog/MarkersManager;->getQplLibVersion()Ljava/lang/String;

    move-result-object v11

    move v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p10

    .line 260
    invoke-static/range {v2 .. v11}, Lcom/facebook/quicklog/QuickEvent;->allocateInactiveEvent(IIJZZIZILjava/lang/String;)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v2

    .line 271
    invoke-direct {p0, v12, v2}, Lcom/facebook/quicklog/MarkersManager;->traceMapPut(ILcom/facebook/quicklog/QuickEvent;)V

    .line 272
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 259
    :cond_2
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z
    .locals 2

    .prologue
    .line 1556
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickEvent;

    invoke-static {v0, p2}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z
    .locals 1
    .param p0    # Lcom/facebook/quicklog/QuickEvent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1570
    if-eqz p0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/quicklog/QuickEvent;->mIsActive:Z

    if-nez v0, :cond_0

    .line 1571
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickEvent;->getMarkerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/quicklog/QPLListenersList;->isAnyoneInterested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static key(II)I
    .locals 1

    .prologue
    .line 1546
    const v0, 0xab1d4f5

    mul-int/2addr v0, p1

    xor-int/2addr v0, p0

    return v0
.end method

.method private static notifyListenersOnRestart(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V
    .locals 0

    .prologue
    .line 1642
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerRestart(Lcom/facebook/quicklog/QuickEvent;)V

    .line 1643
    return-void
.end method

.method private static notifyListenersOnStart(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V
    .locals 0

    .prologue
    .line 1637
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerStart(Lcom/facebook/quicklog/QuickEvent;)V

    .line 1638
    return-void
.end method

.method private static notifyListenersOnStop(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V
    .locals 0

    .prologue
    .line 1646
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerEnd(Lcom/facebook/quicklog/QuickEvent;)V

    .line 1647
    return-void
.end method

.method private startTraceInternal(Lcom/facebook/quicklog/QuickEvent;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 5
    .param p2    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/quicklog/QuickEvent;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    iget v0, p1, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    iget v1, p1, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    invoke-static {v0, v1}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v1

    .line 169
    const/4 v0, 0x0

    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-wide v2, p1, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    invoke-direct {p0, v2, v3}, Lcom/facebook/quicklog/MarkersManager;->getStartMetadata(J)Landroid/util/SparseArray;

    move-result-object p2

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 175
    :try_start_0
    iput-object p2, p1, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 176
    if-eqz p3, :cond_3

    sget-object v3, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-eq p3, v3, :cond_3

    .line 177
    const/4 v3, 0x0

    invoke-virtual {p1, p3, v3}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(Lcom/facebook/common/util/TriState;Z)V

    .line 181
    :goto_0
    invoke-virtual {p1, p4}, Lcom/facebook/quicklog/QuickEvent;->setQuickStartListenerBitmask(I)V

    .line 182
    iput-object p1, p0, Lcom/facebook/quicklog/MarkersManager;->mLatestQuickEventForTest:Lcom/facebook/quicklog/QuickEvent;

    .line 184
    invoke-direct {p0, v1}, Lcom/facebook/quicklog/MarkersManager;->traceMapIndexOfKey(I)I

    move-result v3

    .line 185
    if-ltz v3, :cond_4

    .line 186
    invoke-direct {p0, v3}, Lcom/facebook/quicklog/MarkersManager;->traceMapValueAt(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 187
    invoke-direct {p0, v3, p1}, Lcom/facebook/quicklog/MarkersManager;->traceMapSetValueAt(ILcom/facebook/quicklog/QuickEvent;)V

    .line 191
    :goto_1
    invoke-static {p5, p1}, Lcom/facebook/quicklog/MarkersManager;->notifyListenersOnStart(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V

    .line 192
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v0, :cond_2

    .line 195
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    iget-object v2, p1, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    sget-object v1, Lcom/facebook/quicklog/MarkersManager;->TAG:Ljava/lang/String;

    const-string v2, "Markers Name Hash collision: %s =? %s"

    iget-object v3, v0, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    iget-object v4, p1, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    :cond_1
    sget-object v1, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v1, v0}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 206
    :cond_2
    return-void

    .line 179
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/quicklog/MarkersManager;->checkIfBackgrounded()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(ZZ)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 189
    :cond_4
    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/facebook/quicklog/MarkersManager;->traceMapPut(ILcom/facebook/quicklog/QuickEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private stopDataProviders(Landroid/util/SparseArray;J)V
    .locals 12
    .param p1    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<*>;J)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 1130
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->shouldUseDataProviders()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    :cond_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    if-eqz v0, :cond_0

    cmp-long v0, p2, v10

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1137
    :goto_0
    iget-object v4, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v6, v4, v3

    .line 1138
    invoke-interface {v6}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v8

    and-long/2addr v8, p2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1140
    invoke-interface {v6, v0}, Lcom/facebook/quicklog/DataProvider;->isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1141
    invoke-interface {v6}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    .line 1143
    if-eqz p1, :cond_4

    .line 1144
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1147
    :goto_2
    invoke-interface {v6, v2}, Lcom/facebook/quicklog/DataProvider;->stop(Ljava/lang/Object;)V

    .line 1137
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1136
    :cond_3
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_2
.end method

.method private traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;
    .locals 2

    .prologue
    .line 1550
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1551
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickEvent;

    monitor-exit v1

    return-object v0

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapIndexOfKey(I)I
    .locals 2

    .prologue
    .line 1599
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1600
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1601
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapPut(ILcom/facebook/quicklog/QuickEvent;)V
    .locals 2

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1606
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1607
    monitor-exit v1

    .line 1608
    return-void

    .line 1607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapRemove(I)Lcom/facebook/quicklog/QuickEvent;
    .locals 3

    .prologue
    .line 1611
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickEvent;

    .line 1613
    if-eqz v0, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1617
    :cond_0
    monitor-exit v1

    return-object v0

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapSetValueAt(ILcom/facebook/quicklog/QuickEvent;)V
    .locals 2

    .prologue
    .line 1593
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1594
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1595
    monitor-exit v1

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapSize()I
    .locals 2

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1588
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private traceMapValueAt(I)Lcom/facebook/quicklog/QuickEvent;
    .locals 2

    .prologue
    .line 1581
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1582
    :try_start_0
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/QuickEvent;

    monitor-exit v1

    return-object v0

    .line 1583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addPoint(IIIJZLjava/lang/String;Lcom/facebook/quicklog/PointData;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 18
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJZ",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "I",
            "Landroid/util/SparseArray",
            "<*>;I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    const/4 v10, 0x0

    .line 403
    const-wide/16 v6, 0x0

    .line 404
    const/4 v2, 0x0

    .line 405
    const-wide/16 v4, 0x0

    .line 406
    invoke-static/range {p1 .. p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v16

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 408
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v3

    .line 409
    if-eqz v3, :cond_6

    .line 410
    move/from16 v0, p11

    iput v0, v3, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 411
    move-object/from16 v0, p12

    invoke-static {v3, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 412
    iget-wide v4, v3, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    sub-long v4, p4, v4

    .line 413
    iget-wide v14, v3, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 414
    iget v12, v3, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    .line 416
    const-wide/16 v6, 0x0

    cmp-long v2, v14, v6

    if-eqz v2, :cond_0

    if-nez p9, :cond_3

    .line 417
    :cond_0
    const/4 v9, 0x0

    move/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/quicklog/QuickEvent;->addPoint(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V

    move v13, v10

    move-wide v10, v4

    :goto_0
    move-object/from16 v2, p12

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p3

    .line 422
    invoke-virtual/range {v2 .. v9}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerPoint(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Lcom/facebook/quicklog/PointData;JZI)V

    move-wide v4, v10

    move v2, v12

    move-wide v6, v14

    move v3, v13

    .line 424
    :goto_1
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    if-eqz v3, :cond_2

    .line 427
    if-nez p10, :cond_4

    .line 428
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/facebook/quicklog/MarkersManager;->getStopMetadata(J)Landroid/util/SparseArray;

    move-result-object v9

    .line 430
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 431
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v3

    .line 432
    if-eqz v3, :cond_1

    iget v6, v3, Lcom/facebook/quicklog/QuickEvent;->mUniqueIdentifier:I

    if-ne v6, v2, :cond_1

    .line 433
    move-object/from16 v0, p12

    invoke-static {v3, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 434
    invoke-virtual/range {v3 .. v9}, Lcom/facebook/quicklog/QuickEvent;->addPoint(JILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;)V

    .line 437
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    :cond_2
    return-void

    .line 419
    :cond_3
    const/4 v10, 0x1

    move v13, v10

    move-wide v10, v4

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 437
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :cond_4
    move-object/from16 v9, p10

    goto :goto_2

    :cond_5
    move v12, v2

    move-wide v14, v6

    move v13, v10

    move-wide v10, v4

    goto :goto_0

    :cond_6
    move v3, v10

    goto :goto_1
.end method

.method public addPoint(IIIJZLjava/lang/String;Ljava/lang/String;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 16
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray",
            "<*>;I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    if-nez p8, :cond_1

    .line 360
    const/4 v10, 0x0

    check-cast v10, Lcom/facebook/quicklog/PointData;

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/facebook/quicklog/MarkersManager;->addPoint(IIIJZLjava/lang/String;Lcom/facebook/quicklog/PointData;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v0, v2, v1}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-static/range {p8 .. p8}, Lcom/facebook/quicklog/PointData;->singleStringOrNull(Ljava/lang/String;)Lcom/facebook/quicklog/PointData;

    move-result-object v10

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    .line 375
    invoke-virtual/range {v2 .. v14}, Lcom/facebook/quicklog/MarkersManager;->addPoint(IIIJZLjava/lang/String;Lcom/facebook/quicklog/PointData;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;DILcom/facebook/quicklog/QPLListenersList;)V
    .locals 4

    .prologue
    .line 665
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 666
    invoke-direct {p0, v0, p7}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 672
    invoke-static {v0, p7}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    monitor-exit v1

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 675
    :cond_1
    :try_start_1
    iput p6, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 676
    invoke-virtual {v0, p3, p4, p5}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    .line 677
    invoke-virtual {p7, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;IILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 550
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 551
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 557
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 558
    monitor-exit v1

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 560
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 561
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;JILcom/facebook/quicklog/QPLListenersList;)V
    .locals 4

    .prologue
    .line 619
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 620
    invoke-direct {p0, v0, p7}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 625
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 626
    invoke-static {v0, p7}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 627
    monitor-exit v1

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 629
    :cond_1
    :try_start_1
    iput p6, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 630
    invoke-virtual {v0, p3, p4, p5}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-virtual {p7, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 527
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 528
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 534
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    monitor-exit v1

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 537
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 538
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p6, v0, p3, p4}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;ZILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 711
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 712
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 717
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 718
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 719
    monitor-exit v1

    goto :goto_0

    .line 724
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 721
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 722
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;[DILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 688
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 689
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 694
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 695
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 696
    monitor-exit v1

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 698
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 699
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;[D)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;[IILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 596
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 597
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 602
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 603
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    monitor-exit v1

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 606
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 607
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;[JILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 642
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 643
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 648
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 649
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 650
    monitor-exit v1

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 652
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 653
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    .line 654
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;[Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 573
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 574
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 587
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 579
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 580
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 581
    monitor-exit v1

    goto :goto_0

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 583
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 584
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public annotateTrace(IILjava/lang/String;[ZILcom/facebook/quicklog/QPLListenersList;)V
    .locals 3

    .prologue
    .line 734
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 735
    invoke-direct {p0, v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 740
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 741
    invoke-static {v0, p6}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    monitor-exit v1

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 744
    :cond_1
    :try_start_1
    iput p5, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 745
    invoke-virtual {v0, p3, p4}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-virtual {p6, v0, p3, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerAnnotate(Lcom/facebook/quicklog/QuickEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method checkIfBackgrounded()Z
    .locals 3

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mAppStates:Lcom/facebook/quicklog/AppStates;

    invoke-interface {v0}, Lcom/facebook/quicklog/AppStates;->isAppBackgroundedNow()Z

    move-result v0

    .line 1460
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    .line 1461
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1480
    :goto_0
    return v0

    .line 1465
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1466
    :try_start_0
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    .line 1467
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1468
    monitor-exit v1

    goto :goto_0

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1471
    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    .line 1472
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mGuessIsCurrentlyInBackground:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1474
    sget-object v1, Lcom/facebook/quicklog/MarkersManager;->TAG:Ljava/lang/String;

    const-string v2, "We have noticed the app came out of background"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1478
    :cond_2
    sget-object v1, Lcom/facebook/quicklog/MarkersManager;->TAG:Ljava/lang/String;

    const-string v2, "Marking all inflight markers as backgrounded"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0}, Lcom/facebook/quicklog/MarkersManager;->markAllAsBackgrounded()V

    goto :goto_0
.end method

.method public dropTrace(IILcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;IJLcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/ShimmedQuickPerformanceLogger$BatchMarkersChangeListener;)V
    .locals 7
    .param p8    # Lcom/facebook/quicklog/ShimmedQuickPerformanceLogger$BatchMarkersChangeListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1250
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    .line 1251
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1252
    :try_start_0
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapRemove(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_2

    .line 1254
    iget-object v2, v0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 1255
    iget-object v2, v0, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    iget-wide v4, v0, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    invoke-direct {p0, v2, v4, v5}, Lcom/facebook/quicklog/MarkersManager;->stopDataProviders(Landroid/util/SparseArray;J)V

    .line 1258
    :cond_0
    iput p4, v0, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 1259
    iput-wide p5, v0, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 1260
    if-eqz p8, :cond_1

    .line 1261
    iget v2, v0, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    iget v3, v0, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    invoke-interface {p8, v2, v3}, Lcom/facebook/quicklog/ShimmedQuickPerformanceLogger$BatchMarkersChangeListener;->handleMarkerDisappeared(II)V

    .line 1264
    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;->handleMarkerDropped(II)V

    .line 1265
    invoke-virtual {p7, v0}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerCancel(Lcom/facebook/quicklog/QuickEvent;)V

    .line 1266
    sget-object v2, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v2, v0}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 1268
    :cond_2
    monitor-exit v1

    .line 1269
    return-void

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endTrace(IISJZLcom/facebook/common/util/TriState;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;Landroid/util/SparseArray;)Lcom/facebook/quicklog/PerformanceLoggingEvent;
    .locals 14
    .param p7    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IISJZ",
            "Lcom/facebook/common/util/TriState;",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            "Landroid/util/SparseArray",
            "<*>;)",
            "Lcom/facebook/quicklog/PerformanceLoggingEvent;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1053
    invoke-static/range {p1 .. p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v3

    .line 1056
    const/4 v2, 0x0

    .line 1057
    const-wide/16 v4, 0x0

    .line 1058
    iget-object v10, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1059
    :try_start_0
    invoke-direct {p0, v3}, Lcom/facebook/quicklog/MarkersManager;->traceMapRemove(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v3

    .line 1060
    if-eqz v3, :cond_9

    .line 1061
    iget-object v2, v3, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 1062
    iget-wide v4, v3, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 1064
    iget-object v7, v3, Lcom/facebook/quicklog/QuickEvent;->mIntermediatePoints:Lcom/facebook/quicklog/IntermediatePoints;

    .line 1065
    if-eqz p8, :cond_8

    .line 1066
    if-nez v7, :cond_1

    const/4 v6, -0x1

    .line 1067
    :goto_0
    if-ltz v6, :cond_2

    .line 1068
    invoke-virtual {v7, v6}, Lcom/facebook/quicklog/IntermediatePoints;->getStopMetadata(I)Landroid/util/SparseArray;

    move-result-object p11

    .line 1069
    iget-wide v8, v3, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    invoke-virtual {v7, v6}, Lcom/facebook/quicklog/IntermediatePoints;->getTimestamp(I)J

    move-result-wide v6

    add-long p4, v8, v6

    move-wide v8, v4

    move-object v7, v2

    move-object/from16 v2, p11

    move-wide/from16 v4, p4

    .line 1081
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    if-nez v2, :cond_7

    .line 1084
    invoke-virtual {p0, v8, v9}, Lcom/facebook/quicklog/MarkersManager;->getStopMetadata(J)Landroid/util/SparseArray;

    move-result-object v2

    move-object v6, v2

    .line 1086
    :goto_2
    invoke-direct {p0, v7, v8, v9}, Lcom/facebook/quicklog/MarkersManager;->stopDataProviders(Landroid/util/SparseArray;J)V

    .line 1088
    iget-object v10, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1089
    const/4 v7, 0x0

    .line 1090
    if-eqz v3, :cond_6

    .line 1091
    :try_start_1
    iget-wide v8, v3, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    sub-long v12, v4, v8

    .line 1093
    iget-boolean v2, v3, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    if-eqz v2, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mStatsLoggerLazy:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/quicklog/StatsLogger;

    move/from16 v0, p3

    invoke-interface {v2, p1, v0, v12, v13}, Lcom/facebook/quicklog/StatsLogger;->incrementCounterWithActionBy(ISJ)V

    .line 1097
    :cond_0
    iput-object v6, v3, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 1099
    iget-boolean v2, v3, Lcom/facebook/quicklog/QuickEvent;->mIsActive:Z

    if-eqz v2, :cond_5

    .line 1100
    invoke-virtual {v3}, Lcom/facebook/quicklog/QuickEvent;->generateStopPerfStats()V

    .line 1101
    if-eqz p7, :cond_4

    sget-object v2, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    move-object/from16 v0, p7

    if-eq v0, v2, :cond_4

    .line 1102
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v2}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(Lcom/facebook/common/util/TriState;Z)V

    .line 1106
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v2, p0

    move/from16 v6, p3

    .line 1107
    invoke-direct/range {v2 .. v9}, Lcom/facebook/quicklog/MarkersManager;->getPLE(Lcom/facebook/quicklog/QuickEvent;JSZZI)Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v2

    .line 1115
    :goto_4
    iput-wide v4, v3, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 1116
    move/from16 v0, p3

    iput-short v0, v3, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    .line 1117
    long-to-int v4, v12

    iput v4, v3, Lcom/facebook/quicklog/QuickEvent;->mDuration:I

    .line 1118
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/facebook/quicklog/QuickEvent;->updateUsingAutoTime(Z)V

    .line 1119
    move/from16 v0, p9

    iput v0, v3, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 1121
    move-object/from16 v0, p10

    invoke-static {v0, v3}, Lcom/facebook/quicklog/MarkersManager;->notifyListenersOnStop(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V

    .line 1122
    sget-object v4, Lcom/facebook/quicklog/QuickEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v4, v3}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 1124
    :goto_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    .line 1066
    :cond_1
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Lcom/facebook/quicklog/IntermediatePoints;->findPointIndex(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1071
    :cond_2
    new-instance v4, Lcom/facebook/quicklog/QplPointNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Point "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is not found. You should endOnPoint only when point been reported"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v7, :cond_3

    const/4 v2, 0x0

    .line 1075
    :goto_6
    iget v6, v3, Lcom/facebook/quicklog/QuickEvent;->mMarkerId:I

    iget v3, v3, Lcom/facebook/quicklog/QuickEvent;->mInstanceKey:I

    invoke-direct {v4, v5, v2, v6, v3}, Lcom/facebook/quicklog/QplPointNotFoundException;-><init>(Ljava/lang/String;[Ljava/lang/String;II)V

    throw v4

    .line 1081
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1075
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Lcom/facebook/quicklog/IntermediatePoints;->getAllNames()[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_6

    .line 1104
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/facebook/quicklog/MarkersManager;->checkIfBackgrounded()Z

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(ZZ)V

    goto :goto_3

    .line 1125
    :catchall_1
    move-exception v2

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :cond_5
    move-object v2, v7

    goto :goto_4

    :cond_6
    move-object v2, v7

    goto :goto_5

    :cond_7
    move-object v6, v2

    goto/16 :goto_2

    :cond_8
    move-wide v8, v4

    move-object v7, v2

    move-object/from16 v2, p11

    move-wide/from16 v4, p4

    goto/16 :goto_1

    :cond_9
    move-wide v8, v4

    move-object v7, v2

    move-object/from16 v2, p11

    move-wide/from16 v4, p4

    goto/16 :goto_1
.end method

.method getQplLibVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/facebook/quicklog/MarkersManager;->mInsideLockless:Z

    if-eqz v0, :cond_0

    const-string v0, "lockless_1_0"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "blocking_2_0"

    goto :goto_0
.end method

.method getStopMetadata(J)Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    .line 1179
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    if-eqz v0, :cond_0

    cmp-long v0, p1, v10

    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-object v1

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->shouldUseDataProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1188
    iget-object v4, p0, Lcom/facebook/quicklog/MarkersManager;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v6, v4, v3

    .line 1189
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-nez v0, :cond_4

    move-object v0, v1

    .line 1190
    :goto_2
    invoke-interface {v6}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v8

    and-long/2addr v8, p1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    .line 1192
    invoke-interface {v6, v0}, Lcom/facebook/quicklog/DataProvider;->isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1193
    invoke-interface {v6}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 1194
    invoke-interface {v6}, Lcom/facebook/quicklog/DataProvider;->snapshot()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1188
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1189
    :cond_4
    iget-object v0, p0, Lcom/facebook/quicklog/MarkersManager;->mQPLGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v1, v2

    .line 1197
    goto :goto_0
.end method

.method public inactiveTraceStart(IILjava/lang/String;JZZIZIILcom/facebook/quicklog/QPLListenersList;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct/range {p0 .. p12}, Lcom/facebook/quicklog/MarkersManager;->inactiveTraceStartInternal(IILjava/lang/String;JZZIZIILcom/facebook/quicklog/QPLListenersList;)V

    .line 235
    return-void
.end method

.method public isMarkerOn(IILcom/facebook/quicklog/QPLListenersList;)Z
    .locals 1

    .prologue
    .line 1025
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v0

    return v0
.end method

.method markAllAsBackgrounded()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1484
    iget-object v1, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1485
    :try_start_0
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mOpenTraces:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1486
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/quicklog/MarkersManager;->traceMapSize()I

    move-result v3

    .line 1487
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1488
    invoke-direct {p0, v0}, Lcom/facebook/quicklog/MarkersManager;->traceMapValueAt(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v4

    .line 1489
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(ZZ)V

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1491
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1492
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1493
    return-void

    .line 1491
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1492
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public note(IISJZLjava/lang/String;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)Lcom/facebook/quicklog/PerformanceLoggingEvent;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 969
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v2

    .line 970
    move-object/from16 v0, p10

    invoke-direct {p0, v2, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 971
    const/4 v2, 0x0

    .line 1011
    :goto_0
    return-object v2

    .line 974
    :cond_0
    iget-object v10, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 975
    :try_start_0
    invoke-direct {p0, v2}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v3

    .line 976
    if-eqz v3, :cond_5

    .line 977
    move/from16 v0, p9

    iput v0, v3, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 979
    iget-boolean v2, v3, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    if-eqz v2, :cond_1

    .line 980
    iget-wide v4, v3, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    sub-long v4, p4, v4

    .line 981
    iget-object v2, p0, Lcom/facebook/quicklog/MarkersManager;->mStatsLoggerLazy:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/quicklog/StatsLogger;

    invoke-interface {v2, p1, p3, v4, v5}, Lcom/facebook/quicklog/StatsLogger;->incrementCounterWithActionBy(ISJ)V

    .line 984
    :cond_1
    move-object/from16 v0, p10

    invoke-static {v3, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 985
    const/4 v2, 0x0

    monitor-exit v10

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 988
    :cond_2
    if-eqz p7, :cond_3

    .line 989
    :try_start_1
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-virtual {v3, v0, v1}, Lcom/facebook/quicklog/QuickEvent;->annotate(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v2, p0

    move-wide/from16 v4, p4

    move v6, p3

    .line 993
    invoke-direct/range {v2 .. v9}, Lcom/facebook/quicklog/MarkersManager;->getPLE(Lcom/facebook/quicklog/QuickEvent;JSZZI)Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v2

    .line 1000
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mNote:Z

    .line 1002
    move-wide/from16 v0, p4

    iput-wide v0, v3, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 1003
    iput-short p3, v3, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    .line 1004
    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/facebook/quicklog/QuickEvent;->updateUsingAutoTime(Z)V

    .line 1006
    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Lcom/facebook/quicklog/QPLListenersList;->notifyOnMarkerNote(Lcom/facebook/quicklog/QuickEvent;)V

    .line 1007
    iget-boolean v3, v3, Lcom/facebook/quicklog/QuickEvent;->mIsActive:Z

    if-eqz v3, :cond_4

    :goto_1
    monitor-exit v10

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1009
    :cond_5
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public restartTrace(IIJZJLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIILcom/facebook/quicklog/QPLListenersList;)Z
    .locals 9
    .param p8    # Lcom/facebook/base/lwperf/perfstats/PerfStats;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZJ",
            "Lcom/facebook/base/lwperf/perfstats/PerfStats;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "ZII",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1, p2}, Lcom/facebook/quicklog/MarkersManager;->key(II)I

    move-result v2

    .line 300
    move-object/from16 v0, p14

    invoke-direct {p0, v2, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(ILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    const/4 v2, 0x0

    .line 340
    :goto_0
    return v2

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/facebook/quicklog/MarkersManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 304
    :try_start_0
    invoke-direct {p0, v2}, Lcom/facebook/quicklog/MarkersManager;->traceMapGet(I)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v2

    .line 305
    move-object/from16 v0, p14

    invoke-static {v2, v0}, Lcom/facebook/quicklog/MarkersManager;->isTraceOn(Lcom/facebook/quicklog/QuickEvent;Lcom/facebook/quicklog/QPLListenersList;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    iput-wide p3, v2, Lcom/facebook/quicklog/QuickEvent;->mMonotonicTimestamp:J

    .line 307
    iput-boolean p5, v2, Lcom/facebook/quicklog/QuickEvent;->mUsingAutoTime:Z

    .line 308
    iput-wide p3, v2, Lcom/facebook/quicklog/QuickEvent;->mLastNoteTimestamp:J

    .line 309
    iput-wide p6, v2, Lcom/facebook/quicklog/QuickEvent;->mTimestamp:J

    .line 310
    const/4 v4, 0x1

    iput-short v4, v2, Lcom/facebook/quicklog/QuickEvent;->mLastActionId:S

    .line 311
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/facebook/quicklog/QuickEvent;->mLegacyIsTagSet:Z

    .line 312
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mExtra:Ljava/util/ArrayList;

    .line 313
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mExtraTypes:Ljava/util/ArrayList;

    .line 314
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mTags:Ljava/util/ArrayList;

    .line 315
    move-object/from16 v0, p8

    iput-object v0, v2, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 316
    move/from16 v0, p11

    iput-boolean v0, v2, Lcom/facebook/quicklog/QuickEvent;->mShouldCounterLog:Z

    .line 317
    move/from16 v0, p12

    iput v0, v2, Lcom/facebook/quicklog/QuickEvent;->mThreadId:I

    .line 318
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/facebook/quicklog/QuickEvent;->mergeQuickStartListenerBitmask(I)V

    .line 319
    iget-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 320
    iget-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    iget-wide v6, v2, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    invoke-direct {p0, v4, v6, v7}, Lcom/facebook/quicklog/MarkersManager;->stopDataProviders(Landroid/util/SparseArray;J)V

    .line 323
    :cond_1
    if-eqz p8, :cond_2

    .line 324
    iget-wide v4, v2, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    sget-wide v6, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ALL_PERF_STATS:J

    or-long/2addr v4, v6

    iput-wide v4, v2, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 331
    :goto_1
    iget v4, v2, Lcom/facebook/quicklog/QuickEvent;->mRestarted:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/facebook/quicklog/QuickEvent;->mRestarted:I

    .line 332
    if-eqz p10, :cond_4

    sget-object v4, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    move-object/from16 v0, p10

    if-eq v0, v4, :cond_4

    .line 333
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v2, v0, v4}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(Lcom/facebook/common/util/TriState;Z)V

    .line 337
    :goto_2
    move-object/from16 v0, p14

    invoke-static {v0, v2}, Lcom/facebook/quicklog/MarkersManager;->notifyListenersOnRestart(Lcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/QuickEvent;)V

    .line 338
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 325
    :cond_2
    if-eqz p9, :cond_3

    .line 326
    :try_start_1
    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    goto :goto_1

    .line 328
    :cond_3
    iget-wide v4, v2, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 329
    invoke-direct {p0, v4, v5}, Lcom/facebook/quicklog/MarkersManager;->getStartMetadata(J)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v2, Lcom/facebook/quicklog/QuickEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    goto :goto_1

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/quicklog/MarkersManager;->checkIfBackgrounded()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/facebook/quicklog/QuickEvent;->setGuessWasBackgrounded(ZZ)V

    goto :goto_2

    .line 340
    :cond_5
    const/4 v2, 0x0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public startTrace(Lcom/facebook/quicklog/QuickEvent;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 0
    .param p2    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/quicklog/QuickEvent;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct/range {p0 .. p5}, Lcom/facebook/quicklog/MarkersManager;->startTraceInternal(Lcom/facebook/quicklog/QuickEvent;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ILcom/facebook/quicklog/QPLListenersList;)V

    .line 160
    return-void
.end method
