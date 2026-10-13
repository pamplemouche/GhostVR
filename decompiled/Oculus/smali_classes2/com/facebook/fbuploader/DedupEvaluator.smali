.class public Lcom/facebook/fbuploader/DedupEvaluator;
.super Ljava/lang/Object;
.source "DedupEvaluator.java"


# instance fields
.field private final mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

.field private mFailureCount:I


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Config$DedupPolicy;)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mFailureCount:I

    .line 17
    return-void
.end method


# virtual methods
.method public recordFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 25
    instance-of v0, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {p1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1a2

    if-ne v0, v1, :cond_0

    .line 26
    iget v0, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mFailureCount:I

    .line 28
    :cond_0
    return-void
.end method

.method public shouldDedup()Z
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mFailureCount:I

    iget-object v1, p0, Lcom/facebook/fbuploader/DedupEvaluator;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    iget v1, v1, Lcom/facebook/fbuploader/Config$DedupPolicy;->mMaxFailures:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
