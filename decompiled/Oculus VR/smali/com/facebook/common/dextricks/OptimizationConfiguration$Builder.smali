.class public final Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
.super Ljava/lang/Object;
.source "OptimizationConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/OptimizationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I

.field private mMaximumOptimizationAttempts:I

.field private mOptTimeSliceMs:I

.field private mPrio:Lcom/facebook/common/dextricks/Prio;

.field private mProcessPollMs:I

.field private mRequiredDiskSpaceForCompilation:J

.field private mTimeBetweenOptimizationAttemptsMs:I

.field private mYieldTimeSliceMs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/facebook/common/dextricks/Prio;->unchanged()Lcom/facebook/common/dextricks/Prio;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mPrio:Lcom/facebook/common/dextricks/Prio;

    .line 52
    iput v1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    .line 53
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mOptTimeSliceMs:I

    .line 54
    iput v1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mYieldTimeSliceMs:I

    .line 55
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mProcessPollMs:I

    .line 56
    const v0, 0x36ee80

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mTimeBetweenOptimizationAttemptsMs:I

    .line 57
    const/16 v0, 0xa

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mMaximumOptimizationAttempts:I

    .line 58
    const-wide/32 v0, 0x19000000

    iput-wide v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mRequiredDiskSpaceForCompilation:J

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/facebook/common/dextricks/OptimizationConfiguration;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->prio:Lcom/facebook/common/dextricks/Prio;

    iput-object v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mPrio:Lcom/facebook/common/dextricks/Prio;

    .line 63
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->flags:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    .line 64
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->optTimeSliceMs:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mOptTimeSliceMs:I

    .line 65
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->yieldTimeSliceMs:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mYieldTimeSliceMs:I

    .line 66
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->processPollMs:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mProcessPollMs:I

    .line 67
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->timeBetweenOptimizationAttemptsMs:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mTimeBetweenOptimizationAttemptsMs:I

    .line 68
    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->maximumOptimizationAttempts:I

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mMaximumOptimizationAttempts:I

    .line 69
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/common/dextricks/OptimizationConfiguration;
    .locals 11

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/common/dextricks/OptimizationConfiguration;

    iget-object v1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mPrio:Lcom/facebook/common/dextricks/Prio;

    iget v2, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    iget v3, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mOptTimeSliceMs:I

    iget v4, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mYieldTimeSliceMs:I

    iget v5, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mProcessPollMs:I

    iget v6, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mTimeBetweenOptimizationAttemptsMs:I

    iget v7, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mMaximumOptimizationAttempts:I

    iget-wide v8, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mRequiredDiskSpaceForCompilation:J

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/facebook/common/dextricks/OptimizationConfiguration;-><init>(Lcom/facebook/common/dextricks/Prio;IIIIIIJLcom/facebook/common/dextricks/OptimizationConfiguration$1;)V

    return-object v0
.end method

.method public setInBackground(Z)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 1

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    .line 82
    :goto_0
    return-object p0

    .line 80
    :cond_0
    iget v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mFlags:I

    goto :goto_0
.end method

.method public setMaximumOptimizationAttempts(I)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mMaximumOptimizationAttempts:I

    .line 107
    return-object p0
.end method

.method public setOptTimeSliceMs(I)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mOptTimeSliceMs:I

    .line 87
    return-object p0
.end method

.method public setPrio(Lcom/facebook/common/dextricks/Prio;)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mPrio:Lcom/facebook/common/dextricks/Prio;

    .line 73
    return-object p0
.end method

.method public setProcessPollMs(I)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mProcessPollMs:I

    .line 97
    return-object p0
.end method

.method public setRequiredDiskSpaceForCompilation(J)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 1

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mRequiredDiskSpaceForCompilation:J

    .line 112
    return-object p0
.end method

.method public setTimeBetweenOptimizationAttemptsMs(I)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mTimeBetweenOptimizationAttemptsMs:I

    .line 102
    return-object p0
.end method

.method public setYieldTimeSliceMs(I)Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->mYieldTimeSliceMs:I

    .line 92
    return-object p0
.end method
