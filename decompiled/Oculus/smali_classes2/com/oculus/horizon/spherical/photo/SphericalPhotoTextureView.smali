.class public Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;
.super Lcom/oculus/horizon/spherical/SphericalMediaTextureView;
.source "SphericalPhotoTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;
    }
.end annotation


# instance fields
.field mClock:Lcom/facebook/common/time/Clock;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

.field private mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

.field private mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

.field private mPhotoTextureRenderer:Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

.field private mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

.field mSpringSystem:Lcom/facebook/rebound/SpringSystem;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/spherical/SphericalModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_spherical_errorreporting_ErrorReporter$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/facebook/common/time/TimeModule;->$ul_$xXXcom_facebook_common_time_Clock$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/common/time/Clock;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mClock:Lcom/facebook/common/time/Clock;

    invoke-static {p0}, Lcom/oculus/horizon/spherical/SphericalModule;->$ul_$xXXcom_facebook_rebound_SpringSystem$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSpringSystem:Lcom/facebook/rebound/SpringSystem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)V

    .line 104
    new-instance v0, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mPhotoTextureRenderer:Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mRelativeFeedControlEnabled:Z

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;)Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mPhotoTextureRenderer:Lcom/oculus/horizon/spherical/photo/PhotoTextureRenderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mRendererBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;)Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    return-object v0
.end method


# virtual methods
.method public beginRendering(Lcom/facebook/common/references/CloseableReference;Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;",
            "Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    .line 117
    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->getInitialYaw()F

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->getInitialPitch()F

    move-result v1

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setInitialViewport(FF)V

    .line 119
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->setHasSphericalPhoto(Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    iget-boolean v0, v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->isPinchZoomEnabled:Z

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->enablePinchZoom()V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->beginRendering()V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    iget-wide v2, v1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    double-to-float v1, v2

    invoke-virtual {v0, v1, v4}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setPreferredVerticalFOV(FZ)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->setPanoBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    invoke-virtual {v0, p1, v4}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->sendMessageToUploadBitmapToGPU(Lcom/facebook/common/references/CloseableReference;I)V

    .line 137
    :cond_2
    return-void

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->disablePinchZoom()V

    goto :goto_0
.end method

.method protected getGlThreadController(Landroid/view/TextureView$SurfaceTextureListener;)Lcom/oculus/horizon/spherical/SphericalMediaTextureView$GlThreadController;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;

    invoke-direct {v0, p0, p1}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView$GlPhotoThreadController;-><init>(Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    return-object v0
.end method

.method public getHasSphericalPhoto()Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    return-object v0
.end method

.method public setHasSphericalPhoto(Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mHasSphericalPhoto:Lcom/oculus/horizon/spherical/photo/HasSphericalPhoto;

    .line 162
    return-void
.end method

.method public setPanoBounds(Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mPanoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    .line 158
    return-void
.end method

.method public setSphericalPhotoParams(Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mSphericalPhotoParams:Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    .line 154
    return-void
.end method

.method public updateFullScreenTexture(Lcom/facebook/common/references/CloseableReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->beginRendering()V

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/SphericalPhotoTextureView;->mGlPhotoRenderThread:Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/spherical/photo/GlPhotoRenderThread;->sendMessageToUploadBitmapToGPU(Lcom/facebook/common/references/CloseableReference;I)V

    .line 150
    :cond_0
    return-void
.end method
