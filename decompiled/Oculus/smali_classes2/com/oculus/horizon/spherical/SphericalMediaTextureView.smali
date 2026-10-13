.class public abstract Lcom/oculus/horizon/spherical/SphericalMediaTextureView;
.super Landroid/view/TextureView;
.source "SphericalMediaTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
    }
.end annotation


# instance fields
.field private mAutoHorizonEnabled:Z

.field private mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialPitch:F

.field private mInitialYaw:F

.field protected mRelativeFeedControlEnabled:Z

.field protected mRendererBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

.field private mServerVerticalFOV:F

.field private mTiltInteractionEnabled:Z

.field private mTouchInteractionEnabled:Z

.field private mZoomInteractionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->build()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mRendererBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    .line 34
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mRelativeFeedControlEnabled:Z

    .line 36
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mTouchInteractionEnabled:Z

    .line 37
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mZoomInteractionEnabled:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mTiltInteractionEnabled:Z

    .line 39
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mAutoHorizonEnabled:Z

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mServerVerticalFOV:F

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/spherical/SphericalMediaTextureView;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->updateInteractionState()V

    return-void
.end method

.method private updateInteractionState()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mTouchInteractionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setTouchEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mZoomInteractionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setPinchZoomEnabled(Z)V

    .line 420
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mTiltInteractionEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setTiltEnabled(Z)V

    .line 421
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mAutoHorizonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setAutoHorizonEnabled(Z)V

    .line 422
    iget v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mServerVerticalFOV:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mServerVerticalFOV:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setPreferredVerticalFOV(FZ)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialYaw:F

    iget v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialPitch:F

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setInitialViewport(FF)V

    .line 426
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    instance-of v0, v0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    check-cast v0, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    check-cast p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    .line 430
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->getHasSphericalPhoto()Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setSphericalPhotoAvailableCallback(Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V

    .line 433
    :cond_1
    return-void
.end method


# virtual methods
.method public beginRendering()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->beginRendering()V

    .line 198
    :cond_0
    return-void
.end method

.method public cameraRotation(FF)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->cameraRotation(FF)V

    goto :goto_0
.end method

.method public disablePinchZoom()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mZoomInteractionEnabled:Z

    .line 354
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->updateInteractionState()V

    .line 355
    return-void
.end method

.method public enablePinchZoom()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mZoomInteractionEnabled:Z

    .line 359
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->updateInteractionState()V

    .line 360
    return-void
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const/high16 v0, 0x428c0000    # 70.0f

    .line 413
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getFov()F

    move-result v0

    goto :goto_0
.end method

.method protected abstract getGlThreadController(Landroid/view/TextureView$SurfaceTextureListener;)Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 390
    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getPitch()F

    move-result v0

    goto :goto_0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 397
    :cond_0
    const/4 v0, 0x0

    .line 399
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getRoll()F

    move-result v0

    goto :goto_0
.end method

.method public getRotationMatrix()[F
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 404
    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 406
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getRotationMatrix()[F

    move-result-object v0

    goto :goto_0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 383
    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getYaw()F

    move-result v0

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onDrag(FF)V

    .line 267
    :cond_0
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onDragEnd(FF)V

    .line 273
    :cond_0
    return-void
.end method

.method public onDragStart()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onDragStart()V

    .line 261
    :cond_0
    return-void
.end method

.method public onPinchZoom(F)V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onPinchZoom(F)V

    .line 292
    :cond_0
    return-void
.end method

.method public onPinchZoomEnd()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->onPinchZoomEnd()V

    .line 298
    :cond_0
    return-void
.end method

.method public setAutoHorizonEnabled(Z)V
    .locals 2

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mAutoHorizonEnabled:Z

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mAutoHorizonEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setAutoHorizonEnabled(Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public setGuideActive(Z)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setGuideActive(Z)V

    goto :goto_0
.end method

.method public setInitialViewport(FF)V
    .locals 3

    .prologue
    .line 227
    iput p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialYaw:F

    .line 228
    iput p2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialPitch:F

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    iget v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialYaw:F

    iget v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mInitialPitch:F

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setInitialViewport(FF)V

    .line 232
    :cond_0
    return-void
.end method

.method public setPreferredVerticalFOV(F)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setPreferredVerticalFOV(FZ)V

    .line 216
    :cond_0
    iput p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mServerVerticalFOV:F

    .line 217
    return-void
.end method

.method public setPreferredVerticalFOVOnZoom(F)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setPreferredVerticalFOV(FZ)V

    .line 223
    :cond_0
    iput p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mServerVerticalFOV:F

    .line 224
    return-void
.end method

.method public setProjectionType(Lcom/oculus/horizon/spherical/model/ProjectionType;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setProjectionType(Lcom/oculus/horizon/spherical/model/ProjectionType;)V

    goto :goto_0
.end method

.method public setRelativeFeedControlEnabled(Z)V
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mRelativeFeedControlEnabled:Z

    .line 251
    return-void
.end method

.method public setRendererBounds(Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mRendererBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    .line 255
    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->getGlThreadController(Landroid/view/TextureView$SurfaceTextureListener;)Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    invoke-super {p0, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 192
    :goto_1
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->access$200(Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;)V

    .line 189
    iput-object v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    .line 191
    :cond_2
    invoke-super {p0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_1
.end method

.method public tearDownRenderThread()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->access$200(Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;)V

    .line 210
    :cond_0
    return-void
.end method

.method public updateSlerp(F)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->mGlThreadController:Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;->mGlMediaRenderThread:Lcom/oculus/horizon/spherical/GlMediaRenderThread;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->updateSlerp(F)V

    goto :goto_0
.end method
