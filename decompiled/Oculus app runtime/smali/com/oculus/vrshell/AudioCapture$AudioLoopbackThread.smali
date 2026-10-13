.class Lcom/oculus/vrshell/AudioCapture$AudioLoopbackThread;
.super Ljava/lang/Thread;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/AudioCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioLoopbackThread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-string v0, "AudioCapture"

    const-string v1, "Audio loopback thread started"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :try_start_0
    new-instance v1, Landroid/media/AudioRecord;

    const/16 v3, 0x8

    const v4, 0xbb80

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 191
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    const-string v2, "AudioRecord gave STATE_UNINITIALIZED"

    .line 193
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord is running with format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :goto_0
    :try_start_1
    new-instance v9, Landroid/media/AudioTrack;

    const/4 v3, 0x5

    const v4, 0xbb80

    const/16 v5, 0xc

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 212
    invoke-virtual {v9}, Landroid/media/AudioTrack;->play()V

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack is running with format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getFormat()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :goto_1
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$000()Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$100()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x780

    mul-long v2, v2, v4

    const-wide/32 v4, 0xf000

    .line 222
    rem-long v4, v2, v4

    long-to-int v5, v4

    .line 223
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$200()[S

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x780

    invoke-virtual {v1, v4, v5, v7, v6}, Landroid/media/AudioRecord;->read([SIII)I

    .line 224
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$300()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_1

    .line 228
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v12, 0x2

    div-long/2addr v2, v12

    const-wide/32 v12, 0xf4240

    mul-long v2, v2, v12

    const-wide/32 v12, 0xbb80

    div-long/2addr v2, v12

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Lcom/oculus/vrshell/AudioCapture;->access$302(J)J

    .line 230
    :cond_1
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$200()[S

    move-result-object v2

    invoke-virtual {v9, v2, v5, v7, v6}, Landroid/media/AudioTrack;->write([SIII)I

    .line 231
    invoke-static {}, Lcom/oculus/vrshell/AudioCapture;->access$108()I

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 235
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 236
    invoke-virtual {v9}, Landroid/media/AudioTrack;->stop()V

    .line 237
    invoke-virtual {v9}, Landroid/media/AudioTrack;->release()V

    const-string v1, "Audio loopback thread ended"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioTrack init failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    return-void

    :catch_1
    move-exception v1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord init failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
