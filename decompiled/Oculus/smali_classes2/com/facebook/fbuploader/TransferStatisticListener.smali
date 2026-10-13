.class final Lcom/facebook/fbuploader/TransferStatisticListener;
.super Ljava/lang/Object;
.source "TransferStatisticListener.java"


# instance fields
.field private mStartTime:J

.field private mTransferStatistics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/fbuploader/TransferStatistic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mStartTime:J

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    .line 18
    return-void
.end method

.method private getDeltaTime()J
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mStartTime:J

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mStartTime:J

    .line 43
    iget-wide v2, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mStartTime:J

    sub-long v0, v2, v0

    return-wide v0
.end method

.method private updateStatistic(JJ)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/TransferStatistic;

    .line 36
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/fbuploader/TransferStatistic;->update(JJ)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method getTransferStatistics()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/fbuploader/TransferStatistic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onProgress(J)V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/fbuploader/TransferStatisticListener;->getDeltaTime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/fbuploader/TransferStatisticListener;->updateStatistic(JJ)V

    .line 28
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mStartTime:J

    .line 22
    iget-object v0, p0, Lcom/facebook/fbuploader/TransferStatisticListener;->mTransferStatistics:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/fbuploader/TransferStatistic;

    invoke-direct {v1}, Lcom/facebook/fbuploader/TransferStatistic;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-direct {p0, v2, v3, v2, v3}, Lcom/facebook/fbuploader/TransferStatisticListener;->updateStatistic(JJ)V

    .line 24
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method
