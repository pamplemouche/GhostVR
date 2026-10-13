.class public final Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;,
        Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;,
        Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;,
        Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BLOCK_STATE_DATA:I = 0x2

.field private static final BLOCK_STATE_HEADER:I = 0x1

.field private static final BLOCK_STATE_START:I = 0x0

.field private static final CODEC_ID_AAC:Ljava/lang/String; = "A_AAC"

.field private static final CODEC_ID_AC3:Ljava/lang/String; = "A_AC3"

.field private static final CODEC_ID_ACM:Ljava/lang/String; = "A_MS/ACM"

.field private static final CODEC_ID_ASS:Ljava/lang/String; = "S_TEXT/ASS"

.field private static final CODEC_ID_DTS:Ljava/lang/String; = "A_DTS"

.field private static final CODEC_ID_DTS_EXPRESS:Ljava/lang/String; = "A_DTS/EXPRESS"

.field private static final CODEC_ID_DTS_LOSSLESS:Ljava/lang/String; = "A_DTS/LOSSLESS"

.field private static final CODEC_ID_DVBSUB:Ljava/lang/String; = "S_DVBSUB"

.field private static final CODEC_ID_E_AC3:Ljava/lang/String; = "A_EAC3"

.field private static final CODEC_ID_FLAC:Ljava/lang/String; = "A_FLAC"

.field private static final CODEC_ID_FOURCC:Ljava/lang/String; = "V_MS/VFW/FOURCC"

.field private static final CODEC_ID_H264:Ljava/lang/String; = "V_MPEG4/ISO/AVC"

.field private static final CODEC_ID_H265:Ljava/lang/String; = "V_MPEGH/ISO/HEVC"

.field private static final CODEC_ID_MP2:Ljava/lang/String; = "A_MPEG/L2"

.field private static final CODEC_ID_MP3:Ljava/lang/String; = "A_MPEG/L3"

.field private static final CODEC_ID_MPEG2:Ljava/lang/String; = "V_MPEG2"

.field private static final CODEC_ID_MPEG4_AP:Ljava/lang/String; = "V_MPEG4/ISO/AP"

.field private static final CODEC_ID_MPEG4_ASP:Ljava/lang/String; = "V_MPEG4/ISO/ASP"

.field private static final CODEC_ID_MPEG4_SP:Ljava/lang/String; = "V_MPEG4/ISO/SP"

.field private static final CODEC_ID_OPUS:Ljava/lang/String; = "A_OPUS"

.field private static final CODEC_ID_PCM_INT_LIT:Ljava/lang/String; = "A_PCM/INT/LIT"

.field private static final CODEC_ID_PGS:Ljava/lang/String; = "S_HDMV/PGS"

.field private static final CODEC_ID_SUBRIP:Ljava/lang/String; = "S_TEXT/UTF8"

.field private static final CODEC_ID_THEORA:Ljava/lang/String; = "V_THEORA"

.field private static final CODEC_ID_TRUEHD:Ljava/lang/String; = "A_TRUEHD"

.field private static final CODEC_ID_VOBSUB:Ljava/lang/String; = "S_VOBSUB"

.field private static final CODEC_ID_VORBIS:Ljava/lang/String; = "A_VORBIS"

.field private static final CODEC_ID_VP8:Ljava/lang/String; = "V_VP8"

.field private static final CODEC_ID_VP9:Ljava/lang/String; = "V_VP9"

.field private static final DOC_TYPE_MATROSKA:Ljava/lang/String; = "matroska"

.field private static final DOC_TYPE_WEBM:Ljava/lang/String; = "webm"

.field private static final ENCRYPTION_IV_SIZE:I = 0x8

.field public static final FACTORY:Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_SEEK_FOR_CUES:I = 0x1

.field private static final FOURCC_COMPRESSION_VC1:I = 0x31435657

.field private static final ID_AUDIO:I = 0xe1

.field private static final ID_AUDIO_BIT_DEPTH:I = 0x6264

.field private static final ID_BLOCK:I = 0xa1

.field private static final ID_BLOCK_DURATION:I = 0x9b

.field private static final ID_BLOCK_GROUP:I = 0xa0

.field private static final ID_CHANNELS:I = 0x9f

.field private static final ID_CLUSTER:I = 0x1f43b675

.field private static final ID_CODEC_DELAY:I = 0x56aa

.field private static final ID_CODEC_ID:I = 0x86

.field private static final ID_CODEC_PRIVATE:I = 0x63a2

.field private static final ID_COLOUR:I = 0x55b0

.field private static final ID_COLOUR_PRIMARIES:I = 0x55bb

.field private static final ID_COLOUR_RANGE:I = 0x55b9

.field private static final ID_COLOUR_TRANSFER:I = 0x55ba

.field private static final ID_CONTENT_COMPRESSION:I = 0x5034

.field private static final ID_CONTENT_COMPRESSION_ALGORITHM:I = 0x4254

.field private static final ID_CONTENT_COMPRESSION_SETTINGS:I = 0x4255

.field private static final ID_CONTENT_ENCODING:I = 0x6240

.field private static final ID_CONTENT_ENCODINGS:I = 0x6d80

.field private static final ID_CONTENT_ENCODING_ORDER:I = 0x5031

.field private static final ID_CONTENT_ENCODING_SCOPE:I = 0x5032

.field private static final ID_CONTENT_ENCRYPTION:I = 0x5035

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS:I = 0x47e7

