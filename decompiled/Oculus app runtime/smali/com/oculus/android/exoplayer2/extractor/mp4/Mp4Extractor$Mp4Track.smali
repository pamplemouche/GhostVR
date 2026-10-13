.class final Lcom/oculus/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lcom/oculus/android/exoplayer2/extractor/mp4/TrackSampleTable;

.field public final track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

.field public final trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/android/exoplayer2/extractor/mp4/TrackSampleTable;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    .line 731
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/android/exoplayer2/extractor/mp4/TrackSampleTable;

    .line 732
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method
