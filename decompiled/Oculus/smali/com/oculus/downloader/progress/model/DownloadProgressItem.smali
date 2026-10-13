.class public Lcom/oculus/downloader/progress/model/DownloadProgressItem;
.super Ljava/lang/Object;
.source "DownloadProgressItem.java"


# instance fields
.field private final mCurrentBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mDownloadId:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mPackageName:Ljava/lang/String;

.field private final mReason:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mUpdateId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mDownloadId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mCurrentBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 21
    iput-object p1, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mPackageName:Ljava/lang/String;

    .line 22
    iput-wide p2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mUpdateId:J

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentBytes()J
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mCurrentBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalBytes()J
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mUpdateId:J

    return-wide v0
.end method

.method public declared-synchronized setState(JIIJJ)V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mDownloadId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 28
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 29
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mReason:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 30
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 31
    iget-object v0, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mCurrentBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p7, p8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    const-class v0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mDownloadId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->stringifyStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mReason:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->stringifyReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "currentBytes"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mCurrentBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 68
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "totalBytes"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mTotalBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "update id"

    iget-wide v2, p0, Lcom/oculus/downloader/progress/model/DownloadProgressItem;->mUpdateId:J

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
