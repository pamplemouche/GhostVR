.class public final Lcom/oculus/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;
.super Lcom/oculus/android/exoplayer2/offline/SegmentDownloader;
.source "SsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/android/exoplayer2/offline/SegmentDownloader<",
        "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsUtil;->fixManifestUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oculus/android/exoplayer2/offline/SegmentDownloader;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-void
.end method


# virtual methods
.method public getAllRepresentationKeys()[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getManifest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 75
    :goto_0
    iget-object v4, v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 76
    iget-object v4, v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    .line 77
    :goto_1
    iget-object v6, v4, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/oculus/android/exoplayer2/Format;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 78
    new-instance v6, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-direct {v6, v3, v5}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    return-object v0
.end method

.method public bridge synthetic getAllRepresentationKeys()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getAllRepresentationKeys()[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    move-result-object v0

    return-object v0
.end method

.method protected getManifest(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;

    new-instance v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;ILcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)V

    .line 88
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->load()V

    .line 89
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    return-object p1
.end method

.method protected bridge synthetic getManifest(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getManifest(Lcom/oculus/android/exoplayer2/upstream/DataSource;Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource;",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            "[",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    aget-object v2, p3, v1

    .line 97
    iget-object v3, p2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v4, v2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    .line 98
    :goto_1
    iget v5, v3, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-ge v4, v5, :cond_0

    .line 99
    new-instance v5, Lcom/oculus/android/exoplayer2/offline/SegmentDownloader$Segment;

    invoke-virtual {v3, v4}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    new-instance v8, Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    iget v9, v2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    .line 100
    invoke-virtual {v3, v9, v4}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/oculus/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/oculus/android/exoplayer2/offline/SegmentDownloader$Segment;-><init>(JLcom/oculus/android/exoplayer2/upstream/DataSpec;)V

    .line 99
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected bridge synthetic getSegments(Lcom/oculus/android/exoplayer2/upstream/DataSource;Ljava/lang/Object;[Ljava/lang/Object;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    check-cast p2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    check-cast p3, [Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/offline/SsDownloader;->getSegments(Lcom/oculus/android/exoplayer2/upstream/DataSource;Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;[Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
