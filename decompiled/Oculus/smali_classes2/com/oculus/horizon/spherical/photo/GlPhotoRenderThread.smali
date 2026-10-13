.class public Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;
.super Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.source "GlPhotoRenderThread.java"

# interfaces
.implements Lcom/oculus/horizon/spherical/photo/RendererActionListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

.field private mIsBitmapUploaded:Z

.field private mIsRendererReady:Z

.field private mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;IILcom/oculus/horizon/spherical/TextureRenderer;Lcom/facebook/inject/Lazy;Lcom/facebook/common/time/Clock;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/SurfaceTexture;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "II",
            "Lcom/oculus/horizon/spherical/TextureRenderer;",
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;",
            ">;",
            "Lcom/facebook/common/time/Clock;",
            "Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;",
            "Lcom/facebook/rebound/SpringSystem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;-><init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;IILcom/oculus/horizon/spherical/TextureRenderer;Lcom/facebook/inject/Lazy;Lcom/facebook/common/time/Clock;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;Z)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsRendererReady:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsBitmapUploaded:Z

    .line 67
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mMinZoomFov:F

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mDefaultYawOffset:F

    .line 69
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mLowPassAlpha:F

    .line 70
    return-void
.end method

.method private isLandscapeAspectRatio(F)Z
    .locals 1

    .prologue
    .line 273
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected acquireResources([I)V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->acquireResources([I)V

    .line 111
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getIsBitmapUploaded()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsBitmapUploaded:Z

    return v0
.end method

.method public getIsRendererReady()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsRendererReady:Z

    return v0
.end method

.method protected getPhotoTextureRenderer()Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

    check-cast v0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    return-object v0
.end method

.method protected handleMessageInternal(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/common/references/CloseableReference;

    .line 85
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 87
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 88
    instance-of v3, v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    check-cast v1, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/CloseableStaticBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->getPhotoTextureRenderer()Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;->uploadBitmapToGPU(Landroid/graphics/Bitmap;)V

    .line 91
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setIsBitmapUploaded(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    move v0, v2

    .line 105
    :goto_0
    return v0

    .line 96
    :catch_0
    move-exception v1

    .line 98
    :try_start_1
    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    invoke-interface {v2, v1}, Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;->onError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    throw v1
.end method

.method protected isAutoHorizonEnabled()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public maybeDeliverReadyForRenderingCallback()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->getIsBitmapUploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->getIsRendererReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;->onReadyForRendering()V

    .line 192
    :cond_0
    return-void
.end method

.method protected onVSync([I)V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPausedRendering:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onVSync([I)V

    goto :goto_0
.end method

.method protected releaseResources()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->releaseResources()V

    .line 116
    return-void
.end method

.method public sendMessageToUploadBitmapToGPU(Lcom/facebook/common/references/CloseableReference;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 135
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 138
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 139
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public setIsBitmapUploaded(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsBitmapUploaded:Z

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->maybeDeliverReadyForRenderingCallback()V

    .line 182
    return-void
.end method

.method public setIsRendererReady(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mIsRendererReady:Z

    .line 167
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->maybeDeliverReadyForRenderingCallback()V

    .line 168
    return-void
.end method

.method public setPanoBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;)V
    .locals 3

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setYawBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;II)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;->forcePitchAndYawBounds()V

    .line 153
    return-void
.end method

.method public setPitchBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 215
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 216
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->getSphericalBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isPitchBounded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 221
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 222
    iget v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    div-float/2addr v1, v0

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 225
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialBottom()F

    move-result v2

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    .line 226
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialTop()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 224
    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->setPitchBounds(FF)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 230
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialBottom()F

    move-result v1

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 231
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialTop()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->setPitchBounds(FF)V

    goto :goto_0
.end method

.method public setSphericalPhotoAvailableCallback(Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    .line 145
    return-void
.end method

.method public setYawBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;II)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 195
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 196
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->getSphericalBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 200
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 203
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialRight()F

    move-result v1

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 204
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialLeft()F

    move-result v2

    neg-float v2, v2

    iget v3, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->setYawBounds(FF)V

    goto :goto_0

    .line 206
    :cond_2
    iget v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    mul-float/2addr v1, v0

    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    .line 209
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialRight()F

    move-result v2

    div-float v3, v1, v4

    sub-float/2addr v2, v3

    .line 210
    invoke-virtual {p1}, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;->getPartialLeft()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    .line 208
    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->setYawBounds(FF)V

    goto :goto_0
.end method

.method protected updateProjectionMatrix(IIZ)V
    .locals 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    if-lez p1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iput p1, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    .line 241
    :cond_0
    if-lez p2, :cond_1

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iput p2, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    .line 244
    :cond_1
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPreferredFOV:F

    .line 245
    if-nez p3, :cond_2

    .line 247
    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    iget-object v3, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v3, v3, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setYawBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;II)V

    .line 248
    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    iget-object v3, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v3, v3, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setPitchBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;II)V

    .line 250
    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 251
    invoke-direct {p0, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->isLandscapeAspectRatio(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    div-float/2addr v0, v1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    int-to-float v2, v2

    div-float v3, v1, v2

    .line 256
    if-eqz p3, :cond_3

    invoke-direct {p0, v3}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->isLandscapeAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    div-float/2addr v0, v3

    move v2, v0

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->projectionMatrix:[F

    const/4 v1, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 264
    return-void

    :cond_3
    move v2, v0

    goto :goto_0
.end method
