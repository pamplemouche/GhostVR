.class Lcom/facebook/fbuploader/UploadJobImpl$3;
.super Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;
.source "UploadJobImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbuploader/UploadJobImpl;->sendBytesUsingPostRequest(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbuploader/UploadJobImpl;

.field final synthetic val$isDuplicate:Z


# direct methods
.method constructor <init>(Lcom/facebook/fbuploader/UploadJobImpl;Z)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    iput-boolean p2, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->val$isDuplicate:Z

    invoke-direct {p0}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->access$500(Lcom/facebook/fbuploader/UploadJobImpl;)Lcom/facebook/fbuploader/TransferStatisticListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/fbuploader/TransferStatisticListener;->onStop()V

    .line 207
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    iget-boolean v1, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->val$isDuplicate:Z

    invoke-static {v0, p1, v1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$600(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/String;Z)V

    .line 208
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;Z)V
    .locals 8

    .prologue
    .line 212
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->access$500(Lcom/facebook/fbuploader/UploadJobImpl;)Lcom/facebook/fbuploader/TransferStatisticListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/fbuploader/TransferStatisticListener;->onStop()V

    .line 213
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    iget-object v0, v0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getDedupEvaluator()Lcom/facebook/fbuploader/DedupEvaluator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/fbuploader/DedupEvaluator;->recordFailure(Ljava/lang/Exception;)V

    .line 214
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$200(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/Exception;)J

    move-result-wide v2

    .line 215
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    const-string v4, "Failed to complete POST request"

    sget-object v7, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->POST:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/facebook/fbuploader/UploadJobImpl;->access$300(Lcom/facebook/fbuploader/UploadJobImpl;JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    .line 221
    return-void
.end method

.method public onProgress(I)V
    .locals 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->access$500(Lcom/facebook/fbuploader/UploadJobImpl;)Lcom/facebook/fbuploader/TransferStatisticListener;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/fbuploader/TransferStatisticListener;->onProgress(J)V

    .line 232
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$3;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$700(Lcom/facebook/fbuploader/UploadJobImpl;I)V

    .line 233
    return-void
.end method
