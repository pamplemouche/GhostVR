.class public Lcom/oculus/twilight/views/video/OCLoopedVideoView;
.super Lcom/oculus/twilight/views/video/TwilightVideoPlayer;
.source "OCLoopedVideoView.java"


# instance fields
.field private mEndTimeMs:I

.field private mLoopFromTimeMs:I

.field private mStartTimeMs:I


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->setScaleMode(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->commitChanges()V

    .line 35
    iget v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mStartTimeMs:I

    iget v1, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mEndTimeMs:I

    if-ne v0, v1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->pause()V

    .line 38
    iget v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mStartTimeMs:I

    if-ltz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mStartTimeMs:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mStartTimeMs:I

    invoke-virtual {p0, v0}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->playFrom(I)V

    goto :goto_0
.end method

.method protected getProgressUpdateMs()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x14

    return v0
.end method

.method public onProgress(II)V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->onProgress(II)V

    .line 61
    iget v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mEndTimeMs:I

    if-lt p1, v0, :cond_0

    .line 62
    iget v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mLoopFromTimeMs:I

    if-ltz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mLoopFromTimeMs:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->pause()V

    goto :goto_0
.end method

.method public setSection(DDD)V
    .locals 3

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->secondToMs(D)I

    move-result v0

    iput v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mStartTimeMs:I

    .line 54
    invoke-static {p3, p4}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->secondToMs(D)I

    move-result v0

    iput v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mEndTimeMs:I

    .line 55
    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-ltz v0, :cond_0

    invoke-static {p5, p6}, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->secondToMs(D)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/oculus/twilight/views/video/OCLoopedVideoView;->mLoopFromTimeMs:I

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
