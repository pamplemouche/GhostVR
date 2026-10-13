.class public final Lcom/oculus/android/exoplayer2/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFirstRepresentation(Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;
    .locals 2

    .line 188
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object p0, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 193
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    :goto_0
    return-object v0
.end method

.method public static loadChunkIndex(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)Lcom/oculus/android/exoplayer2/extractor/ChunkIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 122
    invoke-static {p0, p1, p2, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSeekMap()Lcom/oculus/android/exoplayer2/extractor/SeekMap;

    move-result-object p0

    check-cast p0, Lcom/oculus/android/exoplayer2/extractor/ChunkIndex;

    :goto_0
    return-object p0
.end method

.method public static loadDrmInitData(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;)Lcom/oculus/android/exoplayer2/drm/DrmInitData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 74
    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 77
    invoke-static {p1, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->getFirstRepresentation(Lcom/oculus/android/exoplayer2/source/dash/manifest/Period;I)Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    iget-object p1, v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    .line 83
    invoke-static {p0, v0, v1}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->loadSampleFormat(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p0

    if-nez p0, :cond_1

    .line 84
    iget-object p0, p1, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/Format;->copyWithManifestFormatInfo(Lcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object p0

    iget-object p0, p0, Lcom/oculus/android/exoplayer2/Format;->drmInitData:Lcom/oculus/android/exoplayer2/drm/DrmInitData;

    :goto_0
    return-object p0
.end method

.method private static loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 143
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getInitializationUri()Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    iget-object v2, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {p1, v2}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->newWrappedExtractor(ILcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 150
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getIndexUri()Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    .line 156
    :cond_1
    iget-object v1, p2, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;->attemptMerge(Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 158
    invoke-static {p0, p2, p1, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;)V

    move-object v0, p3

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 164
    :cond_3
    :goto_0
    invoke-static {p0, p2, p1, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;)V

    return-object p1
.end method

.method private static loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 171
    new-instance v7, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget-object v0, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->baseUrl:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-wide v2, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p3, Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 172
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 173
    new-instance p3, Lcom/oculus/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v3, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/source/chunk/InitializationChunk;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/upstream/DataSpec;Lcom/oculus/android/exoplayer2/Format;ILjava/lang/Object;Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;)V

    .line 176
    invoke-virtual {p3}, Lcom/oculus/android/exoplayer2/source/chunk/InitializationChunk;->load()V

    return-void
.end method

.method public static loadManifest(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    new-instance v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 58
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 59
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    return-object p0
.end method

.method public static loadSampleFormat(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)Lcom/oculus/android/exoplayer2/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, p1, p2, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashUtil;->loadInitializationData(Lcom/oculus/android/exoplayer2/upstream/DataSource;ILcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Z)Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;->getSampleFormats()[Lcom/oculus/android/exoplayer2/Format;

    move-result-object p0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method private static newWrappedExtractor(ILcom/oculus/android/exoplayer2/Format;)Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;
    .locals 2

    .line 180
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    const-string v1, "video/webm"

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/webm"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .line 184
    :goto_2
    new-instance v1, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;

    invoke-direct {v1, v0, p0, p1}, Lcom/oculus/android/exoplayer2/source/chunk/ChunkExtractorWrapper;-><init>(Lcom/oculus/android/exoplayer2/extractor/Extractor;ILcom/oculus/android/exoplayer2/Format;)V

    return-object v1
.end method
