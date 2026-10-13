.class Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;
.super Ljava/lang/Object;
.source "UploadProcessor.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadProcessorUploaderCallback"
.end annotation


# instance fields
.field private final mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

.field private final mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;Lcom/facebook/analytics2/logger/UploadProcessorCallback;)V
    .locals 0
    .param p2    # Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 64
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    .line 65
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    .line 66
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->hasLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadProcessorCallback;->onFailure(Ljava/io/IOException;)V

    .line 78
    return-void
.end method

.method public onSuccess(ILjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 86
    :try_start_0
    new-instance v0, Lcom/facebook/analytics2/logger/UploadProcessor$HttpResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected HTTP code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/analytics2/logger/UploadProcessor$HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    invoke-interface {v1, v0}, Lcom/facebook/analytics2/logger/UploadProcessorCallback;->onFailure(Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    .line 97
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    invoke-interface {v0, p2}, Lcom/facebook/flexiblesampling/SamplingPolicyConfig;->updatePolicyFromServer(Ljava/io/InputStream;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->markSuccessful()V

    .line 92
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/UploadProcessorCallback;->onSuccess()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v0}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    .line 97
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    invoke-interface {v1}, Lcom/facebook/analytics2/logger/BatchPayloadInternal;->unlock()V

    .line 97
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v0
.end method
