.class final Lcom/facebook/systrace/TraceConfig;
.super Ljava/lang/Object;
.source "TraceConfig.java"


# static fields
.field private static volatile sEnabledTags:J

.field private static final sListeners:Lcom/facebook/systrace/TraceListenerNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-direct {v0}, Lcom/facebook/systrace/TraceListenerNotifier;-><init>()V

    sput-object v0, Lcom/facebook/systrace/TraceConfig;->sListeners:Lcom/facebook/systrace/TraceListenerNotifier;

    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    .line 14
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->staticInit()V

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    .prologue
    .line 8
    invoke-static {p0}, Lcom/facebook/systrace/TraceConfig;->updateTraceConfig(Z)V

    return-void
.end method

.method public static addListener(Lcom/facebook/systrace/TraceListener;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->sListeners:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-virtual {v0, p0}, Lcom/facebook/systrace/TraceListenerNotifier;->addListener(Lcom/facebook/systrace/TraceListener;)V

    .line 38
    return-void
.end method

.method private static asyncNotifyListeners(JZ)V
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 72
    :goto_0
    if-eqz v0, :cond_2

    .line 73
    if-nez p2, :cond_1

    .line 77
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->sListeners:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-virtual {v0}, Lcom/facebook/systrace/TraceListenerNotifier;->notifyListenersForTraceStart()V

    .line 84
    :goto_1
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->sListeners:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-virtual {v0}, Lcom/facebook/systrace/TraceListenerNotifier;->asyncNotifyListenersForTraceStart()V

    goto :goto_1

    .line 82
    :cond_2
    sget-object v0, Lcom/facebook/systrace/TraceConfig;->sListeners:Lcom/facebook/systrace/TraceListenerNotifier;

    invoke-virtual {v0}, Lcom/facebook/systrace/TraceListenerNotifier;->notifyListenersForTraceStop()V

    goto :goto_1
.end method

.method static computeTraceTags()J
    .locals 4

    .prologue
    .line 66
    const-string v0, "debug.fbsystrace.tags"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getAndroidTagsEnabled()J
    .locals 4

    .prologue
    .line 97
    const-string v0, "debug.atrace.tags.enableflags"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getFacebookTagsEnabled()J
    .locals 2

    .prologue
    .line 101
    sget-wide v0, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    return-wide v0
.end method

.method public static isTracing(J)Z
    .locals 4

    .prologue
    .line 87
    sget-wide v0, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAppTracingAllowed(Z)V
    .locals 1

    .prologue
    .line 91
    invoke-static {p0}, Lcom/facebook/androidinternals/android/os/TraceInternal;->setAppTracingAllowed(Z)V

    .line 93
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->updateTraceConfig(Z)V

    .line 94
    return-void
.end method

.method private static staticInit()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/systrace/TraceConfig;->updateTraceConfig(Z)V

    .line 25
    new-instance v0, Lcom/facebook/systrace/TraceConfig$1;

    invoke-direct {v0}, Lcom/facebook/systrace/TraceConfig$1;-><init>()V

    invoke-static {v0}, Lcom/facebook/androidinternals/android/os/SystemPropertiesInternal;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method private static updateTraceConfig(Z)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 45
    invoke-static {}, Lcom/facebook/systrace/SystraceEnabledDetector;->computeIsTracing()Z

    move-result v0

    .line 46
    invoke-static {}, Lcom/facebook/systrace/TraceConfig;->computeTraceTags()J

    move-result-wide v4

    .line 47
    if-eqz v0, :cond_0

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    :cond_0
    move-wide v0, v2

    .line 52
    :goto_0
    sget-wide v4, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_1

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    sget-wide v4, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v2, 0x1

    .line 54
    :goto_1
    sput-wide v0, Lcom/facebook/systrace/TraceConfig;->sEnabledTags:J

    .line 55
    if-eqz v2, :cond_3

    .line 56
    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceDirect;->setEnabledTags(J)V

    .line 57
    invoke-static {v0, v1, p0}, Lcom/facebook/systrace/TraceConfig;->asyncNotifyListeners(JZ)V

    .line 59
    :cond_3
    return-void

    .line 50
    :cond_4
    const-wide/16 v0, 0x1

    or-long/2addr v0, v4

    goto :goto_0

    .line 52
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method
