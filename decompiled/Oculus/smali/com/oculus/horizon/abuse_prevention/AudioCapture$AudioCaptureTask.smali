.class final Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;
.super Ljava/lang/Thread;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioCaptureTask"
.end annotation


# instance fields
.field public final mChannels:I

.field public final mFrequency:I

.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/AudioCapture;


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;->this$0:Lcom/oculus/horizon/abuse_prevention/AudioCapture;

    invoke-virtual {v0}, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->isRecording()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;->this$0:Lcom/oculus/horizon/abuse_prevention/AudioCapture;

    invoke-static {v0, p0}, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->access$100(Lcom/oculus/horizon/abuse_prevention/AudioCapture;Lcom/oculus/horizon/abuse_prevention/AudioCapture$AudioCaptureTask;)V

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-static {}, Lcom/oculus/horizon/abuse_prevention/AudioCapture;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioCapture: Failed to wait for audio capture"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 51
    :cond_0
    return-void
.end method
