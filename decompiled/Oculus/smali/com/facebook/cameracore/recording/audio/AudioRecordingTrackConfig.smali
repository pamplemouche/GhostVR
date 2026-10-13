.class public Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;
.super Ljava/lang/Object;
.source "AudioRecordingTrackConfig.java"


# instance fields
.field public mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

.field public mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;


# direct methods
.method public constructor <init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;Lcom/facebook/cameracore/config/CameraCoreConfig;Lcom/facebook/cameracore/config/CameraCoreParameters;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p1    # Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/cameracore/config/CameraCoreConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/cameracore/config/CameraCoreParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_4

    .line 34
    invoke-static {}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->newBuilder()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 36
    invoke-virtual {p2}, Lcom/facebook/cameracore/config/CameraCoreConfig;->getSDKConfig()Lcom/facebook/cameracore/config/CameraSDKConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p2}, Lcom/facebook/cameracore/config/CameraCoreConfig;->getSDKConfig()Lcom/facebook/cameracore/config/CameraSDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/cameracore/config/CameraSDKConfig;->getAudioBufferMultiplier()I

    move-result v0

    .line 35
    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setAudioBufferMultiplier(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 41
    invoke-virtual {p3}, Lcom/facebook/cameracore/config/CameraCoreParameters;->shouldEnableEchoCancellation()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setEchoCancellationEnabled(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    move-result-object v0

    .line 42
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/facebook/cameracore/config/CameraCoreConfig;->shouldUseCamcorderAudioSource()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->setSource(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->build()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    .line 51
    :goto_2
    invoke-static {}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;->newBuilder()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v1, v1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    .line 52
    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->setBufferSize(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v1

    if-eqz p4, :cond_5

    .line 55
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->setSampleRate(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    move-result-object v0

    .line 57
    if-eqz p5, :cond_1

    .line 58
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->setPCMEncoding(I)Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig$Builder;->build()Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    .line 62
    return-void

    :cond_2
    move v0, v1

    .line 37
    goto :goto_0

    .line 41
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 47
    :cond_4
    iput-object p1, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    goto :goto_2

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget v0, v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 68
    :cond_3
    check-cast p1, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;

    .line 69
    iget-object v2, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    iget-object v3, p1, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    invoke-virtual {v2, v3}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    iget-object v3, p1, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioRecorderConfig:Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/cameracore/recording/audio/AudioRecordingTrackConfig;->mAudioEncoderConfig:Lcom/facebook/cameracore/audio/encoder/AudioEncoderConfig;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
