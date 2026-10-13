.class final Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;
.super Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/android/exoplayer2/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final endUs:J

.field private final startUs:J


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/Timeline;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/oculus/android/exoplayer2/Timeline;)V

    .line 210
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 213
    new-instance v0, Lcom/oculus/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;)Lcom/oculus/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    .line 216
    new-instance v0, Lcom/oculus/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/Timeline$Window;-><init>()V

    invoke-virtual {p1, v2, v0, v2}, Lcom/oculus/android/exoplayer2/Timeline;->getWindow(ILcom/oculus/android/exoplayer2/Timeline$Window;Z)Lcom/oculus/android/exoplayer2/Timeline$Window;

    move-result-object p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    .line 217
    iget-wide p4, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 218
    :cond_0
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 219
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 220
    iget-wide p4, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->durationUs:J

    :cond_1
    cmp-long v0, p2, v5

    if-eqz v0, :cond_3

    .line 222
    iget-boolean p1, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    new-instance p1, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    :cond_3
    :goto_0
    cmp-long p1, p2, p4

    if-gtz p1, :cond_4

    goto :goto_1

    .line 226
    :cond_4
    new-instance p1, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 229
    :cond_5
    :goto_1
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 230
    iput-wide p4, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    return-void

    .line 214
    :cond_6
    new-instance p1, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v1}, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1

    .line 211
    :cond_7
    new-instance p1, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p1, v2}, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;Z)Lcom/oculus/android/exoplayer2/Timeline$Period;
    .locals 3

    .line 256
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;Z)Lcom/oculus/android/exoplayer2/Timeline$Period;

    move-result-object p1

    .line 257
    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v0, p2, v0

    :cond_0
    iput-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Period;->durationUs:J

    return-object p1
.end method

.method public getWindow(ILcom/oculus/android/exoplayer2/Timeline$Window;ZJ)Lcom/oculus/android/exoplayer2/Timeline$Window;
    .locals 6

    .line 236
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    const/4 v1, 0x0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/Timeline;->getWindow(ILcom/oculus/android/exoplayer2/Timeline$Window;ZJ)Lcom/oculus/android/exoplayer2/Timeline$Window;

    move-result-object p1

    .line 237
    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    const-wide p4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p2, v0

    goto :goto_0

    :cond_0
    move-wide p2, p4

    :goto_0
    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 238
    iget-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long v0, p2, p4

    if-eqz v0, :cond_2

    .line 239
    iget-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 240
    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, p2, p4

    if-nez v0, :cond_1

    iget-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    goto :goto_1

    :cond_1
    iget-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    .line 241
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    :goto_1
    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 242
    iget-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p2, v0

    iput-wide p2, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 244
    :cond_2
    iget-wide p2, p0, Lcom/oculus/android/exoplayer2/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p2, p3}, Lcom/oculus/android/exoplayer2/C;->usToMs(J)J

    move-result-wide p2

    .line 245
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v2, v0, p4

    if-eqz v2, :cond_3

    .line 246
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->presentationStartTimeMs:J

    .line 248
    :cond_3
    iget-wide v0, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v2, v0, p4

    if-eqz v2, :cond_4

    .line 249
    iget-wide p4, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr p4, p2

    iput-wide p4, p1, Lcom/oculus/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    :cond_4
    return-object p1
.end method
