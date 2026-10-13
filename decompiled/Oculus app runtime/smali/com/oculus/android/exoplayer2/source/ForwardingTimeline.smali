.class public abstract Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;
.super Lcom/oculus/android/exoplayer2/Timeline;
.source "ForwardingTimeline.java"


# instance fields
.field protected final timeline:Lcom/oculus/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/Timeline;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oculus/android/exoplayer2/Timeline;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    return p1
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLastWindowIndex(Z)I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1}, Lcom/oculus/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;Z)Lcom/oculus/android/exoplayer2/Timeline$Period;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;Z)Lcom/oculus/android/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    return p1
.end method

.method public getWindow(ILcom/oculus/android/exoplayer2/Timeline$Window;ZJ)Lcom/oculus/android/exoplayer2/Timeline$Window;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/Timeline;->getWindow(ILcom/oculus/android/exoplayer2/Timeline$Window;ZJ)Lcom/oculus/android/exoplayer2/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public getWindowCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/oculus/android/exoplayer2/source/ForwardingTimeline;->timeline:Lcom/oculus/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method
