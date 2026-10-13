.class final Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "OculusExtractorMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

.field private final track:I


# direct methods
.method public constructor <init>(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;I)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput p2, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->track:I

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;)I
    .locals 0

    .line 695
    iget p0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->track:I

    return p0
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    iget v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->isReady(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    iget v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->readData(ILcom/oculus/android/exoplayer2/FormatHolder;Lcom/oculus/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p1

    return p1
.end method

.method public skipData(J)I
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->this$0:Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;

    iget v1, p0, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod$SampleStreamImpl;->track:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/oculus/video/extractor/source/OculusExtractorMediaPeriod;->skipData(IJ)I

    move-result p1

    return p1
.end method
