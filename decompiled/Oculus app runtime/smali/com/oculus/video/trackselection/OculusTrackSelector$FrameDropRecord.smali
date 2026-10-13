.class Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;
.super Ljava/lang/Object;
.source "OculusTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/trackselection/OculusTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameDropRecord"
.end annotation


# instance fields
.field decodedFrameCount:J

.field elapsedMs:J

.field frameDrops:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->frameDrops:J

    .line 29
    iput-wide p3, p0, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->decodedFrameCount:J

    .line 30
    iput-wide p5, p0, Lcom/oculus/video/trackselection/OculusTrackSelector$FrameDropRecord;->elapsedMs:J

    return-void
.end method
