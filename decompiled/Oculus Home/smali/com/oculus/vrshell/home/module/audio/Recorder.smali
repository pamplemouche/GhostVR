.class public abstract Lcom/oculus/vrshell/home/module/audio/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPath:Ljava/io/File;

.field private mRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/vrshell/home/module/audio/Recorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/module/audio/Recorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mPath:Ljava/io/File;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/home/module/audio/Recorder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/audio/Recorder;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oculus/vrshell/home/module/audio/Recorder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/module/audio/Recorder;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/vrshell/home/module/audio/Recorder;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract getChannelMask()I
.end method

.method protected abstract getEncoding()I
.end method

.method protected abstract getFileExtension()Ljava/lang/String;
.end method

.method protected abstract getSampleRate()I
.end method

.method protected abstract onRecordingStart()V
.end method

.method protected abstract onRecordingStop(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public start(Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 65
    iget-boolean v9, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    if-eqz v9, :cond_0

    move v1, v8

    .line 137
    :goto_0
    return v1

    .line 69
    :cond_0
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mPath:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/Recorder;->getFileExtension()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v7, "outFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/Recorder;->getSampleRate()I

    move-result v2

    .line 71
    .local v2, "sampleRate":I
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/Recorder;->getChannelMask()I

    move-result v3

    .line 72
    .local v3, "channelMask":I
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/module/audio/Recorder;->getEncoding()I

    move-result v4

    .line 73
    .local v4, "encoding":I
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    mul-int/lit8 v5, v9, 0x2

    .line 75
    .local v5, "bufferSize":I
    new-instance v0, Landroid/media/AudioRecord;

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 81
    .local v0, "recorder":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v9

    if-eq v9, v1, :cond_1

    .line 82
    sget-object v1, Lcom/oculus/vrshell/home/module/audio/Recorder;->TAG:Ljava/lang/String;

    const-string v9, "uninitialized, aborting"

    invoke-static {v1, v9}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    .line 83
    goto :goto_0

    .line 87
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iput-boolean v1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    .line 95
    new-instance v9, Lcom/oculus/vrshell/home/module/audio/Recorder$1;

    invoke-direct {v9, p0, v5, v7, v0}, Lcom/oculus/vrshell/home/module/audio/Recorder$1;-><init>(Lcom/oculus/vrshell/home/module/audio/Recorder;ILjava/io/File;Landroid/media/AudioRecord;)V

    new-array v8, v8, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v9, v8}, Lcom/oculus/vrshell/home/module/audio/Recorder$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 88
    :catch_0
    move-exception v6

    .line 89
    .local v6, "ise":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/oculus/vrshell/home/module/audio/Recorder;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v6}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v8

    .line 90
    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-boolean v1, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    if-nez v1, :cond_0

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    iput-boolean v0, p0, Lcom/oculus/vrshell/home/module/audio/Recorder;->mRecording:Z

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract writeFileFooter(Ljava/io/File;)V
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract writeFileHeader(Ljava/io/OutputStream;)V
    .param p1    # Ljava/io/OutputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
