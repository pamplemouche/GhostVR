.class public Lcom/facebook/flexiblesampling/SamplingResult$Builder;
.super Ljava/lang/Object;
.source "SamplingResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/flexiblesampling/SamplingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mHasUserConfig:Z

.field private mInSessionlessConfig:Z

.field private mInUserConfig:Z

.field private mSamplingRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mSamplingRate:I

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mHasUserConfig:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mInUserConfig:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mInSessionlessConfig:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/flexiblesampling/SamplingResult;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/flexiblesampling/SamplingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/flexiblesampling/SamplingResult;-><init>(Lcom/facebook/flexiblesampling/SamplingResult$Builder;Lcom/facebook/flexiblesampling/SamplingResult$1;)V

    return-object v0
.end method

.method public hasUserConfig()Lcom/facebook/flexiblesampling/SamplingResult$Builder;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mHasUserConfig:Z

    .line 81
    return-object p0
.end method

.method public setSamplingRate(I)Lcom/facebook/flexiblesampling/SamplingResult$Builder;
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->mSamplingRate:I

    .line 115
    return-object p0
.end method
