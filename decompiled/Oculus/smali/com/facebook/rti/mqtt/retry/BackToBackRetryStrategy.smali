.class public Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;
.super Ljava/lang/Object;
.source "BackToBackRetryStrategy.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy;


# instance fields
.field private final mMaxRetryAttemptsAggressive:I

.field private final mMaxRetryAttemptsNormal:I

.field private mRetryCount:I

.field private final mRetryIntervalSec:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsAggressive:I

    .line 27
    iput p2, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsNormal:I

    .line 28
    iput p3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryIntervalSec:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    .line 30
    return-void
.end method


# virtual methods
.method public getStrategy()Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;->BACK_TO_BACK:Lcom/facebook/rti/mqtt/retry/IConnectionRetryStrategy$RetryStrategy;

    return-object v0
.end method

.method public hasNext(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget v2, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsAggressive:I

    if-ge v2, v3, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget v2, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsNormal:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public next(Z)I
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->hasNext(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    .line 36
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryIntervalSec:I

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const-string v0, "BackToBackRetryStrategy: attempt:%d/%d/%d, delay:%d seconds"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryCount:I

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsAggressive:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mMaxRetryAttemptsNormal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/BackToBackRetryStrategy;->mRetryIntervalSec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 52
    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
