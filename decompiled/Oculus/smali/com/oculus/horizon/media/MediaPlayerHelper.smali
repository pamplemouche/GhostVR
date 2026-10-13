.class public abstract Lcom/oculus/horizon/media/MediaPlayerHelper;
.super Ljava/lang/Object;
.source "MediaPlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mDestroyed:Z

.field protected final mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

.field protected final mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mPrepared:Z

.field protected mPreparing:Z

.field private mStatusListener:Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/oculus/horizon/media/MediaPlayerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/oculus/horizon/media/MediaPlayerHelper$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/media/MediaPlayerHelper$1;-><init>(Lcom/oculus/horizon/media/MediaPlayerHelper;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 62
    new-instance v0, Lcom/oculus/horizon/media/MediaPlayerHelper$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/media/MediaPlayerHelper$2;-><init>(Lcom/oculus/horizon/media/MediaPlayerHelper;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 73
    new-instance v0, Lcom/oculus/horizon/media/MediaPlayerHelper$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/media/MediaPlayerHelper$3;-><init>(Lcom/oculus/horizon/media/MediaPlayerHelper;)V

    iput-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 89
    iput-object p1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 96
    iput-object p2, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    iget-object v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/media/MediaPlayerLogger;->attachToMediaPLayer(Landroid/media/MediaPlayer;)V

    .line 99
    iput-boolean v2, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPreparing:Z

    .line 100
    iput-boolean v2, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    .line 101
    iput-boolean v2, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mDestroyed:Z

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/media/MediaPlayerHelper;)Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mStatusListener:Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/media/MediaPlayerHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/media/MediaPlayerHelper;->stateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private stateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPreparing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",destroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mDestroyed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mDestroyed:Z

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    return v0
.end method

.method public isPreparing()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPreparing:Z

    return v0
.end method

.method protected onMediaPrepared()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public pause()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoPlaybackEnded()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/oculus/horizon/media/MediaPlayerHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not pause media player"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public play()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mPrepared:Z

    if-nez v0, :cond_1

    .line 128
    sget-object v0, Lcom/oculus/horizon/media/MediaPlayerHelper;->TAG:Ljava/lang/String;

    const-string v1, "MediaPlayerHelper was not prepared when trying to play()"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logVideoPlaybackStarted()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    sget-object v1, Lcom/oculus/horizon/media/MediaPlayerHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not start media player"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final prepare(Landroid/net/Uri;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mLogger:Lcom/oculus/horizon/media/MediaPlayerLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/media/MediaPlayerLogger;->logMediaPlayerPreparationStart()V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 109
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 186
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 162
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 166
    if-nez p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public setStatusListener(Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/oculus/horizon/media/MediaPlayerHelper;->mStatusListener:Lcom/oculus/horizon/media/MediaPlayerHelper$StatusListener;

    .line 116
    return-void
.end method
