.class final Lcom/oculus/video/VideoInfoExtractor$1;
.super Ljava/lang/Object;
.source "VideoInfoExtractor.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/VideoInfoExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final noOpMediaClock:Lcom/oculus/android/exoplayer2/util/MediaClock;

.field private final noOpRendererCapabilities:Lcom/oculus/android/exoplayer2/RendererCapabilities;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/oculus/video/VideoInfoExtractor$1$1;

    invoke-direct {v0, p0}, Lcom/oculus/video/VideoInfoExtractor$1$1;-><init>(Lcom/oculus/video/VideoInfoExtractor$1;)V

    iput-object v0, p0, Lcom/oculus/video/VideoInfoExtractor$1;->noOpRendererCapabilities:Lcom/oculus/android/exoplayer2/RendererCapabilities;

    .line 148
    new-instance v0, Lcom/oculus/video/VideoInfoExtractor$1$2;

    invoke-direct {v0, p0}, Lcom/oculus/video/VideoInfoExtractor$1$2;-><init>(Lcom/oculus/video/VideoInfoExtractor$1;)V

    iput-object v0, p0, Lcom/oculus/video/VideoInfoExtractor$1;->noOpMediaClock:Lcom/oculus/android/exoplayer2/util/MediaClock;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    return-void
.end method

.method public enable(Lcom/oculus/android/exoplayer2/RendererConfiguration;[Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/source/SampleStream;JZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public getCapabilities()Lcom/oculus/android/exoplayer2/RendererCapabilities;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor$1;->noOpRendererCapabilities:Lcom/oculus/android/exoplayer2/RendererCapabilities;

    return-object v0
.end method

.method public getMediaClock()Lcom/oculus/android/exoplayer2/util/MediaClock;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/oculus/video/VideoInfoExtractor$1;->noOpMediaClock:Lcom/oculus/android/exoplayer2/util/MediaClock;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStream()Lcom/oculus/android/exoplayer2/source/SampleStream;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public hasReadStreamToEnd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCurrentStreamFinal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public replaceStream([Lcom/oculus/android/exoplayer2/Format;Lcom/oculus/android/exoplayer2/source/SampleStream;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public resetPosition(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public setCurrentStreamFinal()V
    .locals 0

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method
