.class Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraLookAtUpdateListener;
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
    name = "CameraLookAtUpdateListener"
.end annotation


# instance fields
.field private mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraLookAtUpdateListener;->mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;

    invoke-interface {v1}, Lcom/oculus/horizon/spherical/HasGlToUIBridge;->canSupportGltoUIBridge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/oculus/horizon/spherical/SphericalMediaAnimationHelper$CameraLookAtUpdateListener;->mHasGlToUIBridge:Lcom/oculus/horizon/spherical/HasGlToUIBridge;

    invoke-interface {v1}, Lcom/oculus/horizon/spherical/HasGlToUIBridge;->get360TextureView()Lcom/oculus/horizon/spherical/SphericalMediaTextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/spherical/SphericalMediaTextureView;->updateSlerp(F)V

    .line 101
    :cond_0
    return-void
.end method
