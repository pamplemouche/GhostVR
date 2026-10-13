.class public interface abstract Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;,
        Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract init(Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method
