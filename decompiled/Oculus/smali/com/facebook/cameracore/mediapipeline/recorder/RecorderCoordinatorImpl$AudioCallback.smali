.class Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;
.super Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;
.source "RecorderCoordinatorImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/audio/nativeaudiopipeline/AudioRecorder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioCallback"
.end annotation


# instance fields
.field private final mAudioHandler:Landroid/os/Handler;

.field private final mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

.field private mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

.field private mCurrentTimestampUs:J

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-direct {p0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;-><init>()V

    .line 1167
    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    .line 1168
    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioHandler:Landroid/os/Handler;

    .line 1169
    return-void
.end method

.method private inputAudioData([BI)V
    .locals 8

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mStopped:Z

    if-eqz v0, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iget-wide v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mCurrentTimestampUs:J

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->inputAudioData([BIJ)V

    .line 1253
    iget-wide v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mCurrentTimestampUs:J

    int-to-long v2, p2

    iget-object v4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v4, v4, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    iget-object v5, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v5, v5, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    int-to-long v6, v5

    .line 1254
    invoke-static {v2, v3, v4, v6, v7}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3400(JIJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mCurrentTimestampUs:J

    goto :goto_0
.end method


# virtual methods
.method public onDataAvailable([BI)V
    .locals 3

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mStopped:Z

    if-eqz v0, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataAvailable() must be invoked on the same thread as the other methods. Looper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1187
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioHandler:Landroid/os/Handler;

    .line 1189
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    .line 1193
    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3000(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;

    .line 1194
    if-eqz v0, :cond_4

    .line 1196
    invoke-interface {v0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHostProvider;->getAudioPlatformComponentHost()Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;

    move-result-object v1

    .line 1197
    if-eqz v1, :cond_4

    .line 1198
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3100(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1199
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 1200
    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3200(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1202
    :cond_3
    invoke-virtual {v1, p0}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;->setRenderCallback(Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioRenderCallback;)V

    .line 1203
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    .line 1204
    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/cameracore/mediapipeline/services/audio/interfaces/AudioPlatformComponentHost;->onInputDataAvailable([BII)Z

    move-result v0

    .line 1206
    if-nez v0, :cond_0

    .line 1213
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->inputAudioData([BI)V

    goto :goto_0

    .line 1199
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSamplesReady([BI)V
    .locals 5

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mStopped:Z

    if-eqz v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAudioHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)[B

    move-result-object v0

    array-length v2, v0

    .line 1231
    if-le p2, v2, :cond_3

    .line 1233
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1234
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 1236
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p2, v1

    if-ge v1, v2, :cond_2

    .line 1237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, p2, v1

    .line 1239
    :goto_2
    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1241
    iget-object v3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;

    invoke-static {v3}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;->access$3300(Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl;)[B

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->inputAudioData([BI)V

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1237
    goto :goto_2

    .line 1244
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->inputAudioData([BI)V

    goto :goto_0
.end method

.method public setAvRecorder(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;)V
    .locals 0

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mAvRecorder:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    .line 1173
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinatorImpl$AudioCallback;->mStopped:Z

    .line 1177
    return-void
.end method
