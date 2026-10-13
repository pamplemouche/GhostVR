.class public Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;
.super Lcom/oculus/horizon/media/MediaPlayerHelper;
.source "SurfaceMediaPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;
    }
.end annotation


# instance fields
.field private final mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

.field private mSurfaceView:Landroid/view/SurfaceView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;Landroid/view/SurfaceView;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/media/MediaPlayerHelper;-><init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;)V

    .line 23
    iput-object p3, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 24
    new-instance v0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;-><init>(Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->destroy()V

    .line 45
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 33
    iput-object p1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper;->mSurfaceHolderCallback:Lcom/oculus/horizon/media/SurfaceMediaPlayerHelper$SurfaceHolderCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 37
    :cond_1
    return-void
.end method
