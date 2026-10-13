.class public final Lcom/oculus/video/OculusLoadControl;
.super Ljava/lang/Object;
.source "OculusLoadControl.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/LoadControl;


# static fields
.field private static final ABOVE_HIGH_WATERMARK:I = 0x0

.field private static final BELOW_LOW_WATERMARK:I = 0x2

.field private static final BETWEEN_WATERMARKS:I = 0x1

.field public static final BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS:I = 0x1388

.field public static final BUFFER_FOR_PLAYBACK_MS:I = 0x9c4

.field public static final MAX_BUFFER_MS:I = 0xea60

.field public static final MIN_BUFFER_MS:I = 0x7530


# instance fields
.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

.field private final bufferForPlaybackAfterRebufferUs:J

.field private final bufferForPlaybackUs:J

.field private isBuffering:Z

.field private final maxBufferUs:J

.field private final minBufferUs:J

.field private final priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

.field private targetBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZI)V

    invoke-direct {p0, v0}, Lcom/oculus/video/OculusLoadControl;-><init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;)V
    .locals 8

    const/16 v2, 0x7530

    const v3, 0xea60

    const-wide/16 v4, 0x9c4

    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    .line 89
    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/OculusLoadControl;-><init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;IIJJ)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    .line 112
    invoke-direct/range {v0 .. v8}, Lcom/oculus/video/OculusLoadControl;-><init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;IIJJLcom/oculus/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;IIJJLcom/oculus/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/oculus/video/OculusLoadControl;->allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    .line 137
    iput-wide p1, p0, Lcom/oculus/video/OculusLoadControl;->minBufferUs:J

    int-to-long p1, p3

    mul-long p1, p1, v0

    .line 138
    iput-wide p1, p0, Lcom/oculus/video/OculusLoadControl;->maxBufferUs:J

    mul-long p4, p4, v0

    .line 139
    iput-wide p4, p0, Lcom/oculus/video/OculusLoadControl;->bufferForPlaybackUs:J

    mul-long p6, p6, v0

    .line 140
    iput-wide p6, p0, Lcom/oculus/video/OculusLoadControl;->bufferForPlaybackAfterRebufferUs:J

    .line 141
    iput-object p8, p0, Lcom/oculus/video/OculusLoadControl;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    return-void
.end method

.method private getBufferTimeState(J)I
    .locals 3

    .line 228
    iget-wide v0, p0, Lcom/oculus/video/OculusLoadControl;->maxBufferUs:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/OculusLoadControl;->minBufferUs:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private reset(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    .line 234
    iget-object v1, p0, Lcom/oculus/video/OculusLoadControl;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {v1, v0}, Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 237
    :cond_0
    iput-boolean v0, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/oculus/video/OculusLoadControl;->allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;->reset()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAllocator()Lcom/oculus/android/exoplayer2/upstream/Allocator;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oculus/video/OculusLoadControl;->allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    return-object v0
.end method

.method public getBackBufferDurationUs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onPrepared()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusLoadControl;->reset(Z)V

    return-void
.end method

.method public onReleased()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusLoadControl;->reset(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusLoadControl;->reset(Z)V

    return-void
.end method

.method public onTracksSelected([Lcom/oculus/android/exoplayer2/Renderer;Lcom/oculus/android/exoplayer2/source/TrackGroupArray;Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 3

    const/4 p2, 0x0

    .line 152
    iput p2, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    .line 153
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 154
    invoke-virtual {p3, p2}, Lcom/oculus/android/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    aget-object v0, p1, p2

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/Renderer;->getTrackType()I

    move-result v0

    .line 156
    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->getDefaultBufferSize(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v1, 0x6

    .line 172
    :goto_1
    iget v0, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/OculusLoadControl;->allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    iget p2, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V

    return-void
.end method

.method public retainBackBufferFromKeyframe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldContinueLoading(JF)Z
    .locals 2

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/OculusLoadControl;->getBufferTimeState(J)I

    move-result p1

    .line 206
    iget-object p2, p0, Lcom/oculus/video/OculusLoadControl;->allocator:Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;

    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/upstream/DefaultAllocator;->getTotalBytesAllocated()I

    move-result p2

    iget p3, p0, Lcom/oculus/video/OculusLoadControl;->targetBufferSize:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 207
    :goto_0
    iget-boolean p3, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 208
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    .line 211
    iget-object p1, p0, Lcom/oculus/video/OculusLoadControl;->priorityTaskManager:Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    if-eq p2, p3, :cond_4

    if-eqz p2, :cond_3

    .line 213
    invoke-virtual {p1, v1}, Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;->add(I)V

    goto :goto_2

    .line 215
    :cond_3
    invoke-virtual {p1, v1}, Lcom/oculus/android/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 218
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/oculus/video/OculusLoadControl;->isBuffering:Z

    return p1
.end method

.method public shouldStartPlayback(JFZ)Z
    .locals 3

    if-eqz p4, :cond_0

    .line 223
    iget-wide p3, p0, Lcom/oculus/video/OculusLoadControl;->bufferForPlaybackAfterRebufferUs:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/oculus/video/OculusLoadControl;->bufferForPlaybackUs:J

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method
