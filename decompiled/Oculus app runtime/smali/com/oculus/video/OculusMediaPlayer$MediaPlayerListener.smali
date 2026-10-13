.class Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;
.super Ljava/lang/Object;
.source "OculusMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/oculus/video/OculusMediaPlayer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/video/OculusMediaPlayer;Lcom/oculus/video/OculusMediaPlayer$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;-><init>(Lcom/oculus/video/OculusMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onFinish()V

    .line 42
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusMediaPlayer;->release()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3f2

    const/4 v0, 0x1

    if-eq p3, p1, :cond_6

    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_5

    const/16 p1, -0x3ec

    if-eq p3, p1, :cond_4

    const/16 p1, -0x6e

    if-eq p3, p1, :cond_3

    if-eq p2, v0, :cond_2

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    return v1

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_SERVER_DIED"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_UNKNOWN"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_TIMED_OUT"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0

    .line 53
    :cond_4
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_IO"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0

    .line 56
    :cond_5
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_MALFORMED"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0

    .line 59
    :cond_6
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "MediaPlayer.onError: MEDIA_ERROR_UNSUPPORTED"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 78
    iget-object p3, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p3}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p3

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oculus/video/OculusMediaPlayer;->access$302(Lcom/oculus/video/OculusMediaPlayer;Z)Z

    .line 83
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onBuffering()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1, v0}, Lcom/oculus/video/OculusMediaPlayer;->access$302(Lcom/oculus/video/OculusMediaPlayer;Z)Z

    .line 86
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onStopBuffering()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x321

    if-ne p2, p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1, v0}, Lcom/oculus/video/OculusMediaPlayer;->access$402(Lcom/oculus/video/OculusMediaPlayer;Z)Z

    :cond_3
    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oculus/video/OculusMediaPlayer;->access$502(Lcom/oculus/video/OculusMediaPlayer;Z)Z

    .line 100
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$600(Lcom/oculus/video/OculusMediaPlayer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oculus/video/OculusMediaPlayer;->setMute(Z)V

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$700(Lcom/oculus/video/OculusMediaPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0, p1}, Lcom/oculus/video/OculusMediaPlayer;->access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onSeekProcessed()V

    .line 117
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onReady()V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$800(Lcom/oculus/video/OculusMediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-virtual {p1}, Lcom/oculus/video/OculusMediaPlayer;->getFrameRate()F

    move-result p1

    const/high16 v0, 0x800000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    float-to-double v3, p1

    div-double/2addr v1, v3

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/oculus/video/OculusMediaPlayer;->access$802(Lcom/oculus/video/OculusMediaPlayer;J)J

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v1, p1

    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    int-to-long v3, p1

    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$400(Lcom/oculus/video/OculusMediaPlayer;)Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/oculus/video/VideoPlayer$EventListener;->onTimelineChanged(JJZ)V

    .line 142
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;->this$0:Lcom/oculus/video/OculusMediaPlayer;

    invoke-static {p1}, Lcom/oculus/video/OculusMediaPlayer;->access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/oculus/video/VideoPlayer$EventListener;->onVideoSizeChanged(IIFLandroid/graphics/Rect;)V

    return-void
.end method
