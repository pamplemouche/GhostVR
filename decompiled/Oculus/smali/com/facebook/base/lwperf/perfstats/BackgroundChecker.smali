.class public final Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;
.super Ljava/lang/Object;
.source "BackgroundChecker.java"


# static fields
.field private static final INSTANCE:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mHasBeenBackgrounded:Z

.field private volatile mIsBackgrounded:Z

.field private volatile mIsStartedInTheBackground:Ljava/lang/Boolean;

.field private volatile mLastCalculatedTime:J

.field private volatile mOverrideState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;-><init>()V

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->INSTANCE:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mOverrideState:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mLastCalculatedTime:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mIsBackgrounded:Z

    .line 53
    return-void
.end method

.method private calculateIsBackgroundedNow()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cgroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Lcom/facebook/common/procread/ProcReader;->readProcFileEntirely(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const-string v2, "/bg_non_interactive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/background"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    .line 224
    sget-object v2, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->TAG:Ljava/lang/String;

    const-string v3, "Runtime Exception reading proc to determine if in the background"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->INSTANCE:Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;

    return-object v0
.end method

.method private static nowMs()J
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getWasAppStartedInTheBackground()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mIsStartedInTheBackground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isBackgroundedNow()Z
    .locals 4

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->calculateIsBackgroundedNow()Z

    move-result v0

    .line 182
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->nowMs()J

    move-result-wide v2

    .line 184
    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mIsBackgrounded:Z

    .line 185
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mHasBeenBackgrounded:Z

    .line 189
    :cond_0
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mLastCalculatedTime:J

    .line 191
    return v0
.end method

.method public isRateLimitedBackground()Z
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mLastCalculatedTime:J

    .line 90
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->nowMs()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->isBackgroundedNow()Z

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/BackgroundChecker;->mIsBackgrounded:Z

    goto :goto_0
.end method
