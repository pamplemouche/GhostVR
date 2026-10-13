.class public Lcom/facebook/common/errorreporting/SoftErrorBuilder;
.super Ljava/lang/Object;
.source "SoftErrorBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCause:Ljava/lang/Throwable;

.field private mFailHarder:Z

.field private mMessage:Ljava/lang/String;

.field private mOnlyIfEmployeeOrBetaBuild:Z

.field private mSamplingFrequency:I

.field private mSyncCallToErrorHandler:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mSamplingFrequency:I

    .line 20
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/common/errorreporting/SoftError;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/facebook/common/errorreporting/SoftError;

    invoke-direct {v0, p0}, Lcom/facebook/common/errorreporting/SoftError;-><init>(Lcom/facebook/common/errorreporting/SoftErrorBuilder;)V

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyIfEmployeeOrBetaBuild()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mOnlyIfEmployeeOrBetaBuild:Z

    return v0
.end method

.method public getSamplingFrequency()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mSamplingFrequency:I

    return v0
.end method

.method public getSyncCallToErrorHandler()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mSyncCallToErrorHandler:Z

    return v0
.end method

.method public setCategory(Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mCategory:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setCause(Ljava/lang/Throwable;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mCause:Ljava/lang/Throwable;

    .line 83
    return-object p0
.end method

.method public setFailHarder(Z)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mFailHarder:Z

    .line 105
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mMessage:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public setSamplingFrequency(I)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mSamplingFrequency:I

    .line 133
    return-object p0
.end method

.method public shouldFailHarder()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->mFailHarder:Z

    return v0
.end method
