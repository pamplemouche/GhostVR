.class final Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;
.super Ljava/lang/Object;
.source "OculusH264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/hls/OculusH264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80

.field private static final NAL_UNIT_TYPE_AUD:I = 0x9

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final NAL_UNIT_TYPE_NON_IDR:I = 0x1

.field private static final NAL_UNIT_TYPE_PARTITION_A:I = 0x2


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 243
    iput-boolean p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 244
    iput-boolean p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->detectAccessUnits:Z

    .line 245
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 246
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 247
    new-instance p1, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/oculus/video/extractor/hls/OculusH264Reader$1;)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->previousSliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 248
    new-instance p1, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/oculus/video/extractor/hls/OculusH264Reader$1;)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    .line 249
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    .line 250
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    .line 251
    invoke-virtual {p0}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->reset()V

    return-void
.end method

.method private outputSample(I)V
    .locals 7

    .line 429
    iget-boolean v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 430
    iget-wide v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v4, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 431
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget-wide v1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleTimeUs:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 298
    iget-boolean v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 302
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 303
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    .line 305
    :cond_1
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    iget v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    .line 308
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->buffer:[B

    iget v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 309
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 312
    :cond_2
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBit()V

    .line 313
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 314
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 318
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 321
    :cond_3
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 322
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 325
    :cond_4
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 326
    iget-boolean v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_5

    .line 328
    iput-boolean v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    .line 329
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1, v11}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    .line 332
    :cond_5
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 335
    :cond_6
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 336
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 338
    iput-boolean v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    return-void

    .line 341
    :cond_7
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;

    .line 342
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;

    .line 343
    iget-boolean v3, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_9

    .line 344
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 347
    :cond_8
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 349
    :cond_9
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 355
    :cond_a
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 356
    iget-boolean v3, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 357
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 360
    :cond_b
    iget-object v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 362
    iget-object v6, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 365
    :cond_c
    iget-object v6, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v3

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 369
    :goto_1
    iget v3, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 372
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 375
    :cond_10
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 381
    :goto_3
    iget v2, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_15

    .line 382
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 385
    :cond_12
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 386
    iget-boolean v1, v1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 387
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 390
    :cond_13
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 392
    :cond_15
    iget v2, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19

    .line 394
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 397
    :cond_16
    iget-object v2, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 398
    iget-boolean v1, v1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 399
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 402
    :cond_17
    iget-object v1, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bitArray:Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 405
    :goto_7
    iget-object v8, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 408
    iput-boolean v4, v0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public endNalUnit(JI)V
    .locals 5

    .line 412
    iget v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->previousSliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 413
    invoke-static {v0, v3}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->readingSample:Z

    if-eqz v0, :cond_1

    .line 416
    iget-wide v3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 417
    invoke-direct {p0, p3}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->outputSample(I)V

    .line 419
    :cond_1
    iget-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->samplePosition:J

    .line 420
    iget-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleTimeUs:J

    .line 421
    iput-boolean v1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 422
    iput-boolean v2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->readingSample:Z

    .line 424
    :cond_2
    iget-boolean p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_3

    iget-boolean p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p3, :cond_4

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 425
    invoke-virtual {p2}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sampleIsKeyframe:Z

    return-void
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/oculus/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    .line 268
    iput-boolean v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->readingSample:Z

    .line 269
    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 0

    .line 273
    iput p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    .line 274
    iput-wide p4, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitTimeUs:J

    .line 275
    iput-wide p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitStartPosition:J

    .line 276
    iget-boolean p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    if-eq p1, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 281
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->previousSliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 282
    iget-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->previousSliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 283
    iput-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    .line 284
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->sliceHeader:Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {p1}, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    .line 285
    iput p1, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->bufferLength:I

    .line 286
    iput-boolean p2, p0, Lcom/oculus/video/extractor/hls/OculusH264Reader$SampleReader;->isFilling:Z

    :cond_2
    return-void
.end method
