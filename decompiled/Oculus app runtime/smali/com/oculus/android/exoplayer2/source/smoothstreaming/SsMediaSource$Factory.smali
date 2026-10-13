.class public final Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private isCreateCalled:Z

.field private livePresentationDelayMs:J

.field private final manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private minLoadableRetryCount:I


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .param p2    # Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 84
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, 0x3

    .line 85
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->minLoadableRetryCount:I

    const-wide/16 p1, 0x7530

    .line 86
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    .line 87
    new-instance p1, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0, v0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 15
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    const/4 v1, 0x1

    .line 205
    iput-boolean v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    .line 206
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    iput-object v1, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 209
    :cond_0
    new-instance v1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    const/4 v3, 0x0

    .line 211
    invoke-static/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v7, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v8, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v9, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->minLoadableRetryCount:I

    iget-wide v10, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v14, 0x0

    move-object v2, v1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v2 .. v14}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V

    return-object v1
.end method

.method public createMediaSource(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 15
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v2, p1

    .line 166
    iget-boolean v1, v2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 167
    iput-boolean v3, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    .line 168
    new-instance v14, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v7, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v8, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->minLoadableRetryCount:I

    iget-wide v9, v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v13}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V

    return-object v14
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    .line 224
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 148
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public setLivePresentationDelayMs(J)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 116
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    return-object p0
.end method

.method public setManifestParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 129
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 100
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->minLoadableRetryCount:I

    return-object p0
.end method
