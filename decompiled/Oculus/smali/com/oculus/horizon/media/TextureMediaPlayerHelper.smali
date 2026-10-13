.class public Lcom/oculus/horizon/media/TextureMediaPlayerHelper;
.super Lcom/oculus/horizon/media/MediaPlayerHelper;
.source "TextureMediaPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;,
        Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;Landroid/view/TextureView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/media/MediaPlayerHelper;-><init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;)V

    .line 27
    iput-object p3, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    .line 28
    new-instance v0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;

    invoke-direct {v0, p0, v2}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$OnScrollChangedListener;-><init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Lcom/oculus/horizon/media/TextureMediaPlayerHelper$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;

    invoke-direct {v1, p0, v2}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;-><init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Lcom/oculus/horizon/media/TextureMediaPlayerHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mSurface:Landroid/view/Surface;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mSurface:Landroid/view/Surface;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 71
    invoke-super {p0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->destroy()V

    .line 72
    return-void
.end method

.method public onMediaPrepared()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->onMediaPrepared()V

    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->play()V

    .line 65
    :cond_0
    return-void
.end method

.method public shouldPlay()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mPrepared:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 49
    iget-object v2, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 54
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 56
    sub-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
