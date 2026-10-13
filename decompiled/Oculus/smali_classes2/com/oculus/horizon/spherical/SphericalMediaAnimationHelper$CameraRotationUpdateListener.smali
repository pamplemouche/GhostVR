.class Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;
.super Ljava/lang/Object;
.source "SphericalMediaAnimationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraRotationUpdateListener"
.end annotation


# instance fields
.field private currentProgress:F

.field private mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;

.field private pitch:F

.field private yaw:F


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 120
    iget v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->currentProgress:F

    sub-float v1, v0, v1

    .line 121
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;

    invoke-interface {v2}, Lcom/oculus/horizon/spherical/HasGlToUIBridge;->canSupportGltoUIBridge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;

    .line 123
    invoke-interface {v2}, Lcom/oculus/horizon/spherical/HasGlToUIBridge;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v2

    iget v3, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->yaw:F

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->pitch:F

    mul-float/2addr v1, v4

    .line 124
    invoke-virtual {v2, v3, v1}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->cameraRotation(FF)V

    .line 126
    :cond_0
    iput v0, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraRotationUpdateListener;->currentProgress:F

    .line 127
    return-void
.end method
