.class public Lcom/facebook/tigon/iface/TigonRequestBuilder;
.super Ljava/lang/Object;
.source "TigonRequestBuilder.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;
    }
.end annotation


# instance fields
.field private mAddedToMiddlewareSinceEpochMS:J

.field private mConnectionTimeoutMS:J

.field private mEndToEndTraceLoggingId:Ljava/lang/String;

.field private mEndToEndTraceUseCaseId:Ljava/lang/String;

.field private mEndToEndTracingRequested:Z

.field private mExpectedResponseSizeBytes:J

.field private mFallbackToBackupHost:Z

.field mHeaders:Ljava/util/Map;
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

.field private mIdleTimeoutMS:J

.field private mIsReliableMediaEnabled:Z

.field mLayerInformation:Ljava/util/Map;
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
.end field

.field private mLoggingId:Ljava/lang/String;

.field mMethod:Ljava/lang/String;

.field mPriority:I

.field private mRequestType:I

.field private mSoftDeadlineMs:J

.field private mStartupStatusOnAdded:I

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v2, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mSoftDeadlineMs:J

    .line 26
    iput-wide v2, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mExpectedResponseSizeBytes:J

    .line 29
    iput-boolean v1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mFallbackToBackupHost:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLoggingId:Ljava/lang/String;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mStartupStatusOnAdded:I

    .line 32
    iput-wide v2, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mAddedToMiddlewareSinceEpochMS:J

    .line 34
    iput-boolean v1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mIsReliableMediaEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTracingRequested:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTraceUseCaseId:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTraceLoggingId:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mHeaders:Ljava/util/Map;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mPriority:I

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mConnectionTimeoutMS:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mIdleTimeoutMS:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTraceLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/tigon/iface/TigonRequestBuilder;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mStartupStatusOnAdded:I

    return v0
.end method

.method static synthetic access$1200(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mAddedToMiddlewareSinceEpochMS:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mSoftDeadlineMs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/facebook/tigon/iface/TigonRequestBuilder;)J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mExpectedResponseSizeBytes:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/tigon/iface/TigonRequestBuilder;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mRequestType:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mFallbackToBackupHost:Z

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mIsReliableMediaEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTracingRequested:Z

    return v0
.end method

.method static synthetic access$900(Lcom/facebook/tigon/iface/TigonRequestBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mEndToEndTraceUseCaseId:Ljava/lang/String;

    return-object v0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILcom/facebook/tigon/iface/FacebookLoggingRequestInfoImpl;)Lcom/facebook/tigon/iface/TigonRequest;
    .locals 4
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestBuilder;

    invoke-direct {v0}, Lcom/facebook/tigon/iface/TigonRequestBuilder;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->setUrl(Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->setPriority(I)Lcom/facebook/tigon/iface/TigonRequestBuilder;

    move-result-object v1

    .line 74
    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have even number of flattened headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 78
    aget-object v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;

    .line 77
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 83
    :cond_1
    if-eqz p4, :cond_2

    .line 84
    sget-object v0, Lcom/facebook/tigon/iface/TigonRequestLayers;->FACEBOOK_LOGGING:Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;

    invoke-virtual {v1, v0, p4}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->addLayerInformation(Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;Ljava/lang/Object;)Lcom/facebook/tigon/iface/TigonRequestBuilder;

    .line 87
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/tigon/iface/TigonRequestBuilder;->build()Lcom/facebook/tigon/iface/TigonRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-object p0
.end method

.method public addLayerInformation(Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo;Ljava/lang/Object;)Lcom/facebook/tigon/iface/TigonRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/tigon/iface/TigonRequestLayers$LayerInfo",
            "<TT;>;TT;)",
            "Lcom/facebook/tigon/iface/TigonRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLayerInformation:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLayerInformation:Ljava/util/Map;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mLayerInformation:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object p0
.end method

.method public build()Lcom/facebook/tigon/iface/TigonRequest;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;

    invoke-direct {v0, p0}, Lcom/facebook/tigon/iface/TigonRequestBuilder$Impl;-><init>(Lcom/facebook/tigon/iface/TigonRequestBuilder;)V

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mMethod:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setPriority(I)Lcom/facebook/tigon/iface/TigonRequestBuilder;
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mPriority:I

    .line 102
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/facebook/tigon/iface/TigonRequestBuilder;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/tigon/iface/TigonRequestBuilder;->mUrl:Ljava/lang/String;

    .line 97
    return-object p0
.end method
