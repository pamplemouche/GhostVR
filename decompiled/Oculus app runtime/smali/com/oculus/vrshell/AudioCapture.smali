.class public Lcom/oculus/vrshell/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;,
        Lcom/oculus/vrshell/AudioCapture$AudioLoopbackThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioCapture"

.field private static mAudioCodecThread:Ljava/lang/Thread; = null

.field private static volatile mExitThreads:Z = false

.field private static final mHeadChunkSamples:I = 0x780

.field private static mLoopbackThread:Ljava/lang/Thread; = null

.field private static volatile mMessageCount:I = 0x0

.field private static final mNumRingMessages:I = 0x40

.field private static final mNumRingSamples:I = 0xf000

.field private static mPresentationTimeBaseUs:J = 0x0L

.field private static volatile mRingChunkHead:I = 0x0

.field private static mRingMessages:[[B = null

.field private static mRingSamples:[S = null

.field private static final mTailChunkSamples:I = 0x1000

.field private static referenceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0xf000

    .line 82
    new-array v0, v0, [S

    sput-object v0, Lcom/oculus/vrshell/AudioCapture;->mRingSamples:[S

    const/4 v0, 0x0

    .line 83
    sput v0, Lcom/oculus/vrshell/AudioCapture;->mRingChunkHead:I

    const/16 v1, 0x40

    .line 88
    new-array v1, v1, [[B

    sput-object v1, Lcom/oculus/vrshell/AudioCapture;->mRingMessages:[[B

    .line 89
    sput v0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    const-wide/16 v1, 0x0

    .line 92
    sput-wide v1, Lcom/oculus/vrshell/AudioCapture;->mPresentationTimeBaseUs:J

    .line 94
    sput v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/oculus/vrshell/AudioCapture;->mExitThreads:Z

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 72
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mRingChunkHead:I

    return v0
.end method

.method static synthetic access$108()I
    .locals 2

    .line 72
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mRingChunkHead:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/oculus/vrshell/AudioCapture;->mRingChunkHead:I

    return v0
.end method

.method static synthetic access$200()[S
    .locals 1

    .line 72
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mRingSamples:[S

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .line 72
    sget-wide v0, Lcom/oculus/vrshell/AudioCapture;->mPresentationTimeBaseUs:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .line 72
    sput-wide p0, Lcom/oculus/vrshell/AudioCapture;->mPresentationTimeBaseUs:J

    return-wide p0
.end method

.method static synthetic access$400()[[B
    .locals 1

    .line 72
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mRingMessages:[[B

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 72
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    return v0
.end method

.method static synthetic access$508()I
    .locals 2

    .line 72
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    return v0
.end method

.method public static getMessage(I)[B
    .locals 2

    if-ltz p0, :cond_0

    .line 135
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    if-lt p0, v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requested message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioCapture"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget p0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    if-lez p0, :cond_2

    .line 138
    sget p0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    add-int/lit8 p0, p0, -0x1

    .line 144
    :cond_1
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mRingMessages:[[B

    rem-int/lit8 p0, p0, 0x40

    aget-object p0, v0, p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMessageCount()I
    .locals 1

    .line 131
    sget v0, Lcom/oculus/vrshell/AudioCapture;->mMessageCount:I

    return v0
.end method

.method public static start()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    .line 100
    sget v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 101
    sput-boolean v0, Lcom/oculus/vrshell/AudioCapture;->mExitThreads:Z

    const-wide/16 v0, 0x0

    .line 102
    sput-wide v0, Lcom/oculus/vrshell/AudioCapture;->mPresentationTimeBaseUs:J

    .line 104
    new-instance v0, Lcom/oculus/vrshell/AudioCapture$AudioLoopbackThread;

    invoke-direct {v0}, Lcom/oculus/vrshell/AudioCapture$AudioLoopbackThread;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/AudioCapture;->mLoopbackThread:Ljava/lang/Thread;

    .line 105
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mLoopbackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    new-instance v0, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;

    invoke-direct {v0}, Lcom/oculus/vrshell/AudioCapture$AudioCodecThread;-><init>()V

    sput-object v0, Lcom/oculus/vrshell/AudioCapture;->mAudioCodecThread:Ljava/lang/Thread;

    .line 108
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mAudioCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static stop()V
    .locals 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    sget v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    sput v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    .line 116
    sget v0, Lcom/oculus/vrshell/AudioCapture;->referenceCount:I

    if-nez v0, :cond_0

    .line 117
    sput-boolean v2, Lcom/oculus/vrshell/AudioCapture;->mExitThreads:Z

    .line 119
    :try_start_0
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mLoopbackThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 120
    sget-object v0, Lcom/oculus/vrshell/AudioCapture;->mAudioCodecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Join failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/oculus/vrshell/AudioCapture;->mLoopbackThread:Ljava/lang/Thread;

    .line 125
    sput-object v0, Lcom/oculus/vrshell/AudioCapture;->mAudioCodecThread:Ljava/lang/Thread;

    :cond_0
    const-string v0, "stop() completed"

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
