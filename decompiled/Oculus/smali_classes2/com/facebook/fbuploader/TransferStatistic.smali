.class public final Lcom/facebook/fbuploader/TransferStatistic;
.super Ljava/lang/Object;
.source "TransferStatistic.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private mBytesTransferred:J

.field private mTotalTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    if-ne p0, p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 31
    :cond_3
    check-cast p1, Lcom/facebook/fbuploader/TransferStatistic;

    .line 32
    iget-wide v2, p0, Lcom/facebook/fbuploader/TransferStatistic;->mBytesTransferred:J

    iget-wide v4, p1, Lcom/facebook/fbuploader/TransferStatistic;->mBytesTransferred:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Lcom/facebook/fbuploader/TransferStatistic;->mTotalTimeMs:J

    iget-wide v4, p1, Lcom/facebook/fbuploader/TransferStatistic;->mTotalTimeMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/fbuploader/TransferStatistic;->mBytesTransferred:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/facebook/fbuploader/TransferStatistic;->mTotalTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public update(JJ)V
    .locals 3

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/facebook/fbuploader/TransferStatistic;->mBytesTransferred:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/fbuploader/TransferStatistic;->mBytesTransferred:J

    .line 19
    iget-wide v0, p0, Lcom/facebook/fbuploader/TransferStatistic;->mTotalTimeMs:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/facebook/fbuploader/TransferStatistic;->mTotalTimeMs:J

    .line 20
    return-void
.end method
