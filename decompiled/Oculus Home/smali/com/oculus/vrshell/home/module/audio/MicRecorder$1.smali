.class Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;
.super Lcom/oculus/vrshell/home/module/audio/WavRecorder;
.source "MicRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/audio/MicRecorder;->createRecorder(Ljava/io/File;)Lcom/oculus/vrshell/home/module/audio/Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/audio/MicRecorder;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/audio/MicRecorder;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/audio/MicRecorder;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/MicRecorder;

    invoke-direct {p0, p2}, Lcom/oculus/vrshell/home/module/audio/WavRecorder;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected getChannelMask()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x10

    return v0
.end method

.method protected getEncoding()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x2

    return v0
.end method

.method protected getSampleRate()I
    .locals 1

    .prologue
    .line 61
    const v0, 0xac44

    return v0
.end method

.method protected onRecordingStart()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/MicRecorder;

    iget-wide v0, v0, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->RVRCtxTag:J

    const-string v2, "onStartRecording"

    invoke-static {v0, v1, v2}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->nativeEmitEvent(JLjava/lang/String;)V

    .line 77
    return-void
.end method

.method protected onRecordingStop(Ljava/io/File;)V
    .locals 6
    .param p1, "recordedFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "outFilePath"

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/audio/MicRecorder$1;->this$0:Lcom/oculus/vrshell/home/module/audio/MicRecorder;

    iget-wide v2, v2, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->RVRCtxTag:J

    const-string v4, "onStopRecording"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->nativeEmitEventWithJsonData(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "je":Lorg/json/JSONException;
    invoke-static {}, Lcom/oculus/vrshell/home/module/audio/MicRecorder;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
