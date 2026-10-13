.class public Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;
.super Ljava/lang/Object;
.source "QuickPerformanceLoggerImpl.java"

# interfaces
.implements Lcom/facebook/quicklog/ShimmedQuickPerformanceLogger;


# static fields
.field static final ALL_PERF_STATS:J

.field public static final TAG:Ljava/lang/String;

.field static volatile sMarkersWhitelist:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private mActualLoggerLazy:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/HoneyClientLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlwaysOnSampleRates:Landroid/util/SparseIntArray;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "itself"
    .end annotation
.end field

.field private final mAppStates:Lcom/facebook/quicklog/AppStates;

.field private final mBackgroundExecution:Lcom/facebook/quicklog/BackgroundExecution;

.field private mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

.field private final mDataProviders:[Lcom/facebook/quicklog/DataProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

.field private final mEventDecorators:[Lcom/facebook/quicklog/EventDecorator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

.field private final mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mInsideLockless:Z

.field private volatile mIsOutputToLogcatEnabled:Lcom/facebook/common/util/TriState;

.field private volatile mIsSendingAllMarkersEnabled:Lcom/facebook/common/util/TriState;

.field private mLastPLEForTest:Lcom/facebook/quicklog/PerformanceLoggingEvent;

.field private volatile mListenersList:Lcom/facebook/quicklog/QPLListenersList;

.field private final mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

.field private final mMarkersRemoveHandler:Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;

.field private mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mPerformanceEventVisitors:[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;

.field private final mRandom:Ljava/util/Random;

.field private mRealTimeClock:Lcom/facebook/common/time/Clock;

.field private mStatsLoggerLazy:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/StatsLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    sget-wide v0, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->CPU_STATS:J

    sget-wide v2, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->IO_STATS:J

    or-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/quicklog/decorator/EventDecoratorMetadataCategory;->MEMORY_STATS:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ALL_PERF_STATS:J

    .line 68
    const-class v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->TAG:Ljava/lang/String;

    .line 2818
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/quicklog/QPLConfiguration;Ljavax/inject/Provider;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/common/time/Clock;Lcom/facebook/quicklog/DebugAndTestConfig;Lcom/facebook/quicklog/AppStates;Lcom/facebook/quicklog/BackgroundExecution;[Lcom/facebook/quicklog/QuickEventListener;[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;[Lcom/facebook/quicklog/DataProvider;[Lcom/facebook/quicklog/EventDecorator;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;Lcom/facebook/quicklog/HealthMonitor;Z)V
    .locals 17
    .param p9    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # [Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # [Lcom/facebook/quicklog/DataProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # [Lcom/facebook/quicklog/EventDecorator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/facebook/quicklog/HealthMonitor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/HoneyClientLogger;",
            ">;",
            "Lcom/facebook/quicklog/QPLConfiguration;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/StatsLogger;",
            ">;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/common/time/Clock;",
            "Lcom/facebook/quicklog/DebugAndTestConfig;",
            "Lcom/facebook/quicklog/AppStates;",
            "Lcom/facebook/quicklog/BackgroundExecution;",
            "[",
            "Lcom/facebook/quicklog/QuickEventListener;",
            "[",
            "Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;",
            "[",
            "Lcom/facebook/quicklog/DataProvider;",
            "[",
            "Lcom/facebook/quicklog/EventDecorator;",
            "Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;",
            "Lcom/facebook/quicklog/HealthMonitor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v14, Lcom/facebook/quicklog/QPLDefaultNameProvider;

    invoke-direct {v14}, Lcom/facebook/quicklog/QPLDefaultNameProvider;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    invoke-direct/range {v0 .. v16}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;-><init>(Ljavax/inject/Provider;Lcom/facebook/quicklog/QPLConfiguration;Ljavax/inject/Provider;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/common/time/Clock;Lcom/facebook/quicklog/DebugAndTestConfig;Lcom/facebook/quicklog/AppStates;Lcom/facebook/quicklog/BackgroundExecution;[Lcom/facebook/quicklog/QuickEventListener;[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;[Lcom/facebook/quicklog/DataProvider;[Lcom/facebook/quicklog/EventDecorator;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;Lcom/facebook/quicklog/QuicklogNameProvider;Lcom/facebook/quicklog/HealthMonitor;Z)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/quicklog/QPLConfiguration;Ljavax/inject/Provider;Lcom/facebook/common/time/MonotonicClock;Lcom/facebook/common/time/Clock;Lcom/facebook/quicklog/DebugAndTestConfig;Lcom/facebook/quicklog/AppStates;Lcom/facebook/quicklog/BackgroundExecution;[Lcom/facebook/quicklog/QuickEventListener;[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;[Lcom/facebook/quicklog/DataProvider;[Lcom/facebook/quicklog/EventDecorator;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;Lcom/facebook/quicklog/QuicklogNameProvider;Lcom/facebook/quicklog/HealthMonitor;Z)V
    .locals 9
    .param p9    # [Lcom/facebook/quicklog/QuickEventListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # [Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # [Lcom/facebook/quicklog/DataProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # [Lcom/facebook/quicklog/EventDecorator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p15    # Lcom/facebook/quicklog/HealthMonitor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/HoneyClientLogger;",
            ">;",
            "Lcom/facebook/quicklog/QPLConfiguration;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/quicklog/StatsLogger;",
            ">;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Lcom/facebook/common/time/Clock;",
            "Lcom/facebook/quicklog/DebugAndTestConfig;",
            "Lcom/facebook/quicklog/AppStates;",
            "Lcom/facebook/quicklog/BackgroundExecution;",
            "[",
            "Lcom/facebook/quicklog/QuickEventListener;",
            "[",
            "Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;",
            "[",
            "Lcom/facebook/quicklog/DataProvider;",
            "[",
            "Lcom/facebook/quicklog/EventDecorator;",
            "Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;",
            "Lcom/facebook/quicklog/QuicklogNameProvider;",
            "Lcom/facebook/quicklog/HealthMonitor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAlwaysOnSampleRates:Landroid/util/SparseIntArray;

    .line 66
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsOutputToLogcatEnabled:Lcom/facebook/common/util/TriState;

    .line 67
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsSendingAllMarkersEnabled:Lcom/facebook/common/util/TriState;

    .line 74
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRandom:Ljava/util/Random;

    .line 345
    new-instance v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$2;

    invoke-direct {v1, p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$2;-><init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;)V

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersRemoveHandler:Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;

    .line 138
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mActualLoggerLazy:Ljavax/inject/Provider;

    .line 139
    iput-object p2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    .line 140
    iput-object p3, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mStatsLoggerLazy:Ljavax/inject/Provider;

    .line 141
    iput-object p4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    .line 142
    iput-object p5, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRealTimeClock:Lcom/facebook/common/time/Clock;

    .line 143
    iput-object p6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    .line 144
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAppStates:Lcom/facebook/quicklog/AppStates;

    .line 145
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mBackgroundExecution:Lcom/facebook/quicklog/BackgroundExecution;

    .line 146
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    .line 147
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mEventDecorators:[Lcom/facebook/quicklog/EventDecorator;

    .line 148
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    .line 149
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 150
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    .line 153
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mPerformanceEventVisitors:[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;

    .line 155
    new-instance v4, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$1;

    invoke-direct {v4, p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$1;-><init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;)V

    .line 163
    new-instance v1, Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v0, p9

    invoke-direct {v1, v0}, Lcom/facebook/quicklog/QPLListenersList;-><init>([Lcom/facebook/quicklog/QuickEventListener;)V

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    .line 165
    if-nez p16, :cond_0

    .line 166
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    invoke-virtual {v1, p0}, Lcom/facebook/quicklog/QPLListenersList;->passQplToListeners(Lcom/facebook/quicklog/QuickPerformanceLogger;)V

    .line 169
    :cond_0
    new-instance v1, Lcom/facebook/quicklog/MarkersManager;

    iget-object v3, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mStatsLoggerLazy:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    move-object/from16 v2, p7

    move-object/from16 v5, p11

    move-object/from16 v6, p13

    move/from16 v7, p16

    invoke-direct/range {v1 .. v8}, Lcom/facebook/quicklog/MarkersManager;-><init>(Lcom/facebook/quicklog/AppStates;Ljavax/inject/Provider;Lcom/facebook/quicklog/RecyclingPool;[Lcom/facebook/quicklog/DataProvider;Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;ZLcom/facebook/quicklog/QuicklogNameProvider;)V

    iput-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    .line 178
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    .line 179
    sget-object v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Created!"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->preparePleForSending(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->finallySend(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    return-void
.end method

.method private calculateSampleRate(IIZZ)I
    .locals 1

    .prologue
    .line 2643
    if-eqz p3, :cond_0

    .line 2644
    invoke-direct {p0, p1, p4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getAlwaysOnSampleRate(IZ)I

    move-result v0

    .line 2649
    :goto_0
    return v0

    .line 2646
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldSendAllEvents(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2647
    const/4 v0, 0x1

    goto :goto_0

    .line 2649
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    invoke-interface {v0, p2}, Lcom/facebook/quicklog/QPLConfiguration;->randomlySample(I)I

    move-result v0

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    .line 2695
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2696
    return-void
.end method

.method private debugLog(Ljava/lang/String;II)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 2724
    invoke-direct {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabledAndDebugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2725
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->TAG:Ljava/lang/String;

    const-string v1, "%s: (%s) %s (%d) action:%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    .line 2730
    invoke-virtual {v4}, Lcom/facebook/quicklog/MarkersManager;->getQplLibVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 2731
    invoke-interface {v4, p2}, Lcom/facebook/quicklog/QuicklogNameProvider;->getMarkerName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2732
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 2733
    invoke-interface {v4, p3}, Lcom/facebook/quicklog/QuicklogNameProvider;->getActionName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2725
    invoke-static {v5, v0, v1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logLongMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2735
    :cond_0
    return-void
.end method

.method private debugLog(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/quicklog/PointData;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabledAndDebugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2701
    if-nez p4, :cond_1

    const/4 v0, 0x0

    .line 2702
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2704
    :cond_0
    return-void

    .line 2701
    :cond_1
    invoke-virtual {p4}, Lcom/facebook/quicklog/PointData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private debugLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x3

    .line 2708
    invoke-direct {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabledAndDebugLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2709
    sget-object v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->TAG:Ljava/lang/String;

    const-string v2, "%s: (%s) %s (%d) %s%s%s"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    .line 2714
    invoke-virtual {v4}, Lcom/facebook/quicklog/MarkersManager;->getQplLibVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->quicklogNameProvider:Lcom/facebook/quicklog/QuicklogNameProvider;

    .line 2715
    invoke-interface {v4, p2}, Lcom/facebook/quicklog/QuicklogNameProvider;->getMarkerName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2716
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x4

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    aput-object p3, v3, v0

    const/4 v4, 0x5

    if-nez p4, :cond_3

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x6

    if-nez p4, :cond_1

    const-string p4, ""

    :cond_1
    aput-object p4, v3, v0

    .line 2709
    invoke-static {v5, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logLongMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2721
    :cond_2
    return-void

    .line 2716
    :cond_3
    const-string v0, ":"

    goto :goto_0
.end method

.method private decorateEventWithMetadata(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 2323
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-eqz v0, :cond_1

    .line 2324
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->shouldUseDataProviders()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2361
    :cond_0
    return-void

    .line 2329
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mEventDecorators:[Lcom/facebook/quicklog/EventDecorator;

    if-eqz v0, :cond_5

    iget-wide v4, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    cmp-long v0, v4, v12

    if-eqz v0, :cond_5

    .line 2330
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 2331
    :goto_0
    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mEventDecorators:[Lcom/facebook/quicklog/EventDecorator;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v6, v4, v3

    .line 2332
    iget-wide v8, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    invoke-interface {v6}, Lcom/facebook/quicklog/EventDecorator;->metadataCategory()J

    move-result-wide v10

    and-long/2addr v8, v10

    cmp-long v7, v8, v12

    if-lez v7, :cond_2

    .line 2333
    if-eqz v0, :cond_4

    invoke-interface {v6, v0}, Lcom/facebook/quicklog/EventDecorator;->isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2331
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2330
    :cond_3
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;

    move-result-object v0

    goto :goto_0

    .line 2336
    :cond_4
    invoke-interface {v6}, Lcom/facebook/quicklog/EventDecorator;->decoratorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->startMetadataCategory(Ljava/lang/String;)V

    .line 2337
    invoke-interface {v6, p1}, Lcom/facebook/quicklog/EventDecorator;->onPrepareToSendEvent(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    goto :goto_2

    .line 2341
    :cond_5
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    if-eqz v0, :cond_0

    iget-wide v4, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    cmp-long v0, v4, v12

    if-eqz v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 2343
    :goto_3
    iget-object v5, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDataProviders:[Lcom/facebook/quicklog/DataProvider;

    array-length v6, v5

    move v4, v2

    :goto_4
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    .line 2344
    iget-wide v2, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mEnabledMetadataCategories:J

    invoke-interface {v7}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v8

    and-long/2addr v2, v8

    cmp-long v2, v2, v12

    if-lez v2, :cond_6

    .line 2345
    if-eqz v0, :cond_8

    invoke-interface {v7, v0}, Lcom/facebook/quicklog/DataProvider;->isEnabled(Lcom/facebook/quicklog/MetadataGKs;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2343
    :cond_6
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 2342
    :cond_7
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->getMetadataGKs()Lcom/facebook/quicklog/MetadataGKs;

    move-result-object v0

    goto :goto_3

    .line 2348
    :cond_8
    invoke-interface {v7}, Lcom/facebook/quicklog/DataProvider;->getProviderType()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    .line 2349
    iget-object v2, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStartData:Landroid/util/SparseArray;

    .line 2350
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 2351
    :goto_6
    iget-object v8, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    if-eqz v8, :cond_a

    iget-object v8, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mDataProviderStopData:Landroid/util/SparseArray;

    .line 2352
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2353
    :goto_7
    invoke-interface {v7}, Lcom/facebook/quicklog/DataProvider;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->startMetadataCategory(Ljava/lang/String;)V

    .line 2356
    invoke-interface {v7}, Lcom/facebook/quicklog/DataProvider;->getStartType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2357
    invoke-interface {v7}, Lcom/facebook/quicklog/DataProvider;->getSnapshotType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2354
    invoke-interface {v7, p1, v2, v3}, Lcom/facebook/quicklog/DataProvider;->decorateEvent(Lcom/facebook/quicklog/PerformanceLoggingEvent;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    move-object v2, v1

    .line 2350
    goto :goto_6

    :cond_a
    move-object v3, v1

    .line 2352
    goto :goto_7
.end method

.method private static ensurePerfStats(Lcom/facebook/base/lwperf/perfstats/PerfStats;)Lcom/facebook/base/lwperf/perfstats/PerfStats;
    .locals 1
    .param p0    # Lcom/facebook/base/lwperf/perfstats/PerfStats;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2671
    if-nez p0, :cond_1

    .line 2672
    const/4 p0, 0x0

    .line 2678
    :cond_0
    :goto_0
    return-object p0

    .line 2674
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2675
    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->generateStartPerfStats()V

    goto :goto_0
.end method

.method private finallySend(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 2

    .prologue
    .line 2394
    iget-boolean v0, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mCheckForForegroundLaunch:Z

    if-eqz v0, :cond_1

    .line 2395
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAppStates:Lcom/facebook/quicklog/AppStates;

    invoke-interface {v0}, Lcom/facebook/quicklog/AppStates;->wasAppStartedInBackground()Lcom/facebook/common/util/TriState;

    move-result-object v0

    .line 2396
    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 2397
    sget-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 2398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mLastPLEForTest:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    .line 2417
    :goto_0
    return-void

    .line 2400
    :cond_0
    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    .line 2401
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sendDelayed(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    goto :goto_0

    .line 2406
    :cond_1
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    invoke-interface {v0}, Lcom/facebook/quicklog/DebugAndTestConfig;->isAnalyticsLoggingDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2408
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mActualLoggerLazy:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/quicklog/HoneyClientLogger;

    iput-object v0, p1, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mLogger:Lcom/facebook/quicklog/HoneyClientLogger;

    .line 2409
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logPle(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 2410
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mBackgroundExecution:Lcom/facebook/quicklog/BackgroundExecution;

    invoke-interface {v0, p1}, Lcom/facebook/quicklog/BackgroundExecution;->execute(Ljava/lang/Runnable;)V

    .line 2416
    :goto_1
    iput-object p1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mLastPLEForTest:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    goto :goto_0

    .line 2412
    :cond_2
    sget-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    goto :goto_1
.end method

.method private finallyStart(Lcom/facebook/quicklog/QuickEvent;IILjava/lang/String;Lcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;JZZZIILcom/facebook/quicklog/QPLListenersList;)V
    .locals 16
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/base/lwperf/perfstats/PerfStats;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/quicklog/QuickEvent;",
            "II",
            "Ljava/lang/String;",
            "Lcom/facebook/base/lwperf/perfstats/PerfStats;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "JZZZII",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 884
    if-eqz p1, :cond_1

    .line 885
    const-string v2, "onMarkerStart"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;I)V

    .line 886
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/facebook/quicklog/QuickEvent;->mLegacyMarkerName:Ljava/lang/String;

    .line 887
    invoke-static/range {p5 .. p5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensurePerfStats(Lcom/facebook/base/lwperf/perfstats/PerfStats;)Lcom/facebook/base/lwperf/perfstats/PerfStats;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    .line 888
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/facebook/quicklog/QuickEvent;->mPerfStats:Lcom/facebook/base/lwperf/perfstats/PerfStats;

    if-eqz v2, :cond_0

    .line 889
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    sget-wide v4, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ALL_PERF_STATS:J

    or-long/2addr v2, v4

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/facebook/quicklog/QuickEvent;->mEnabledMetadataCategories:J

    .line 891
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    move-object/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p14

    move-object/from16 v7, p15

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/quicklog/MarkersManager;->startTrace(Lcom/facebook/quicklog/QuickEvent;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ILcom/facebook/quicklog/QPLListenersList;)V

    .line 914
    :goto_0
    return-void

    .line 898
    :cond_1
    const-string v2, "markerNotStarted"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;I)V

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRandom:Ljava/util/Random;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    invoke-virtual/range {v2 .. v14}, Lcom/facebook/quicklog/MarkersManager;->inactiveTraceStart(IILjava/lang/String;JZZIZIILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method private getAlwaysOnSampleRate(IZ)I
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    const/4 v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    invoke-interface {v1}, Lcom/facebook/quicklog/DebugAndTestConfig;->isRunningInPerfTest()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    invoke-interface {v1}, Lcom/facebook/quicklog/DebugAndTestConfig;->isPerfLoggingDisabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isSendingAllMarkersEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAlwaysOnSampleRates:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAlwaysOnSampleRates:Landroid/util/SparseIntArray;

    const/high16 v3, -0x80000000

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 323
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    if-eq v2, v4, :cond_2

    .line 326
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    invoke-interface {v0, v2}, Lcom/facebook/quicklog/QPLConfiguration;->randomlySample(I)I

    move-result v0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 328
    :cond_2
    if-eqz p2, :cond_0

    .line 331
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldSendAllEvents(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    if-eqz v1, :cond_3

    .line 334
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    invoke-virtual {v1, p1}, Lcom/facebook/quicklog/HealthMonitor;->reportZeroSampleRateDueMissingConfig(I)V

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-interface {v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->shouldReportWhenNoConfig()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    const v1, 0x7fffffff

    .line 338
    invoke-interface {v0, v1}, Lcom/facebook/quicklog/QPLConfiguration;->randomlySample(I)I

    move-result v0

    goto :goto_0
.end method

.method private static getFakedIsMarkerOnValue(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z
    .locals 2
    .param p0    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2806
    if-nez p0, :cond_0

    .line 2807
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We should never get faked value when not in experiment. Having GKs as null means we are not in experiment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2810
    :cond_0
    invoke-interface {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->perfExperimentIsMarkerOnValue()Z

    move-result v0

    return v0
.end method

.method private static isAutoTime(J)Z
    .locals 2

    .prologue
    .line 2767
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMarkerWhitelistedForPerfExperiment(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z
    .locals 6
    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2824
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    if-eqz v0, :cond_0

    .line 2825
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    .line 2850
    :goto_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2827
    :cond_0
    const-class v3, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;

    monitor-enter v3

    .line 2828
    :try_start_0
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    if-eqz v0, :cond_1

    .line 2829
    sget-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    .line 2848
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2831
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->perfExperimentMarkersWhitelist()Ljava/lang/String;

    move-result-object v0

    .line 2832
    if-nez v0, :cond_2

    .line 2833
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I

    goto :goto_2

    .line 2835
    :cond_2
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2836
    array-length v0, v4

    new-array v0, v0, [I

    move v2, v1

    .line 2837
    :goto_3
    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v2, v5, :cond_3

    .line 2839
    :try_start_2
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2837
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2844
    :cond_3
    :try_start_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 2845
    sput-object v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->sMarkersWhitelist:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 2850
    goto :goto_1

    .line 2840
    :catch_0
    move-exception v5

    goto :goto_4
.end method

.method private isOutputToLogcatEnabledAndDebugLoggable()Z
    .locals 1

    .prologue
    .line 2763
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/debug/log/BLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static logLongMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2491
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2492
    div-int/lit16 v3, v2, 0xfa0

    rem-int/lit16 v0, v2, 0xfa0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    .line 2494
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v1, :cond_1

    const-string v0, "..."

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit16 v4, v1, 0xfa0

    add-int/lit8 v5, v1, 0x1

    mul-int/lit16 v5, v5, 0xfa0

    .line 2503
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2501
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2504
    packed-switch p0, :pswitch_data_0

    .line 2519
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2494
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2492
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2499
    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 2506
    :pswitch_0
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2509
    :pswitch_1
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2512
    :pswitch_2
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2515
    :pswitch_3
    invoke-static {p1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2523
    :cond_2
    return-void

    .line 2504
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs logLongMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 2536
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2537
    invoke-static {p0, p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logLongMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 2538
    return-void
.end method

.method private logPle(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    .line 2420
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2422
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getLegacyMarkerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getMarkerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2425
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getPoints()Lcom/facebook/quicklog/IntermediatePoints;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2426
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getPoints()Lcom/facebook/quicklog/IntermediatePoints;

    move-result-object v0

    new-instance v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;

    invoke-direct {v1, p0, v4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$5;-><init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Ljava/lang/StringBuilder;)V

    .line 2427
    invoke-virtual {v0, v1}, Lcom/facebook/quicklog/IntermediatePoints;->acceptForAll(Lcom/facebook/quicklog/IntermediatePoints$Visitor;)V

    .line 2443
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2445
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getExtra()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2447
    const/4 v1, 0x0

    .line 2448
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getExtra()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2449
    add-int/lit8 v2, v2, 0x1

    .line 2450
    rem-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_2

    .line 2451
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2454
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    :cond_2
    move-object v1, v0

    .line 2458
    goto :goto_0

    .line 2460
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2461
    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getTagsAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getMetadata()Lcom/facebook/quicklog/MetadataList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2464
    const-string v0, " metadata="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getMetadata()Lcom/facebook/quicklog/MetadataList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/quicklog/MetadataList;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2467
    :cond_5
    sget-object v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->TAG:Ljava/lang/String;

    const-string v2, "QPLSent - (%s) %s %s %d[ms] %s (1:%d) %s"

    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/Object;

    .line 2471
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getQplLibVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v3, 0x1

    .line 2472
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getLegacyMarkerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getLegacyMarkerName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v3

    const/4 v0, 0x2

    .line 2473
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getActionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x3

    .line 2474
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getDurationMs()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    .line 2475
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->isMissingConfig()Z

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->isAlwaysOn()Z

    move-result v6

    invoke-static {v3, v6}, Lcom/facebook/quicklog/identifiers/PerformanceEventFields;->getMethodString(ZZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 2476
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getSampleRate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x6

    .line 2477
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 2467
    invoke-static {v7, v1, v2, v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->logLongMessage(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2479
    :cond_6
    return-void

    .line 2472
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/quicklog/PerformanceLoggingEvent;->getMarkerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private preparePleForSending(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 4

    .prologue
    .line 2311
    invoke-direct {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->decorateEventWithMetadata(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 2314
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mPerformanceEventVisitors:[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;

    if-eqz v0, :cond_0

    .line 2315
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mPerformanceEventVisitors:[Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2316
    invoke-interface {v3, p1}, Lcom/facebook/quicklog/PerformanceLoggingEventVisitor;->visit(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 2315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2319
    :cond_0
    return-void
.end method

.method private restartExistingMarker(IIJZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;IILcom/facebook/quicklog/QPLListenersList;)Z
    .locals 15
    .param p7    # Lcom/facebook/base/lwperf/perfstats/PerfStats;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJZZ",
            "Lcom/facebook/base/lwperf/perfstats/PerfStats;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "II",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isMarkerOn(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRealTimeClock:Lcom/facebook/common/time/Clock;

    .line 934
    invoke-interface {v1}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v6

    .line 935
    invoke-static/range {p7 .. p7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensurePerfStats(Lcom/facebook/base/lwperf/perfstats/PerfStats;)Lcom/facebook/base/lwperf/perfstats/PerfStats;

    move-result-object v8

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p6

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    .line 929
    invoke-virtual/range {v0 .. v14}, Lcom/facebook/quicklog/MarkersManager;->restartTrace(IIJZJLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    const/4 v0, 0x1

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDelayed(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 5

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mBackgroundExecution:Lcom/facebook/quicklog/BackgroundExecution;

    new-instance v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$4;-><init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/quicklog/BackgroundExecution;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2387
    sget-object v0, Lcom/facebook/quicklog/PerformanceLoggingEvent;->POOL:Lcom/facebook/quicklog/ObjectPool;

    invoke-virtual {v0, p1}, Lcom/facebook/quicklog/ObjectPool;->free(Lcom/facebook/quicklog/ObjectPool$Poolable;)V

    .line 2388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mLastPLEForTest:Lcom/facebook/quicklog/PerformanceLoggingEvent;

    .line 2390
    :cond_0
    return-void
.end method

.method private static shouldFakeIsMarkerOn(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z
    .locals 2
    .param p1    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 2796
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->perfExperimentShouldFakeIsMarkerOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2802
    :cond_0
    :goto_0
    return v0

    .line 2799
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isMarkerWhitelistedForPerfExperiment(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2802
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z
    .locals 2
    .param p1    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 2786
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->perfExperimentShouldSendNone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2792
    :cond_0
    :goto_0
    return v0

    .line 2789
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isMarkerWhitelistedForPerfExperiment(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2792
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldSendAllEvents(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z
    .locals 1
    .param p0    # Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2814
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;->perfExperimentShouldSendAll()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public currentMonotonicTimestamp()J
    .locals 2

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method ensureTimestamp(J)J
    .locals 3

    .prologue
    .line 2662
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMonotonicClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide p1

    .line 2665
    :cond_0
    return-wide p1
.end method

.method protected getCurrThreadId()I
    .locals 1

    .prologue
    .line 2855
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    return v0
.end method

.method public isMarkerOn(I)Z
    .locals 3

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldFakeIsMarkerOn(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getFakedIsMarkerOnValue(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    .line 2301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/quicklog/MarkersManager;->isMarkerOn(IILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v0

    goto :goto_0
.end method

.method public isMarkerOn(II)Z
    .locals 2

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldFakeIsMarkerOn(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getFakedIsMarkerOnValue(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    .line 2307
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/quicklog/MarkersManager;->isMarkerOn(IILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOutputToLogcatEnabled()Z
    .locals 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsOutputToLogcatEnabled:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 2740
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    invoke-interface {v0}, Lcom/facebook/quicklog/DebugAndTestConfig;->isOutputToLogcatEnabled()Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsOutputToLogcatEnabled:Lcom/facebook/common/util/TriState;

    .line 2742
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsOutputToLogcatEnabled:Lcom/facebook/common/util/TriState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/util/TriState;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public isSendingAllMarkersEnabled()Z
    .locals 2

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsSendingAllMarkersEnabled:Lcom/facebook/common/util/TriState;

    sget-object v1, Lcom/facebook/common/util/TriState;->UNSET:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    invoke-interface {v0}, Lcom/facebook/quicklog/DebugAndTestConfig;->isSendingAllMarkersEnabled()Lcom/facebook/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsSendingAllMarkersEnabled:Lcom/facebook/common/util/TriState;

    .line 2750
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mIsSendingAllMarkersEnabled:Lcom/facebook/common/util/TriState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/util/TriState;->asBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public markerAnnotate(IILjava/lang/String;D)V
    .locals 8

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1175
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;DI)V

    .line 1177
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 1116
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1115
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;II)V

    .line 1117
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;J)V
    .locals 8

    .prologue
    .line 1216
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1215
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;JI)V

    .line 1217
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1095
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1097
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1255
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;ZI)V

    .line 1257
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;[D)V
    .locals 6

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1195
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[DI)V

    .line 1197
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;[I)V
    .locals 6

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1155
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[II)V

    .line 1157
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;[J)V
    .locals 6

    .prologue
    .line 1236
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1235
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[JI)V

    .line 1237
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1135
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[Ljava/lang/String;I)V

    .line 1137
    return-void
.end method

.method public markerAnnotate(IILjava/lang/String;[Z)V
    .locals 6

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1275
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[ZI)V

    .line 1277
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;D)V
    .locals 7

    .prologue
    .line 1169
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;DI)V

    .line 1170
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 1109
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;II)V

    .line 1110
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;J)V
    .locals 7

    .prologue
    .line 1209
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;JI)V

    .line 1210
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1089
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1090
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 1249
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;ZI)V

    .line 1250
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;[D)V
    .locals 6

    .prologue
    .line 1189
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[DI)V

    .line 1190
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;[I)V
    .locals 6

    .prologue
    .line 1149
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[II)V

    .line 1150
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;[J)V
    .locals 6

    .prologue
    .line 1229
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[JI)V

    .line 1230
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1129
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[Ljava/lang/String;I)V

    .line 1130
    return-void
.end method

.method public markerAnnotate(ILjava/lang/String;[Z)V
    .locals 6

    .prologue
    .line 1269
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotateInternal(IILjava/lang/String;[ZI)V

    .line 1270
    return-void
.end method

.method public markerAnnotateInternal(IILjava/lang/String;DI)V
    .locals 8

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v7, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;DILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;II)V
    .locals 7

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;IILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;JI)V
    .locals 8

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v7, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;JILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;ZI)V
    .locals 7

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;ZILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;[DI)V
    .locals 7

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    :goto_0
    return-void

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;[DILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;[II)V
    .locals 7

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;[IILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;[JI)V
    .locals 7

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1243
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;[JILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;[Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;[Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerAnnotateInternal(IILjava/lang/String;[ZI)V
    .locals 7

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v6, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/MarkersManager;->annotateTrace(IILjava/lang/String;[ZILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0
.end method

.method public markerCancel(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2091
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerCancel(II)V

    .line 2092
    return-void
.end method

.method public markerCancel(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2097
    const/4 v0, 0x4

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerCancel(IIS)V

    .line 2098
    return-void
.end method

.method public markerCancel(IIS)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0, p1, p2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerDrop(II)V

    .line 2110
    return-void
.end method

.method public markerCancel(IS)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerCancel(IIS)V

    .line 2104
    return-void
.end method

.method public markerDrop(II)V
    .locals 6

    .prologue
    .line 2185
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->currentMonotonicTimestamp()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerDropInternal(IIIJ)V

    .line 2186
    return-void
.end method

.method public markerDropInternal(IIIJ)V
    .locals 10

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    :goto_0
    return-void

    .line 2192
    :cond_0
    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersRemoveHandler:Lcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;

    iget-object v8, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/facebook/quicklog/MarkersManager;->dropTrace(IILcom/facebook/quicklog/MarkersManager$MarkersRemoveHandler;IJLcom/facebook/quicklog/QPLListenersList;Lcom/facebook/quicklog/ShimmedQuickPerformanceLogger$BatchMarkersChangeListener;)V

    goto :goto_0
.end method

.method public markerEnd(IIS)V
    .locals 7

    .prologue
    .line 1892
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerEnd(IISJLcom/facebook/common/util/TriState;)V

    .line 1893
    return-void
.end method

.method public markerEnd(IISJ)V
    .locals 8

    .prologue
    .line 1897
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerEnd(IISJLcom/facebook/common/util/TriState;)V

    .line 1898
    return-void
.end method

.method public markerEnd(IISJLcom/facebook/common/util/TriState;)V
    .locals 12
    .param p6    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1926
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1934
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v9

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    .line 1926
    invoke-virtual/range {v0 .. v10}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerEndInternal(IISJLcom/facebook/common/util/TriState;Ljava/lang/String;Landroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V

    .line 1936
    return-void
.end method

.method public markerEnd(IS)V
    .locals 7

    .prologue
    .line 1882
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerEnd(IISJLcom/facebook/common/util/TriState;)V

    .line 1883
    return-void
.end method

.method public markerEnd(ISJ)V
    .locals 7

    .prologue
    .line 1887
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerEnd(IISJLcom/facebook/common/util/TriState;)V

    .line 1888
    return-void
.end method

.method public markerEndInternal(IISJLcom/facebook/common/util/TriState;Ljava/lang/String;Landroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V
    .locals 14
    .param p6    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/facebook/quicklog/QPLListenersList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IISJ",
            "Lcom/facebook/common/util/TriState;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<*>;I",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1950
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1951
    :cond_1
    invoke-static/range {p4 .. p5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isAutoTime(J)Z

    move-result v8

    .line 1952
    if-eqz v8, :cond_2

    iget-boolean v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v2, :cond_2

    if-nez p7, :cond_2

    .line 1953
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Autotime in lockless is illegal (time won\'t be valid when method is executed)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1956
    :cond_2
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensureTimestamp(J)J

    move-result-wide v6

    .line 1957
    if-nez p10, :cond_4

    .line 1958
    iget-object v12, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    .line 1960
    :goto_1
    move/from16 v0, p2

    invoke-virtual {v12, p1, v0}, Lcom/facebook/quicklog/QPLListenersList;->notifyQuickMarkerEnd(II)V

    .line 1961
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p9

    move-object/from16 v13, p8

    .line 1962
    invoke-virtual/range {v2 .. v13}, Lcom/facebook/quicklog/MarkersManager;->endTrace(IISJZLcom/facebook/common/util/TriState;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;Landroid/util/SparseArray;)Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v2

    .line 1973
    if-eqz v2, :cond_3

    .line 1974
    iget-object v3, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mAppStates:Lcom/facebook/quicklog/AppStates;

    invoke-interface {v3}, Lcom/facebook/quicklog/AppStates;->wasAppStartedInBackground()Lcom/facebook/common/util/TriState;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/quicklog/PerformanceLoggingEvent;->mGuessWasStartedInBackground:Lcom/facebook/common/util/TriState;

    .line 1975
    const-string v3, "markerEnd"

    invoke-direct {p0, v3, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;I)V

    .line 1976
    invoke-virtual {p0, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->send(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 1977
    iget-boolean v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    if-eqz v2, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/facebook/quicklog/HealthMonitor;->reportMarkerEnd(Z)V

    goto :goto_0

    .line 1981
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    if-eqz v2, :cond_0

    .line 1982
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mHealthMonitor:Lcom/facebook/quicklog/HealthMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/facebook/quicklog/HealthMonitor;->reportMarkerEnd(Z)V

    goto :goto_0

    :cond_4
    move-object/from16 v12, p10

    goto :goto_1
.end method

.method public markerNote(IIS)V
    .locals 7

    .prologue
    .line 1470
    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerNoteInternal(IISJI)V

    .line 1471
    return-void
.end method

.method public markerNote(IISJ)V
    .locals 8

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerNoteInternal(IISJI)V

    .line 1476
    return-void
.end method

.method public markerNote(IS)V
    .locals 7

    .prologue
    .line 1460
    const/4 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerNoteInternal(IISJI)V

    .line 1461
    return-void
.end method

.method public markerNote(ISJ)V
    .locals 7

    .prologue
    .line 1465
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerNoteInternal(IISJI)V

    .line 1466
    return-void
.end method

.method public markerNoteInternal(IISJI)V
    .locals 14

    .prologue
    .line 1481
    invoke-static/range {p4 .. p5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isAutoTime(J)Z

    move-result v8

    .line 1482
    if-eqz v8, :cond_0

    iget-boolean v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v2, :cond_0

    .line 1483
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Autotime in lockless is illegal (time won\'t be valid when method is executed)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1486
    :cond_0
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensureTimestamp(J)J

    move-result-wide v6

    .line 1487
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v12, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v11, p6

    .line 1488
    invoke-virtual/range {v2 .. v12}, Lcom/facebook/quicklog/MarkersManager;->note(IISJZLjava/lang/String;Ljava/lang/String;ILcom/facebook/quicklog/QPLListenersList;)Lcom/facebook/quicklog/PerformanceLoggingEvent;

    move-result-object v2

    .line 1498
    if-eqz v2, :cond_1

    .line 1499
    const-string v3, "markerNote"

    move/from16 v0, p3

    invoke-direct {p0, v3, p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;II)V

    .line 1500
    invoke-virtual {p0, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->send(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    .line 1502
    :cond_1
    return-void
.end method

.method public markerPoint(IIILjava/lang/String;Lcom/facebook/quicklog/PointData;JI)V
    .locals 12
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1653
    if-nez p5, :cond_0

    const/4 v6, 0x0

    .line 1658
    :goto_0
    const/4 v7, 0x0

    .line 1662
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    .line 1653
    invoke-virtual/range {v1 .. v11}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPointInternal(IIILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;JII)V

    .line 1663
    return-void

    .line 1658
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/quicklog/PointData;->lock()Lcom/facebook/quicklog/PointData;

    move-result-object v6

    goto :goto_0
.end method

.method public markerPoint(IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 1589
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1590
    return-void
.end method

.method public markerPoint(IILjava/lang/String;J)V
    .locals 8

    .prologue
    .line 1614
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1615
    return-void
.end method

.method public markerPoint(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1594
    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1595
    return-void
.end method

.method public markerPoint(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    :goto_0
    return-void

    .line 1621
    :cond_0
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public markerPoint(IILjava/lang/String;Ljava/lang/String;JI)V
    .locals 13
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1632
    const/4 v4, 0x7

    const/4 v7, 0x0

    .line 1641
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    .line 1632
    invoke-virtual/range {v1 .. v11}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPointInternal(IIILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;JII)V

    .line 1642
    return-void
.end method

.method public markerPoint(ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 1584
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1585
    return-void
.end method

.method public markerPoint(ILjava/lang/String;J)V
    .locals 9

    .prologue
    .line 1609
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1610
    return-void
.end method

.method public markerPoint(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1599
    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1600
    return-void
.end method

.method public markerPoint(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 1604
    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerPoint(IILjava/lang/String;Ljava/lang/String;J)V

    .line 1605
    return-void
.end method

.method public markerPointInternal(IIILjava/lang/String;Lcom/facebook/quicklog/PointData;Landroid/util/SparseArray;JII)V
    .locals 17
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/quicklog/PointData;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/facebook/quicklog/PointData;",
            "Landroid/util/SparseArray",
            "<*>;JII)V"
        }
    .end annotation

    .prologue
    .line 1711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1712
    :cond_0
    const-string v4, "markerPoint"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/quicklog/PointData;)V

    .line 1713
    invoke-static/range {p7 .. p8}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isAutoTime(J)Z

    move-result v5

    .line 1714
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v4, :cond_1

    .line 1715
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Autotime in lockless is illegal (time won\'t be valid when method is executed)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1718
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensureTimestamp(J)J

    move-result-wide v8

    .line 1721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    if-nez v5, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v16, v0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p9

    move-object/from16 v14, p6

    move/from16 v15, p10

    invoke-virtual/range {v4 .. v16}, Lcom/facebook/quicklog/MarkersManager;->addPoint(IIIJZLjava/lang/String;Lcom/facebook/quicklog/PointData;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public markerPointInternal(IIILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;JII)V
    .locals 17
    .param p3    # I
        .annotation build Lcom/facebook/quicklog/EventLevel;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<*>;JII)V"
        }
    .end annotation

    .prologue
    .line 1676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1698
    :goto_0
    return-void

    .line 1677
    :cond_0
    const-string v4, "markerPoint"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->debugLog(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1678
    invoke-static/range {p7 .. p8}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isAutoTime(J)Z

    move-result v5

    .line 1679
    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v4, :cond_1

    .line 1680
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Autotime in lockless is illegal (time won\'t be valid when method is executed)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1683
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensureTimestamp(J)J

    move-result-wide v8

    .line 1686
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    if-nez v5, :cond_2

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v16, v0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p9

    move-object/from16 v14, p6

    move/from16 v15, p10

    invoke-virtual/range {v4 .. v16}, Lcom/facebook/quicklog/MarkersManager;->addPoint(IIIJZLjava/lang/String;Ljava/lang/String;ILandroid/util/SparseArray;ILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public markerStart(I)V
    .locals 20

    .prologue
    .line 412
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    .line 412
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 428
    return-void
.end method

.method public markerStart(II)V
    .locals 20

    .prologue
    .line 432
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 432
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 448
    return-void
.end method

.method public markerStart(IIJ)V
    .locals 21

    .prologue
    .line 641
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    .line 641
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 657
    return-void
.end method

.method public markerStart(IIJZ)V
    .locals 21

    .prologue
    .line 665
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v9, p5

    .line 665
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 681
    return-void
.end method

.method public markerStart(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStart(II)V

    .line 1038
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotate(IILjava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public markerStart(IILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1048
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStart(IIJ)V

    .line 1049
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotate(IILjava/lang/String;Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public markerStart(IIZ)V
    .locals 20

    .prologue
    .line 452
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v14, p3

    .line 452
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 468
    return-void
.end method

.method public markerStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStart(I)V

    .line 1024
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotate(ILjava/lang/String;Ljava/lang/String;)V

    .line 1025
    return-void
.end method

.method public markerStart(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 1030
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStart(IIJ)V

    .line 1031
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerAnnotate(ILjava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public markerStart(IZ)V
    .locals 20

    .prologue
    .line 472
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v14, p2

    .line 472
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 488
    return-void
.end method

.method public markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V
    .locals 35
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/base/lwperf/perfstats/PerfStats;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Landroid/util/SparseArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/facebook/common/util/TriState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/base/lwperf/perfstats/PerfStats;",
            "Landroid/util/SparseArray",
            "<*>;",
            "Lcom/facebook/common/util/TriState;",
            "ZIIZI",
            "Lcom/facebook/quicklog/QPLListenersList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    move/from16 v0, p1

    invoke-static {v0, v4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldIgnoreEvent(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    invoke-static/range {p3 .. p4}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isAutoTime(J)Z

    move-result v10

    .line 967
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mInsideLockless:Z

    if-eqz v4, :cond_2

    .line 968
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Autotime in lockless is illegal (time won\'t be valid when method is executed)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->ensureTimestamp(J)J

    move-result-wide v8

    .line 972
    if-eqz p14, :cond_3

    .line 973
    move-object/from16 v0, p16

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/quicklog/QPLListenersList;->notifyQuickMarkerStart(II)I

    move-result v16

    :goto_1
    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p12

    move-object/from16 v17, p16

    .line 975
    invoke-direct/range {v5 .. v17}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->restartExistingMarker(IIJZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;IILcom/facebook/quicklog/QPLListenersList;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p15

    .line 991
    invoke-virtual/range {v5 .. v15}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->maybeStartTrace(IIJZZZZII)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v19

    move-object/from16 v18, p0

    move/from16 v20, p1

    move/from16 v21, p2

    move-object/from16 v22, p5

    move-object/from16 v23, p8

    move-object/from16 v24, p9

    move-object/from16 v25, p10

    move-wide/from16 v26, v8

    move/from16 v28, v10

    move/from16 v29, p7

    move/from16 v30, p11

    move/from16 v31, p12

    move/from16 v32, v16

    move-object/from16 v33, p16

    .line 1002
    invoke-direct/range {v18 .. v33}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->finallyStart(Lcom/facebook/quicklog/QuickEvent;IILjava/lang/String;Lcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;JZZZIILcom/facebook/quicklog/QPLListenersList;)V

    goto :goto_0

    :cond_3
    move/from16 v16, p13

    goto :goto_1
.end method

.method public markerStartWithCancelPolicy(IZIJ)V
    .locals 20

    .prologue
    .line 691
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 702
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getCurrThreadId()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mListenersList:Lcom/facebook/quicklog/QPLListenersList;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move/from16 v14, p2

    .line 691
    invoke-virtual/range {v3 .. v19}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->markerStartInternal(IIJLjava/lang/String;ZZLcom/facebook/base/lwperf/perfstats/PerfStats;Landroid/util/SparseArray;Lcom/facebook/common/util/TriState;ZIIZILcom/facebook/quicklog/QPLListenersList;)V

    .line 707
    return-void
.end method

.method maybeStartTrace(IIJZZZZII)Lcom/facebook/quicklog/QuickEvent;
    .locals 21
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2563
    if-nez p10, :cond_3

    .line 2564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/facebook/quicklog/QPLConfiguration;->getSampleRateForMarker(I)I

    move-result v3

    .line 2566
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    const/4 v9, 0x1

    .line 2567
    :goto_0
    if-nez v9, :cond_0

    .line 2569
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2570
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isSendingAllMarkersEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    .line 2571
    invoke-interface {v2}, Lcom/facebook/quicklog/DebugAndTestConfig;->isRunningInPerfTest()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 2573
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v2, v9}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->calculateSampleRate(IIZZ)I

    move-result v5

    move v8, v2

    .line 2591
    :goto_2
    const v2, 0x7fffffff

    if-eq v5, v2, :cond_a

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/facebook/quicklog/QPLConfiguration;->getMetadataConfigForMarker(I)J

    move-result-wide v6

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRandom:Ljava/util/Random;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mRealTimeClock:Lcom/facebook/common/time/Clock;

    .line 2605
    invoke-interface {v2}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v14

    if-nez p8, :cond_9

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mMarkersManager:Lcom/facebook/quicklog/MarkersManager;

    .line 2610
    invoke-virtual {v2}, Lcom/facebook/quicklog/MarkersManager;->getQplLibVersion()Ljava/lang/String;

    move-result-object v19

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v10, p7

    move-wide/from16 v11, p3

    move/from16 v13, p5

    move/from16 v16, p6

    move/from16 v18, p9

    .line 2594
    invoke-static/range {v2 .. v19}, Lcom/facebook/quicklog/QuickEvent;->allocateActiveEvent(IIIIJZZZJZJZZILjava/lang/String;)Lcom/facebook/quicklog/QuickEvent;

    move-result-object v2

    .line 2612
    :goto_4
    return-object v2

    .line 2566
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2571
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2575
    :cond_3
    const/4 v2, -0x3

    move/from16 v0, p10

    if-ne v0, v2, :cond_4

    .line 2576
    const v5, 0x7fffffff

    .line 2577
    const/4 v9, 0x0

    .line 2578
    const/4 v8, 0x0

    goto :goto_2

    .line 2580
    :cond_4
    const/4 v2, -0x1

    move/from16 v0, p10

    if-ne v0, v2, :cond_6

    const/4 v9, 0x1

    .line 2581
    :goto_5
    const/4 v2, -0x2

    move/from16 v0, p10

    if-ne v0, v2, :cond_7

    const/4 v8, 0x1

    .line 2582
    :goto_6
    if-nez v9, :cond_5

    if-eqz v8, :cond_8

    .line 2583
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/facebook/quicklog/QPLConfiguration;->getSampleRateForMarker(I)I

    move-result v2

    .line 2584
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->calculateSampleRate(IIZZ)I

    move-result v5

    goto :goto_2

    .line 2580
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 2581
    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    move/from16 v5, p10

    .line 2586
    goto :goto_2

    .line 2605
    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    .line 2612
    :cond_a
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public sampleRateForMarker(I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2618
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {p1, v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldFakeIsMarkerOn(ILcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2619
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v2}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getFakedIsMarkerOnValue(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2619
    goto :goto_0

    .line 2621
    :cond_2
    iget-object v2, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mConfiguration:Lcom/facebook/quicklog/QPLConfiguration;

    invoke-interface {v2, p1}, Lcom/facebook/quicklog/QPLConfiguration;->getSampleRateForMarker(I)I

    move-result v2

    .line 2623
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    move v3, v0

    .line 2624
    :goto_1
    if-nez v3, :cond_3

    .line 2626
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isOutputToLogcatEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2627
    invoke-virtual {p0}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->isSendingAllMarkersEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mDebugAndTestConfig:Lcom/facebook/quicklog/DebugAndTestConfig;

    .line 2628
    invoke-interface {v4}, Lcom/facebook/quicklog/DebugAndTestConfig;->isRunningInPerfTest()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v0

    .line 2630
    :cond_4
    if-eqz v1, :cond_6

    .line 2631
    invoke-direct {p0, p1, v3}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->getAlwaysOnSampleRate(IZ)I

    move-result v0

    goto :goto_0

    :cond_5
    move v3, v1

    .line 2623
    goto :goto_1

    .line 2634
    :cond_6
    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mGKs:Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;

    invoke-static {v1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->shouldSendAllEvents(Lcom/facebook/quicklog/QuickPerformanceLoggerGKs;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    move v0, v2

    .line 2637
    goto :goto_0
.end method

.method public send(Lcom/facebook/quicklog/PerformanceLoggingEvent;)V
    .locals 2

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;->mBackgroundExecution:Lcom/facebook/quicklog/BackgroundExecution;

    new-instance v1, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/quicklog/QuickPerformanceLoggerImpl$3;-><init>(Lcom/facebook/quicklog/QuickPerformanceLoggerImpl;Lcom/facebook/quicklog/PerformanceLoggingEvent;)V

    invoke-interface {v0, v1}, Lcom/facebook/quicklog/BackgroundExecution;->execute(Ljava/lang/Runnable;)V

    .line 2374
    return-void
.end method
