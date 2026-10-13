.class public final Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createChunkSource(Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource;
    .locals 8

    .line 59
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/oculus/android/exoplayer2/upstream/DataSource;

    move-result-object v6

    .line 60
    new-instance v0, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;-><init>(Lcom/oculus/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/oculus/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/oculus/android/exoplayer2/trackselection/TrackSelection;Lcom/oculus/android/exoplayer2/upstream/DataSource;[Lcom/oculus/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)V

    return-object v0
.end method
