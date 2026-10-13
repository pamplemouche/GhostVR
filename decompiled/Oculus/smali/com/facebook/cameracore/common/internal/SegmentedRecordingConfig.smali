.class public Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;
.super Ljava/lang/Object;
.source "SegmentedRecordingConfig.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsSegmentedRecordingEnabled:Z

.field private final mSegmentedRecordingCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

.field private final mUseSegmentedEncoder:Z

.field private final mUseTwoPhaseUploadingIfPossible:Z

.field private final mVideoHeight:I

.field private final mVideoWidth:I


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSegmentedRecordingCallback()Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mSegmentedRecordingCallback:Lcom/facebook/cameracore/common/internal/SegmentedRecordingCallback;

    return-object v0
.end method

.method public getUseSegmentedEncoder()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mUseSegmentedEncoder:Z

    return v0
.end method

.method public getUseTwoPhaseUploadingIfPossible()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mUseTwoPhaseUploadingIfPossible:Z

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mVideoWidth:I

    return v0
.end method

.method public isSegmentedRecordingEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/facebook/cameracore/common/internal/SegmentedRecordingConfig;->mIsSegmentedRecordingEnabled:Z

    return v0
.end method
