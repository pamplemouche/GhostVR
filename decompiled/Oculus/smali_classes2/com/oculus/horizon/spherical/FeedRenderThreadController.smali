.class public Lcom/oculus/horizon/spherical/FeedRenderThreadController;
.super Lcom/oculus/horizon/spherical/RenderThreadController;
.source "FeedRenderThreadController.java"


# instance fields
.field protected mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

.field protected mMaxPitch:F

.field protected mMaxYaw:F

.field protected mMinPitch:F

.field protected mMinYaw:F

.field protected mPitch:F

.field private mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

.field private mProgress:F

.field private mSlerpPitchEnd:F

.field private mSlerpPitchStart:F

.field private mSlerpYawEnd:F

.field private mSlerpYawStart:F

.field protected mYaw:F


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;-><init>(Landroid/hardware/SensorManager;Landroid/view/WindowManager;)V

    .line 27
    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    .line 28
    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    .line 36
    iput-object p3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->getMaxYaw()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxYaw:F

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->getMinYaw()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinYaw:F

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->getMinPitch()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinPitch:F

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->getMaxPitch()F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxPitch:F

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isPitchBounded()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    return-void
.end method

.method private isSensorEventOutlier(FF)Z
    .locals 3

    .prologue
    .line 113
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41700000    # 15.0f

    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mLowPassAlpha:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cameraRotation(FF)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->incrementPitchYaw(FFZ)V

    .line 145
    return-void
.end method

.method protected generateDampeningAlpha(FFFF)F
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    .line 195
    const/high16 v0, 0x3f800000    # 1.0f

    .line 196
    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    add-float v1, p3, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p1, p3

    if-lez v1, :cond_1

    .line 197
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    cmpl-float v1, p2, v3

    if-lez v1, :cond_0

    sub-float v1, p4, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    cmpg-float v1, p1, p4

    if-gez v1, :cond_0

    .line 199
    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public generateViewMatrix([F)V
    .locals 11

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 149
    invoke-static {p1, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 150
    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 151
    iget v7, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    move-object v5, p1

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 152
    return-void
.end method

.method public getSphericalBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    return-object v0
.end method

.method protected incrementPitchYaw(FFZ)V
    .locals 3

    .prologue
    .line 179
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinPitch:F

    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxPitch:F

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->generateDampeningAlpha(FFFF)F

    move-result v0

    .line 180
    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    .line 181
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    .line 182
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxPitch:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mBounds:Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-virtual {v0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinYaw:F

    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxYaw:F

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->generateDampeningAlpha(FFFF)F

    move-result v0

    .line 186
    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    mul-float/2addr v0, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    .line 187
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    .line 188
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxYaw:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    goto :goto_0
.end method

.method public setDefaultOffset(FF)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setDefaultOffset(FF)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->incrementPitchYaw(FFZ)V

    .line 58
    return-void
.end method

.method public setDirection(FF)V
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchStart:F

    .line 122
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/spherical/RenderThreadUtil;->normalizeYaw(FZ)F

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawStart:F

    .line 123
    iput p2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchEnd:F

    .line 124
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mDefaultYawOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawEnd:F

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mProgress:F

    .line 126
    return-void
.end method

.method public setInitialViewport(FF)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/spherical/RenderThreadController;->setInitialViewport(FF)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->incrementPitchYaw(FFZ)V

    .line 50
    iput p2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchEnd:F

    .line 51
    iput p1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawEnd:F

    .line 52
    return-void
.end method

.method public setPitchBounds(FF)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxPitch:F

    .line 175
    iput p2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinPitch:F

    .line 176
    return-void
.end method

.method public setYawBounds(FF)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMaxYaw:F

    .line 163
    iput p2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mMinYaw:F

    .line 164
    return-void
.end method

.method public updateDrag(FF)V
    .locals 3

    .prologue
    .line 64
    neg-float v0, p2

    neg-float v1, p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->incrementPitchYaw(FFZ)V

    .line 65
    return-void
.end method

.method public updateSensor(Landroid/hardware/SensorEvent;)V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getQuaternionFromVector([F[F)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/oculus/horizon/spherical/Quaternion;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->fromArray([F)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/spherical/Quaternion;->fromArray([F)V

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget v5, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mLowPassAlpha:F

    invoke-virtual {v0, v2, v3, v5}, Lcom/oculus/horizon/spherical/Quaternion;->slerp(Lcom/oculus/horizon/spherical/Quaternion;Lcom/oculus/horizon/spherical/Quaternion;F)V

    .line 79
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget v2, v2, Lcom/oculus/horizon/spherical/Quaternion;->x:F

    aput v2, v0, v1

    .line 80
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget v2, v2, Lcom/oculus/horizon/spherical/Quaternion;->y:F

    aput v2, v0, v6

    .line 81
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget v2, v2, Lcom/oculus/horizon/spherical/Quaternion;->z:F

    aput v2, v0, v7

    .line 82
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_1

    .line 83
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget v3, v3, Lcom/oculus/horizon/spherical/Quaternion;->w:F

    aput v3, v0, v2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->remapSensorMatrix([F)V

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    iget-object v3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSensorMatrix:[F

    invoke-static {v0, v2, v3}, Landroid/hardware/SensorManager;->getAngleChange([F[F[F)V

    move v0, v1

    .line 89
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSensorMatrix:[F

    iget-object v3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    aget v3, v3, v0

    aput v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempMatrix:[F

    .line 95
    invoke-static {v0}, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->calcElevation([F)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 96
    iget-object v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    aget v2, v2, v6

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 101
    iget-object v3, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    aget v3, v3, v7

    neg-float v3, v3

    float-to-double v4, v3

    float-to-double v6, v0

    .line 102
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempVector:[F

    aget v0, v0, v1

    float-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->isSensorEventOutlier(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPreviousSensorQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    iget-object v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mTempQuaternion:Lcom/oculus/horizon/spherical/Quaternion;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/spherical/Quaternion;->fromQuaternion(Lcom/oculus/horizon/spherical/Quaternion;)V

    .line 110
    :goto_1
    return-void

    .line 109
    :cond_3
    invoke-virtual {p0, v2, v0, v1}, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->incrementPitchYaw(FFZ)V

    goto :goto_1
.end method

.method public updateSlerp(F)V
    .locals 4

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 130
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchEnd:F

    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchStart:F

    sub-float v1, v0, v1

    .line 131
    iget v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawEnd:F

    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawStart:F

    sub-float/2addr v0, v2

    .line 132
    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 133
    sub-float/2addr v0, v3

    .line 137
    :cond_0
    :goto_0
    iget v2, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpPitchStart:F

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mPitch:F

    .line 138
    iget v1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mSlerpYawStart:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mYaw:F

    .line 139
    iput p1, p0, Lcom/oculus/horizon/spherical/FeedRenderThreadController;->mProgress:F

    .line 140
    return-void

    .line 134
    :cond_1
    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 135
    add-float/2addr v0, v3

    goto :goto_0
.end method
