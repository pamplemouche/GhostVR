.class abstract Lcom/oculus/android/exoplayer2/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/flv/TagPayloadReader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final consume(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/extractor/flv/TagPayloadReader;->parseHeader(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/flv/TagPayloadReader;->parsePayload(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;J)V

    :cond_0
    return-void
.end method

.method protected abstract parseHeader(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method
