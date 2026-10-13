.class public interface abstract Lcom/oculus/video/source/hls/HlsSampleStreamWrapper$Callback;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/oculus/video/source/hls/HlsSampleStreamWrapper;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onPlaylistRefreshRequired(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;)V
.end method

.method public abstract onPrepared()V
.end method
