.class public Lcom/oculus/twilight/views/video/TwilightVideoPlayer;
.super Landroid/widget/FrameLayout;
.source "TwilightVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;
    }
.end annotation


# instance fields
.field private mIsHostResumed:Z

.field private mPlayOnResume:Z

.field protected mPlayer:Landroid/media/MediaPlayer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mPrepared:Z

.field protected final mProgressUpdater:Lcom/oculus/twilight/views/video/ProgressUpdater;

.field private mScaleMode:I

.field private mStartPositionMs:I

.field private mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mVideoHeight:I

.field private mVideoUri:Landroid/net/Uri;

.field protected mVideoView:Landroid/widget/VideoView;

.field private mVideoWidth:I

.field private mVolume:F

.field private mVolumeChanged:Z


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mScaleMode:I

    .line 55
    new-instance v0, Lcom/oculus/twilight/views/video/ProgressUpdater;

    invoke-direct {v0}, Lcom/oculus/twilight/views/video/ProgressUpdater;-><init>()V

    iput-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mProgressUpdater:Lcom/oculus/twilight/views/video/ProgressUpdater;

    .line 68
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->createVideoView(Lcom/facebook/react/bridge/ReactContext;)V

    .line 70
    return-void
.end method

.method private createVideoView(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 74
    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    .line 94
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 96
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 99
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 101
    invoke-direct {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setAudioFocusRequestMode()V

    .line 103
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method private getFullUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 253
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private preparePlayer()V
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 264
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-direct {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getFullUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPrepared:Z

    .line 266
    return-void
.end method

.method private relayout()V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 294
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->requestLayout()V

    .line 296
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 297
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->measure(II)V

    .line 298
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->layout(IIII)V

    .line 299
    return-void
.end method

.method protected static secondToMs(D)I
    .locals 2

    .prologue
    .line 220
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    invoke-interface {v0, p1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;->onStateChanged(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 355
    :cond_0
    return-void
.end method

.method private setAudioFocusRequestMode()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->getInstance()Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/twilight/modules/sound/TwilightSoundConfiguration;->getAllowMixing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 3

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPrepared:Z

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->preparePlayer()V

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolumeChanged:Z

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolume:F

    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolumeChanged:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getProgressUpdateMs()I
    .locals 1

    .prologue
    .line 146
    sget v0, Lcom/oculus/twilight/views/video/ProgressUpdater;->DEFAULT_POSITION_UPDATE_MS:I

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setPeriodicUpdatesEnabled(Z)V

    .line 360
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ENDED:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 361
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->ERROR:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public onHostDestroy()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mIsHostResumed:Z

    .line 247
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->release()V

    .line 248
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mIsHostResumed:Z

    .line 239
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayOnResume:Z

    .line 240
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    .line 241
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->pause()V

    .line 242
    return-void
.end method

.method public onHostResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mIsHostResumed:Z

    .line 226
    iget v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    if-ltz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 228
    iput v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    .line 230
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayOnResume:Z

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->play()V

    .line 232
    iput-boolean v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayOnResume:Z

    .line 234
    :cond_1
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 372
    sparse-switch p2, :sswitch_data_0

    .line 389
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 375
    :sswitch_0
    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    goto :goto_0

    .line 380
    :sswitch_1
    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->BUFFERING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    goto :goto_0

    .line 385
    :sswitch_2
    sget-object v1, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 303
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 305
    iget v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoHeight:I

    if-nez v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getMeasuredWidth()I

    move-result v1

    .line 311
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getMeasuredHeight()I

    move-result v0

    .line 313
    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 314
    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 316
    sub-float v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    .line 322
    iget v4, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mScaleMode:I

    packed-switch v4, :pswitch_data_0

    .line 331
    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    .line 332
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 340
    :goto_1
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 341
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 339
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 324
    :pswitch_0
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 325
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 327
    :cond_2
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 329
    goto :goto_1

    .line 334
    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 270
    iput-object p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 271
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolume:F

    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 273
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    .line 274
    iget-object v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    .line 275
    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoWidth:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoHeight:I

    if-eq v2, v1, :cond_1

    .line 276
    :cond_0
    iput v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoWidth:I

    .line 277
    iput v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoHeight:I

    .line 278
    invoke-direct {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->relayout()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    iget v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoWidth:I

    iget v2, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;->onVideoSizeDetected(II)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setPeriodicUpdatesEnabled(Z)V

    .line 287
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 289
    :cond_3
    return-void
.end method

.method public onProgress(II)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    div-int/lit16 v1, p1, 0x3e8

    div-int/lit16 v2, p2, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;->onProgress(II)V

    .line 349
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setPeriodicUpdatesEnabled(Z)V

    .line 199
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->READY:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 200
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mIsHostResumed:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 183
    invoke-virtual {p0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setPeriodicUpdatesEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PREPARING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    goto :goto_0

    .line 190
    :cond_1
    iput-boolean v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayOnResume:Z

    goto :goto_0
.end method

.method protected playFrom(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    iget-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mIsHostResumed:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 210
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 211
    invoke-virtual {p0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->setPeriodicUpdatesEnabled(Z)V

    .line 212
    sget-object v0, Lcom/oculus/twilight/views/video/ReactVideoPlayerState;->PLAYING:Lcom/oculus/twilight/views/video/ReactVideoPlayerState;

    invoke-direct {p0, v0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->sendPlayerStateToListener(Lcom/oculus/twilight/views/video/ReactVideoPlayerState;)V

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    .line 215
    iput-boolean v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayOnResume:Z

    goto :goto_0
.end method

.method protected release()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 120
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mProgressUpdater:Lcom/oculus/twilight/views/video/ProgressUpdater;

    invoke-virtual {v0}, Lcom/oculus/twilight/views/video/ProgressUpdater;->stopUpdates()V

    .line 121
    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 122
    return-void
.end method

.method public seekTo(D)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-static {p1, p2}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->secondToMs(D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 204
    return-void
.end method

.method public setPeriodicUpdatesEnabled(Z)V
    .locals 3

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mProgressUpdater:Lcom/oculus/twilight/views/video/ProgressUpdater;

    iget-object v1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->getProgressUpdateMs()I

    move-result v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/oculus/twilight/views/video/ProgressUpdater;->startUpdates(Landroid/widget/VideoView;Lcom/oculus/twilight/views/video/ProgressUpdater$ProgressCallback;I)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mProgressUpdater:Lcom/oculus/twilight/views/video/ProgressUpdater;

    invoke-virtual {v0}, Lcom/oculus/twilight/views/video/ProgressUpdater;->stopUpdates()V

    goto :goto_0
.end method

.method public setScaleMode(I)V
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mScaleMode:I

    if-eq v0, p1, :cond_0

    .line 156
    iput p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mScaleMode:I

    .line 157
    invoke-direct {p0}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->relayout()V

    .line 159
    :cond_0
    return-void
.end method

.method public setStartPosition(I)V
    .locals 2

    .prologue
    .line 125
    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->secondToMs(D)I

    move-result v0

    iput v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStartPositionMs:I

    .line 126
    return-void
.end method

.method public setStateChangedListener(Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mStateChangedListener:Lcom/oculus/twilight/views/video/TwilightVideoPlayer$PlayerStateChangedListener;

    .line 135
    return-void
.end method

.method public setVideoUri(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVideoUri:Landroid/net/Uri;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mPrepared:Z

    .line 131
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolumeChanged:Z

    .line 151
    iput p1, p0, Lcom/oculus/twilight/views/video/TwilightVideoPlayer;->mVolume:F

    .line 152
    return-void
.end method
