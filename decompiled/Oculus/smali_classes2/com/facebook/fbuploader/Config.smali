.class public final Lcom/facebook/fbuploader/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/Config$Builder;,
        Lcom/facebook/fbuploader/Config$DedupPolicy;,
        Lcom/facebook/fbuploader/Config$RetryPolicy;,
        Lcom/facebook/fbuploader/Config$NetworkMonitor;,
        Lcom/facebook/fbuploader/Config$Namespace;,
        Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

.field private final mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

.field private final mEnableDedupProgressCallbacks:Z

.field private final mIsAttemptDedupForStreaming:Z

.field private mIsFNAUploadDomain:Z

.field private final mIsStreamingEnabled:Z

.field private final mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

.field private final mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

.field private final mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

.field private final mShouldGetOffset:Z

.field private final mUploadDomain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadJobVersion:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUploadRegionHint:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Config$Builder;)V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$000(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

    .line 334
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$100(Lcom/facebook/fbuploader/Config$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mRequestHeaders:Ljava/util/Map;

    .line 335
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$200(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$RetryPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    .line 336
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$300(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/RetryEvaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    .line 337
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$400(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    .line 338
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$500(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/DedupEvaluator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

    .line 339
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$600(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadJobVersion:Ljava/lang/String;

    .line 340
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$700(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadDomain:Ljava/lang/String;

    .line 341
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$800(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadRegionHint:Ljava/lang/String;

    .line 342
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$900(Lcom/facebook/fbuploader/Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsFNAUploadDomain:Z

    .line 343
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$1000(Lcom/facebook/fbuploader/Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mEnableDedupProgressCallbacks:Z

    .line 344
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$1100(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    .line 345
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$1200(Lcom/facebook/fbuploader/Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsStreamingEnabled:Z

    .line 346
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$1300(Lcom/facebook/fbuploader/Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsAttemptDedupForStreaming:Z

    .line 347
    invoke-static {p1}, Lcom/facebook/fbuploader/Config$Builder;->access$1400(Lcom/facebook/fbuploader/Config$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mShouldGetOffset:Z

    .line 348
    return-void
.end method


# virtual methods
.method public getDedupEvaluator()Lcom/facebook/fbuploader/DedupEvaluator;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

    return-object v0
.end method

.method public getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getIsFNAUploadDomain()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsFNAUploadDomain:Z

    return v0
.end method

.method public getJsonResponseFieldType()Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$Namespace;->getJsonResponseFieldType()Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUriPathElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$Namespace;->getUriPathElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkMonitor()Lcom/facebook/fbuploader/Config$NetworkMonitor;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    return-object v0
.end method

.method public getUploadDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadRegionHint()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadRegionHint:Ljava/lang/String;

    return-object v0
.end method

.method public isAttemptDedupForStreaming()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsAttemptDedupForStreaming:Z

    return v0
.end method

.method public isEnableDedupProgressCallbacks()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mEnableDedupProgressCallbacks:Z

    return v0
.end method

.method public isStreamingEnabled()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mIsStreamingEnabled:Z

    return v0
.end method

.method public millisToRetry()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/RetryEvaluator;->millisToRetry()I

    move-result v0

    return v0
.end method

.method public resetRetryEvaluator()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/RetryEvaluator;->reset()V

    .line 298
    return-void
.end method

.method public setIsFNAUploadDomain(Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/facebook/fbuploader/Config;->mIsFNAUploadDomain:Z

    .line 262
    return-void
.end method

.method public shouldGetOffset()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config;->mShouldGetOffset:Z

    return v0
.end method

.method public shouldMakeProvisioningCall()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public shouldRetry()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/RetryEvaluator;->shouldRetry()Z

    move-result v0

    return v0
.end method

.method public shouldUseOptimizedUploadJob()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadJobVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/fbuploader/Config;->mUploadJobVersion:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
