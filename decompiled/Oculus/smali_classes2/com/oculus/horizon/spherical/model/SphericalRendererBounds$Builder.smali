.class public Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
.super Ljava/lang/Object;
.source "SphericalRendererBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field isPitchBounded:Z

.field isYawBounded:Z

.field maxPitch:F

.field maxYaw:F

.field minPitch:F

.field minYaw:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minYaw:F

    .line 67
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxYaw:F

    .line 68
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minPitch:F

    .line 69
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxPitch:F

    .line 70
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isYawBounded:Z

    .line 71
    iput-boolean v1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isPitchBounded:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds;-><init>(Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;)V

    return-object v0
.end method

.method public setMaxPitch(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxPitch:F

    .line 90
    return-object p0
.end method

.method public setMaxYaw(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->maxYaw:F

    .line 80
    return-object p0
.end method

.method public setMinPitch(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minPitch:F

    .line 85
    return-object p0
.end method

.method public setMinYaw(F)Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->minYaw:F

    .line 75
    return-object p0
.end method

.method public setPitchBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isPitchBounded:Z

    .line 100
    return-object p0
.end method

.method public setYawBounds()Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/model/SphericalRendererBounds$Builder;->isYawBounded:Z

    .line 95
    return-object p0
.end method
