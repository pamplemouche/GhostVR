.class public final Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "OculusTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I

.field private format:Lcom/oculus/android/exoplayer2/Format;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;-><init>(ILjava/util/List;Lcom/oculus/android/exoplayer2/Format;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lcom/oculus/android/exoplayer2/Format;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;",
            "Lcom/oculus/android/exoplayer2/Format;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->flags:I

    const/16 p1, 0x20

    .line 81
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const-string v0, "application/cea-608"

    .line 82
    invoke-static {p2, v0, p1, p2}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 85
    :cond_0
    iput-object p2, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 86
    iput-object p3, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->format:Lcom/oculus/android/exoplayer2/Format;

    return-void
.end method

.method private buildSeiReader(Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/oculus/video/extractor/hls/SeiReader;
    .locals 14

    const/16 v0, 0x20

    .line 143
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance p1, Lcom/oculus/video/extractor/hls/SeiReader;

    iget-object v0, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/oculus/video/extractor/hls/SeiReader;-><init>(Ljava/util/List;)V

    return-object p1

    .line 146
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 147
    iget-object p1, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 148
    :goto_0
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 149
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 150
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 151
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_3

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    const/4 v5, 0x3

    .line 157
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit16 v6, v5, 0x80

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    and-int/lit8 v5, v5, 0x3f

    const-string v6, "application/cea-708"

    move v12, v5

    move-object v7, v6

    goto :goto_3

    :cond_2
    const-string v5, "application/cea-608"

    move-object v7, v5

    const/4 v12, 0x1

    :goto_3
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 169
    invoke-static/range {v6 .. v13}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/oculus/android/exoplayer2/drm/DrmInitData;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 172
    invoke-virtual {v0, v5}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v0, v3}, Lcom/oculus/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 179
    :cond_4
    new-instance v0, Lcom/oculus/video/extractor/hls/SeiReader;

    invoke-direct {v0, p1}, Lcom/oculus/video/extractor/hls/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private isSet(I)Z
    .locals 1

    .line 183
    iget v0, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v2, 0x11

    if-eq p1, v2, :cond_9

    const/16 v0, 0x15

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x24

    if-eq p1, v0, :cond_5

    const/16 v0, 0x59

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x81

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_3

    const/16 v0, 0x86

    if-eq p1, v0, :cond_0

    const/16 v0, 0x87

    if-eq p1, v0, :cond_2

    return-object v3

    :cond_0
    const/16 p1, 0x10

    .line 121
    invoke-direct {p0, p1}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v3, p1}, Lcom/oculus/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    :goto_0
    return-object v3

    .line 108
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 111
    :cond_3
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 126
    :cond_4
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 119
    :cond_5
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/oculus/video/extractor/hls/OculusH265Reader;

    invoke-direct {p0, p2}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->buildSeiReader(Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/oculus/video/extractor/hls/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/oculus/video/extractor/hls/OculusH265Reader;-><init>(Lcom/oculus/video/extractor/hls/SeiReader;)V

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 115
    :cond_6
    invoke-direct {p0, v1}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/oculus/video/extractor/hls/OculusH264Reader;

    .line 116
    invoke-direct {p0, p2}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->buildSeiReader(Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/oculus/video/extractor/hls/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    iget-object v2, p0, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/oculus/video/extractor/hls/OculusH264Reader;-><init>(Lcom/oculus/video/extractor/hls/SeiReader;ZZLcom/oculus/android/exoplayer2/Format;)V

    invoke-direct {v3, p1}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_1
    return-object v3

    .line 124
    :cond_8
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lcom/oculus/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 104
    :cond_9
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/LatmReader;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_2
    return-object v3

    .line 101
    :cond_b
    invoke-direct {p0, v0}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    new-instance v3, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_3
    return-object v3

    .line 99
    :cond_d
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 113
    :cond_e
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lcom/oculus/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p2}, Lcom/oculus/android/exoplayer2/extractor/ts/H262Reader;-><init>()V

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/oculus/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1
.end method
