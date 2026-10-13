.class public abstract Lcom/oculus/horizon/media/MediaPlayerLogger;
.super Ljava/lang/Object;
.source "MediaPlayerLogger.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/oculus/horizon/media/MediaPlayerLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/media/MediaPlayerLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method attachToMediaPLayer(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 16
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 17
    return-void
.end method

.method public abstract logMediaPlayerPreparationStart()V
.end method

.method public abstract logMediaPlayerPrepared()V
.end method

.method protected abstract logVideoBufferingStarted()V
.end method

.method protected abstract logVideoLagging()V
.end method

.method protected abstract logVideoPlaybackEnded()V
.end method

.method protected abstract logVideoPlaybackStarted()V
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoPlaybackEnded()V

    .line 22
    return-void
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 26
    sparse-switch p2, :sswitch_data_0

    .line 40
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 28
    :sswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoLagging()V

    goto :goto_0

    .line 31
    :sswitch_1
    invoke-virtual {p0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoPlaybackStarted()V

    goto :goto_0

    .line 34
    :sswitch_2
    invoke-virtual {p0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoBufferingStarted()V

    goto :goto_0

    .line 37
    :sswitch_3
    sget-object v0, Lcom/oculus/horizon/media/MediaPlayerLogger;->TAG:Ljava/lang/String;

    const-string v1, "Bad interleaving for video"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method
