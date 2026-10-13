.class public final Lcom/facebook/fbuploader/Config$Builder;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

.field private mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

.field private mEnableDedupProgressCallbacks:Z

.field private mIsAttemptDedupForStreaming:Z

.field private mIsFNAUploadDomain:Z

.field private mIsStreamingEnabled:Z

.field private mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

.field private mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequestHeaders:Ljava/util/Map;
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

.field private mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

.field private mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

.field private mShouldGetOffset:Z

.field private mUploadDomain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUploadJobVersion:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mUploadRegionHint:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRequestHeaders:Ljava/util/Map;

    .line 353
    new-instance v0, Lcom/facebook/fbuploader/Config$RetryPolicy;

    invoke-direct {v0}, Lcom/facebook/fbuploader/Config$RetryPolicy;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    .line 354
    new-instance v0, Lcom/facebook/fbuploader/RetryEvaluator;

    iget-object v1, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    invoke-direct {v0, v1}, Lcom/facebook/fbuploader/RetryEvaluator;-><init>(Lcom/facebook/fbuploader/Config$RetryPolicy;)V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    .line 355
    invoke-static {}, Lcom/facebook/fbuploader/Config$DedupPolicy;->createDisabledPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    .line 356
    new-instance v0, Lcom/facebook/fbuploader/DedupEvaluator;

    iget-object v1, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    invoke-direct {v0, v1}, Lcom/facebook/fbuploader/DedupEvaluator;-><init>(Lcom/facebook/fbuploader/Config$DedupPolicy;)V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

    .line 357
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadJobVersion:Ljava/lang/String;

    .line 358
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadDomain:Ljava/lang/String;

    .line 359
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadRegionHint:Ljava/lang/String;

    .line 360
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsFNAUploadDomain:Z

    .line 361
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mEnableDedupProgressCallbacks:Z

    .line 362
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    .line 363
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsStreamingEnabled:Z

    .line 364
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsAttemptDedupForStreaming:Z

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mShouldGetOffset:Z

    .line 371
    return-void
.end method

.method public constructor <init>(Lcom/facebook/fbuploader/Config$Namespace;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRequestHeaders:Ljava/util/Map;

    .line 353
    new-instance v0, Lcom/facebook/fbuploader/Config$RetryPolicy;

    invoke-direct {v0}, Lcom/facebook/fbuploader/Config$RetryPolicy;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    .line 354
    new-instance v0, Lcom/facebook/fbuploader/RetryEvaluator;

    iget-object v1, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    invoke-direct {v0, v1}, Lcom/facebook/fbuploader/RetryEvaluator;-><init>(Lcom/facebook/fbuploader/Config$RetryPolicy;)V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    .line 355
    invoke-static {}, Lcom/facebook/fbuploader/Config$DedupPolicy;->createDisabledPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    .line 356
    new-instance v0, Lcom/facebook/fbuploader/DedupEvaluator;

    iget-object v1, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    invoke-direct {v0, v1}, Lcom/facebook/fbuploader/DedupEvaluator;-><init>(Lcom/facebook/fbuploader/Config$DedupPolicy;)V

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

    .line 357
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadJobVersion:Ljava/lang/String;

    .line 358
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadDomain:Ljava/lang/String;

    .line 359
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadRegionHint:Ljava/lang/String;

    .line 360
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsFNAUploadDomain:Z

    .line 361
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mEnableDedupProgressCallbacks:Z

    .line 362
    iput-object v3, p0, Lcom/facebook/fbuploader/Config$Builder;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    .line 363
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsStreamingEnabled:Z

    .line 364
    iput-boolean v2, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsAttemptDedupForStreaming:Z

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mShouldGetOffset:Z

    .line 368
    iput-object p1, p0, Lcom/facebook/fbuploader/Config$Builder;->mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$Namespace;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mNamespace:Lcom/facebook/fbuploader/Config$Namespace;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/fbuploader/Config$Builder;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRequestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/fbuploader/Config$Builder;)Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mEnableDedupProgressCallbacks:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$NetworkMonitor;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/fbuploader/Config$Builder;)Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/facebook/fbuploader/Config$Builder;)Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsAttemptDedupForStreaming:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/facebook/fbuploader/Config$Builder;)Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mShouldGetOffset:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$RetryPolicy;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryPolicy:Lcom/facebook/fbuploader/Config$RetryPolicy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/RetryEvaluator;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mRetryEvaluator:Lcom/facebook/fbuploader/RetryEvaluator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/Config$DedupPolicy;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupPolicy:Lcom/facebook/fbuploader/Config$DedupPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/fbuploader/Config$Builder;)Lcom/facebook/fbuploader/DedupEvaluator;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mDedupEvaluator:Lcom/facebook/fbuploader/DedupEvaluator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadJobVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/fbuploader/Config$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mUploadRegionHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/fbuploader/Config$Builder;)Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$Builder;->mIsFNAUploadDomain:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/fbuploader/Config;
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/facebook/fbuploader/Config;

    invoke-direct {v0, p0}, Lcom/facebook/fbuploader/Config;-><init>(Lcom/facebook/fbuploader/Config$Builder;)V

    return-object v0
.end method
