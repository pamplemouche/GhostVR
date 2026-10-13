.class public Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;
.super Ljava/lang/Object;
.source "SphericalVideoParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/model/SphericalVideoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field fullScreenAspectRatio:D

.field initialViewHeadingDegrees:I

.field initialViewPitchDegrees:I

.field initialViewRollDegrees:I

.field inlineAspectRatio:D

.field verticalFov:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->initialViewHeadingDegrees:I

    .line 150
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->initialViewPitchDegrees:I

    .line 151
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->initialViewRollDegrees:I

    .line 152
    iput v0, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->verticalFov:I

    .line 153
    iput-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->inlineAspectRatio:D

    .line 154
    iput-wide v2, p0, Lcom/oculus/horizon/spherical/model/SphericalVideoParams$Builder;->fullScreenAspectRatio:D

    return-void
.end method
