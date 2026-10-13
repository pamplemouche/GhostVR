.class Lcom/facebook/analytics2/logger/UploadProcessor;
.super Ljava/lang/Object;
.source "UploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadProcessor$HttpResponseException;,
        Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;
    }
.end annotation


# instance fields
.field private final mBatchPayloadIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field private final mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

.field private final mUploader:Lcom/facebook/analytics2/logger/Uploader;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/util/Iterator;Lcom/facebook/analytics2/logger/UploadProcessorCallback;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V
    .locals 2
    .param p5    # Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics2/logger/Uploader;",
            "Lcom/facebook/analytics2/logger/UploadJob$Priority;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadProcessorCallback;",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    .line 25
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 26
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    .line 27
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    .line 28
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    .line 30
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mBatchPayloadIterator is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public uploadNext()V
    .locals 6

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadProcessor;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more batches to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 46
    new-instance v1, Lcom/facebook/analytics2/logger/UploadJob;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    sget-object v3, Lcom/facebook/analytics2/logger/UploadJob$Tier;->DEFAULT:Lcom/facebook/analytics2/logger/UploadJob$Tier;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/analytics2/logger/UploadJob;-><init>(Lcom/facebook/analytics2/logger/UploadJob$Priority;Lcom/facebook/analytics2/logger/UploadJob$Tier;Lcom/facebook/analytics2/logger/BatchPayload;)V

    .line 48
    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    new-instance v3, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    invoke-direct {v3, v0, v4, v5}, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;-><init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;Lcom/facebook/analytics2/logger/UploadProcessorCallback;)V

    invoke-interface {v2, v1, v3}, Lcom/facebook/analytics2/logger/Uploader;->upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V

    .line 52
    return-void
.end method
