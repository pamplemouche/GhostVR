.class public Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;
.super Ljava/lang/Object;
.source "SimpleMaxEventsPerBatchProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/MaxEventsPerBatchProvider;


# instance fields
.field private final mHardMaxEventsPerBatch:I

.field private final mSoftMaxEventsPerBatch:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;->mSoftMaxEventsPerBatch:I

    .line 12
    iput p2, p0, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;->mHardMaxEventsPerBatch:I

    return-void
.end method


# virtual methods
.method public getAnalyticsBatchSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEnableAnalyticsBatching()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnableAnalyticsBatchingIfInit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHardLimit()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;->mHardMaxEventsPerBatch:I

    return v0
.end method

.method public getSoftLimit()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/facebook/analytics2/logger/SimpleMaxEventsPerBatchProvider;->mSoftMaxEventsPerBatch:I

    return v0
.end method
