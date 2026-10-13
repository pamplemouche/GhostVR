.class public final Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;
.super Ljava/lang/Object;
.source "OculusMp4Extractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/Extractor;
.implements Lcom/oculus/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;
    }
.end annotation


# static fields
.field private static final BRAND_QUICKTIME:I

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackIndex:I

.field private durationUs:J

.field private eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

.field private extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

.field private isInterleaved:Z

.field private isQuickTime:Z

.field private final nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "qt  "

    .line 62
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->BRAND_QUICKTIME:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 99
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 100
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    sget-object v1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 101
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 102
    iput-boolean p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isInterleaved:Z

    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    .line 195
    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    return-void
.end method

.method private getTrackIndexOfEarliestCurrentSample()I
    .locals 7

    const/4 v0, -0x1

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 536
    :goto_0
    iget-object v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 537
    aget-object v4, v4, v3

    .line 538
    iget v5, v4, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    .line 539
    iget-object v6, v4, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    iget-object v4, v4, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v5, v4, v5

    cmp-long v4, v5, v1

    if-gez v4, :cond_1

    move v0, v3

    move-wide v1, v5

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getTrackIndexOfSampleNonInterleaved()I
    .locals 10

    .line 571
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v2, :cond_1

    .line 572
    aget-object v0, v0, v3

    .line 573
    iget v1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    iget-object v0, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget v0, v0, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v1, v0, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    move-wide v5, v0

    const/4 v2, -0x1

    .line 584
    :goto_0
    iget-object v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v8, v7

    if-ge v3, v8, :cond_5

    .line 585
    aget-object v7, v7, v3

    .line 586
    iget v8, v7, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    .line 587
    iget-object v9, v7, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget v9, v9, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ne v8, v9, :cond_2

    .line 588
    iget v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    if-ne v3, v7, :cond_4

    .line 589
    iput v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    goto :goto_1

    .line 594
    :cond_2
    iget-object v7, v7, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v8, v7, v8

    cmp-long v7, v8, v5

    if-gez v7, :cond_3

    move v2, v3

    move-wide v5, v8

    .line 603
    :cond_3
    iget v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    if-ne v3, v7, :cond_4

    move-wide v0, v8

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    :cond_5
    iget v3, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    if-ne v3, v4, :cond_6

    .line 609
    iput v2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    goto :goto_2

    :cond_6
    sub-long/2addr v0, v5

    const-wide/32 v3, 0x2dc6c0

    cmp-long v5, v0, v3

    if-lez v5, :cond_7

    .line 613
    iput v2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    .line 617
    :cond_7
    :goto_2
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->currentTrackIndex:I

    return v0
.end method

