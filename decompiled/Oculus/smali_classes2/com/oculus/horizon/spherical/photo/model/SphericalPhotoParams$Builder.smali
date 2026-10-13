.class public Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;
.super Ljava/lang/Object;
.source "SphericalPhotoParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field croppedAreaImageHeightPixels:I

.field croppedAreaImageWidthPixels:I

.field cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

.field fullPanoHeightPixels:I

.field fullPanoWidthPixels:I

.field initialViewHeadingDegrees:D

.field initialViewPitchDegrees:D

.field initialViewRollDegrees:D

.field initialViewVerticalFov:D

.field isPinchZoomEnabled:Z

.field panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

.field photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->fullPanoWidthPixels:I

    .line 192
    iput v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->croppedAreaImageWidthPixels:I

    .line 193
    iput v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->fullPanoHeightPixels:I

    .line 194
    iput v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->croppedAreaImageHeightPixels:I

    .line 195
    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewHeadingDegrees:D

    .line 196
    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewPitchDegrees:D

    .line 197
    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewRollDegrees:D

    .line 198
    const-wide v0, 0x4051800000000000L    # 70.0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewVerticalFov:D

    .line 202
    iput-boolean v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->isPinchZoomEnabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;-><init>(Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;)V

    return-object v0
.end method

.method public setCubemapUris(Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;)Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    .line 246
    return-object p0
.end method
