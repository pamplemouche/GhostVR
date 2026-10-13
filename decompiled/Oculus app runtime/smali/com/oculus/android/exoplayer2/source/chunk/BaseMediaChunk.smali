.class public abstract Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;
.super Lcom/oculus/android/exoplayer2/source/chunk/MediaChunk;
.source "BaseMediaChunk.java"


# instance fields
.field private firstSampleIndices:[I

.field private output:Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p11}, Lcom/oculus/android/exoplayer2/source/chunk/MediaChunk;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    return-void
.end method


# virtual methods
.method public final getFirstSampleIndex(I)I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method protected final getOutput()Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    return-object v0
.end method

.method public init(Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;->output:Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 61
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunkOutput;->getWriteIndices()[I

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/chunk/BaseMediaChunk;->firstSampleIndices:[I

    return-void
.end method
