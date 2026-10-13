.class public final Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;
.super Ljava/lang/Object;
.source "OculusHlsPlaylistParser.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
        "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private final encryptionIv:Ljava/lang/String;

.field private final encryptionKey:Ljava/lang/String;

.field private final parser:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->parser:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    .line 25
    iput-object p1, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionKey:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionIv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 31
    iget-object v1, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->parser:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    if-nez v2, :cond_0

    return-object v1

    .line 36
    :cond_0
    check-cast v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    .line 37
    iget-object v2, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionKey:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 38
    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionKey:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 39
    new-array v3, v4, [B

    .line 40
    array-length v5, v2

    if-le v5, v4, :cond_1

    array-length v5, v2

    sub-int/2addr v5, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 41
    :goto_0
    array-length v4, v3

    array-length v6, v2

    sub-int/2addr v4, v6

    add-int/2addr v4, v5

    array-length v6, v2

    sub-int/2addr v6, v5

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:text/plain;base64,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 46
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v4, v1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 50
    iget-object v5, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 51
    iget-object v6, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionIv:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 52
    iget-object v5, v0, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->encryptionIv:Ljava/lang/String;

    :cond_2
    move-object v12, v5

    .line 55
    new-instance v15, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v5, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    iget-wide v6, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    iget v8, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    iget-wide v9, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v13, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    move-object/from16 p1, v1

    iget-wide v0, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    iget-boolean v11, v4, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    move-object v4, v15

    move/from16 v17, v11

    move-object v11, v2

    move-object/from16 p2, v2

    move-object v2, v15

    move-wide v15, v0

    invoke-direct/range {v4 .. v17}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;JJZ)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_3
    move-object/from16 p1, v1

    .line 68
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    move-object v1, v3

    move-object v3, v0

    move-object/from16 v2, p1

    iget v4, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    iget-object v5, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v6, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    iget-wide v7, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v9, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-boolean v11, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    iget v12, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget-wide v13, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget v15, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 p1, v3

    move/from16 p2, v4

    iget-wide v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide/from16 v16, v3

    iget-boolean v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegmentsTag:Z

    move/from16 v18, v3

    iget-boolean v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v19, v3

    iget-boolean v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v20, v3

    iget-object v3, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v21, v3

    iget-object v2, v2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->initializationSegment:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    move-object/from16 v22, v2

    move-object/from16 v23, v1

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v3 .. v23}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/oculus/android/exoplayer2/drm/DrmInitData;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    move-object v2, v1

    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    move-result-object p1

    return-object p1
.end method
