.class Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;
.super Ljava/lang/Object;
.source "AudioEncoderImpl.java"

# interfaces
.implements Lcom/facebook/cameracore/audio/encoder/AudioEncoder;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private final mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

.field private final mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

.field private final mEncoderHandler:Landroid/os/Handler;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mOutputMediaFormat:Landroid/media/MediaFormat;

.field private volatile mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    .line 45
    iput-object p2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    .line 46
    iput-object p3, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    .line 47
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->internalAsyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->internalAsyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->internalAsyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private static getMediaFormat(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Z)Landroid/media/MediaFormat;
    .locals 3

    .prologue
    .line 254
    const-string v0, "audio/mp4a-latm"

    iget v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->sampleRate:I

    iget v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->channelCount:I

    .line 255
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 257
    const-string v1, "aac-profile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 259
    const-string v1, "bitrate"

    iget v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->bitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 260
    if-eqz p1, :cond_1

    .line 261
    const-string v1, "max-input-size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 265
    :cond_0
    :goto_0
    const-string v1, "pcm-encoding"

    iget v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->pcmEncoding:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 266
    return-object v0

    .line 262
    :cond_1
    iget v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->bufferSize:I

    if-lez v1, :cond_0

    .line 263
    const-string v1, "max-input-size"

    iget v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->bufferSize:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internalAsyncPrepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must only call prepare() on a stopped AudioEncoder. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 158
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    const-string v0, "audio/mp4a-latm"

    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    const/4 v2, 0x0

    .line 142
    invoke-static {v1, v2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->getMediaFormat(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Z)Landroid/media/MediaFormat;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/facebook/cameracore/util/MediaCodecFactory;->getEncodingMediaCodec(Ljava/lang/String;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->PREPARED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 157
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 147
    :try_start_1
    const-string v0, "audio/mp4a-latm"

    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    const/4 v2, 0x1

    .line 150
    invoke-static {v1, v2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->getMediaFormat(Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;Z)Landroid/media/MediaFormat;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/facebook/cameracore/util/MediaCodecFactory;->getEncodingMediaCodec(Ljava/lang/String;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 152
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private internalAsyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->PREPARED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare() must be called before starting audio encoding. Current state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 178
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 177
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private internalAsyncStop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->processCodecOutput()V

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    if-ne v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 190
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_2
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 199
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 200
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 201
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    .line 203
    invoke-static {p1, p2}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 204
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_1
    invoke-static {p1, p2, v0}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    sget-object v0, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 199
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 200
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 201
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STOPPED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    iput-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    .line 199
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    .line 200
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 201
    iput-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    throw v0
.end method

.method private processCodecOutput()V
    .locals 7

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 211
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 250
    :goto_1
    return-void

    .line 213
    :cond_1
    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 214
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    .line 217
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    invoke-interface {v1, v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 219
    :cond_3
    if-gez v1, :cond_4

    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    new-instance v3, Ljava/io/IOException;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    .line 222
    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-interface {v2, v3}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 229
    :cond_4
    aget-object v2, v0, v1

    .line 230
    if-nez v2, :cond_5

    .line 231
    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    new-instance v3, Ljava/io/IOException;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v4, "encoderOutputBuffer : %d was null"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-interface {v2, v3}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 237
    :cond_5
    iget-object v3, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 239
    iget-object v3, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    iget-object v4, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v3, v2, v4}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;->onDataAvailable(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 241
    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 243
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    goto/16 :goto_1
.end method


# virtual methods
.method public getOutputMediaFormat()Landroid/media/MediaFormat;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public inputData([BIJ)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "inputData must be invoked on the same thread as the other methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mState:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    sget-object v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;->STARTED:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$State;

    if-eq v0, v1, :cond_2

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    const/4 v7, 0x0

    .line 106
    if-gez p2, :cond_4

    .line 108
    :try_start_0
    new-instance v7, Ljava/io/IOException;

    const-string v0, "Failure to read input data"

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 113
    if-ltz v1, :cond_3

    .line 114
    aget-object v0, v0, v1

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->processCodecOutput()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 124
    :goto_2
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mCallback:Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;

    invoke-interface {v1, v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoder$Callback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    move v3, p2

    goto :goto_1
.end method

.method public prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public start(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$2;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->mEncoderHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$3;-><init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
