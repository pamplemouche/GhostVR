.class public Lcom/facebook/flexiblesampling/SamplingResult;
.super Ljava/lang/Object;
.source "SamplingResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/flexiblesampling/SamplingResult$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mRandom:Ljava/util/Random;

.field private static sAlwaysOnResult:Lcom/facebook/flexiblesampling/SamplingResult;


# instance fields
.field private mHasUserConfig:Z

.field private mInSessionlessConfig:Z

.field private mInUserConfig:Z

.field private mSamplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/facebook/flexiblesampling/SamplingResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->mRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->access$000(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    .line 24
    invoke-static {p1}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->access$100(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mHasUserConfig:Z

    .line 25
    invoke-static {p1}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->access$200(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInUserConfig:Z

    .line 26
    invoke-static {p1}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->access$300(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInSessionlessConfig:Z

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/flexiblesampling/SamplingResult$Builder;Lcom/facebook/flexiblesampling/SamplingResult$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/flexiblesampling/SamplingResult;-><init>(Lcom/facebook/flexiblesampling/SamplingResult$Builder;)V

    return-void
.end method

.method public static createAlwaysOnResult()Lcom/facebook/flexiblesampling/SamplingResult;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->sAlwaysOnResult:Lcom/facebook/flexiblesampling/SamplingResult;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/facebook/flexiblesampling/SamplingResult$Builder;

    invoke-direct {v0}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;-><init>()V

    .line 65
    invoke-virtual {v0}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->hasUserConfig()Lcom/facebook/flexiblesampling/SamplingResult$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->setSamplingRate(I)Lcom/facebook/flexiblesampling/SamplingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/flexiblesampling/SamplingResult$Builder;->build()Lcom/facebook/flexiblesampling/SamplingResult;

    move-result-object v0

    sput-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->sAlwaysOnResult:Lcom/facebook/flexiblesampling/SamplingResult;

    .line 67
    :cond_0
    sget-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->sAlwaysOnResult:Lcom/facebook/flexiblesampling/SamplingResult;

    return-object v0
.end method


# virtual methods
.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    return v0
.end method

.method public hasUserConfig()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mHasUserConfig:Z

    return v0
.end method

.method public isInSessionlessConfig()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInSessionlessConfig:Z

    return v0
.end method

.method public isInUserConfig()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInUserConfig:Z

    return v0
.end method

.method public shouldLog()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    iget v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not sure how to proceed with negative sampling rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/common/preconditions/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 32
    iget v0, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    if-nez v0, :cond_1

    .line 35
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    .line 35
    :cond_1
    sget-object v0, Lcom/facebook/flexiblesampling/SamplingResult;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/flexiblesampling/SamplingResult;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nSamplingRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mSamplingRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nHasUserConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mHasUserConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nInUserConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInUserConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nInSessionlessConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/flexiblesampling/SamplingResult;->mInSessionlessConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
