.class public Lcom/facebook/common/errorreporting/SoftError;
.super Ljava/lang/Object;
.source "SoftError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mCause:Ljava/lang/Throwable;

.field private final mFailHarder:Z

.field private final mMessage:Ljava/lang/String;

.field private final mOnlyIfEmployeeOrBetaBuild:Z

.field private final mSamplingFrequency:I

.field private final mSyncCallToErrorHandler:Z


# direct methods
.method constructor <init>(Lcom/facebook/common/errorreporting/SoftErrorBuilder;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getCategory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mCategory:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mMessage:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mCause:Ljava/lang/Throwable;

    .line 28
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->shouldFailHarder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mFailHarder:Z

    .line 29
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getSamplingFrequency()I

    move-result v0

    iput v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mSamplingFrequency:I

    .line 30
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getOnlyIfEmployeeOrBetaBuild()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mOnlyIfEmployeeOrBetaBuild:Z

    .line 31
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->getSyncCallToErrorHandler()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mSyncCallToErrorHandler:Z

    .line 32
    return-void
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method private static varargs hashCode([Ljava/lang/Object;)I
    .locals 1
    .param p0    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    invoke-direct {v0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setCategory(Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/errorreporting/SoftErrorBuilder;->setMessage(Ljava/lang/String;)Lcom/facebook/common/errorreporting/SoftErrorBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 148
    :cond_3
    check-cast p1, Lcom/facebook/common/errorreporting/SoftError;

    .line 150
    iget-boolean v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mFailHarder:Z

    iget-boolean v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mFailHarder:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 151
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mOnlyIfEmployeeOrBetaBuild:Z

    iget-boolean v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mOnlyIfEmployeeOrBetaBuild:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 152
    :cond_5
    iget v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mSamplingFrequency:I

    iget v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mSamplingFrequency:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 153
    :cond_6
    iget-object v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mCategory:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mCategory:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/common/errorreporting/SoftError;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 154
    :cond_7
    iget-object v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mCause:Ljava/lang/Throwable;

    iget-object v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mCause:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/facebook/common/errorreporting/SoftError;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/common/errorreporting/SoftError;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 156
    :cond_9
    iget-boolean v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mSyncCallToErrorHandler:Z

    iget-boolean v3, p1, Lcom/facebook/common/errorreporting/SoftError;->mSyncCallToErrorHandler:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyIfEmployeeOrBetaBuild()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mOnlyIfEmployeeOrBetaBuild:Z

    return v0
.end method

.method public getSamplingFrequency()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mSamplingFrequency:I

    return v0
.end method

.method public getSyncCallToErrorHandler()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mSyncCallToErrorHandler:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mCategory:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mMessage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mFailHarder:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mSamplingFrequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/facebook/common/errorreporting/SoftError;->mSyncCallToErrorHandler:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/common/errorreporting/SoftError;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldFailHarder()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/SoftError;->mFailHarder:Z

    return v0
.end method