.method private processAtomEnded(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 293
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    iget-wide v2, v0, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    .line 295
    iget v2, v0, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v3, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v2, v3, :cond_1

    .line 297
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->processMoovAtom(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)V

    .line 298
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 299
    iput v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    goto :goto_0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->add(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 304
    :cond_2
    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    if-eq p1, v1, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->enterReadingAtomHeaderState()V

    :cond_3
    return-void
.end method

.method private static processFtypAtom(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3

    const/16 v0, 0x8

    .line 316
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 317
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 318
    sget v1, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->BRAND_QUICKTIME:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 321
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v1, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->BRAND_QUICKTIME:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private processMoovAtom(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {v3}, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    .line 340
    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_udta:I

    invoke-virtual {v1, v4}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 342
    iget-boolean v5, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isQuickTime:Z

    invoke-static {v4, v5}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseUdta(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;Z)Lcom/oculus/android/exoplayer2/metadata/Metadata;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 344
    invoke-virtual {v3, v4}, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/oculus/android/exoplayer2/metadata/Metadata;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v8

    const/4 v8, 0x0

    const-wide v11, 0x7fffffffffffffffL

    .line 348
    :goto_1
    iget-object v13, v1, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ge v8, v13, :cond_e

    .line 349
    iget-object v13, v1, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    .line 350
    iget v15, v13, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v15, v5, :cond_2

    .line 351
    invoke-static {v13}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseMetaXmlAtom(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 352
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    if-eqz v6, :cond_d

    .line 353
    invoke-interface {v6, v5}, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;->onMovieMetadataXml(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 356
    :cond_2
    iget v5, v13, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_trak:I

    if-eq v5, v6, :cond_3

    goto/16 :goto_4

    .line 360
    :cond_3
    sget v5, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {v1, v5}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    iget-boolean v5, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isQuickTime:Z

    move-object v15, v13

    move/from16 v20, v5

    invoke-static/range {v15 .. v20}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseTrak(Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;JLcom/oculus/android/exoplayer2/drm/DrmInitData;Z)Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    move-result-object v5

    if-nez v5, :cond_4

    goto/16 :goto_4

    .line 366
    :cond_4
    sget v6, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mdia:I

    invoke-virtual {v13, v6}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    sget v15, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_minf:I

    .line 367
    invoke-virtual {v6, v15}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    sget v15, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v6, v15}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    .line 368
    invoke-static {v5, v6, v3}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseStbl(Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    move-result-object v6

    .line 369
    iget v15, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-nez v15, :cond_5

    goto/16 :goto_4

    .line 373
    :cond_5
    iget-object v15, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    if-eqz v15, :cond_7

    iget v15, v5, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v7, 0x2

    if-ne v15, v7, :cond_7

    const/4 v7, 0x0

    .line 374
    :goto_2
    iget v15, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sampleCount:I

    if-ge v7, v15, :cond_7

    .line 375
    iget-object v15, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->flags:[I

    aget v15, v15, v7

    and-int/2addr v15, v14

    if-eqz v15, :cond_6

    .line 376
    iget-object v15, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    iget-object v14, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    move-wide/from16 v18, v11

    aget-wide v11, v14, v7

    invoke-interface {v15, v11, v12}, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;->onFindVideoSeekTimestamp(J)V

    goto :goto_3

    :cond_6
    move-wide/from16 v18, v11

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v11, v18

    const/4 v14, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v18, v11

    .line 382
    iget-object v7, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    if-eqz v7, :cond_9

    .line 383
    sget v7, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_uuid:I

    invoke-virtual {v13, v7}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->getAllLeafAtomsOfType(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 384
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    .line 385
    invoke-static {v11}, Lcom/oculus/video/extractor/mp4/AtomParsers;->parseUuidAtomForSphericalV1(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 387
    iget-object v7, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    invoke-interface {v7, v11}, Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;->onSphericalV1Xml(Ljava/lang/String;)V

    .line 393
    :cond_9
    new-instance v7, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    iget-object v11, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    iget v12, v5, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->type:I

    .line 394
    invoke-interface {v11, v8, v12}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v11

    invoke-direct {v7, v5, v6, v11}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;-><init>(Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/video/extractor/mp4/TrackSampleTable;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;)V

    .line 397
    iget v11, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->maximumSize:I

    add-int/lit8 v11, v11, 0x1e

    .line 398
    iget-object v12, v5, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-virtual {v12, v11}, Lcom/oculus/android/exoplayer2/Format;->copyWithMaxInputSize(I)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v11

    .line 399
    iget v12, v5, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 400
    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 401
    iget v12, v3, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    iget v13, v3, Lcom/oculus/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    invoke-virtual {v11, v12, v13}, Lcom/oculus/android/exoplayer2/Format;->copyWithGaplessInfo(II)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v11

    :cond_a
    if-eqz v4, :cond_b

    .line 405
    invoke-virtual {v11, v4}, Lcom/oculus/android/exoplayer2/Format;->copyWithMetadata(Lcom/oculus/android/exoplayer2/metadata/Metadata;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v11

    .line 408
    :cond_b
    iget-object v12, v7, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v12, v11}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    .line 410
    iget-wide v11, v5, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 411
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v5, v6, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    const/4 v6, 0x0

    aget-wide v11, v5, v6

    cmp-long v5, v11, v18

    if-gez v5, :cond_c

    goto :goto_4

    :cond_c
    move-wide/from16 v11, v18

    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v13, 0x1

    .line 418
    iput-wide v9, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->durationUs:J

    .line 419
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    iput-object v1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    const-wide/high16 v1, -0x8000000000000000L

    .line 423
    iget-object v3, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v4, v3

    move-wide v5, v1

    const/4 v1, 0x0

    const-wide v21, 0x7fffffffffffffffL

    :goto_5
    if-ge v1, v4, :cond_12

    aget-object v2, v3, v1

    .line 424
    iget-object v7, v2, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v7, v7, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    array-length v7, v7

    if-nez v7, :cond_f

    const/16 v17, 0x0

    goto :goto_6

    .line 428
    :cond_f
    iget-object v2, v2, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    const/16 v17, 0x0

    aget-wide v7, v2, v17

    cmp-long v2, v7, v21

    if-gez v2, :cond_10

    move-wide/from16 v21, v7

    :cond_10
    cmp-long v2, v7, v5

    if-lez v2, :cond_11

    move-wide v5, v7

    :cond_11
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    const/16 v17, 0x0

    const-wide/16 v1, 0x0

    sub-long v5, v5, v21

    .line 437
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x4197d78400000000L    # 1.0E8

    cmpg-double v5, v1, v3

    if-gez v5, :cond_13

    goto :goto_7

    :cond_13
    const/4 v13, 0x0

    :goto_7
    iput-boolean v13, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isInterleaved:Z

    .line 439
    iget-object v1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 440
    iget-object v1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method private readAtomHeader(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 204
    :cond_0
    iput v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    .line 205
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 206
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    .line 207
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    .line 210
    :cond_1
    iget-wide v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 214
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    .line 215
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    .line 218
    :cond_2
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    sget v4, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_meta:I

    if-ne v0, v4, :cond_4

    const/4 v0, 0x4

    .line 222
    new-array v4, v0, [B

    .line 223
    invoke-interface {p1, v4, v3, v0, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v5

    if-nez v5, :cond_3

    return v3

    .line 226
    :cond_3
    aget-byte v5, v4, v3

    aget-byte v6, v4, v2

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v4, v4, v6

    or-int/2addr v4, v5

    if-nez v4, :cond_4

    .line 232
    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 233
    iget v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    .line 237
    :cond_4
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    invoke-static {v0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    add-long/2addr v0, v3

    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v3, p1

    sub-long/2addr v0, v3

    .line 239
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v3, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    invoke-direct {v3, v4, v0, v1}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 240
    iget-wide v3, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-nez p1, :cond_5

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->processAtomEnded(J)V

    goto :goto_2

    .line 244
    :cond_5
    invoke-direct {p0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_2

    .line 246
    :cond_6
    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    invoke-static {p1}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 249
    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 250
    iget-wide v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    const-wide/32 v6, 0x7fffffff

    cmp-long p1, v4, v6

    if-gtz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 251
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 252
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeader:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iput v2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 256
    iput v2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    :goto_2
    return v2
.end method

.method private readAtomPayload(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 269
    iget-wide v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomSize:J

    iget v2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 270
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 272
    iget-object v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 273
    iget-object p2, v4, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    long-to-int v1, v0

    invoke-interface {p1, p2, v4, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 274
    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    sget p2, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ftyp:I

    if-ne p1, p2, :cond_0

    .line 275
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p1}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->processFtypAtom(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isQuickTime:Z

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 277
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;

    new-instance p2, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;

    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomType:I

    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p2, v0, v1}, Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/oculus/android/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p1, p2}, Lcom/oculus/video/extractor/mp4/Atom$ContainerAtom;->add(Lcom/oculus/video/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_0

    :cond_1
    const-wide/32 v7, 0x40000

    cmp-long v4, v0, v7

    if-gez v4, :cond_3

    long-to-int p2, v0

    .line 282
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 284
    :cond_3
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p2, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    .line 288
    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->processAtomEnded(J)V

    if-eqz p1, :cond_4

    .line 289
    iget p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    return v5
.end method

.method private readSample(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->isInterleaved:Z

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->getTrackIndexOfEarliestCurrentSample()I

    move-result v0

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->getTrackIndexOfSampleNonInterleaved()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    aget-object v0, v1, v0

    .line 468
    iget-object v1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->trackOutput:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 469
    iget v2, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    .line 470
    iget-object v3, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v4, v3, v2

    .line 471
    iget-object v3, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object v3, v3, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->sizes:[I

    aget v3, v3, v2

    .line 472
    iget-object v6, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    iget v6, v6, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, -0x8

    .line 478
    :cond_2
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long v6, v4, v6

    iget v9, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    int-to-long v9, v9

    add-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-ltz v11, :cond_7

    const-wide/32 v9, 0x40000

    cmp-long v11, v6, v9

    if-ltz v11, :cond_3

    goto/16 :goto_3

    :cond_3
    long-to-int p2, v6

    .line 483
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 484
    iget-object p2, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    iget p2, p2, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v9, 0x0

    if-eqz p2, :cond_5

    .line 487
    iget-object p2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 488
    aput-byte v9, p2, v9

    .line 489
    aput-byte v9, p2, v8

    const/4 v4, 0x2

    .line 490
    aput-byte v9, p2, v4

    .line 491
    iget-object p2, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    iget p2, p2, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 492
    iget-object v4, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->track:Lcom/oculus/android/exoplayer2/extractor/mp4/Track;

    iget v4, v4, Lcom/oculus/android/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    .line 496
    :goto_1
    iget v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    if-ge v6, v3, :cond_6

    .line 497
    iget v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_4

    .line 499
    iget-object v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v4, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 500
    iget-object v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v9}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 501
    iget-object v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 503
    iget-object v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v9}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 504
    iget-object v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v1, v6, v5}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 505
    iget v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 509
    :cond_4
    invoke-interface {v1, p1, v6, v9}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v6

    .line 510
    iget v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    .line 511
    iget v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_1

    .line 515
    :cond_5
    :goto_2
    iget p2, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    if-ge p2, v3, :cond_6

    sub-int p2, v3, p2

    .line 516
    invoke-interface {v1, p1, p2, v9}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p2

    .line 517
    iget v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    .line 518
    iget v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v4, p2

    iput v4, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_2

    :cond_6
    move v5, v3

    .line 521
    iget-object p1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    aget-wide v3, p1, v2

    iget-object p1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    iget-object p1, p1, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->flags:[I

    aget p1, p1, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v3

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 523
    iget p1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    add-int/2addr p1, v8

    iput p1, v0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    .line 524
    iput v9, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    .line 525
    iput v9, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    return v9

    .line 480
    :cond_7
    :goto_3
    iput-wide v4, p2, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    return v8
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    .line 636
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_edts:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_meta:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    .line 624
    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stts:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stss:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ctts:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsc:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stsz:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stz2:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_stco:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_co64:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_udta:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_xml:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/oculus/video/extractor/mp4/Atom;->TYPE_uuid:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateSampleIndices(J)V
    .locals 7

    .line 557
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 558
    iget-object v4, v3, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    .line 559
    invoke-virtual {v4, p1, p2}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 562
    invoke-virtual {v4, p1, p2}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v5

    .line 564
    :cond_0
    iput v5, v3, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 176
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    .line 177
    iget-object v5, v5, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;->sampleTable:Lcom/oculus/video/extractor/mp4/TrackSampleTable;

    .line 178
    invoke-virtual {v5, p1, p2}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->getIndexOfEarlierOrEqualSynchronizationSample(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 181
    invoke-virtual {v5, p1, p2}, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->getIndexOfLaterOrEqualSynchronizationSample(J)I

    move-result v6

    .line 183
    :cond_0
    iget-object v5, v5, Lcom/oculus/video/extractor/mp4/TrackSampleTable;->offsets:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_1

    move-wide v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_2
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;

    new-instance v1, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/oculus/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {v0, v1}, Lcom/oculus/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/oculus/android/exoplayer2/extractor/SeekPoint;)V

    return-object v0
.end method

.method public init(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 142
    :cond_0
    iget v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->parserState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->readSample(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 149
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->readAtomPayload(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 144
    :cond_3
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->readAtomHeader(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->atomHeaderBytesRead:I

    .line 124
    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleBytesWritten:I

    .line 125
    iput v0, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->tracks:[Lcom/oculus/video/extractor/mp4/OculusMp4Extractor$Mp4Track;

    if-eqz p1, :cond_1

    .line 129
    invoke-direct {p0, p3, p4}, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->updateSampleIndices(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/oculus/video/extractor/mp4/OculusMp4Extractor;->eventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    return-object p0
.end method

.method public sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    invoke-static {p1}, Lcom/oculus/video/extractor/mp4/Sniffer;->sniffUnfragmented(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
