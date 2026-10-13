.class final Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "OculusMatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/oculus/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public number:I

.field public output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1620
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->width:I

    .line 1621
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->height:I

    .line 1622
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayWidth:I

    .line 1623
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    .line 1624
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayUnit:I

    const/4 v2, 0x0

    .line 1625
    iput-object v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->projectionData:[B

    .line 1626
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->stereoMode:I

    .line 1628
    iput-boolean v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->hasColorInfo:Z

    .line 1629
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorSpace:I

    .line 1631
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorTransfer:I

    .line 1633
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    .line 1635
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    .line 1636
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 1637
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityX:F

    .line 1638
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityY:F

    .line 1639
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityX:F

    .line 1640
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityY:F

    .line 1641
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityX:F

    .line 1642
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityY:F

    .line 1643
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityX:F

    .line 1644
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityY:F

    .line 1645
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxMasteringLuminance:F

    .line 1646
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    .line 1649
    iput v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->channelCount:I

    .line 1650
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    .line 1651
    iput v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    .line 1652
    iput-wide v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecDelayNs:J

    .line 1653
    iput-wide v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->seekPreRollNs:J

    .line 1657
    iput-boolean v1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->flagDefault:Z

    const-string v0, "eng"

    .line 1658
    iput-object v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$1;)V
    .locals 0

    .line 1594
    invoke-direct {p0}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    .line 1872
    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x19

    .line 1881
    new-array v0, v0, [B

    .line 1882
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 1883
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1884
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1885
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1886
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1887
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1888
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1889
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1890
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1891
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float v2, v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1892
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1893
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1894
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1895
    iget v2, p0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseFourCcVc1Private(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1911
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1912
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x31435657

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1919
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 1920
    iget-object p0, p0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1921
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-ge v0, v1, :cond_2

    .line 1922
    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p0, v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 1925
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1926
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1930
    :cond_2
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Failed to find FourCC VC1 initialization data"

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1932
    :catch_0
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Error parsing FourCC VC1 codec private"

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseMsAcmCodecPrivate(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1995
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x18

    .line 1999
    invoke-virtual {p0, v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2000
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2001
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->access$400()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v3

    .line 2006
    :catch_0
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v0, "Error parsing MS/ACM codec private"

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    .line 1945
    :try_start_0
    aget-byte v2, p0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1950
    :goto_0
    aget-byte v6, p0, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 1954
    aget-byte v4, p0, v4

    add-int/2addr v5, v4

    const/4 v4, 0x0

    .line 1957
    :goto_1
    aget-byte v8, p0, v6

    if-ne v8, v7, :cond_1

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v6, 0x1

    .line 1961
    aget-byte v6, p0, v6

    add-int/2addr v4, v6

    .line 1963
    aget-byte v6, p0, v7

    if-ne v6, v2, :cond_4

    .line 1966
    new-array v2, v5, [B

    .line 1967
    invoke-static {p0, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v5

    .line 1969
    aget-byte v5, p0, v7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    add-int/2addr v7, v4

    .line 1973
    aget-byte v4, p0, v7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 1976
    array-length v4, p0

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 1977
    array-length v5, p0

    sub-int/2addr v5, v7

    invoke-static {p0, v7, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1978
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1979
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1974
    :cond_2
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1970
    :cond_3
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1964
    :cond_4
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1946
    :cond_5
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :catch_0
    new-instance p0, Lcom/oculus/android/exoplayer2/ParserException;

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public initializeOutput(Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1672
    iget-object v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto :goto_1

    :sswitch_15
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_16
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_17
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_18
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_19
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_1a
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1c
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "application/vobsub"

    const-string v9, "text/x-ssa"

    const-string v10, "application/x-subrip"

    const-string v11, "audio/raw"

    const-string v13, "video/x-unknown"

    const-string v14, "audio/x-unknown"

    const/4 v15, 0x0

    const-string v12, "OculusMatroskaExtractor"

    packed-switch v1, :pswitch_data_0

    .line 1807
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v1, 0x4

    .line 1803
    new-array v1, v1, [B

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    aget-byte v11, v3, v5

    aput-byte v11, v1, v5

    aget-byte v11, v3, v4

    aput-byte v11, v1, v4

    aget-byte v11, v3, v6

    aput-byte v11, v1, v6

    aget-byte v3, v3, v7

    aput-byte v3, v1, v7

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "application/dvbsubs"

    goto/16 :goto_4

    :pswitch_1
    const-string v1, "application/pgs"

    goto/16 :goto_6

    .line 1795
    :pswitch_2
    iget-object v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_7

    :pswitch_3
    move-object v1, v9

    goto/16 :goto_6

    :pswitch_4
    move-object v1, v10

    goto/16 :goto_6

    .line 1779
    :pswitch_5
    iget v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move/from16 v23, v1

    move-object v1, v11

    move-object v3, v15

    const/16 v20, -0x1

    goto/16 :goto_9

    .line 1764
    :pswitch_6
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1765
    iget v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->audioBitDepth:I

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported PCM bit depth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Setting mimeType to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1774
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v1, v14

    goto/16 :goto_6

    .line 1760
    :pswitch_7
    iget-object v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "audio/flac"

    goto :goto_4

    :pswitch_8
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_6

    :pswitch_9
    const-string v1, "audio/vnd.dts"

    goto/16 :goto_6

    :pswitch_a
    const-string v1, "audio/true-hd"

    goto/16 :goto_6

    :pswitch_b
    const-string v1, "audio/eac3"

    goto/16 :goto_6

    :pswitch_c
    const-string v1, "audio/ac3"

    goto/16 :goto_6

    :pswitch_d
    const-string v1, "audio/mpeg"

    goto :goto_3

    :pswitch_e
    const-string v1, "audio/mpeg-L2"

    :goto_3
    move-object v3, v15

    const/16 v20, 0x1000

    goto/16 :goto_8

    .line 1732
    :pswitch_f
    iget-object v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "audio/mp4a-latm"

    :goto_4
    const/16 v20, -0x1

    const/16 v23, -0x1

    move-object/from16 v31, v3

    move-object v3, v1

    move-object/from16 v1, v31

    goto/16 :goto_9

    :pswitch_10
    const/16 v1, 0x1680

    .line 1723
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1724
    iget-object v12, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1726
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v12

    iget-wide v13, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 1725
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v12, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v3, v12, v13}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1727
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "audio/opus"

    move-object v1, v3

    move-object v3, v11

    const/16 v20, 0x1680

    goto/16 :goto_8

    :pswitch_11
    const/16 v1, 0x2000

    .line 1718
    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-static {v3}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v3

    const-string v11, "audio/vorbis"

    move-object v1, v11

    const/16 v20, 0x2000

    goto :goto_8

    :pswitch_12
    move-object v1, v13

    goto :goto_6

    .line 1702
    :pswitch_13
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->parseFourCcVc1Private(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "video/wvc1"

    goto :goto_4

    :cond_3
    const-string v3, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    .line 1706
    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    move-object v1, v13

    goto :goto_7

    .line 1697
    :pswitch_14
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/video/HevcConfig;->parse(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 1698
    iget-object v3, v1, Lcom/oculus/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1699
    iget v1, v1, Lcom/oculus/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v1, "video/hevc"

    goto :goto_7

    .line 1691
    :pswitch_15
    new-instance v1, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-direct {v1, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/video/AvcConfig;->parse(Lcom/oculus/android/exoplayer2/util/ParsableByteArray;)Lcom/oculus/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 1692
    iget-object v3, v1, Lcom/oculus/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1693
    iget v1, v1, Lcom/oculus/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    const-string v1, "video/avc"

    goto :goto_7

    .line 1686
    :pswitch_16
    iget-object v1, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_4

    move-object v1, v15

    goto :goto_5

    .line 1687
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_5
    const-string v3, "video/mp4v-es"

    goto/16 :goto_4

    :pswitch_17
    const-string v1, "video/mpeg2"

    goto :goto_6

    :pswitch_18
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_6

    :pswitch_19
    const-string v1, "video/x-vnd.on2.vp8"

    :goto_6
    move-object v3, v15

    :goto_7
    const/16 v20, -0x1

    :goto_8
    const/16 v23, -0x1

    .line 1813
    :goto_9
    iget-boolean v11, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->flagDefault:Z

    or-int/2addr v11, v5

    .line 1814
    iget-boolean v12, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->flagForced:Z

    if-eqz v12, :cond_5

    const/4 v5, 0x2

    :cond_5
    or-int/2addr v5, v11

    .line 1817
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1819
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->channelCount:I

    iget v6, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->sampleRate:I

    iget-object v7, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    iget-object v8, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    move-object/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v6

    move-object/from16 v24, v3

    move-object/from16 v25, v7

    move/from16 v26, v5

    move-object/from16 v27, v8

    invoke-static/range {v16 .. v27}, Lcom/oculus/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    const/4 v7, 0x1

    goto/16 :goto_c

    .line 1822
    :cond_6
    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1824
    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_9

    .line 1825
    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayWidth:I

    if-ne v2, v8, :cond_7

    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->width:I

    :cond_7
    iput v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayWidth:I

    .line 1826
    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayHeight:I

    if-ne v2, v8, :cond_8

    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->height:I

    :cond_8
    iput v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayHeight:I

    :cond_9
    const/high16 v2, -0x40800000    # -1.0f

    .line 1829
    iget v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayWidth:I

    if-eq v4, v8, :cond_a

    iget v5, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->displayHeight:I

    if-eq v5, v8, :cond_a

    .line 1830
    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->height:I

    mul-int v2, v2, v4

    int-to-float v2, v2

    iget v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->width:I

    mul-int v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    move/from16 v26, v2

    goto :goto_a

    :cond_a
    const/high16 v26, -0x40800000    # -1.0f

    .line 1833
    :goto_a
    iget-boolean v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v2, :cond_b

    .line 1834
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v2

    .line 1835
    new-instance v15, Lcom/oculus/android/exoplayer2/video/ColorInfo;

    iget v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorSpace:I

    iget v5, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorRange:I

    iget v7, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v15, v4, v5, v7, v2}, Lcom/oculus/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    :cond_b
    move-object/from16 v29, v15

    .line 1837
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->width:I

    iget v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->height:I

    const/high16 v23, -0x40800000    # -1.0f

    const/16 v25, -0x1

    iget-object v5, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->projectionData:[B

    iget v7, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->stereoMode:I

    iget-object v8, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v24, v3

    move-object/from16 v27, v5

    move/from16 v28, v7

    move-object/from16 v30, v8

    invoke-static/range {v16 .. v30}, Lcom/oculus/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/oculus/android/exoplayer2/video/ColorInfo;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    const/4 v7, 0x2

    goto/16 :goto_c

    .line 1841
    :cond_c
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1843
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    invoke-static {v2, v1, v5, v3, v4}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    goto/16 :goto_c

    .line 1845
    :cond_d
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1847
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1848
    invoke-static {}, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor;->access$300()[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1849
    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->codecPrivate:[B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    iget-object v3, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    const/16 v22, -0x1

    iget-object v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    const-wide v24, 0x7fffffffffffffffL

    move-object/from16 v17, v1

    move/from16 v20, v5

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    move-object/from16 v26, v2

    invoke-static/range {v16 .. v26}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    goto :goto_c

    .line 1853
    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "application/pgs"

    .line 1854
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "application/dvbsubs"

    .line 1855
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_b

    .line 1860
    :cond_f
    new-instance v1, Lcom/oculus/android/exoplayer2/ParserException;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/oculus/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1857
    :cond_10
    :goto_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x1

    iget-object v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->language:Ljava/lang/String;

    iget-object v4, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v17, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    invoke-static/range {v16 .. v23}, Lcom/oculus/android/exoplayer2/Format;->createImageSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;Lcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v1

    .line 1863
    :goto_c
    iget v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    invoke-interface {v3, v2, v7}, Lcom/oculus/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    .line 1864
    iget-object v2, v0, Lcom/oculus/video/extractor/mkv/OculusMatroskaExtractor$Track;->output:Lcom/oculus/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/oculus/android/exoplayer2/extractor/TrackOutput;->format(Lcom/oculus/android/exoplayer2/Format;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_1c
        -0x7ce7f3b0 -> :sswitch_1b
        -0x76567dc0 -> :sswitch_1a
        -0x6a615338 -> :sswitch_19
        -0x672350af -> :sswitch_18
        -0x585f4fce -> :sswitch_17
        -0x585f4fcd -> :sswitch_16
        -0x51dc40b2 -> :sswitch_15
        -0x37a9c464 -> :sswitch_14
        -0x2016c535 -> :sswitch_13
        -0x2016c4e5 -> :sswitch_12
        -0x19552dbd -> :sswitch_11
        -0x1538b2ba -> :sswitch_10
        0x3c02325 -> :sswitch_f
        0x3c02353 -> :sswitch_e
        0x3c030c5 -> :sswitch_d
        0x4e86155 -> :sswitch_c
        0x4e86156 -> :sswitch_b
        0x5e8da3e -> :sswitch_a
        0x1a8350d6 -> :sswitch_9
        0x2056f406 -> :sswitch_8
        0x2b453ce4 -> :sswitch_7
        0x2c0618eb -> :sswitch_6
        0x32fdf009 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