.field private static final ID_CONTENT_ENCRYPTION_AES_SETTINGS_CIPHER_MODE:I = 0x47e8

.field private static final ID_CONTENT_ENCRYPTION_ALGORITHM:I = 0x47e1

.field private static final ID_CONTENT_ENCRYPTION_KEY_ID:I = 0x47e2

.field private static final ID_CUES:I = 0x1c53bb6b

.field private static final ID_CUE_CLUSTER_POSITION:I = 0xf1

.field private static final ID_CUE_POINT:I = 0xbb

.field private static final ID_CUE_TIME:I = 0xb3

.field private static final ID_CUE_TRACK_POSITIONS:I = 0xb7

.field private static final ID_DEFAULT_DURATION:I = 0x23e383

.field private static final ID_DISPLAY_HEIGHT:I = 0x54ba

.field private static final ID_DISPLAY_UNIT:I = 0x54b2

.field private static final ID_DISPLAY_WIDTH:I = 0x54b0

.field private static final ID_DOC_TYPE:I = 0x4282

.field private static final ID_DOC_TYPE_READ_VERSION:I = 0x4285

.field private static final ID_DURATION:I = 0x4489

.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final ID_EBML_READ_VERSION:I = 0x42f7

.field private static final ID_FLAG_DEFAULT:I = 0x88

.field private static final ID_FLAG_FORCED:I = 0x55aa

.field private static final ID_INFO:I = 0x1549a966

.field private static final ID_LANGUAGE:I = 0x22b59c

.field private static final ID_LUMNINANCE_MAX:I = 0x55d9

.field private static final ID_LUMNINANCE_MIN:I = 0x55da

.field private static final ID_MASTERING_METADATA:I = 0x55d0

.field private static final ID_MAX_CLL:I = 0x55bc

.field private static final ID_MAX_FALL:I = 0x55bd

.field private static final ID_PIXEL_HEIGHT:I = 0xba

.field private static final ID_PIXEL_WIDTH:I = 0xb0

.field private static final ID_PRIMARY_B_CHROMATICITY_X:I = 0x55d5

.field private static final ID_PRIMARY_B_CHROMATICITY_Y:I = 0x55d6

.field private static final ID_PRIMARY_G_CHROMATICITY_X:I = 0x55d3

.field private static final ID_PRIMARY_G_CHROMATICITY_Y:I = 0x55d4

.field private static final ID_PRIMARY_R_CHROMATICITY_X:I = 0x55d1

.field private static final ID_PRIMARY_R_CHROMATICITY_Y:I = 0x55d2

.field private static final ID_PROJECTION:I = 0x7670

.field private static final ID_PROJECTION_PRIVATE:I = 0x7672

.field private static final ID_REFERENCE_BLOCK:I = 0xfb

.field private static final ID_SAMPLING_FREQUENCY:I = 0xb5

.field private static final ID_SEEK:I = 0x4dbb

.field private static final ID_SEEK_HEAD:I = 0x114d9b74

.field private static final ID_SEEK_ID:I = 0x53ab

.field private static final ID_SEEK_POSITION:I = 0x53ac

.field private static final ID_SEEK_PRE_ROLL:I = 0x56bb

.field private static final ID_SEGMENT:I = 0x18538067

.field private static final ID_SEGMENT_INFO:I = 0x1549a966

.field private static final ID_SIMPLE_BLOCK:I = 0xa3

.field private static final ID_STEREO_MODE:I = 0x53b8

.field private static final ID_TIMECODE_SCALE:I = 0x2ad7b1

.field private static final ID_TIME_CODE:I = 0xe7

.field private static final ID_TRACKS:I = 0x1654ae6b

.field private static final ID_TRACK_ENTRY:I = 0xae

.field private static final ID_TRACK_NUMBER:I = 0xd7

.field private static final ID_TRACK_TYPE:I = 0x83

.field private static final ID_VIDEO:I = 0xe0

.field private static final ID_WHITE_POINT_CHROMATICITY_X:I = 0x55d7

.field private static final ID_WHITE_POINT_CHROMATICITY_Y:I = 0x55d8

.field private static final LACING_EBML:I = 0x3

.field private static final LACING_FIXED_SIZE:I = 0x2

.field private static final LACING_NONE:I = 0x0

.field private static final LACING_XIPH:I = 0x1

.field private static final OPUS_MAX_INPUT_SIZE:I = 0x1680

