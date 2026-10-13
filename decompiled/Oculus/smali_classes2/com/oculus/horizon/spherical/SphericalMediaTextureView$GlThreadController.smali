.class public abstract Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
.super Ljava/lang/Object;
.source "SphericalMediaTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/SphericalMediaTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "GlThreadController"
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected mBeginRenderingRequested:Z

.field protected mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mHeight:I

.field protected final mParentListener:Landroid/view/TextureView$SurfaceTextureListener;

.field protected mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

.field protected mSurfaceTextureRecycler:Ljava/lang/Runnable;

.field protected mUsingSurfaceTextureGeneratedByTextureView:Z

.field protected mWidth:I

.field final synthetic this$0:Lcom/oculus/horizon/spherical/SphericalMediaTextureView;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/spherical/SphericalMediaTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->this$0:Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-class v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    .line 61
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mParentListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 62
    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->stop()V

    return-void
.end method

.method private onSurfaceTextureAvailableInternal(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    const-string v1, "onSurfaceTextureAvailable: [%d, %d] - %s"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    iput p4, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mWidth:I

    .line 77
    iput p5, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mHeight:I

    .line 78
    iput-object p2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    .line 79
    iput-object p3, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 82
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mBeginRenderingRequested:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->beginRendering()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mBeginRenderingRequested:Z

    .line 86
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->halt()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method public beginRendering()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 94
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    const-string v3, "id:%d beginRendering surface texture is null"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mBeginRenderingRequested:Z

    .line 116
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v2, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    const-string v1, "id:%d beginRendering already initialized"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->beginRendering()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    const-string v3, "id:%d beginRendering init surface texture id: %d"

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 105
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->getGlMediaRenderThread()Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->this$0:Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->access$000(Lcom/oculus/horizon/spherical/SphericalMediaTextureView;)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->start()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 111
    goto :goto_1
.end method

.method protected abstract getGlMediaRenderThread()Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.Thread.start"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mUsingSurfaceTextureGeneratedByTextureView:Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    move v5, p3

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->onSurfaceTextureAvailableInternal(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;II)V

    .line 71
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->this$0:Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->stop()V

    .line 136
    iput-object v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 139
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mUsingSurfaceTextureGeneratedByTextureView:Z

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->TAG:Ljava/lang/String;

    const-string v1, "id:%d onSurfaceTextureSizeChanged: [%dx%d]"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    iput p2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mWidth:I

    .line 124
    iput p3, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mHeight:I

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onSurfaceTextureSizeChanged(II)V

    .line 130
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mParentListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 145
    return-void
.end method
