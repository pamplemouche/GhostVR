.class public Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;
.super Ljava/lang/Object;
.source "ParameterizedRetryState.java"


# instance fields
.field private final EXTRA_MULTIPLIER_STEP:I

.field private final INITIAL_MULTIPLIER:I

.field private final MAX_MULTIPLIER:I

.field private final NORMAL_MULTIPLIER_STEP:I

.field private mCurrentRetryIntervalSec:I

.field private mCurrentRetryMultiplier:I

.field private final mInitialRetryIntervalNormalSec:I

.field private final mMaximumRetryIntervalSec:I

.field private final mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->NORMAL_MULTIPLIER_STEP:I

    .line 18
    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->EXTRA_MULTIPLIER_STEP:I

    .line 19
    const/4 v0, -0x2

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->INITIAL_MULTIPLIER:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->MAX_MULTIPLIER:I

    .line 31
    iput p1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mInitialRetryIntervalNormalSec:I

    .line 32
    iput p2, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mMaximumRetryIntervalSec:I

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mRandom:Ljava/util/Random;

    .line 34
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->reset()V

    .line 35
    return-void
.end method


# virtual methods
.method public next(ZZ)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    .line 44
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 46
    if-nez p1, :cond_0

    .line 48
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 52
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 56
    :cond_1
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    if-le v0, v1, :cond_2

    .line 57
    iput v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 61
    :cond_2
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 63
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 68
    :cond_3
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    mul-int/2addr v0, v1

    .line 71
    iget-object v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 72
    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    .line 75
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mInitialRetryIntervalNormalSec:I

    if-ge v0, v1, :cond_4

    .line 76
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mInitialRetryIntervalNormalSec:I

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    .line 78
    :cond_4
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    iget v1, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mMaximumRetryIntervalSec:I

    if-le v0, v1, :cond_5

    .line 79
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mMaximumRetryIntervalSec:I

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    .line 82
    :cond_5
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x2

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 39
    iget v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mInitialRetryIntervalNormalSec:I

    iput v0, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const-string v0, "ParameterizedRetryState (%d,%d): multiplier:%d, interval:%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mInitialRetryIntervalNormalSec:I

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mMaximumRetryIntervalSec:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryMultiplier:I

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/facebook/rti/mqtt/retry/ParameterizedRetryState;->mCurrentRetryIntervalSec:I

    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    invoke-static {v0, v1}, Lcom/facebook/rti/common/util/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
