.class public final Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;
.super Ljava/lang/Object;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HlsChunkHolder"
.end annotation


# instance fields
.field public chunk:Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

.field public endOfStream:Z

.field public playlist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/oculus/android/exoplayer2/source/chunk/Chunk;

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    .line 84
    iput-object v0, p0, Lcom/oculus/video/source/hls/HlsChunkSource$HlsChunkHolder;->playlist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    return-void
.end method
