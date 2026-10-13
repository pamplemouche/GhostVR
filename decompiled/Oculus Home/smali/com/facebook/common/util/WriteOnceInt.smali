.class public final Lcom/facebook/common/util/WriteOnceInt;
.super Ljava/lang/Object;
.source "WriteOnceInt.java"


# instance fields
.field private mIsSet:Z

.field private mValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    .line 19
    iput p1, p0, Lcom/facebook/common/util/WriteOnceInt;->mValue:I

    .line 20
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 30
    :cond_0
    iget v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mValue:I

    return v0
.end method

.method public isSet()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    return v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 37
    :cond_0
    iput p1, p0, Lcom/facebook/common/util/WriteOnceInt;->mValue:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    .line 39
    return-void
.end method

.method public trySet(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 42
    iget-boolean v1, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    if-eqz v1, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 45
    :cond_0
    iput p1, p0, Lcom/facebook/common/util/WriteOnceInt;->mValue:I

    .line 46
    iput-boolean v0, p0, Lcom/facebook/common/util/WriteOnceInt;->mIsSet:Z

    goto :goto_0
.end method
