.class public interface abstract Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PlaylistEventListener;
.super Ljava/lang/Object;
.source "OculusHlsPlaylistTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaylistEventListener"
.end annotation


# virtual methods
.method public abstract onPlaylistBlacklisted(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;J)V
.end method

.method public abstract onPlaylistChanged(Ljava/util/IdentityHashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            "Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$MediaPlaylistBundle;",
            ">;)V"
        }
    .end annotation
.end method
