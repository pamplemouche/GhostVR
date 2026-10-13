.class public Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;
.super Lcom/oculus/horizon/spherical/RenderThreadController;
.source "FullScreenRenderThreadController.java"


# instance fields
.field private mPrevLookAtPitch:F

.field private mPrevLookAtYaw:F

.field private final mSlerpPitchEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field private final mSlerpPitchStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field private final mSlerpYawEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field private final mSlerpYawStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;


# direct methods
.method private applyRotation(FF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v5, v4, v4}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->leftMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v4, v5, v4}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->rightMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 125
    return-void
.end method


# virtual methods
.method public cameraRotation(FF)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->applyRotation(FF)V

    .line 100
    return-void
.end method

.method public generateViewMatrix([F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->toMatrix([F)V

    .line 112
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    move-object v0, p1

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->toMatrix([F)V

    .line 114
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    move-object v0, p1

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 115
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSensorMatrix:[F

    move-object v0, p1

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->toMatrix([F)V

    .line 117
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    move-object v0, p1

    move v3, v1

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 118
    return-void
.end method

.method public setDefaultOffset(FF)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setDefaultOffset(FF)V

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v5, v4, v4}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->leftMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v4, v5, v4}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->rightMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 41
    return-void
.end method

.method public setDirection(FF)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mHorizonQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->toMatrix([F)V

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSensorMatrix:[F

    iget-object v4, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 67
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mIsGuideActive:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtYaw:F

    .line 68
    invoke-static {p1, v0}, Lcom/oculus/horizon/spherical/utils/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtPitch:F

    .line 69
    invoke-static {p2, v0}, Lcom/oculus/horizon/spherical/utils/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtPitch:F

    sub-float v0, p2, v0

    .line 71
    iget v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtYaw:F

    sub-float v1, p1, v1

    .line 72
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/spherical/Quaternion;->fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 73
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v0, v7, v6, v6}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->leftMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v6, v7, v6}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->rightMultiply(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 87
    iput p1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtYaw:F

    .line 88
    iput p2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mPrevLookAtPitch:F

    .line 89
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-static {v0}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcElevation([F)F

    move-result v0

    sub-float v0, p2, v0

    .line 80
    iget v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mDefaultYawOffset:F

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mTempMatrix:[F

    invoke-static {v2}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcAzimuth([F)F

    move-result v2

    sub-float/2addr v1, v2

    .line 81
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v0, v7, v6, v6}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {v0, v1, v6, v7, v6}, Lcom/oculus/horizon/spherical/Quaternion;->fromAxisRotation(FFFF)V

    goto :goto_0
.end method

.method public setInitialViewport(FF)V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setInitialViewport(FF)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->applyRotation(FF)V

    .line 32
    return-void
.end method

.method public updateDrag(FF)V
    .locals 2

    .prologue
    .line 45
    neg-float v0, p1

    neg-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->applyRotation(FF)V

    .line 46
    return-void
.end method

.method public updateSensor(Landroid/hardware/SensorEvent;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSensorMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSensorMatrix:[F

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->remapSensorMatrix([F)V

    .line 54
    return-void
.end method

.method public updateSlerp(F)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->pitchQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpPitchEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/horizon/spherical/Quaternion;->slerp(Lcom/oculus/horizon/spherical/Quaternion;Lcom/oculus/horizon/spherical/Quaternion;F)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->yawQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawStartQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FullScreenRenderThreadController;->mSlerpYawEndQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/horizon/spherical/Quaternion;->slerp(Lcom/oculus/horizon/spherical/Quaternion;Lcom/oculus/horizon/spherical/Quaternion;F)V

    .line 95
    return-void
.end method
