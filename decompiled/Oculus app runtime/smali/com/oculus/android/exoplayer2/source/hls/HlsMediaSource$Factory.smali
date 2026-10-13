.class public final Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

.field private isCreateCalled:Z

.field private minLoadableRetryCount:I

.field private playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    .line 90
    sget-object p1, Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    const/4 p1, 0x3

    .line 91
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->minLoadableRetryCount:I

    .line 92
    new-instance p1, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Lcom/oculus/android/exoplayer2/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/MediaSource;
    .locals 0
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0, v0}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 12
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    .line 195
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 198
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;

    iget-object v3, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;

    iget-object v4, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iget-object v5, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v6, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->minLoadableRetryCount:I

    iget-object v9, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-boolean v10, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v11}, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/source/hls/HlsDataSourceFactory;Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;ZLcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$1;)V

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    .line 212
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0
.end method

.method public setAllowChunklessPreparation(Z)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 167
    iput-boolean p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    return-object p0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 153
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public setExtractorFactory(Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 106
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/oculus/android/exoplayer2/source/hls/HlsExtractorFactory;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 120
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->minLoadableRetryCount:I

    return-object p0
.end method

.method public setPlaylistParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;"
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 134
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/hls/HlsMediaSource$Factory;->playlistParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method
