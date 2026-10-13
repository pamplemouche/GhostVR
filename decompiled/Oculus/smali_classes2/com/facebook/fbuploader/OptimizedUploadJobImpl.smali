.class final Lcom/facebook/fbuploader/OptimizedUploadJobImpl;
.super Lcom/facebook/fbuploader/UploadJobImpl;
.source "OptimizedUploadJobImpl.java"


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;Lcom/facebook/fbuploader/HttpRequestExecutor;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fbuploader/UploadJobImpl;-><init>(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;Lcom/facebook/fbuploader/HttpRequestExecutor;)V

    .line 15
    return-void
.end method

.method private createUploadSession()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method private startUploadSession()V
    .locals 3

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->mBytesUploaded:I

    if-gtz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->shouldMakeProvisioningCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->sendBytesUsingPostRequest(JZ)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->createUploadSession()V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->shouldGetOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->fetchOffsetUsingGetRequest()V

    goto :goto_0
.end method


# virtual methods
.method public upload()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->resetRetryEvaluator()V

    .line 21
    invoke-direct {p0}, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->startUploadSession()V

    .line 22
    iget-object v0, p0, Lcom/facebook/fbuploader/OptimizedUploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    invoke-interface {v0}, Lcom/facebook/fbuploader/Listener;->onStart()V

    .line 23
    return-void
.end method