.field private static final SSA_DIALOGUE_FORMAT:[B

.field private static final SSA_PREFIX:[B

.field private static final SSA_PREFIX_END_TIMECODE_OFFSET:I = 0x15

.field private static final SSA_TIMECODE_EMPTY:[B

.field private static final SSA_TIMECODE_FORMAT:Ljava/lang/String; = "%01d:%02d:%02d:%02d"

.field private static final SSA_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x2710L

.field private static final SUBRIP_PREFIX:[B

.field private static final SUBRIP_PREFIX_END_TIMECODE_OFFSET:I = 0x13

.field private static final SUBRIP_TIMECODE_EMPTY:[B

.field private static final SUBRIP_TIMECODE_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d,%03d"

.field private static final SUBRIP_TIMECODE_LAST_VALUE_SCALING_FACTOR:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MatroskaExtractor"

.field private static final TRACK_TYPE_AUDIO:I = 0x2

.field private static final UNSET_ENTRY_ID:I = -0x1

.field private static final VORBIS_MAX_INPUT_SIZE:I = 0x2000

.field private static final WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field private static final WAVE_FORMAT_PCM:I = 0x1

.field private static final WAVE_FORMAT_SIZE:I = 0x12

.field private static final WAVE_SUBFORMAT_PCM:Ljava/util/UUID;


# instance fields
.field private blockDurationUs:J

.field private blockFlags:I

.field private blockLacingSampleCount:I

.field private blockLacingSampleIndex:I

.field private blockLacingSampleSizes:[I

.field private blockState:I

.field private blockTimeUs:J

.field private blockTrackNumber:I

.field private blockTrackNumberLength:I

.field private clusterTimecodeUs:J

.field private cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

.field private cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

.field private cuesContentPosition:J

.field private currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

.field private durationTimecode:J

.field private durationUs:J

.field private final encryptionInitializationVector:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final encryptionSubsampleData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

.field private extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

.field private final nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final reader:Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;

.field private sampleBytesRead:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleEncodingHandled:Z

.field private sampleInitializationVectorRead:Z

.field private samplePartitionCount:I

.field private samplePartitionCountRead:Z

.field private sampleRead:Z

.field private sampleSeenReferenceBlock:Z

.field private sampleSignalByte:B

.field private sampleSignalByteRead:Z

.field private final sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private final scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryId:I

.field private final seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private seekEntryPosition:J

.field private seekForCues:Z

.field private final seekForCuesEnabled:Z

.field private seekPositionAfterBuildingCues:J

.field private seenClusterPositionForCurrentCuePoint:Z

.field private segmentContentPosition:J

.field private segmentContentSize:J

.field private sentSeekMap:Z

.field private final subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

.field private timecodeScale:J

.field private final tracks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;",
            ">;"
        }
    .end annotation
.end field

.field private final varintReader:Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

.field private final vorbisNumPageSamples:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 66
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;-><init>()V

    sput-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->FACTORY:Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;

    const/16 v0, 0x20

    .line 230
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    const/16 v1, 0xc

    .line 242
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 257
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    .line 266
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    const/16 v0, 0xa

    .line 283
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    .line 305
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 382
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;I)V

    return-void
.end method

.method constructor <init>(Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;I)V
    .locals 4

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 325
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 326
    iput-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 327
    iput-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    .line 328
    iput-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    .line 342
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    .line 343
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 344
    iput-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    .line 386
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;

    .line 387
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;

    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$InnerEbmlReaderOutput;-><init>(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;->init(Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReaderOutput;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 388
    :goto_0
    iput-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    .line 389
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

    .line 390
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    .line 391
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 392
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 393
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 394
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    sget-object v0, Lcom/oculus/android/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 395
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 396
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 397
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 398
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 399
    new-instance p1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method static synthetic access$300()[B
    .locals 1

    .line 61
    sget-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_DIALOGUE_FORMAT:[B

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/UUID;
    .locals 1

    .line 61
    sget-object v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->WAVE_SUBFORMAT_PCM:Ljava/util/UUID;

    return-object v0
.end method

.method private buildSeekMap()Lcom/oculus/android/exoplayer2/extractor/SeekMap;
    .locals 12

    .line 1386
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_3

    .line 1387
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    if-eqz v0, :cond_3

    .line 1388
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/LongArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/LongArray;->size()I

    move-result v0

    .line 1395
    new-array v1, v0, [I

    .line 1396
    new-array v3, v0, [J

    .line 1397
    new-array v4, v0, [J

    .line 1398
    new-array v5, v0, [J

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_1

    .line 1400
    iget-object v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-virtual {v8, v7}, Lcom/oculus/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v8

    aput-wide v8, v5, v7

    .line 1401
    iget-wide v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-object v10, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-virtual {v10, v7}, Lcom/oculus/android/exoplayer2/util/LongArray;->get(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v7, v0, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 1404
    aget-wide v8, v3, v7

    aget-wide v10, v3, v6

    sub-long/2addr v8, v10

    long-to-int v9, v8

    aput v9, v1, v6

    .line 1405
    aget-wide v8, v5, v7

    aget-wide v10, v5, v6

    sub-long/2addr v8, v10

    aput-wide v8, v4, v6

    move v6, v7

    goto :goto_1

    .line 1407
    :cond_2
    iget-wide v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    iget-wide v10, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    add-long/2addr v8, v10

    aget-wide v10, v3, v7

    sub-long/2addr v8, v10

    long-to-int v0, v8

    aput v0, v1, v7

    .line 1409
    iget-wide v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    aget-wide v10, v5, v7

    sub-long/2addr v8, v10

    aput-wide v8, v4, v7

    .line 1410
    iput-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    .line 1411
    iput-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    .line 1412
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/ChunkIndex;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/oculus/android/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v0

    .line 1390
    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    .line 1391
    iput-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    .line 1392
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private commitSampleToOutput(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    .line 1092
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    move-wide/from16 v9, p2

    invoke-virtual {v0, v8, v9, v10}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->sampleMetadata(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    goto :goto_1

    :cond_0
    move-wide/from16 v9, p2

    .line 1095
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v3, 0x13

    const-wide/16 v4, 0x3e8

    .line 1096
    sget-object v6, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_TIMECODE_EMPTY:[B

    const-string v2, "%02d:%02d:%02d,%03d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 1102
    :cond_1
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x15

    const-wide/16 v4, 0x2710

    .line 1103
    sget-object v6, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_TIMECODE_EMPTY:[B

    const-string v2, "%01d:%02d:%02d:%02d"

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSubtitleSample(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V

    .line 1110
    :cond_2
    :goto_0
    iget-object v0, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget v11, v7, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    iget v12, v7, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    const/4 v13, 0x0

    iget-object v14, v8, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

    move-object v8, v0

    move-wide/from16 v9, p2

    invoke-interface/range {v8 .. v14}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :goto_1
    const/4 v0, 0x1

    .line 1112
    iput-boolean v0, v7, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    .line 1113
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    return-void
.end method

.method private commitSubtitleSample(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;IJ[B)V
    .locals 9

    .line 1318
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->setSampleDuration([BJLjava/lang/String;IJ[B)V

    .line 1322
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1323
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return-void
.end method

.method private static ensureArrayCapacity([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1486
    new-array p0, p1, [I

    return-object p0

    .line 1487
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 1491
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private static isCodecSupported(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "V_VP8"

    .line 1449
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_VP9"

    .line 1450
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG2"

    .line 1451
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/SP"

    .line 1452
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 1453
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AP"

    .line 1454
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 1455
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 1456
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_MS/VFW/FOURCC"

    .line 1457
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V_THEORA"

    .line 1458
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_OPUS"

    .line 1459
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_VORBIS"

    .line 1460
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AAC"

    .line 1461
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L2"

    .line 1462
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MPEG/L3"

    .line 1463
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_AC3"

    .line 1464
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_EAC3"

    .line 1465
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_TRUEHD"

    .line 1466
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS"

    .line 1467
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/EXPRESS"

    .line 1468
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_DTS/LOSSLESS"

    .line 1469
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_FLAC"

    .line 1470
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_MS/ACM"

    .line 1471
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A_PCM/INT/LIT"

    .line 1472
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/UTF8"

    .line 1473
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_TEXT/ASS"

    .line 1474
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_VOBSUB"

    .line 1475
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_HDMV/PGS"

    .line 1476
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S_DVBSUB"

    .line 1477
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private maybeSeekForCues(Lcom/oculus/android/exoplayer2/extractor/PositionHolder;J)Z
    .locals 5

    .line 1425
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1426
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    .line 1427
    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1428
    iput-boolean v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    return v1

    .line 1433
    :cond_0
    iget-boolean p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-eqz p2, :cond_1

    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    .line 1434
    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/extractor/PositionHolder;->position:J

    .line 1435
    iput-wide v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekPositionAfterBuildingCues:J

    return v1

    :cond_1
    return v2
.end method

.method private readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-lt v0, p2, :cond_0

    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    .line 1140
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 1139
    invoke-virtual {v0, v1, v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1143
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    return-void
.end method

.method private readToOutput(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 1369
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1370
    iget-object p3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {p2, p3, p1}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1372
    invoke-interface {p2, p1, p3, v0}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result p1

    .line 1374
    :goto_0
    iget p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1375
    iget p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    return p1
.end method

.method private readToTarget(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v1, p3, v0

    sub-int v2, p4, v0

    .line 1353
    invoke-interface {p1, p2, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    if-lez v0, :cond_0

    .line 1355
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, p2, p3, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1357
    :cond_0
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    return-void
.end method

.method private resetSample()V
    .locals 1

    const/4 v0, 0x0

    .line 1117
    iput v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1118
    iput v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1119
    iput v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1120
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1121
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    .line 1122
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1123
    iput v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1124
    iput-byte v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1125
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1126
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset()V

    return-void
.end method

.method private scaleTimecodeToUs(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1442
    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1445
    invoke-static/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1443
    :cond_0
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static setSampleDuration([BJLjava/lang/String;IJ[B)V
    .locals 11

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0xd693a400L

    .line 1333
    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    .line 1335
    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 1337
    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 1339
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 1340
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 1341
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    .line 1340
    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, v1

    move-object/from16 v1, p7

    .line 1343
    :goto_0
    array-length v1, v1

    move-object v3, p0

    move v4, p4

    invoke-static {v2, v0, p0, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private writeSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1148
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    sget-object p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SUBRIP_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;[BI)V

    return-void

    .line 1151
    :cond_0
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1152
    sget-object p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->SSA_PREFIX:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSubtitleSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;[BI)V

    return-void

    .line 1156
    :cond_1
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 1157
    iget-boolean v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_10

    .line 1158
    iget-boolean v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz v1, :cond_e

    .line 1161
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1162
    iget-boolean v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1163
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1164
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1165
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1168
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    .line 1169
    iput-boolean v4, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByteRead:Z

    goto :goto_0

    .line 1166
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1171
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_f

    .line 1173
    iget-byte v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSignalByte:B

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1174
    :goto_2
    iget v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 1175
    iget-boolean v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    if-nez v7, :cond_7

    .line 1176
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1177
    iget v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1178
    iput-boolean v4, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleInitializationVectorRead:Z

    .line 1180
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, v7, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 1181
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1182
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v4}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1183
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    .line 1185
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1186
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionInitializationVector:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v8}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1187
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_7
    if-eqz v1, :cond_f

    .line 1190
    iget-boolean v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    if-nez v1, :cond_8

    .line 1191
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v1, v5, v4}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1192
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1193
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1194
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    .line 1195
    iput-boolean v4, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCountRead:Z

    .line 1197
    :cond_8
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    mul-int/lit8 v1, v1, 0x4

    .line 1198
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1199
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v6, v5, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1200
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    .line 1201
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    div-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 1203
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 1204
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1205
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    .line 1207
    :cond_a
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1208
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1216
    :goto_4
    iget v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->samplePartitionCount:I

    if-ge v1, v8, :cond_c

    .line 1218
    iget-object v8, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 1219
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1220
    iget-object v9, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1223
    :cond_b
    iget-object v9, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1226
    :cond_c
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1227
    rem-int/2addr v8, v3

    if-ne v8, v4, :cond_d

    .line 1228
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1230
    :cond_d
    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1231
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1233
    :goto_6
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v7, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleDataBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1234
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->encryptionSubsampleData:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v1, v6}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1235
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_7

    .line 1238
    :cond_e
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-eqz v1, :cond_f

    .line 1240
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    iget-object v7, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 1242
    :cond_f
    :goto_7
    iput-boolean v4, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleEncodingHandled:Z

    .line 1244
    :cond_10
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/2addr p3, v1

    .line 1246
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_a

    .line 1278
    :cond_11
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    if-eqz v1, :cond_13

    .line 1279
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleStrippedBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    invoke-static {v4}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1280
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;

    iget v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    invoke-virtual {v1, p1, v3, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$TrueHdSampleRechunker;->startSample(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;II)V

    .line 1282
    :cond_13
    :goto_9
    iget v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v1, p3, :cond_16

    sub-int v1, p3, v1

    .line 1283
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;I)I

    goto :goto_9

    .line 1251
    :cond_14
    :goto_a
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1252
    aput-byte v5, v1, v5

    .line 1253
    aput-byte v5, v1, v4

    .line 1254
    aput-byte v5, v1, v3

    .line 1255
    iget v3, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 1256
    iget v4, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1260
    :goto_b
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesRead:I

    if-ge v6, p3, :cond_16

    .line 1261
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    if-nez v6, :cond_15

    .line 1263
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readToTarget(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;[BII)V

    .line 1265
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1266
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalLength:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    .line 1268
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1269
    iget-object v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->nalStartCode:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, v6, v2}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1270
    iget v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    goto :goto_b

    .line 1274
    :cond_15
    invoke-direct {p0, p1, v0, v6}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readToOutput(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/TrackOutput;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_b

    .line 1287
    :cond_16
    iget-object p1, p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1294
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1295
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->vorbisNumPageSamples:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-interface {v0, p1, v2}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;I)V

    .line 1296
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleBytesWritten:I

    :cond_17
    return-void
.end method

.method private writeSubtitleSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1302
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1303
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 1306
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    goto :goto_0

    .line 1308
    :cond_0
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1310
    :goto_0
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1311
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->subtitleSample:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    return-void
.end method


# virtual methods
.method binaryElement(IILcom/oculus/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_4

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_3

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_2

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_0

    .line 939
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 940
    iget-object v1, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_d

    .line 1087
    :cond_0
    new-instance v2, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_1
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 936
    iget-object v1, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_d

    .line 929
    :cond_2
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 930
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int/2addr v6, v2

    invoke-interface {v3, v1, v6, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 931
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v7}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 932
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryIdBytes:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    goto/16 :goto_d

    .line 948
    :cond_3
    new-array v1, v2, [B

    .line 949
    invoke-interface {v3, v1, v7, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 950
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

    invoke-direct {v3, v8, v1, v7, v7}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    iput-object v3, v2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

    goto/16 :goto_d

    .line 944
    :cond_4
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    .line 945
    iget-object v1, v1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto/16 :goto_d

    .line 960
    :cond_5
    iget v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/16 v9, 0x8

    if-nez v4, :cond_6

    .line 961
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v4, v3, v7, v8, v9}, Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;->readUnsignedVarint(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    .line 962
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;->getLastLength()I

    move-result v4

    iput v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 963
    iput-wide v10, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    .line 964
    iput v8, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 965
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->reset()V

    .line 968
    :cond_6
    iget-object v4, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v10, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    if-nez v4, :cond_7

    .line 972
    iget v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 973
    iput v7, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    return-void

    .line 977
    :cond_7
    iget v10, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    if-ne v10, v8, :cond_1a

    const/4 v10, 0x3

    .line 979
    invoke-direct {v0, v3, v10}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 980
    iget-object v11, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v11, v11, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_8

    .line 982
    iput v8, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 983
    iget-object v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v6, v8}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    .line 984
    iget-object v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v11, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v10

    aput v2, v6, v7

    goto/16 :goto_6

    :cond_8
    if-ne v1, v5, :cond_19

    .line 991
    invoke-direct {v0, v3, v6}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 992
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 993
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    iget v15, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    .line 994
    invoke-static {v14, v15}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->ensureArrayCapacity([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-ne v11, v12, :cond_9

    .line 996
    iget v10, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    div-int/2addr v2, v6

    .line 998
    iget-object v10, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    invoke-static {v10, v7, v6, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_6

    :cond_9
    if-ne v11, v8, :cond_c

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 1002
    :goto_0
    iget v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_b

    .line 1003
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v7, v14, v6

    :cond_a
    add-int/2addr v10, v8

    .line 1006
    invoke-direct {v0, v3, v10}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1007
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 1008
    iget-object v15, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v16, v15, v6

    add-int v16, v16, v14

    aput v16, v15, v6

    if-eq v14, v13, :cond_a

    .line 1010
    aget v14, v15, v6

    add-int/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1012
    :cond_b
    iget-object v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    sub-int/2addr v14, v8

    iget v15, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v6, v14

    goto/16 :goto_6

    :cond_c
    if-ne v11, v10, :cond_18

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 1017
    :goto_1
    iget v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_13

    .line 1018
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aput v7, v14, v6

    add-int/lit8 v10, v10, 0x1

    .line 1019
    invoke-direct {v0, v3, v10}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1020
    iget-object v14, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v14, v14, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_12

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_f

    rsub-int/lit8 v18, v14, 0x7

    shl-int v5, v8, v18

    .line 1026
    iget-object v12, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v12, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v12, v12, v15

    and-int/2addr v12, v5

    if-eqz v12, :cond_e

    add-int/2addr v10, v14

    .line 1029
    invoke-direct {v0, v3, v10}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->readScratch(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;I)V

    .line 1030
    iget-object v12, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v12, v12, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v12, v12, v15

    and-int/2addr v12, v13

    not-int v5, v5

    and-int/2addr v5, v12

    int-to-long v7, v5

    move/from16 v5, v16

    :goto_3
    move-wide/from16 v16, v7

    if-ge v5, v10, :cond_d

    shl-long v7, v16, v9

    .line 1033
    iget-object v15, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v15, v15, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    int-to-long v12, v5

    or-long/2addr v7, v12

    move/from16 v5, v16

    const/16 v13, 0xff

    goto :goto_3

    :cond_d
    if-lez v6, :cond_f

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v7, 0x1

    shl-long v12, v7, v14

    sub-long/2addr v12, v7

    sub-long v16, v16, v12

    goto :goto_4

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_2

    :cond_f
    :goto_4
    move-wide/from16 v7, v16

    const-wide/32 v12, -0x80000000

    cmp-long v5, v7, v12

    if-ltz v5, :cond_11

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v7, v12

    if-gtz v5, :cond_11

    long-to-int v5, v7

    .line 1046
    iget-object v7, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    if-nez v6, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    add-int/2addr v5, v8

    :goto_5
    aput v5, v7, v6

    .line 1048
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v5, v5, v6

    add-int/2addr v11, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_1

    .line 1043
    :cond_11
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1021
    :cond_12
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_13
    iget-object v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumberLength:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v5, v14

    .line 1058
    :goto_6
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    shl-int/2addr v2, v9

    iget-object v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 1059
    iget-wide v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    int-to-long v7, v2

    invoke-direct {v0, v7, v8}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    .line 1060
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_14

    const/4 v2, 0x1

    goto :goto_7

    :cond_14
    const/4 v2, 0x0

    .line 1061
    :goto_7
    iget v6, v4, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    if-eq v6, v5, :cond_16

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_15

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scratch:Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v6, v6, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_15

    goto :goto_8

    :cond_15
    const/4 v5, 0x0

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v5, 0x1

    :goto_9
    if-eqz v2, :cond_17

    const/high16 v7, -0x80000000

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    :goto_a
    or-int v2, v5, v7

    .line 1063
    iput v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    const/4 v2, 0x2

    .line 1065
    iput v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v2, 0x0

    .line 1066
    iput v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_b

    .line 1054
    :cond_18
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lacing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    :cond_19
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_b
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_1c

    .line 1071
    :goto_c
    iget v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleCount:I

    if-ge v1, v2, :cond_1b

    .line 1072
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    .line 1073
    iget-wide v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    iget v5, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    iget v6, v4, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 1075
    invoke-direct {v0, v4, v1, v2}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 1076
    iget v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleIndex:I

    goto :goto_c

    :cond_1b
    const/4 v1, 0x0

    .line 1078
    iput v1, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    goto :goto_d

    :cond_1c
    const/4 v1, 0x0

    .line 1082
    iget-object v2, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockLacingSampleSizes:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->writeSampleData(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)V

    :goto_d
    return-void
.end method

.method endMasterElement(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0xae

    if-eq p1, v0, :cond_b

    const/16 v0, 0x4dbb

    const v3, 0x1c53bb6b

    if-eq p1, v0, :cond_9

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_7

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_5

    const v0, 0x1549a966

    if-eq p1, v0, :cond_3

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_1

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 619
    :cond_0
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_10

    .line 620
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->buildSeekMap()Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V

    .line 621
    iput-boolean v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto/16 :goto_0

    .line 660
    :cond_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 663
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto/16 :goto_0

    .line 661
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_3
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_4

    const-wide/32 v0, 0xf4240

    .line 604
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    .line 606
    :cond_4
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_10

    .line 607
    invoke-direct {p0, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    goto/16 :goto_0

    .line 648
    :cond_5
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleStrippedBytes:[B

    if-nez p1, :cond_6

    goto/16 :goto_0

    .line 649
    :cond_6
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 639
    :cond_7
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    if-eqz p1, :cond_10

    .line 640
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

    if-eqz p1, :cond_8

    .line 643
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    new-instance v0, Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    new-array v2, v2, [Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;

    new-instance v3, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;

    sget-object v4, Lcom/oculus/android/exoplayer2/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/oculus/android/exoplayer2/drm/DrmInitData;-><init>([Lcom/oculus/android/exoplayer2/drm/DrmInitData$SchemeData;)V

    iput-object v0, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 641
    :cond_8
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 611
    :cond_9
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_a

    if-ne p1, v3, :cond_10

    .line 615
    iput-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    goto :goto_0

    .line 612
    :cond_a
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 653
    :cond_b
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->isCodecSupported(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 654
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    iget v1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    invoke-virtual {p1, v0, v1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->initializeOutput(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;I)V

    .line 655
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget v0, v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    const/4 p1, 0x0

    .line 657
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_0

    .line 627
    :cond_d
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    return-void

    .line 632
    :cond_e
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    if-nez p1, :cond_f

    .line 633
    iget p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockFlags:I

    .line 635
    :cond_f
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    iget v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTrackNumber:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iget-wide v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockTimeUs:J

    invoke-direct {p0, p1, v2, v3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->commitSampleToOutput(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;J)V

    .line 636
    iput v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    :cond_10
    :goto_0
    return-void
.end method

.method floatElement(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 899
    :pswitch_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    goto :goto_0

    .line 896
    :pswitch_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    goto :goto_0

    .line 893
    :pswitch_2
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    goto :goto_0

    .line 890
    :pswitch_3
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    goto :goto_0

    .line 887
    :pswitch_4
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    goto :goto_0

    .line 884
    :pswitch_5
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    goto :goto_0

    .line 881
    :pswitch_6
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    goto :goto_0

    .line 878
    :pswitch_7
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    goto :goto_0

    .line 875
    :pswitch_8
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    goto :goto_0

    .line 872
    :pswitch_9
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-float p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    goto :goto_0

    :cond_0
    double-to-long p1, p2

    .line 866
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationTimecode:J

    goto :goto_0

    .line 869
    :cond_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    double-to-int p2, p2

    iput p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getElementType(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x1

    return p1

    :sswitch_3
    const/4 p1, 0x3

    return p1

    :sswitch_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public init(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method integerElement(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x5031

    const-string v1, " not supported"

    if-eq p1, v0, :cond_15

    const/16 v0, 0x5032

    const-wide/16 v2, 0x1

    if-eq p1, v0, :cond_13

    const/4 v0, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 856
    :pswitch_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    goto/16 :goto_0

    .line 853
    :pswitch_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    goto/16 :goto_0

    .line 805
    :pswitch_2
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v6, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    long-to-int p3, p2

    if-eq p3, v6, :cond_2

    const/16 p2, 0x9

    if-eq p3, p2, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    goto/16 :goto_0

    .line 814
    :cond_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    .line 817
    :cond_1
    iput v1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    .line 808
    :cond_2
    iput v6, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    goto/16 :goto_0

    :pswitch_3
    long-to-int p1, p2

    if-eq p1, v6, :cond_5

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x12

    if-eq p1, p2, :cond_3

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    goto/16 :goto_0

    .line 834
    :cond_3
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    .line 831
    :cond_4
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v1, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    .line 828
    :cond_5
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    goto/16 :goto_0

    :pswitch_4
    long-to-int p1, p2

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_6

    goto/16 :goto_0

    .line 846
    :cond_6
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_0

    .line 843
    :cond_7
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    goto/16 :goto_0

    .line 690
    :sswitch_0
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->timecodeScale:J

    goto/16 :goto_0

    .line 720
    :sswitch_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->defaultSampleDurationNs:I

    goto/16 :goto_0

    .line 732
    :sswitch_2
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    goto/16 :goto_0

    .line 726
    :sswitch_3
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    goto/16 :goto_0

    .line 723
    :sswitch_4
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    goto/16 :goto_0

    .line 714
    :sswitch_5
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v1, p2, v2

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    goto/16 :goto_0

    .line 702
    :sswitch_6
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto/16 :goto_0

    .line 705
    :sswitch_7
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    goto/16 :goto_0

    .line 699
    :sswitch_8
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    goto/16 :goto_0

    :sswitch_9
    long-to-int p1, p2

    if-eqz p1, :cond_c

    if-eq p1, v6, :cond_b

    if-eq p1, v4, :cond_a

    const/16 p2, 0xf

    if-eq p1, p2, :cond_9

    goto/16 :goto_0

    .line 798
    :cond_9
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v4, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 795
    :cond_a
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v6, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 792
    :cond_b
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v5, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 789
    :cond_c
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput v0, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    goto/16 :goto_0

    .line 687
    :sswitch_a
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto/16 :goto_0

    :sswitch_b
    cmp-long p1, p2, v2

    if-nez p1, :cond_d

    goto/16 :goto_0

    .line 764
    :cond_d
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_c
    const-wide/16 v2, 0x5

    cmp-long p1, p2, v2

    if-nez p1, :cond_e

    goto/16 :goto_0

    .line 758
    :cond_e
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_d
    cmp-long p1, p2, v2

    if-nez p1, :cond_f

    goto/16 :goto_0

    .line 675
    :cond_f
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_e
    cmp-long p1, p2, v2

    if-ltz p1, :cond_10

    const-wide/16 v2, 0x2

    cmp-long p1, p2, v2

    if-gtz p1, :cond_10

    goto/16 :goto_0

    .line 681
    :cond_10
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f
    const-wide/16 v2, 0x3

    cmp-long p1, p2, v2

    if-nez p1, :cond_11

    goto/16 :goto_0

    .line 752
    :cond_11
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 735
    :sswitch_10
    iput-boolean v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    goto/16 :goto_0

    .line 771
    :sswitch_11
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    if-nez p1, :cond_16

    .line 775
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-virtual {p1, p2, p3}, Lcom/oculus/android/exoplayer2/util/LongArray;->add(J)V

    .line 776
    iput-boolean v6, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_0

    .line 780
    :sswitch_12
    invoke-direct {p0, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    goto :goto_0

    .line 708
    :sswitch_13
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    goto :goto_0

    .line 696
    :sswitch_14
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    goto :goto_0

    .line 768
    :sswitch_15
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/oculus/android/exoplayer2/util/LongArray;->add(J)V

    goto :goto_0

    .line 693
    :sswitch_16
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    goto :goto_0

    .line 729
    :sswitch_17
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    goto :goto_0

    .line 783
    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->scaleTimecodeToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockDurationUs:J

    goto :goto_0

    .line 711
    :sswitch_19
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    cmp-long v1, p2, v2

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    iput-boolean v0, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    goto :goto_0

    .line 717
    :sswitch_1a
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    long-to-int p3, p2

    iput p3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->type:I

    goto :goto_0

    :cond_13
    cmp-long p1, p2, v2

    if-nez p1, :cond_14

    goto :goto_0

    .line 746
    :cond_14
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-nez p1, :cond_17

    :cond_16
    :goto_0
    return-void

    .line 740
    :cond_17
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x9b -> :sswitch_18
        0x9f -> :sswitch_17
        0xb0 -> :sswitch_16
        0xb3 -> :sswitch_15
        0xba -> :sswitch_14
        0xd7 -> :sswitch_13
        0xe7 -> :sswitch_12
        0xf1 -> :sswitch_11
        0xfb -> :sswitch_10
        0x4254 -> :sswitch_f
        0x4285 -> :sswitch_e
        0x42f7 -> :sswitch_d
        0x47e1 -> :sswitch_c
        0x47e8 -> :sswitch_b
        0x53ac -> :sswitch_a
        0x53b8 -> :sswitch_9
        0x54b0 -> :sswitch_8
        0x54b2 -> :sswitch_7
        0x54ba -> :sswitch_6
        0x55aa -> :sswitch_5
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_3
        0x6264 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isLevel1Element(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p1, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p1, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p1, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;Lcom/oculus/android/exoplayer2/extractor/PositionHolder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 434
    iget-boolean v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleRead:Z

    if-nez v3, :cond_1

    .line 435
    iget-object v2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {v2, p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;->read(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-direct {p0, p2, v3, v4}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->maybeSeekForCues(Lcom/oculus/android/exoplayer2/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_1
    if-nez v2, :cond_3

    .line 441
    :goto_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 442
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->outputPendingSampleMetadata()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 414
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->clusterTimecodeUs:J

    const/4 p1, 0x0

    .line 415
    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->blockState:I

    .line 416
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->reader:Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/EbmlReader;->reset()V

    .line 417
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->varintReader:Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/VarintReader;->reset()V

    .line 418
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->resetSample()V

    .line 419
    :goto_0
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 420
    iget-object p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->tracks:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->reset()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 404
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mkv/Sniffer;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/Sniffer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/extractor/mkv/Sniffer;->sniff(Lcom/oculus/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

.method startMasterElement(IJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    const/16 v0, 0xae

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_9

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_c

    const v0, 0x18538067

    if-eq p1, v0, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 566
    :cond_0
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    if-nez p1, :cond_c

    .line 568
    iget-boolean p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCuesEnabled:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cuesContentPosition:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_1

    .line 570
    iput-boolean v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekForCues:Z

    goto :goto_1

    .line 574
    :cond_1
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->extractorOutput:Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;

    new-instance p2, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide p3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->durationUs:J

    invoke-direct {p2, p3, p4}, Lcom/oculus/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/oculus/android/exoplayer2/extractor/SeekMap;)V

    .line 575
    iput-boolean v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sentSeekMap:Z

    goto :goto_1

    .line 559
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueTimesUs:Lcom/oculus/android/exoplayer2/util/LongArray;

    .line 560
    new-instance p1, Lcom/oculus/android/exoplayer2/util/LongArray;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/util/LongArray;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->cueClusterPositions:Lcom/oculus/android/exoplayer2/util/LongArray;

    goto :goto_1

    .line 547
    :cond_3
    iget-wide v3, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    cmp-long p1, v3, p2

    if-nez p1, :cond_4

    goto :goto_0

    .line 549
    :cond_4
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 551
    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentPosition:J

    .line 552
    iput-wide p4, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->segmentContentSize:J

    goto :goto_1

    .line 592
    :cond_6
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    goto :goto_1

    .line 586
    :cond_7
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-boolean v3, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasContentEncryption:Z

    goto :goto_1

    :cond_8
    const/4 p1, -0x1

    .line 555
    iput p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryId:I

    .line 556
    iput-wide v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seekEntryPosition:J

    goto :goto_1

    .line 563
    :cond_9
    iput-boolean v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->seenClusterPositionForCurrentCuePoint:Z

    goto :goto_1

    .line 589
    :cond_a
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;-><init>(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$1;)V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    goto :goto_1

    .line 580
    :cond_b
    iput-boolean v1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->sampleSeenReferenceBlock:Z

    :cond_c
    :goto_1
    return-void
.end method

.method stringElement(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 918
    :cond_0
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    invoke-static {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->access$202(Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "webm"

    .line 910
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 911
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 915
    :cond_3
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;->currentTrack:Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;

    iput-object p2, p1, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    :cond_4
    :goto_0
    return-void
.end method
