.class public Lcom/facebook/fbuploader/UploadJobImpl;
.super Ljava/lang/Object;
.source "UploadJobImpl.java"

# interfaces
.implements Lcom/facebook/fbuploader/UploadJob;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;,
        Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;,
        Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;
    }
.end annotation


# instance fields
.field private volatile mActiveRequestHandle:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

.field protected mBytesUploaded:I

.field private mCancelRequested:Z

.field protected final mConfig:Lcom/facebook/fbuploader/Config;

.field private final mContent:Lcom/facebook/fbuploader/Content;

.field private mDedupComputeTimeMs:J

.field private mDedupProgressWeight:F

.field private final mDefaultDomain:Ljava/lang/String;

.field private mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mNetworkMonitorRegistered:Z

.field private final mNetworkStatusChange:Ljava/lang/Object;

.field private final mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

.field private mTransferStatisticListener:Lcom/facebook/fbuploader/TransferStatisticListener;

.field protected mUploadListener:Lcom/facebook/fbuploader/Listener;

.field private mUploadUri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/Content;Lcom/facebook/fbuploader/Config;Lcom/facebook/fbuploader/Listener;Lcom/facebook/fbuploader/HttpRequestExecutor;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkStatusChange:Ljava/lang/Object;

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupComputeTimeMs:J

    .line 50
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 51
    iput-object p2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    .line 52
    iput-object p3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    .line 53
    iput-object p4, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    .line 54
    invoke-virtual {p2}, Lcom/facebook/fbuploader/Config;->getNetworkMonitor()Lcom/facebook/fbuploader/Config$NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    .line 55
    invoke-interface {p4}, Lcom/facebook/fbuploader/HttpRequestExecutor;->getDomainName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDefaultDomain:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getUploadDomain()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDefaultDomain:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/fbuploader/FbUploaderStringConstants;->getFacebookAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 63
    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getNamespaceUriPathElement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFileKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getUploadRegionHint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "target"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v2}, Lcom/facebook/fbuploader/Config;->getUploadRegionHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/fbuploader/Config;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/fbuploader/UploadJobImpl;->isSegmentedUpload(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const-string v0, "segmented"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    const-string v0, "phase"

    const-string v2, "transfer"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    iput-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mActiveRequestHandle:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    .line 85
    new-instance v0, Lcom/facebook/fbuploader/TransferStatisticListener;

    invoke-direct {v0}, Lcom/facebook/fbuploader/TransferStatisticListener;-><init>()V

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mTransferStatisticListener:Lcom/facebook/fbuploader/TransferStatisticListener;

    .line 86
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 80
    iput-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/facebook/fbuploader/UploadJobImpl;)F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->finishGetRequest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/Exception;)J
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->tryParsingBackoff(Ljava/lang/Exception;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/facebook/fbuploader/UploadJobImpl;JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/facebook/fbuploader/UploadJobImpl;->failRequest(JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/fbuploader/UploadJobImpl;)Lcom/facebook/fbuploader/TransferStatisticListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mTransferStatisticListener:Lcom/facebook/fbuploader/TransferStatisticListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/facebook/fbuploader/UploadJobImpl;->finishPostRequest(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/fbuploader/UploadJobImpl;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->bytesUploaded(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/fbuploader/UploadJobImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkStatusChange:Ljava/lang/Object;

    return-object v0
.end method

.method private buildHeadersForGetRequest()Ljava/util/Map;
    .locals 2
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
    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v1}, Lcom/facebook/fbuploader/Config;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 469
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/facebook/fbuploader/UploadJobImpl;->maybeAddDedupHeaders(Ljava/util/Map;Z)V

    .line 471
    return-object v0
.end method

.method private buildHeadersForPostRequest(JZ)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v1}, Lcom/facebook/fbuploader/Config;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 448
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v1}, Lcom/facebook/fbuploader/Config;->isStreamingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const-string v1, "X-Entity-Length"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 450
    invoke-virtual {v2}, Lcom/facebook/fbuploader/Content;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_0
    const-string v1, "Offset"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "X-Entity-Type"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v2}, Lcom/facebook/fbuploader/Content;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "X-Entity-Name"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v2}, Lcom/facebook/fbuploader/Content;->getFileKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct {p0, v0, p3}, Lcom/facebook/fbuploader/UploadJobImpl;->maybeAddDedupHeaders(Ljava/util/Map;Z)V

    .line 459
    return-object v0
