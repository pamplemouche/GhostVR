.class public Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;
.super Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
.source "SphericalPhotoTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlPhotoThreadController"
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;-><init>(Lcom/oculus/horizon/spherical/SphericalMediaTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 45
    const-class v0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic beginRendering()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->beginRendering()V

    return-void
.end method

.method protected bridge synthetic getGlMediaRenderThread()Lcom/oculus/horizon/spherical/GlMediaRenderThread;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->getGlMediaRenderThread()Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    move-result-object v0

    return-object v0
.end method

.method protected getGlMediaRenderThread()Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;
    .locals 13

    .prologue
    .line 53
    iget-object v12, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    new-instance v0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 55
    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

    iget v5, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mWidth:I

    iget v6, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mHeight:I

    iget-object v7, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 61
    invoke-static {v7}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$100(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    move-result-object v7

    iget-object v8, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iget-object v8, v8, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    iget-object v9, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iget-object v9, v9, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mClock:Lcom/facebook/common/time/Clock;

    iget-object v10, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 64
    invoke-static {v10}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$200(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v10

    iget-object v11, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    iget-object v11, v11, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-direct/range {v0 .. v11}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;IILcom/oculus/horizon/spherical/TextureRenderer;Lcom/facebook/inject/Lazy;Lcom/facebook/common/time/Clock;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;)V

    .line 53
    invoke-static {v12, v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$002(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$000(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    move-result-object v0

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mParentListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 74
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->TAG:Ljava/lang/String;

    const-string v1, "id:%d onVideoSurfaceDestroyed Render ST:%d"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->mParentListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 80
    invoke-super {p0, p1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$000(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$000(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;->this$0:Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-static {v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->access$300(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setPanoBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 89
    return-void
.end method

.method public bridge synthetic onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
