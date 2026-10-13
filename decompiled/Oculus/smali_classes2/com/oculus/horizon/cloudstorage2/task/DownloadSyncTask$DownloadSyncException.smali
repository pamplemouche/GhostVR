.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$DownloadSyncException;
.super Ljava/lang/Exception;
.source "DownloadSyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadSyncException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 65
    const-string v0, "Download sync failed during step %s: %s"

    .line 67
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v0, p1, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