.end method

.method private bytesUploaded(I)V
    .locals 6

    .prologue
    .line 355
    iget v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    .line 356
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    iget v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 358
    invoke-virtual {v3}, Lcom/facebook/fbuploader/Content;->getContentLength()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 356
    invoke-interface {v0, v1}, Lcom/facebook/fbuploader/Listener;->onProgress(F)V

    .line 359
    return-void
.end method

.method private cancelled()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mActiveRequestHandle:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    .line 386
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->unregisterNetworkMonitor()V

    .line 387
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    invoke-interface {v0}, Lcom/facebook/fbuploader/Listener;->onCancellation()V

    .line 388
    return-void
.end method

.method private failRequest(JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 302
    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    .line 303
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->shouldRetry()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 304
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 305
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getIsFNAUploadDomain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 311
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 312
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDefaultDomain:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/fbuploader/FbUploaderStringConstants;->getFacebookAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 313
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDefaultDomain:Ljava/lang/String;

    .line 314
    invoke-static {v1, v2}, Lcom/facebook/fbuploader/UploadJobImpl;->relativeUriStringFromFacebookUri(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 315
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;

    .line 316
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/fbuploader/Config;->setIsFNAUploadDomain(Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->millisToRetry()I

    move-result v0

    int-to-long p1, v0

    .line 328
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    if-eqz v0, :cond_3

    .line 329
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkStatusChange:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    :try_start_2
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkStatusChange:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 333
    iget-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mCancelRequested:Z

    if-eqz v0, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->cancelled()V

    .line 335
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :goto_1
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 337
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->fetchOffsetUsingGetRequest()V

    goto :goto_1

    .line 337
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 341
    :catch_1
    move-exception v0

    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 339
    :cond_3
    :try_start_6
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 346
    :cond_4
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->unregisterNetworkMonitor()V

    .line 347
    iget-object v8, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    new-instance v0, Lcom/facebook/fbuploader/UploadFailureException;

    iget v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    int-to-long v2, v1

    move-object v1, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;JZLjava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    invoke-interface {v8, v0}, Lcom/facebook/fbuploader/Listener;->onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V

    goto :goto_1
.end method

.method private finishGetRequest(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 268
    :try_start_0
    invoke-static {p1}, Lcom/facebook/fbuploader/UploadJobImpl;->parseOffsetFromResponse(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;

    move-result-object v0

    .line 270
    iget-boolean v1, v0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->duplicate:Z

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v1}, Lcom/facebook/fbuploader/Content;->getContentLength()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->offset:J

    .line 274
    :cond_0
    iget-wide v2, v0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->offset:J

    iget-boolean v0, v0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->duplicate:Z

    invoke-virtual {p0, v2, v3, v0}, Lcom/facebook/fbuploader/UploadJobImpl;->sendBytesUsingPostRequest(JZ)V
    :try_end_0
    .catch Lcom/facebook/fbuploader/JsonParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v5

    .line 276
    const-wide/16 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse offset from GET response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    sget-object v7, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->GET:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/fbuploader/UploadJobImpl;->failRequest(JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    goto :goto_0
.end method

.method private finishPostRequest(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 364
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/fbuploader/UploadJobImpl;->parseResultFromResponse(Ljava/lang/String;Z)Lcom/facebook/fbuploader/UploadResult;

    move-result-object v0

    .line 365
    if-eqz p2, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/facebook/fbuploader/UploadJobImpl;->bytesUploaded(I)V

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->unregisterNetworkMonitor()V

    .line 370
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lcom/facebook/fbuploader/Listener;->onProgress(F)V

    .line 371
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    invoke-interface {v1, v0}, Lcom/facebook/fbuploader/Listener;->onCompletion(Lcom/facebook/fbuploader/UploadResult;)V
    :try_end_0
    .catch Lcom/facebook/fbuploader/JsonParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v5

    .line 373
    const-wide/16 v2, -0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse offset from POST response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    sget-object v7, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->POST:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/fbuploader/UploadJobImpl;->failRequest(JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    goto :goto_0
.end method

.method private getUploadUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;

    return-object v0
.end method

.method private static isSegmentedUpload(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p0, :cond_1

    .line 132
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    const-string v2, "Stream-Id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeAddDedupHeaders(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->shouldDedup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->isStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->resetContentLength()V

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy;->getHashType()Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    move-result-object v0

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 418
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->getDigestInstanceString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    .line 419
    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config$DedupPolicy;->getDigestReadBlockSize()I

    move-result v3

    .line 417
    invoke-virtual {v1, v2, v3}, Lcom/facebook/fbuploader/Content;->getDigest(Ljava/lang/String;I)Lcom/facebook/fbuploader/Content$DigestInfo;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_0

    .line 424
    invoke-virtual {v1}, Lcom/facebook/fbuploader/Content$DigestInfo;->getDigest()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 425
    if-eqz p2, :cond_3

    .line 426
    const-string v3, "X-Entity-Digest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->getHeaderPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_3
    const-string v0, "X-Digest-Time-Ms"

    .line 432
    invoke-virtual {v1}, Lcom/facebook/fbuploader/Content$DigestInfo;->getDigestTimeMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-virtual {v1}, Lcom/facebook/fbuploader/Content$DigestInfo;->getDigestTimeMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupComputeTimeMs:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static parseBackoffFromResponse(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/fbuploader/JsonParsingException;
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    invoke-static {p0}, Lcom/facebook/fbuploader/UploadJobImpl_BackoffResponse__JsonHelper;->parseFromJson(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;->backoff:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 496
    :cond_0
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0, p0}, Lcom/facebook/fbuploader/JsonParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0}, Lcom/facebook/fbuploader/JsonParsingException;-><init>()V

    throw v0

    .line 498
    :cond_1
    return-object v0
.end method

.method private static parseOffsetFromResponse(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/fbuploader/JsonParsingException;
        }
    .end annotation

    .prologue
    .line 480
    :try_start_0
    invoke-static {p0}, Lcom/facebook/fbuploader/UploadJobImpl_OffsetResponse__JsonHelper;->parseFromJson(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/facebook/fbuploader/UploadJobImpl$OffsetResponse;->offset:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 482
    :cond_0
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0, p0}, Lcom/facebook/fbuploader/JsonParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0}, Lcom/facebook/fbuploader/JsonParsingException;-><init>()V

    throw v0

    .line 484
    :cond_1
    return-object v0
.end method

.method private parseResultFromResponse(Ljava/lang/String;Z)Lcom/facebook/fbuploader/UploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/fbuploader/JsonParsingException;
        }
    .end annotation

    .prologue
    .line 509
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    invoke-static {p1}, Lcom/facebook/fbuploader/UploadJobImpl_UploadResponse__JsonHelper;->parseFromJson(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;

    move-result-object v0

    .line 511
    if-nez v0, :cond_4

    .line 512
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0, p1}, Lcom/facebook/fbuploader/JsonParsingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    new-instance v0, Lcom/facebook/fbuploader/JsonParsingException;

    invoke-direct {v0}, Lcom/facebook/fbuploader/JsonParsingException;-><init>()V

    throw v0

    .line 516
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;

    invoke-direct {v0}, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;-><init>()V

    move-object v2, v0

    .line 519
    :goto_0
    const/4 v1, 0x0

    .line 520
    sget-object v0, Lcom/facebook/fbuploader/UploadJobImpl$5;->$SwitchMap$com$facebook$fbuploader$Config$UploadResponseFieldType:[I

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->getJsonResponseFieldType()Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 528
    :goto_1
    if-nez v1, :cond_1

    .line 529
    const-string v1, ""

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    sget-object v3, Lcom/facebook/fbuploader/UploadResult$DedupState;->NOT_ATTEMPTED:Lcom/facebook/fbuploader/UploadResult$DedupState;

    .line 541
    :goto_2
    new-instance v0, Lcom/facebook/fbuploader/UploadResult;

    iget-wide v4, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupComputeTimeMs:J

    iget-object v6, v2, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->uploadId:Ljava/lang/String;

    iget-object v7, v2, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->status:Ljava/lang/String;

    iget-object v8, v2, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->xsharingNonces:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mTransferStatisticListener:Lcom/facebook/fbuploader/TransferStatisticListener;

    .line 549
    invoke-virtual {v2}, Lcom/facebook/fbuploader/TransferStatisticListener;->getTransferStatistics()Ljava/util/ArrayList;

    move-result-object v9

    .line 550
    invoke-virtual {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->getUploadDomainName()Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/fbuploader/UploadResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/fbuploader/UploadResult$DedupState;JLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object v0

    .line 522
    :pswitch_0
    iget-object v1, v2, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->mediaId:Ljava/lang/String;

    goto :goto_1

    .line 525
    :pswitch_1
    iget-object v1, v2, Lcom/facebook/fbuploader/UploadJobImpl$UploadResponse;->handle:Ljava/lang/String;

    goto :goto_1

    .line 535
    :cond_2
    if-eqz p2, :cond_3

    .line 536
    sget-object v3, Lcom/facebook/fbuploader/UploadResult$DedupState;->FOUND:Lcom/facebook/fbuploader/UploadResult$DedupState;

    goto :goto_2

    .line 538
    :cond_3
    sget-object v3, Lcom/facebook/fbuploader/UploadResult$DedupState;->NOT_FOUND:Lcom/facebook/fbuploader/UploadResult$DedupState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_0

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerNetworkMonitor()V
    .locals 2

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitorRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    if-nez v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    new-instance v1, Lcom/facebook/fbuploader/UploadJobImpl$4;

    invoke-direct {v1, p0}, Lcom/facebook/fbuploader/UploadJobImpl$4;-><init>(Lcom/facebook/fbuploader/UploadJobImpl;)V

    invoke-interface {v0, v1}, Lcom/facebook/fbuploader/Config$NetworkMonitor;->addOnConnected(Ljava/lang/Runnable;)V

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitorRegistered:Z

    goto :goto_0
.end method

.method public static relativeUriStringFromFacebookUri(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 289
    if-ltz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private shouldDedup()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->isAttemptDedupForStreaming()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 394
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/common/iolite/AnnouncingFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 395
    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/iolite/AnnouncingFile;

    invoke-virtual {v0}, Lcom/facebook/common/iolite/AnnouncingFile;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 398
    :goto_0
    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->getDedupEvaluator()Lcom/facebook/fbuploader/DedupEvaluator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/fbuploader/DedupEvaluator;->shouldDedup()Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    .line 400
    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config$DedupPolicy;->getMaxFileSize()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    .line 401
    invoke-virtual {v3}, Lcom/facebook/fbuploader/Content;->getContentLength()J

    move-result-wide v4

    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->getDedupPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config$DedupPolicy;->getMaxFileSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    .line 402
    invoke-virtual {v3}, Lcom/facebook/fbuploader/Config;->isStreamingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 395
    goto :goto_0

    :cond_3
    move v1, v2

    .line 402
    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private static stringIsNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 557
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryParsingBackoff(Ljava/lang/Exception;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 243
    instance-of v2, p1, Lorg/apache/http/client/HttpResponseException;

    if-nez v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-wide v0

    .line 250
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Lcom/facebook/fbuploader/UploadJobImpl;->stringIsNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 255
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 258
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/facebook/fbuploader/UploadJobImpl;->parseBackoffFromResponse(Ljava/lang/String;)Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;

    move-result-object v2

    .line 259
    iget-wide v0, v2, Lcom/facebook/fbuploader/UploadJobImpl$BackoffResponse;->backoff:J
    :try_end_0
    .catch Lcom/facebook/fbuploader/JsonParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private unregisterNetworkMonitor()V
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitorRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitor:Lcom/facebook/fbuploader/Config$NetworkMonitor;

    invoke-interface {v0}, Lcom/facebook/fbuploader/Config$NetworkMonitor;->remove()V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mNetworkMonitorRegistered:Z

    .line 582
    :cond_0
    return-void
.end method


# virtual methods
.method protected fetchOffsetUsingGetRequest()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->isEnableDedupProgressCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0, v4}, Lcom/facebook/fbuploader/Content;->setHashComputeListener(Lcom/facebook/fbuploader/Content$HashComputeListener;)V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    .line 152
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->shouldDedup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mDedupProgressWeight:F

    .line 154
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    new-instance v1, Lcom/facebook/fbuploader/UploadJobImpl$1;

    invoke-direct {v1, p0}, Lcom/facebook/fbuploader/UploadJobImpl$1;-><init>(Lcom/facebook/fbuploader/UploadJobImpl;)V

    invoke-virtual {v0, v1}, Lcom/facebook/fbuploader/Content;->setHashComputeListener(Lcom/facebook/fbuploader/Content$HashComputeListener;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    sget-object v1, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->GET:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    .line 166
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->buildHeadersForGetRequest()Ljava/util/Map;

    move-result-object v2

    .line 167
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->getUploadUri()Ljava/net/URI;

    move-result-object v3

    new-instance v5, Lcom/facebook/fbuploader/UploadJobImpl$2;

    invoke-direct {v5, p0}, Lcom/facebook/fbuploader/UploadJobImpl$2;-><init>(Lcom/facebook/fbuploader/UploadJobImpl;)V

    .line 164
    invoke-interface/range {v0 .. v5}, Lcom/facebook/fbuploader/HttpRequestExecutor;->sendRequest(Lcom/facebook/fbuploader/HttpRequestExecutor$Method;Ljava/util/Map;Ljava/net/URI;Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mActiveRequestHandle:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    .line 192
    return-void
.end method

.method public getBytesUploaded()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    return v0
.end method

.method public getUploadDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadUri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendBytesUsingPostRequest(JZ)V
    .locals 7

    .prologue
    .line 195
    long-to-int v0, p1

    iput v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mBytesUploaded:I

    .line 196
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mTransferStatisticListener:Lcom/facebook/fbuploader/TransferStatisticListener;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/TransferStatisticListener;->onStart()V

    .line 197
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mRequestExecutor:Lcom/facebook/fbuploader/HttpRequestExecutor;

    sget-object v1, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->POST:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/fbuploader/UploadJobImpl;->buildHeadersForPostRequest(JZ)Ljava/util/Map;

    move-result-object v2

    .line 201
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->getUploadUri()Ljava/net/URI;

    move-result-object v3

    new-instance v4, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-object v5, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-direct {v4, v5, p1, p2}, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;-><init>(Lcom/facebook/fbuploader/Content;J)V

    new-instance v5, Lcom/facebook/fbuploader/UploadJobImpl$3;

    invoke-direct {v5, p0, p3}, Lcom/facebook/fbuploader/UploadJobImpl$3;-><init>(Lcom/facebook/fbuploader/UploadJobImpl;Z)V

    .line 198
    invoke-interface/range {v0 .. v5}, Lcom/facebook/fbuploader/HttpRequestExecutor;->sendRequest(Lcom/facebook/fbuploader/HttpRequestExecutor$Method;Ljava/util/Map;Ljava/net/URI;Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mActiveRequestHandle:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestHandle;

    .line 235
    return-void
.end method

.method public upload()V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->registerNetworkMonitor()V

    .line 108
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    invoke-interface {v0}, Lcom/facebook/fbuploader/Listener;->onStart()V

    .line 109
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->resetRetryEvaluator()V

    .line 110
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->shouldGetOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/facebook/fbuploader/UploadJobImpl;->fetchOffsetUsingGetRequest()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/fbuploader/UploadJobImpl;->sendBytesUsingPostRequest(JZ)V

    goto :goto_0
.end method
