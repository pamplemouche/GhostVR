.class Lcom/oculus/horizon/service_media/FileCapture$1;
.super Ljava/lang/Object;
.source "FileCapture.java"

# interfaces
.implements Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/service_media/FileCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/FileCapture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/FileCapture;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOutputSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/oculus/horizon/service_media/FileCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addOutputSurface %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$100(Lcom/oculus/horizon/service_media/FileCapture;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0, p1}, Lcom/oculus/horizon/service_media/FileCapture;->access$202(Lcom/oculus/horizon/service_media/FileCapture;Landroid/view/Surface;)Landroid/view/Surface;

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudio()V
    .locals 8

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    iget-object v2, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/FileCapture;->access$100(Lcom/oculus/horizon/service_media/FileCapture;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v3, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v3}, Lcom/oculus/horizon/service_media/FileCapture;->access$300(Lcom/oculus/horizon/service_media/FileCapture;)J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 114
    iget-object v3, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v3}, Lcom/oculus/horizon/service_media/FileCapture;->access$700(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/AudioCapture;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    .line 115
    invoke-static {v3}, Lcom/oculus/horizon/service_media/FileCapture;->access$800(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/capture/ScreenCapture;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 117
    :cond_0
    monitor-exit v2

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v3, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v3, v0, v1}, Lcom/oculus/horizon/service_media/FileCapture;->access$302(Lcom/oculus/horizon/service_media/FileCapture;J)J

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$800(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/capture/ScreenCapture;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/FileCapture;->access$700(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/AudioCapture;

    move-result-object v1

    .line 122
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/AudioCapture;->captureAudio()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/capture/ScreenCapture;->onAudioSampleAvailable([BI)V

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/oculus/horizon/service_media/FileCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    iget-object v1, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/FileCapture;->access$400(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/SurfaceCapture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/service_media/SurfaceCapture;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/service_media/FileCapture;->stop(Ljava/lang/String;)Z

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$600(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/CaptureAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v1}, Lcom/oculus/horizon/service_media/FileCapture;->access$500(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/FileCapture$Mode;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/service_media/CaptureAnalytics;->reportError(Ljava/lang/Exception;Lcom/oculus/horizon/service_media/FileCapture$Mode;)V

    .line 133
    return-void
.end method

.method public onStartRecording()V
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Lcom/oculus/horizon/service_media/FileCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartRecording"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$100(Lcom/oculus/horizon/service_media/FileCapture;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/oculus/horizon/service_media/FileCapture;->access$302(Lcom/oculus/horizon/service_media/FileCapture;J)J

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$400(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/SurfaceCapture;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/FileCapture;->access$200(Lcom/oculus/horizon/service_media/FileCapture;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/service_media/SurfaceCapture;->start(Landroid/view/Surface;)V

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$600(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/CaptureAnalytics;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v2}, Lcom/oculus/horizon/service_media/FileCapture;->access$400(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/SurfaceCapture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/service_media/SurfaceCapture;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v3}, Lcom/oculus/horizon/service_media/FileCapture;->access$500(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/FileCapture$Mode;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/service_media/CaptureAnalytics;->reportStartCapture(Ljava/lang/String;Lcom/oculus/horizon/service_media/FileCapture$Mode;)V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopRecording(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/oculus/horizon/service_media/FileCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopRecording"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$100(Lcom/oculus/horizon/service_media/FileCapture;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oculus/horizon/service_media/FileCapture;->access$202(Lcom/oculus/horizon/service_media/FileCapture;Landroid/view/Surface;)Landroid/view/Surface;

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/service_media/FileCapture$1;->this$0:Lcom/oculus/horizon/service_media/FileCapture;

    invoke-static {v0}, Lcom/oculus/horizon/service_media/FileCapture;->access$600(Lcom/oculus/horizon/service_media/FileCapture;)Lcom/oculus/horizon/service_media/CaptureAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/service_media/CaptureAnalytics;->reportStopCapture()V

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
