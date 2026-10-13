.class public Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;
.super Ljava/lang/Exception;
.source "DownloadFailureException.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final mDownloadId:J

.field public final mFailureReason:Ljava/lang/String;

.field public final mReason:I

.field public final mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/downloader/model/DownloadInfo;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mFailureReason:Ljava/lang/String;

    .line 19
    iget-wide v0, p2, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    iput-wide v0, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mDownloadId:J

    .line 20
    iget v0, p2, Lcom/oculus/downloader/model/DownloadInfo;->status:I

    iput v0, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mStatus:I

    .line 21
    iget v0, p2, Lcom/oculus/downloader/model/DownloadInfo;->reason:I

    iput v0, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mReason:I

    .line 22
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 26
    const-string v0, "Download %d failed! Reason: %s Status: %d Reason: %d"

    iget-wide v2, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mDownloadId:J

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mFailureReason:Ljava/lang/String;

    iget v3, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;->mReason:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 26
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
