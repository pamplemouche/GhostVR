.class Lcom/oculus/horizon/capture/LegacyCapture$5$1;
.super Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;
.source "LegacyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/capture/LegacyCapture$5;->getAudioPlatformComponentHost()Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/LegacyCapture$5;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputDataAvailable([BII)Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    iget-object v0, v0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$200(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    iget-object v0, v0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$300(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->getAudio()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    iget-object v0, v0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$500(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    iget-object v0, v0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$500(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;->onSamplesReady([BI)V

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRenderCallback(Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$5$1;->this$1:Lcom/oculus/horizon/capture/LegacyCapture$5;

    iget-object v0, v0, Lcom/oculus/horizon/capture/LegacyCapture$5;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0, p1}, Lcom/oculus/horizon/capture/LegacyCapture;->access$502(Lcom/oculus/horizon/capture/LegacyCapture;Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;)Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;

    .line 137
    return-void
.end method

.method public startRecording(Z)V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startRecording"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method
