.class public Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;
.super Ljava/lang/Object;
.source "SphericalPhotoParams.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/oculus/horizon/spherical/model/SphericalParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final croppedAreaImageHeightPixels:I

.field public final croppedAreaImageWidthPixels:I

.field public final cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

.field public final fullPanoHeightPixels:I

.field public final fullPanoWidthPixels:I

.field public final initialViewHeadingDegrees:D

.field public final initialViewPitchDegrees:D

.field public final initialViewRollDegrees:D

.field public final initialViewVerticalFov:D

.field public final isPinchZoomEnabled:Z

.field public final panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

.field public final photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$1;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoWidthPixels:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    .line 74
    const-class v0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    .line 75
    const-class v0, Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    .line 76
    const-class v0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->isPinchZoomEnabled:Z

    .line 78
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->fullPanoWidthPixels:I

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoWidthPixels:I

    .line 52
    iget v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->croppedAreaImageWidthPixels:I

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    .line 53
    iget v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->fullPanoHeightPixels:I

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    .line 54
    iget v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->croppedAreaImageHeightPixels:I

    iput v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    .line 55
    iget-wide v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewHeadingDegrees:D

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    .line 56
    iget-wide v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewPitchDegrees:D

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    .line 57
    iget-wide v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewRollDegrees:D

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    .line 58
    iget-wide v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->initialViewVerticalFov:D

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    .line 59
    iget-object v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    .line 60
    iget-object v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    .line 61
    iget-object v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    .line 62
    iget-boolean v0, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams$Builder;->isPinchZoomEnabled:Z

    iput-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->isPinchZoomEnabled:Z

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    instance-of v2, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    if-nez v2, :cond_2

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    check-cast p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;

    .line 110
    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoWidthPixels:I

    iget v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoWidthPixels:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    iget v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    iget v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    iget v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    iget-object v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    iget-object v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    iget-object v3, p1, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getInitialPitch()F
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    double-to-float v0, v0

    return v0
.end method

.method public getInitialYaw()F
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    double-to-float v0, v0

    return v0
.end method

.method public getPanoBounds()Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 125
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    .line 133
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    aput-object v2, v0, v1

    .line 125
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoWidthPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageWidthPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->fullPanoHeightPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->croppedAreaImageHeightPixels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewHeadingDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewPitchDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 93
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewRollDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 94
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->initialViewVerticalFov:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->cubemapUris:Lcom/oculus/horizon/spherical/photo/utils/CubemapsUtil$CubemapUris;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->photoVRCastParams:Lcom/oculus/horizon/spherical/photo/model/PhotoVRCastParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->panoBounds:Lcom/oculus/horizon/spherical/photo/utils/PartialPanoUtil$PanoBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-boolean v0, p0, Lcom/oculus/horizon/spherical/photo/model/SphericalPhotoParams;->isPinchZoomEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
