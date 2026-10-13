.class public Lcom/oculus/horizon/spherical/model/SphericalVideoParams;
.super Ljava/lang/Object;
.source "SphericalVideoParams.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/oculus/horizon/spherical/model/SphericalParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oculus/horizon/spherical/model/SphericalVideoParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fullScreenAspectRatio:D

.field public final guidedTour:Lcom/oculus/horizon/spherical/model/GuidedTourParams;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final initialViewHeadingDegrees:I

.field public final initialViewPitchDegrees:I

.field public final initialViewRollDegrees:I

.field public final inlineAspectRatio:D

.field public final projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final verticalFov:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$1;

    invoke-direct {v0}, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$1;-><init>()V

    sput-object v0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/model/ProjectionType;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewHeadingDegrees:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewPitchDegrees:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewRollDegrees:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->verticalFov:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->inlineAspectRatio:D

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->fullScreenAspectRatio:D

    .line 58
    const-class v0, Lcom/oculus/horizon/spherical/model/GuidedTourParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/spherical/model/GuidedTourParams;

    iput-object v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->guidedTour:Lcom/oculus/horizon/spherical/model/GuidedTourParams;

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    instance-of v2, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;

    if-nez v2, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    check-cast p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;

    .line 87
    iget-object v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;

    iget-object v3, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewHeadingDegrees:I

    iget v3, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewHeadingDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewPitchDegrees:I

    iget v3, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewPitchDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewRollDegrees:I

    iget v3, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewRollDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->verticalFov:I

    iget v3, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->verticalFov:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->inlineAspectRatio:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->inlineAspectRatio:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->fullScreenAspectRatio:D

    iget-wide v4, p1, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->fullScreenAspectRatio:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewHeadingDegrees:I

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewPitchDegrees:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewRollDegrees:I

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->verticalFov:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->inlineAspectRatio:D

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->fullScreenAspectRatio:D

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 98
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->projectionType:Lcom/oculus/horizon/spherical/model/ProjectionType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 69
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewHeadingDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewPitchDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->initialViewRollDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->verticalFov:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->inlineAspectRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    iget-wide v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->fullScreenAspectRatio:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams;->guidedTour:Lcom/oculus/horizon/spherical/model/GuidedTourParams;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    return-void
.end method
