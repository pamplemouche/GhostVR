.class public Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;
.super Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;
.source "TimelapseOutput.java"


# instance fields
.field private threshold:I

.field private tick:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/cameracore/mediapipeline/outputs/RecorderOutput;-><init>(Landroid/view/Surface;II)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;->tick:I

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;->threshold:I

    .line 20
    return-void
.end method


# virtual methods
.method public setMultiplier(D)V
    .locals 3

    .prologue
    .line 37
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    double-to-int v0, v0

    iput v0, p0, Lcom/facebook/cameracore/recording/video/timelapse/TimelapseOutput;->threshold:I

    .line 38
    return-void
.end method
