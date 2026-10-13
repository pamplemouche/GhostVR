.class Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;
.super Ljava/lang/Thread;
.source "OVRMicrophone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVRMicrophone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRMicrophone;


# direct methods
.method public constructor <init>(Lcom/oculus/platform/OVRMicrophone;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    .line 42
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    :goto_0
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v0}, Lcom/oculus/platform/OVRMicrophone;->access$000(Lcom/oculus/platform/OVRMicrophone;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v3, v3, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v4, v4, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 54
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v0, v0, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-eq v4, v0, :cond_8

    .line 55
    const-string v0, "OVRPlatform-OVRMicrophone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord.read returned "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-gez v4, :cond_2

    move v0, v1

    .line 62
    :goto_1
    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v3}, Lcom/oculus/platform/OVRMicrophone;->access$100(Lcom/oculus/platform/OVRMicrophone;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v3}, Lcom/oculus/platform/OVRMicrophone;->access$200(Lcom/oculus/platform/OVRMicrophone;)Lcom/oculus/platform/OVRMicrophone$State;

    move-result-object v6

    .line 64
    iget-object v7, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    sget-object v3, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    if-eq v6, v3, :cond_0

    sget-object v3, Lcom/oculus/platform/OVRMicrophone$State;->Stopping:Lcom/oculus/platform/OVRMicrophone$State;

    if-ne v6, v3, :cond_3

    :cond_0
    move v3, v1

    :goto_2
    invoke-static {v7, v3}, Lcom/oculus/platform/OVRMicrophone;->access$300(Lcom/oculus/platform/OVRMicrophone;Z)V

    .line 66
    sget-object v3, Lcom/oculus/platform/OVRMicrophone$State;->Stopping:Lcom/oculus/platform/OVRMicrophone$State;

    if-eq v6, v3, :cond_1

    if-eqz v0, :cond_4

    .line 67
    :cond_1
    const-string v0, "OVRPlatform-OVRMicrophone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting audio capture thread, about to call AudioRecord.stop(). Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {v6}, Lcom/oculus/platform/OVRMicrophone$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v0}, Lcom/oculus/platform/OVRMicrophone;->access$400(Lcom/oculus/platform/OVRMicrophone;)V

    .line 72
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRMicrophone;->access$502(Lcom/oculus/platform/OVRMicrophone;Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;)Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;

    .line 73
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    sget-object v1, Lcom/oculus/platform/OVRMicrophone$State;->Initialized:Lcom/oculus/platform/OVRMicrophone$State;

    invoke-static {v0, v1}, Lcom/oculus/platform/OVRMicrophone;->access$600(Lcom/oculus/platform/OVRMicrophone;Lcom/oculus/platform/OVRMicrophone$State;)V

    .line 75
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v1, "Exit AudioRecordThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v5

    return-void

    :cond_2
    move v0, v2

    .line 56
    goto :goto_1

    :cond_3
    move v3, v2

    .line 64
    goto :goto_2

    .line 78
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    sget-object v0, Lcom/oculus/platform/OVRMicrophone$State;->Recording:Lcom/oculus/platform/OVRMicrophone$State;

    if-ne v6, v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v3, v0}, Lcom/oculus/platform/OVRMicrophone;->access$300(Lcom/oculus/platform/OVRMicrophone;Z)V

    .line 81
    iget-object v3, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v0, v0, Lcom/oculus/platform/OVRMicrophone;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ne v4, v0, :cond_6

    move v0, v1

    :goto_4
    invoke-static {v3, v0}, Lcom/oculus/platform/OVRMicrophone;->access$300(Lcom/oculus/platform/OVRMicrophone;Z)V

    .line 83
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v0}, Lcom/oculus/platform/OVRMicrophone;->access$700(Lcom/oculus/platform/OVRMicrophone;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v0}, Lcom/oculus/platform/OVRMicrophone;->access$800(Lcom/oculus/platform/OVRMicrophone;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    .line 87
    const-string v0, "OVRPlatform-OVRMicrophone"

    const-string v4, "MicrophoneServer already destroyed"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v3

    goto/16 :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 78
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    move v0, v2

    .line 80
    goto :goto_3

    :cond_6
    move v0, v2

    .line 81
    goto :goto_4

    .line 90
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    iget-object v5, p0, Lcom/oculus/platform/OVRMicrophone$AudioRecordThread;->this$0:Lcom/oculus/platform/OVRMicrophone;

    invoke-static {v5}, Lcom/oculus/platform/OVRMicrophone;->access$800(Lcom/oculus/platform/OVRMicrophone;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v4}, Lcom/oculus/platform/OVRMicrophone;->nativeOnAudioData(JI)V

    .line 91
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1
.end method
