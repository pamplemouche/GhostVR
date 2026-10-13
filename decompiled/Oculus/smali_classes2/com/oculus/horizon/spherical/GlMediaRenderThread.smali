.class public Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.super Landroid/os/HandlerThread;
.source "GlMediaRenderThread.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;,
        Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;,
        Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;
    }
.end annotation


# static fields
.field private static mClock:Lcom/facebook/common/time/Clock;

.field private static sAvailableSensor:I


# instance fields
.field private final MVP:[F

.field protected final T:[F

.field private final TAG:Ljava/lang/String;

.field private mBasePhotoVerticalFOV:F

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

.field protected final mController:Lcom/oculus/horizon/spherical/RenderThreadController;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "RenderThreadController.lock"
    .end annotation
.end field

.field protected mDefaultPitchOffset:F

.field protected mDefaultYawOffset:F

.field protected final mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field private mInitialPitch:F

.field private mInitialYaw:F

.field private mIsAutoHorizonEnabled:Z

.field private mIsAutoHorizonSet:Z

.field private mIsFirstFOVUpdate:Z

.field private mIsPinchZoomEnabled:Z

.field private mIsSensorReady:Z

.field protected volatile mIsTearingDown:Z

.field protected mIsVideoThread:Z

.field private mLastException:Ljava/lang/Throwable;

.field protected mLowPassAlpha:F

.field protected mMaxZoomFov:F

.field protected mMinZoomFov:F

.field protected mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

.field private mOutputSurfaceRetryCount:I

.field protected volatile mPausedRendering:Z

.field protected mPreferredFOV:F

.field private final mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mRotationMatrix:[F

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldSetInitialViewingDirection:Z

.field protected mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

.field protected mSurfaceTextureRecycler:Ljava/lang/Runnable;

.field protected final mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

.field private mTiltEnabled:Z

.field private mTouchEnabled:Z

.field private final mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ViewportOrientationTracker.lock"
    .end annotation
.end field

.field protected final mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "ViewParam.lock"
    .end annotation
.end field

.field protected final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xf

    sput v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->sAvailableSensor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;Ljava/lang/Runnable;IILcom/oculus/horizon/spherical/TextureRenderer;Lcom/facebook/inject/Lazy;Lcom/facebook/common/time/Clock;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;Z)V
    .locals 3
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "GlMediaRenderThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$RotationSensorEventListener;-><init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 77
    new-instance v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ChoreographerCallback;-><init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    .line 87
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRotationMatrix:[F

    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->T:[F

    .line 91
    new-instance v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    .line 97
    new-instance v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    .line 109
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mDefaultYawOffset:F

    .line 110
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mDefaultPitchOffset:F

    .line 111
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLowPassAlpha:F

    .line 112
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mMaxZoomFov:F

    .line 113
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mMinZoomFov:F

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonEnabled:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mShouldSetInitialViewingDirection:Z

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsSensorReady:Z

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonSet:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsFirstFOVUpdate:Z

    .line 128
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mBasePhotoVerticalFOV:F

    .line 130
    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialYaw:F

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialPitch:F

    .line 151
    iput-object p2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 152
    iput-object p3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    .line 153
    iput-object p4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

    .line 154
    iput-object p7, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

    .line 155
    iput-object p8, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 156
    sput-object p9, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mClock:Lcom/facebook/common/time/Clock;

    .line 157
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    .line 158
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    .line 159
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mWindowManager:Landroid/view/WindowManager;

    .line 160
    new-instance v0, Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    const v1, 0x3bb851ec    # 0.005625f

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFriction(F)V

    .line 162
    if-eqz p12, :cond_0

    new-instance v0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v0, v1, v2, p10}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;-><init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;)V

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p5, p6, v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->updateProjectionMatrix(IIZ)V

    .line 169
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {v0, v1, v2, p10, p11}, Lcom/oculus/horizon/spherical/RubberBandRenderThreadController;-><init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;Lcom/facebook/rebound/SpringSystem;)V

    goto :goto_0
.end method

.method static synthetic access$1002(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonSet:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->tearDown()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Landroid/view/Choreographer$FrameCallback;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Landroid/view/Choreographer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsSensorReady:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Z)Z
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsSensorReady:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialYaw:F

    return v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/spherical/GlMediaRenderThread;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialPitch:F

    return v0
.end method

.method private generateFOVUpdate(F)F
    .locals 2

    .prologue
    .line 433
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 434
    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mMaxZoomFov:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 435
    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mMinZoomFov:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 436
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsVideoThread:Z

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mBasePhotoVerticalFOV:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mBasePhotoVerticalFOV:F

    goto :goto_0
.end method

.method private static getAvailableSensorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 751
    sget v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->sAvailableSensor:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "TYPE_GAME_ROTATION_VECTOR"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "TYPE_ROTATION_VECTOR"

    goto :goto_0
.end method

.method private handleZoom(F)V
    .locals 2

    .prologue
    .line 421
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->generateFOVUpdate(F)F

    move-result v0

    .line 422
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->setPreferredVerticalFOV(FZ)V

    .line 423
    return-void
.end method

.method private registerSensorListener()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsSensorReady:Z

    .line 538
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->sAvailableSensor:I

    .line 541
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 539
    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 543
    if-nez v0, :cond_0

    .line 544
    const/16 v0, 0xb

    sput v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->sAvailableSensor:I

    .line 545
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    sget v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->sAvailableSensor:I

    .line 548
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 546
    invoke-virtual {v0, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    .line 550
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 551
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".registerSensorListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device failed to register listener for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 554
    invoke-static {}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getAvailableSensorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-interface {v0, v2, v3}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 556
    :cond_0
    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 558
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".registerSensorListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device failed to register listener for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 561
    invoke-static {}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getAvailableSensorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_1
    return-void
.end method

.method private tearDown()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    const-string v1, "tearDown called for thread: %d"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->quit()Z

    .line 246
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->releaseResources()V

    .line 247
    return-void
.end method

.method private updateMatrices([I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 604
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    aput v0, p1, v1

    .line 608
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    aput v0, p1, v2

    .line 610
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    instance-of v0, v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    .line 612
    invoke-interface {v0}, Lcom/oculus/horizon/spherical/HasRubberBanding;->maybeStopFlingAndDoRubberBanding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 626
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 628
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 629
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRotationMatrix:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/RenderThreadController;->generateViewMatrix([F)V

    .line 630
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 632
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->projectionMatrix:[F

    iget-object v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRotationMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 634
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 635
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->aspectRatio:F

    .line 636
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    iput v1, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->verticalFOV:F

    .line 639
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    invoke-static {v1}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcAzimuth([F)F

    move-result v1

    iget v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mDefaultYawOffset:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->azimuth:F

    .line 640
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    invoke-static {v1}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcElevation([F)F

    move-result v1

    iput v1, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->elevation:F

    .line 641
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    invoke-static {v1}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcRoll([F)F

    move-result v1

    iput v1, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->roll:F

    .line 642
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 616
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v2}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$300(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 617
    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$400(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 618
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$302(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I

    .line 619
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$402(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I

    .line 620
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v3, v3, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 621
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {v3, v0, v2}, Lcom/oculus/horizon/spherical/RenderThreadController;->updateDrag(FF)V

    .line 622
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected acquireResources([I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 485
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    const-string v1, "id:%d acquireResources"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 487
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->createOutputSurface()V

    .line 488
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 490
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlMediaRenderThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Succeeded creating an OutputSurface after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retries!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLastException:Ljava/lang/Throwable;

    .line 491
    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLastException:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->registerSensorListener()V

    .line 533
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 534
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 500
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create OutputSurface"

    invoke-interface {v0, v2, v3, v1}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    :cond_1
    iput-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLastException:Ljava/lang/Throwable;

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->release()V

    .line 506
    iput-object v5, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    .line 508
    :cond_2
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    .line 509
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 510
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlMediaRenderThread-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create OutputSurface after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurfaceRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retries! Aborting!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    invoke-interface {v0, v2, v3, v1}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    iput-object v5, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLastException:Ljava/lang/Throwable;

    .line 519
    throw v1

    .line 524
    :cond_3
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 528
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 525
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public beginRendering()V
    .locals 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPausedRendering:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPausedRendering:Z

    .line 320
    invoke-direct {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->registerSensorListener()V

    .line 322
    :cond_0
    return-void
.end method

.method public cameraRotation(FF)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 457
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->cameraRotation(FF)V

    .line 458
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    return-void
.end method

.method protected createOutputSurface()V
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRenderSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    .line 479
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->makeCurrent()V

    .line 480
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/TextureRenderer;->surfaceCreated()V

    .line 481
    return-void
.end method

.method public getFov()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    return v0
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->elevation:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->roll:F

    return v0
.end method

.method public getRotationMatrix()[F
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mRotationMatrix:[F

    return-object v0
.end method

.method public getYaw()F
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->azimuth:F

    return v0
.end method

.method public halt()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsTearingDown:Z

    .line 254
    return-void
.end method

.method protected handleMessageInternal(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method protected isAutoHorizonEnabled()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonEnabled:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method public onDrag(FF)V
    .locals 5

    .prologue
    .line 356
    sget-object v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mClock:Lcom/facebook/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/common/time/Clock;->now()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 358
    neg-float v1, p1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v2, v2, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    iget v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    invoke-static {v1, v2, v3}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->pixelsToDegrees(FIF)F

    move-result v1

    .line 359
    neg-float v2, p2

    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v3, v3, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    iget v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    invoke-static {v2, v3, v4}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->pixelsToDegrees(FIF)F

    move-result v2

    .line 360
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$300(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$302(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I

    .line 361
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v3}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$400(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$402(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I

    .line 362
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v3, v3, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v3, v3, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 364
    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v3, v1, v2}, Lcom/oculus/horizon/spherical/RenderThreadController;->updateDrag(FF)V

    .line 365
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v1, v1, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v1, v1, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 367
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lastDragTimeStamp:J

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mVPTracker:Lcom/oculus/horizon/spherical/ViewportOrientationTracker;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 369
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 9

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 373
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    .line 374
    invoke-static {p1, v0, v1}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->pixelsToDegrees(FIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    .line 376
    invoke-static {p2, v0, v1}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->pixelsToDegrees(FIF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$300(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v1

    .line 378
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    invoke-static {v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->access$400(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I

    move-result v2

    .line 379
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    add-int/lit16 v5, v1, -0x2d0

    add-int/lit16 v6, v1, 0x2d0

    add-int/lit16 v7, v2, -0x2d0

    add-int/lit16 v8, v2, 0x2d0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 390
    return-void
.end method

.method public onDragStart()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    instance-of v0, v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/HasRubberBanding;->onDragStart()V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 353
    return-void
.end method

.method public onPinchZoom(F)V
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsPinchZoomEnabled:Z

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->handleZoom(F)V

    goto :goto_0
.end method

.method public onPinchZoomEnd()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsPinchZoomEnabled:Z

    if-nez v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    instance-of v0, v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    check-cast v0, Lcom/oculus/horizon/spherical/HasRubberBanding;

    invoke-interface {v0}, Lcom/oculus/horizon/spherical/HasRubberBanding;->onZoomEnd()V

    goto :goto_0
.end method

.method protected onPrepareForRendering([I)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 211
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    aput v1, p1, v0

    .line 212
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    aput v1, p1, v0

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mLowPassAlpha:F

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/RenderThreadController;->setLowPassAlpha(F)V

    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mDefaultYawOffset:F

    iget v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mDefaultPitchOffset:F

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setDefaultOffset(FF)V

    .line 217
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->acquireResources([I)V

    .line 219
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTiltEnabled:Z

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 466
    :cond_0
    return-void
.end method

.method public onSurfaceTextureSizeChanged(II)V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->updateProjectionMatrix(IIZ)V

    .line 475
    return-void
.end method

.method protected onVSync([I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPausedRendering:Z

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->updateMatrices([I)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->MVP:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->T:[F

    aget v3, p1, v5

    aget v4, p1, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/spherical/TextureRenderer;->drawFrame([F[FII)V

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->swapBuffers()V

    .line 232
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonSet:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/oculus/horizon/spherical/photo/RendererActionListener;

    if-eqz v0, :cond_0

    .line 233
    iput-boolean v5, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonSet:Z

    .line 234
    check-cast p0, Lcom/oculus/horizon/spherical/photo/RendererActionListener;

    invoke-interface {p0, v6}, Lcom/oculus/horizon/spherical/photo/RendererActionListener;->setIsRendererReady(Z)V

    goto :goto_0
.end method

.method protected releaseResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 566
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    const-string v1, "id:%d releaseResources"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mChoreographerCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 568
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 570
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    if-eqz v0, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 572
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->makeCurrent()V

    .line 577
    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 578
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->swapBuffers()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    invoke-virtual {v1}, Lcom/oculus/horizon/spherical/gl/GlOutputSurface;->release()V

    .line 590
    iput-object v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mOutputSurface:Lcom/oculus/horizon/spherical/gl/GlOutputSurface;

    .line 592
    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 596
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureErrorHandler:Ljava/lang/Runnable;

    .line 597
    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    :cond_1
    iput-object v4, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    .line 601
    return-void

    .line 579
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 581
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mFbErrorReporterLazy:Lcom/facebook/inject/Lazy;

    .line 582
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".releaseResources"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error encountered in clearing the SurfaceTexture"

    .line 583
    invoke-interface {v0, v2, v3, v1}, Lcom/oculus/horizon/spherical/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    const/4 v0, 0x1

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mSurfaceTextureRecycler:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public setAutoHorizonEnabled(Z)V
    .locals 0

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsAutoHorizonEnabled:Z

    .line 262
    return-void
.end method

.method public setDirection(FF)V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 445
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setDirection(FF)V

    .line 446
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 447
    return-void
.end method

.method public setGuideActive(Z)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 394
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/RenderThreadController;->setGuideActive(Z)V

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 396
    return-void
.end method

.method public setInitialViewport(FF)V
    .locals 1

    .prologue
    .line 286
    iput p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialYaw:F

    .line 287
    iput p2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mInitialPitch:F

    .line 289
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mShouldSetInitialViewingDirection:Z

    if-nez v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mShouldSetInitialViewingDirection:Z

    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setInitialViewport(FF)V

    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public setPinchZoomEnabled(Z)V
    .locals 0

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsPinchZoomEnabled:Z

    .line 270
    return-void
.end method

.method public setPreferredVerticalFOV(FZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 277
    iput p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    .line 278
    iget-boolean v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsFirstFOVUpdate:Z

    if-eqz v1, :cond_0

    .line 279
    iget v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    iput v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mBasePhotoVerticalFOV:F

    .line 280
    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mIsFirstFOVUpdate:Z

    .line 282
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v2, v2, v0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->updateProjectionMatrix(IIZ)V

    .line 283
    return-void
.end method

.method public setProjectionType(Lcom/oculus/horizon/spherical/model/ProjectionType;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTextureRenderer:Lcom/oculus/horizon/spherical/TextureRenderer;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/spherical/TextureRenderer;->setProjectionType(Lcom/oculus/horizon/spherical/model/ProjectionType;)V

    .line 304
    return-void
.end method

.method public setTiltEnabled(Z)V
    .locals 0

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTiltEnabled:Z

    .line 274
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mTouchEnabled:Z

    .line 258
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;

    .line 176
    invoke-virtual {p0}, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/spherical/GlMediaRenderThread$1;-><init>(Lcom/oculus/horizon/spherical/GlMediaRenderThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateProjectionMatrix(IIZ)V
    .locals 6

    .prologue
    .line 650
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 651
    if-lez p1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iput p1, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    .line 654
    :cond_0
    if-lez p2, :cond_1

    .line 655
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iput p2, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget v1, v1, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->viewHeight:I

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 658
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->projectionMatrix:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mPreferredFOV:F

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 659
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mViewParam:Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 660
    return-void
.end method

.method public updateSlerp(F)V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 451
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/spherical/RenderThreadController;->updateSlerp(F)V

    .line 452
    iget-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread;->mController:Lcom/oculus/horizon/spherical/RenderThreadController;

    iget-object v0, v0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
    return-void
.end method
