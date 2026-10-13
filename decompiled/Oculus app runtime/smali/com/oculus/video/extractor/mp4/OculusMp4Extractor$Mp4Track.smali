.class final Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "OculusMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field sampleIndex:I

.field final sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

.field final track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

.field final trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/video/extractor/mp4/TrackSampleTable;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    .line 651
    iput-object p2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    .line 652
    iput-object p3, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method
