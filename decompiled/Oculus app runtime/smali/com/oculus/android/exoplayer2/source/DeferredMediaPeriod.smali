.class public final Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;
.super Ljava/lang/Object;
.source "DeferredMediaPeriod.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/source/MediaPeriod;
.implements Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

.field private final id:Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private listener:Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

.field public final mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/MediaSource;Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->id:Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 62
    iput-object p3, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    .line 63
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPeriod()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->id:Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->allocator:Lcom/oculus/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0, v1, v2}, Lcom/oculus/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/oculus/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/oculus/android/exoplayer2/upstream/Allocator;)Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    .line 84
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    iget-wide v1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    invoke-interface {v0, p0, v1, v2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/oculus/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/oculus/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->listener:Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    if-eqz v1, :cond_2

    .line 119
    iget-boolean v2, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->notifiedPrepareError:Z

    .line 121
    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;->onPrepareError(Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 180
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->onContinueLoadingRequested(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->callback:Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;

    .line 101
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->preparePositionUs:J

    .line 102
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1, p0, p2, p3}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/oculus/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaSource:Lcom/oculus/android/exoplayer2/source/MediaSource;

    invoke-interface {v1, v0}, Lcom/oculus/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/oculus/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 7

    .line 134
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->mediaPeriod:Lcom/oculus/android/exoplayer2/source/MediaPeriod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/oculus/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/oculus/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/oculus/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public setPrepareErrorListener(Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod;->listener:Lcom/oculus/android/exoplayer2/source/DeferredMediaPeriod$PrepareErrorListener;

    return-void
.end method
