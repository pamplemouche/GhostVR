.class public Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;
.super Ljava/lang/Object;
.source "SphericalRendererBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    }
.end annotation


# instance fields
.field private final isPitchBounded:Z

.field private final isYawBounded:Z

.field private final maxPitch:F

.field private final maxYaw:F

.field private final minPitch:F

.field private final minYaw:F


# direct methods
.method constructor <init>(Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minYaw:F

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->minYaw:F

    .line 56
    iget v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxYaw:F

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->maxYaw:F

    .line 57
    iget v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minPitch:F

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->minPitch:F

    .line 58
    iget v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxPitch:F

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->maxPitch:F

    .line 59
    iget-boolean v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isPitchBounded:Z

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isPitchBounded:Z

    .line 60
    iget-boolean v0, p1, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isYawBounded:Z

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getMaxPitch()F
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->maxPitch:F

    return v0
.end method

.method public getMaxYaw()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->maxYaw:F

    return v0
.end method

.method public getMinPitch()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->minPitch:F

    return v0
.end method

.method public getMinYaw()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->minYaw:F

    return v0
.end method

.method public isPitchBounded()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isPitchBounded:Z

    return v0
.end method

.method public isYawBounded()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;->isYawBounded:Z

    return v0
.end method
