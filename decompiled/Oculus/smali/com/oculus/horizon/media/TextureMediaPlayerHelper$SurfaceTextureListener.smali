.class Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "TextureMediaPlayerHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/media/TextureMediaPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Lcom/oculus/horizon/media/TextureMediaPlayerHelper$1;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;-><init>(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-static {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->access$200(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    iget-boolean v0, v0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->access$202(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Landroid/view/Surface;)Landroid/view/Surface;

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    iget-object v0, v0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-static {v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->access$200(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->shouldPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->play()V

    .line 101
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->pause()V

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    invoke-static {v0, v1}, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->access$202(Lcom/oculus/horizon/media/TextureMediaPlayerHelper;Landroid/view/Surface;)Landroid/view/Surface;

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper$SurfaceTextureListener;->this$0:Lcom/oculus/horizon/media/TextureMediaPlayerHelper;

    iget-object v0, v0, Lcom/oculus/horizon/media/TextureMediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
