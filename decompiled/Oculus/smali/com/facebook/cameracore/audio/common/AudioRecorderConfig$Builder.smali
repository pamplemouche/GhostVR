.class public Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
.super Ljava/lang/Object;
.source "AudioRecorderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioBufferMultiplier:I

.field private mBufferSize:I

.field private mChannelType:I

.field private mEchoCancellationEnabled:Z

.field private mEncoding:I

.field private mSampleRateHz:I

.field private mSkipAudioRecording:Z

.field private mSkipAudioRecordingOverride:Z

.field private mSource:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSource:I

    .line 104
    const v0, 0xac44

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSampleRateHz:I

    .line 105
    const/16 v0, 0x10

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mChannelType:I

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mEncoding:I

    .line 107
    const v0, 0x64000

    iput v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mBufferSize:I

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$1;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSource:I

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSampleRateHz:I

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mChannelType:I

    return v0
.end method

.method static synthetic access$400(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mEncoding:I

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mBufferSize:I

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mAudioBufferMultiplier:I

    return v0
.end method

.method static synthetic access$700(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mEchoCancellationEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSkipAudioRecording:Z

    return v0
.end method

.method static synthetic access$900(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSkipAudioRecordingOverride:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig;-><init>(Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$1;)V

    return-object v0
.end method

.method public setAudioBufferMultiplier(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mAudioBufferMultiplier:I

    .line 142
    return-object p0
.end method

.method public setBufferSize(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mBufferSize:I

    .line 137
    return-object p0
.end method

.method public setEchoCancellationEnabled(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mEchoCancellationEnabled:Z

    .line 147
    return-object p0
.end method

.method public setSampleRateHz(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSampleRateHz:I

    .line 122
    return-object p0
.end method

.method public setSkipAudioRecording(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSkipAudioRecording:Z

    .line 152
    return-object p0
.end method

.method public setSkipAudioRecordingOverride(Z)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSkipAudioRecordingOverride:Z

    .line 157
    return-object p0
.end method

.method public setSource(I)Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;
    .locals 0

    .prologue
    .line 116
    iput p1, p0, Lcom/facebook/cameracore/audio/common/AudioRecorderConfig$Builder;->mSource:I

    .line 117
    return-object p0
.end method
