.class public abstract Lcom/oculus/horizon/spherical/RenderThreadController;
.super Ljava/lang/Object;
.source "RenderThreadController.java"


# instance fields
.field public final lock:Ljava/util/concurrent/locks/Lock;

.field protected mDefaultPitchOffset:F

.field protected mDefaultYawOffset:F

.field protected final mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field protected mInitialPitch:F

.field protected mInitialYaw:F

.field protected mIsGuideActive:Z

.field protected mLowPassAlpha:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field protected final mSensorMatrix:[F

.field protected final mTempMatrix:[F

.field protected final mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field protected final mTempVector:[F

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWorldAxes:[I

.field protected final pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field protected final yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;)V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->lock:Ljava/util/concurrent/locks/Lock;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mTempVector:[F

    .line 20
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mSensorMatrix:[F

    .line 21
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mTempMatrix:[F

    .line 23
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    .line 24
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    .line 26
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    .line 28
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    .line 37
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mIsGuideActive:Z

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWorldAxes:[I

    .line 45
    iput-object p1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 46
    iput-object p2, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWindowManager:Landroid/view/WindowManager;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mSensorMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 48
    return-void
.end method


# virtual methods
.method public abstract cameraRotation(FF)V
.end method

.method public abstract generateViewMatrix([F)V
.end method

.method protected remapSensorMatrix([F)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWindowManager:Landroid/view/WindowManager;

    .line 116
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWorldAxes:[I

    .line 115
    invoke-static {v1, v2}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->determineMappedAxes(I[I)V

    .line 118
    iget-object v1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWorldAxes:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mWorldAxes:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mTempMatrix:[F

    invoke-static {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 120
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mTempMatrix:[F

    aget v1, v1, v0

    aput v1, p1, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method

.method public setDefaultOffset(FF)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mDefaultYawOffset:F

    .line 110
    iput p2, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mDefaultPitchOffset:F

    .line 111
    return-void
.end method

.method public abstract setDirection(FF)V
.end method

.method public setGuideActive(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mIsGuideActive:Z

    .line 52
    return-void
.end method

.method public setInitialViewport(FF)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mInitialYaw:F

    .line 105
    iput p2, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mInitialPitch:F

    .line 106
    return-void
.end method

.method public setLowPassAlpha(F)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/oculus/horizon/spherical/RenderThreadController;->mLowPassAlpha:F

    .line 101
    return-void
.end method

.method public abstract updateDrag(FF)V
.end method

.method public abstract updateSensor(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract updateSlerp(F)V
.end method
