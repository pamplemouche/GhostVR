.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$UploadSyncException;
.super Ljava/lang/Exception;
.source "UploadSyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadSyncException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 71
    const-string v0, "Upload sync failed during step %s: %s"

    .line 73
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, p1, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method
