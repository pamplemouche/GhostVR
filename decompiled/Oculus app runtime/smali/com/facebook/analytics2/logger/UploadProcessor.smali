.class Lcom/facebook/analytics2/logger/UploadProcessor;
.super Ljava/lang/Object;
.source "UploadProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;
    }
.end annotation


# instance fields
.field private final mBatchPayloadIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field private final mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

.field private final mUploader:Lcom/facebook/analytics2/logger/Uploader;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/util/Iterator;Lcom/facebook/analytics2/logger/UploadProcessorCallback;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V
    .locals 0
    .param p5    # Lcom/facebook/flexiblesampling/SamplingPolicyConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/analytics2/logger/Uploader;",
            "Lcom/facebook/analytics2/logger/UploadJob$Priority;",
            "Ljava/util/Iterator<",
            "Lcom/facebook/analytics2/logger/BatchPayloadInternal;",
            ">;",
            "Lcom/facebook/analytics2/logger/UploadProcessorCallback;",
            "Lcom/facebook/flexiblesampling/SamplingPolicyConfig;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    .line 26
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 27
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    .line 28
    iput-object p4, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    .line 29
    iput-object p5, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    .line 31
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mBatchPayloadIterator is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public uploadNext()V
    .locals 6

    .line 41
    invoke-virtual {p0}, Lcom/facebook/analytics2/logger/UploadProcessor;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mBatchPayloadIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/BatchPayloadInternal;

    .line 47
    new-instance v1, Lcom/facebook/analytics2/logger/UploadJob;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mNetworkPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    sget-object v3, Lcom/facebook/analytics2/logger/UploadJob$Tier;->DEFAULT:Lcom/facebook/analytics2/logger/UploadJob$Tier;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/analytics2/logger/UploadJob;-><init>(Lcom/facebook/analytics2/logger/UploadJob$Priority;Lcom/facebook/analytics2/logger/UploadJob$Tier;Lcom/facebook/analytics2/logger/BatchPayload;)V

    .line 49
    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploader:Lcom/facebook/analytics2/logger/Uploader;

    new-instance v3, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;

    iget-object v4, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mSamplingPolicyConfig:Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    iget-object v5, p0, Lcom/facebook/analytics2/logger/UploadProcessor;->mUploadProcessorCallback:Lcom/facebook/analytics2/logger/UploadProcessorCallback;

    invoke-direct {v3, v0, v4, v5}, Lcom/facebook/analytics2/logger/UploadProcessor$UploadProcessorUploaderCallback;-><init>(Lcom/facebook/analytics2/logger/BatchPayloadInternal;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;Lcom/facebook/analytics2/logger/UploadProcessorCallback;)V

    invoke-interface {v2, v1, v3}, Lcom/facebook/analytics2/logger/Uploader;->upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more batches to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
