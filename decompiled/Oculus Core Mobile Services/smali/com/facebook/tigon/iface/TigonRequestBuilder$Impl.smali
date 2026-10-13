.class Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;
.super Ljava/lang/Object;
.source "TigonRequestBuilder.java"

# interfaces
.implements Lcom/facebook/tigon/iface/TigonRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/tigon/iface/TigonRequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# instance fields
.field private final mAddedToMiddlewareSinceEpochMS:J

.field private final mConnectionTimeoutMS:J

.field private final mEndToEndTraceLoggingId:Ljava/lang/String;

.field private final mEndToEndTraceUseCaseId:Ljava/lang/String;

.field private final mEndToEndTracingRequested:Z

.field private final mExpectedResponseSizeBytes:J

.field private final mFallbackToBackupHost:Z

.field private final mHeaders:Ljava/util/Map;
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

.field private final mIdleTimeoutMS:J

.field private final mIsReliableMediaEnabled:Z

.field private final mLayerInformation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLoggingId:Ljava/lang/String;

.field private final mMethod:Ljava/lang/String;

.field private final mPriority:I

.field private final mRequestType:I

.field private final mSoftDeadlineMs:J

.field private final mStartupStatusOnAdded:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/tigon/iface/TigonRequestBuilder;)V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iget-object v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mMethod:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mUrl:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mHeaders:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mHeaders:Ljava/util/Map;

    .line 248
    iget v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mPriority:I

    iput v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mPriority:I

    .line 249
    iget-object v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLayerInformation:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLayerInformation:Ljava/util/Map;

    .line 251
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mLayerInformation:Ljava/util/Map;

    .line 253
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$000(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mConnectionTimeoutMS:J

    .line 254
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$100(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mIdleTimeoutMS:J

    .line 255
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$200(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mSoftDeadlineMs:J

    .line 256
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$300(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mExpectedResponseSizeBytes:J

    .line 257
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$400(Lcom/facebook/tigon/iface/TigonRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mRequestType:I

    .line 258
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$500(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mFallbackToBackupHost:Z

    .line 259
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$600(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mIsReliableMediaEnabled:Z

    .line 260
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$700(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mLoggingId:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$800(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mEndToEndTracingRequested:Z

    .line 262
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$900(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mEndToEndTraceUseCaseId:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$1000(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mEndToEndTraceLoggingId:Ljava/lang/String;

    .line 264
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$1100(Lcom/facebook/tigon/iface/TigonRequestBuilder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mStartupStatusOnAdded:I

    .line 265
    invoke-static {p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->access$1200(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mAddedToMiddlewareSinceEpochMS:J

    .line 266
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public headers()Ljava/util/Map;
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
    .line 280
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
