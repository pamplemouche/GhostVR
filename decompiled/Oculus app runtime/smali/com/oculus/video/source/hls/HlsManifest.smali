.class public final Lcom/oculus/video/source/hls/HlsManifest;
.super Ljava/lang/Object;
.source "HlsManifest.java"


# instance fields
.field public final masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

.field public final mediaPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oculus/video/source/hls/HlsManifest;->masterPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    .line 41
    iput-object p2, p0, Lcom/oculus/video/source/hls/HlsManifest;->mediaPlaylist:Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    return-void
.end method
