.class public Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;
.super Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;
.source "SyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/SyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SyncVideoRendererEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/SyncMediaPlayer;


# direct methods
.method protected constructor <init>(Lcom/oculus/video/SyncMediaPlayer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    return-void
.end method


# virtual methods
.method public onVideoInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;->onVideoInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V

    .line 32
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/oculus/video/SyncMediaPlayer;->access$002(Lcom/oculus/video/SyncMediaPlayer;I)I

    .line 33
    invoke-static {}, Lcom/oculus/video/SyncMediaPlayer;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoInputFormatChanged, curPlaylistSelected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;->this$0:Lcom/oculus/video/SyncMediaPlayer;

    invoke-static {v1}, Lcom/oculus/video/SyncMediaPlayer;->access$000(Lcom/oculus/video/SyncMediaPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
