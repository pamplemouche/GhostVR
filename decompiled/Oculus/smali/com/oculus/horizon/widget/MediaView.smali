.class public Lcom/oculus/horizon/widget/MediaView;
.super Landroid/widget/FrameLayout;
.source "MediaView.java"

# interfaces
.implements Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;


# instance fields
.field private final mImagePlaceholder:Landroid/widget/ImageView;

.field private final mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

.field private final mVideoContainer:Landroid/view/ViewGroup;

.field private final mVideoView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/widget/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    sget v1, Lcom/oculus/horizon/R$layout;->widget_media_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->image_placeholder:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImagePlaceholder:Landroid/widget/ImageView;

    .line 48
    sget v0, Lcom/oculus/horizon/R$id;->image_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->video_container:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoContainer:Landroid/view/ViewGroup;

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->video_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoView:Landroid/view/TextureView;

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->mute_volume_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/MediaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MuteVolumeButton;

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->setOnMuteChangedListener(Lcom/oculus/horizon/widget/MuteVolumeButton$OnMuteChangedListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/widget/MediaView;)Lcom/oculus/horizon/media/TextureMediaPlayerHelper;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/widget/MediaView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImagePlaceholder:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/MediaView;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/MediaView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/widget/MediaView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoContainer:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public enableMuteUnmute()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MuteVolumeButton;->setVisibility(I)V

    .line 120
    return-void
.end method

.method public getVideoCurrentPosition()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLoadingIndicator()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    return-void
.end method

.method public loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    new-instance v0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {p0}, Lcom/oculus/horizon/widget/MediaView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoView:Landroid/view/TextureView;

    invoke-direct {v0, v1, p2, v2}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;-><init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->setLooping(Z)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    new-instance v1, Lcom/oculus/horizon/widget/MediaView$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/widget/MediaView$1;-><init>(Lcom/oculus/horizon/widget/MediaView;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->setStatusListener(Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MuteVolumeButton;->mute()V

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->prepare(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 109
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->destroy()V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    .line 105
    iget-object v1, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 107
    throw v0

    .line 102
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public onMuteChanged(Lcom/oculus/horizon/widget/MuteVolumeButton;Z)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->setMute(Z)V

    .line 116
    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->pause()V

    .line 126
    :cond_0
    return-void
.end method

.method public playVideo()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->play()V

    .line 132
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImagePlaceholder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mVideoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMuteVolumeButton:Lcom/oculus/horizon/widget/MuteVolumeButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MuteVolumeButton;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->destroy()V

    .line 67
    iput-object v3, p0, Lcom/oculus/horizon/widget/MediaView;->mMediaPlayerHelper:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    .line 69
    :cond_0
    return-void
.end method

.method public setMediaUri(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 148
    return-void
.end method

.method public setMediaUri(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/widget/MediaView;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 144
    return-void
.end method
