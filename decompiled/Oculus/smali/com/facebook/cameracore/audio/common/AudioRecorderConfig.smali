.class public Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
.super Ljava/lang/Object;
.source "AudioRecorderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    }
.end annotation


# instance fields
.field public final audioBufferMultiplier:I

.field public final bufferSize:I

.field public final channelType:I

.field public final echoCancellationEnabled:Z

.field public final encoding:I

.field public final sampleRateHz:I

.field public skipAudioRecording:Z

.field public skipAudioRecordingOverride:Z

.field public final source:I


# direct methods
.method private constructor <init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$100(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->source:I

    .line 91
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$200(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    .line 92
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$300(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    .line 93
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$400(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    .line 94
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$500(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    .line 95
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$600(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->audioBufferMultiplier:I

    .line 96
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$700(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    .line 97
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$800(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    .line 98
    invoke-static {p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->access$900(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;-><init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;-><init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 41
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 42
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

    .line 43
    :cond_3
    check-cast p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    .line 44
    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->source:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->source:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->audioBufferMultiplier:I

    iget v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->audioBufferMultiplier:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    iget-boolean v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    iget-boolean v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    iget-boolean v3, p1, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->source:I

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->sampleRateHz:I

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->channelType:I

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->encoding:I

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->bufferSize:I

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->audioBufferMultiplier:I

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->echoCancellationEnabled:Z

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecording:Z

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;->skipAudioRecordingOverride:Z

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
