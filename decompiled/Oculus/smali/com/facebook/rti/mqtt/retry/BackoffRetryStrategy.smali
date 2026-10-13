.class public Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;
.super Ljava/lang/Object;
.source "BackoffRetryStrategy.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;


# instance fields
.field private mCurrentRetryIntervalSec:I

.field private final mInitialRetryIntervalAggressiveSec:I

.field private final mInitialRetryIntervalNormalSec:I

.field private final mMaximumRetryIntervalSec:I

.field private final mRandom:Ljava/util/Random;

.field private mRetryCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mInitialRetryIntervalAggressiveSec:I

    .line 35
    iput p2, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mInitialRetryIntervalNormalSec:I

    .line 36
    iput p3, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mMaximumRetryIntervalSec:I

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRandom:Ljava/util/Random;

    .line 38
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->reset()V

    .line 39
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRetryCount:I

    .line 43
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mInitialRetryIntervalAggressiveSec:I

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mCurrentRetryIntervalSec:I

    .line 44
    return-void
.end method


# virtual methods
.method public getStrategy()Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_OFF:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    return-object v0
.end method

.method public hasNext(Z)Z
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRetryCount:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next(Z)I
    .locals 6

    .prologue
    .line 48
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRetryCount:I

    .line 51
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mCurrentRetryIntervalSec:I

    .line 52
    if-nez p1, :cond_0

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mInitialRetryIntervalNormalSec:I

    if-ge v0, v1, :cond_0

    .line 53
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mInitialRetryIntervalNormalSec:I

    .line 55
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mMaximumRetryIntervalSec:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 57
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v4, v1

    add-double/2addr v2, v4

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 59
    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mCurrentRetryIntervalSec:I

    .line 60
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mCurrentRetryIntervalSec:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string v0, "BackoffRetryStrategy: attempt:%d/Infinite, delay:%d seconds"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mRetryCount:I

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackoffRetryStrategy;->mCurrentRetryIntervalSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
