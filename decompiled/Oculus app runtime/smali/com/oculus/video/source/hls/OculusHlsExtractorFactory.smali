.class public final Lcom/oculus/video/source/hls/OculusHlsExtractorFactory;
.super Ljava/lang/Object;
.source "OculusHlsExtractorFactory.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;


# static fields
.field public static final AAC_FILE_EXTENSION:Ljava/lang/String; = ".aac"

.field public static final AC3_FILE_EXTENSION:Ljava/lang/String; = ".ac3"

.field public static final EC3_FILE_EXTENSION:Ljava/lang/String; = ".ec3"

.field public static final M4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".m4"

.field public static final MP3_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field public static final MP4_FILE_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final MP4_FILE_EXTENSION_PREFIX:Ljava/lang/String; = ".mp4"

.field public static final VTT_FILE_EXTENSION:Ljava/lang/String; = ".vtt"

.field public static final WEBVTT_FILE_EXTENSION:Ljava/lang/String; = ".webvtt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtractor(Lcom/oculus/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/Format;Ljava/util/List;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/oculus/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Format;",
            ">;",
            "Lcom/oculus/android/exoplayer2/drm/DrmInitData;",
            "Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/oculus/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 62
    iget-object v0, p3, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "text/vtt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    const-string v0, ".webvtt"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, ".vtt"

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, ".aac"

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_6

    :cond_1
    const-string v0, ".ac3"

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ".ec3"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v0, ".mp3"

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mp3/Mp3Extractor;

    const-wide/16 p2, 0x0

    invoke-direct {p1, v1, p2, p3}, Lcom/oculus/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    goto/16 :goto_6

    :cond_4
    const-string p1, ".mp4"

    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const-string v2, ".m4"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 p1, 0x10

    if-eqz p4, :cond_6

    const/16 p1, 0x30

    goto :goto_1

    .line 92
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 94
    :goto_1
    iget-object p2, p3, Lcom/oculus/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_8

    .line 99
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_7

    or-int/lit8 p1, p1, 0x2

    .line 102
    :cond_7
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "video/avc"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    or-int/lit8 p1, p1, 0x4

    .line 106
    :cond_8
    new-instance p2, Lcom/oculus/android/exoplayer2/extractor/ts/TsExtractor;

    new-instance p5, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;

    invoke-direct {p5, p1, p4, p3}, Lcom/oculus/video/extractor/hls/OculusTsPayloadReaderFactory;-><init>(ILjava/util/List;Lcom/oculus/android/exoplayer2/Format;)V

    const/4 p1, 0x2

    invoke-direct {p2, p1, p6, p5}, Lcom/oculus/android/exoplayer2/extractor/ts/TsExtractor;-><init>(ILcom/oculus/android/exoplayer2/util/TimestampAdjuster;Lcom/oculus/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;)V

    move-object p1, p2

    goto :goto_6

    .line 82
    :cond_9
    :goto_2
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_a

    goto :goto_3

    .line 83
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :goto_3
    move-object v7, p4

    move-object v2, p1

    move-object v4, p6

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/oculus/android/exoplayer2/util/TimestampAdjuster;Lcom/oculus/android/exoplayer2/extractor/mp4/Track;Lcom/oculus/android/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    goto :goto_6

    .line 72
    :cond_b
    :goto_4
    new-instance p1, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    goto/16 :goto_0

    .line 65
    :cond_c
    :goto_5
    new-instance p1, Lcom/oculus/video/source/hls/WebvttExtractor;

    iget-object p2, p3, Lcom/oculus/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p6}, Lcom/oculus/video/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/util/TimestampAdjuster;)V

    .line 109
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
