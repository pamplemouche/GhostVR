.class public Lcom/oculus/downloader/model/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final description:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadedBytes:J

.field public final extras:Lcom/oculus/extras/Extras;

.field public final id:J

.field public final localUri:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final reason:I

.field public final status:I

.field public final totalSizeBytes:J


# direct methods
.method public constructor <init>(JIIJJLcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/oculus/extras/Extras;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIJJ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oculus/extras/Extras;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    .line 73
    iput p3, p0, Lcom/oculus/downloader/model/DownloadInfo;->status:I

    .line 74
    iput p4, p0, Lcom/oculus/downloader/model/DownloadInfo;->reason:I

    .line 75
    iput-wide p5, p0, Lcom/oculus/downloader/model/DownloadInfo;->totalSizeBytes:J

    .line 76
    iput-wide p7, p0, Lcom/oculus/downloader/model/DownloadInfo;->downloadedBytes:J

    .line 77
    iput-object p9, p0, Lcom/oculus/downloader/model/DownloadInfo;->localUri:Lcom/google/common/base/Optional;

    .line 78
    iput-object p10, p0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 79
    iput-object p11, p0, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    .line 80
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    const-class v0, Lcom/oculus/downloader/model/DownloadInfo;

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "download_id"

    iget-wide v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    .line 85
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "status"

    iget v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->status:I

    .line 86
    invoke-static {v2}, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->stringifyStatus(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "reason"

    iget v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->reason:I

    .line 87
    invoke-static {v2}, Lcom/oculus/downloader/util/OculusDownloadManagerUtils;->stringifyReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "total_size_bytes"

    iget-wide v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->totalSizeBytes:J

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "downloaded_bytes"

    iget-wide v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->downloadedBytes:J

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->localUri:Lcom/google/common/base/Optional;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->description:Lcom/google/common/base/Optional;

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "extras"

    iget-object v2, p0, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
