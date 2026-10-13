.class public Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;
.super Lcom/facebook/cameracore/mediapipeline/filterlib/BaseVideoOutput;
.source "SurfaceOutput.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;


# annotations
.annotation build Lcom/facebook/annotations/OkToExtend;
.end annotation


# instance fields
.field private final mDeviceOutput:Lcom/facebook/videocodec/effects/common/DeviceOutput;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;IILcom/facebook/videocodec/effects/common/DeviceOutput;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/filterlib/BaseVideoOutput;-><init>()V

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surface cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    if-nez p4, :cond_1

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;->mSurface:Landroid/view/Surface;

    .line 30
    iput p2, p0, Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;->mWidth:I

    .line 31
    iput p3, p0, Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;->mHeight:I

    .line 32
    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/outputs/SurfaceOutput;->mDeviceOutput:Lcom/facebook/videocodec/effects/common/DeviceOutput;

    .line 33
    return-void
.end method
