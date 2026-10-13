.class public Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;
.super Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;
.source "SyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/SyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncPrimaryHlsPlaylistListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/SyncMediaPlayer;


# direct methods
.method protected constructor <init>(Lcom/oculus/video/SyncMediaPlayer;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onPrimaryPlaylistRefreshed(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V
    .locals 6

    if-eqz p2, :cond_5

    .line 41
    iget-object v0, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;->onPrimaryPlaylistRefreshed(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;)V

    .line 47
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-object v1, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {v0, v1}, Lcom/oculus/video/SyncMediaPlayer;->access$200(Lcom/oculus/video/SyncMediaPlayer;Lcom/oculus/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object p3, p3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, ""

    .line 50
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "; "

    if-ge v1, v3, :cond_2

    .line 51
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v3, v3, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    if-nez v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v5, v5, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    invoke-static {v2, v5}, Lcom/oculus/video/SyncMediaPlayer;->access$200(Lcom/oculus/video/SyncMediaPlayer;Lcom/oculus/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {}, Lcom/oculus/video/SyncMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrimaryPlaylistChanged: selected profile:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "available profiles: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p3, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-static {p3}, Lcom/oculus/video/SyncMediaPlayer;->access$300(Lcom/oculus/video/SyncMediaPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 63
    :try_start_0
    iget-object p3, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-boolean p3, p3, Lcom/oculus/video/SyncMediaPlayer;->isMetaDataSkipped:Z

    if-eqz p3, :cond_4

    .line 64
    iget-object p3, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-object p2, p2, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p2, p2, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    invoke-static {p3, p2}, Lcom/oculus/video/SyncMediaPlayer;->access$002(Lcom/oculus/video/SyncMediaPlayer;I)I

    .line 65
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide p2, p2, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    .line 66
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    .line 67
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/SyncMediaPlayer;->access$400(Lcom/oculus/video/SyncMediaPlayer;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide v2, v2, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    sub-long/2addr v2, p2

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/oculus/video/SyncMediaPlayer;->access$402(Lcom/oculus/video/SyncMediaPlayer;J)J

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    const/4 v0, 0x5

    iput v0, p1, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    .line 73
    invoke-static {}, Lcom/oculus/video/SyncMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prevPlaylistPDTMillis : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", curPlaylistPDTMillis : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide p2, p2, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", curPlaylistDurationMillis : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    iget-wide p2, p2, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/oculus/video/SyncMediaPlayer;->isMetaDataSkipped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/SyncMediaPlayer;->access$300(Lcom/oculus/video/SyncMediaPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-static {p2}, Lcom/oculus/video/SyncMediaPlayer;->access$300(Lcom/oculus/video/SyncMediaPlayer;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
