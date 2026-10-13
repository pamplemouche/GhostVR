.class public Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;
.super Ljava/lang/Object;
.source "SpeakerPlayer.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "Speaker"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public RVRCtxTag:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static describe()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Landroid/util/Pair;

    const-string v2, "startPlayback"

    const-string v3, "s"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Landroid/util/Pair;

    const-string v2, "stopPlayback"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method

.method static native nativeEmitEvent(JLjava/lang/String;)V
.end method

.method static native nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method static native nativeInvokeCallback(JILjava/lang/String;)V
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "Speaker"

    return-object v0
.end method

.method public shutdownModule()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->stopPlayback()V

    .line 35
    return-void
.end method

.method public startPlayback(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 50
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer$1;

    invoke-direct {v2, p0}, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer$1;-><init>(Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 58
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->RVRCtxTag:J

    const-string v1, "onStartPlayback"

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->nativeEmitEvent(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 71
    iget-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 78
    iget-wide v2, p0, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->RVRCtxTag:J

    const-string v1, "onStopPlayback"

    invoke-static {v2, v3, v1}, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->nativeEmitEvent(JLjava/lang/String;)V

    .line 80
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ise":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/oculus/vrshell/home/module/audio/SpeakerPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
