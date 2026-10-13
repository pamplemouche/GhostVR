.class public final Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

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
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private minLoadableRetryCount:I


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .param p2    # Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    .line 93
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, 0x3

    .line 94
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->minLoadableRetryCount:I

    const-wide/16 p1, -0x1

    .line 95
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    .line 96
    new-instance p1, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/oculus/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

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

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
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

    .line 217
    iput-boolean v1, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    .line 218
    iget-object v1, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v1, :cond_0

    .line 219
    new-instance v1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;

    invoke-direct {v1}, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifestParser;-><init>()V

    iput-object v1, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 221
    :cond_0
    new-instance v1, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v3, 0x0

    .line 223
    invoke-static/range {p1 .. p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v7, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v8, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v9, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->minLoadableRetryCount:I

    iget-wide v10, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v14, 0x0

    move-object v2, v1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v2 .. v14}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$1;)V

    return-object v1
.end method

.method public createMediaSource(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;
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

    .line 178
    iget-boolean v1, v2, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-static {v1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 179
    iput-boolean v3, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    .line 180
    new-instance v14, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;

    iget-object v7, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v8, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->minLoadableRetryCount:I

    iget-wide v9, v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v13, 0x0

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v13}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLandroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$1;)V

    return-object v14
.end method

.method public getSupportedTypes()[I
    .locals 2

    const/4 v0, 0x1

    .line 236
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    return-object v0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 160
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/oculus/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public setLivePresentationDelayMs(J)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 127
    iput-wide p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->livePresentationDelayMs:J

    return-object p0
.end method

.method public setManifestParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;"
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 141
    invoke-static {p1}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;

    return-object p0
.end method

.method public setMinLoadableRetryCount(I)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->isCreateCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 109
    iput p1, p0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->minLoadableRetryCount:I

    return-object p0
.end method
