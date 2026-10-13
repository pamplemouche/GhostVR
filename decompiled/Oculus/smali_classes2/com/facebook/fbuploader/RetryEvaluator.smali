.class public Lcom/facebook/fbuploader/RetryEvaluator;
.super Ljava/lang/Object;
.source "RetryEvaluator.java"


# instance fields
.field private mCurrentBackoff:I

.field private mRetryCount:I

.field private final mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Config$RetryPolicy;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    .line 19
    invoke-virtual {p0}, Lcom/facebook/fbuploader/RetryEvaluator;->reset()V

    .line 20
    return-void
.end method


# virtual methods
.method public millisToRetry()I
    .locals 3

    .prologue
    .line 37
    iget v0, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mCurrentBackoff:I

    .line 38
    iget v1, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mCurrentBackoff:I

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    iget v2, v2, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMaxBackoffMillis:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mCurrentBackoff:I

    .line 39
    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryCount:I

    .line 48
    iget-object v0, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    iget v0, v0, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMinBackoffMillis:I

    iput v0, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mCurrentBackoff:I

    .line 49
    return-void
.end method

.method public shouldRetry()Z
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryCount:I

    iget-object v1, p0, Lcom/facebook/fbuploader/RetryEvaluator;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    iget v1, v1, Lcom/facebook/fbuploader/Config$RetryPolicy;->mMaxRetries:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
