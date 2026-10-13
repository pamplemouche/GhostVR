.class public Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;
.super Ljava/lang/Object;
.source "RateLimiterTokenBucketAlgorithm.java"

# interfaces
.implements Lcom/facebook/rti/common/util/RateLimiter;


# instance fields
.field private mAllowance:D

.field private final mIntervalS:J

.field private mLastCheck:J

.field private final mLimit:I

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/time/MonotonicClock;IJ)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 28
    iput p2, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLimit:I

    .line 29
    iput-wide p3, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mIntervalS:J

    .line 30
    int-to-double v0, p2

    iput-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized check()Z
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLastCheck:J

    sub-long v2, v0, v2

    .line 42
    iput-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLastCheck:J

    .line 43
    iget-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    long-to-double v2, v2

    iget v4, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLimit:I

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mIntervalS:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    .line 45
    iget-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    iget v2, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLimit:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    iget v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mLimit:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    .line 48
    :cond_0
    iget-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_1

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_0
    monitor-exit p0

    return v0

    .line 51
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D

    sub-double/2addr v0, v8

    iput-wide v0, p0, Lcom/facebook/rti/common/util/RateLimiterTokenBucketAlgorithm;->mAllowance:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
