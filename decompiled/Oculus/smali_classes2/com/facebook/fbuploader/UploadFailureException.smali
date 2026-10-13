.class public final Lcom/facebook/fbuploader/UploadFailureException;
.super Ljava/lang/Exception;
.source "UploadFailureException.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final mBytesTransferred:J

.field public final mFailureReason:Ljava/lang/String;

.field public final mInnerException:Ljava/lang/Exception;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mIsCancellation:Z

.field public final mIsRetriable:Z

.field public final mRequestMethod:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 30
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v4

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;JZLjava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/Exception;)V
    .locals 8

    .prologue
    .line 26
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;JZLjava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZLjava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadFailureException;->mFailureReason:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/facebook/fbuploader/UploadFailureException;->mBytesTransferred:J

    .line 43
    iput-boolean p4, p0, Lcom/facebook/fbuploader/UploadFailureException;->mIsCancellation:Z

    .line 44
    iput-object p5, p0, Lcom/facebook/fbuploader/UploadFailureException;->mInnerException:Ljava/lang/Exception;

    .line 45
    iput-boolean p6, p0, Lcom/facebook/fbuploader/UploadFailureException;->mIsRetriable:Z

    .line 46
    iput-object p7, p0, Lcom/facebook/fbuploader/UploadFailureException;->mRequestMethod:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    .line 47
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fbuploader/UploadFailureException;->mFailureReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/fbuploader/UploadFailureException;->mIsCancellation:Z

    if-eqz v0, :cond_0

    const-string v0, " (Cancellation), "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "InnerException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadFailureException;->mInnerException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadFailureException;->mInnerException:Ljava/lang/Exception;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    const-string v0, ", "

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "None"

    goto :goto_1
.end method
