.class public Lcom/oculus/horizon/events/api/Event$TemporalInfo;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/events/api/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TemporalInfo"
.end annotation


# instance fields
.field private mRequestEpochMs:J

.field public seconds_until_end_time:I

.field public seconds_until_start_time:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->mRequestEpochMs:J

    .line 75
    return-void
.end method


# virtual methods
.method public getUpdatingSecondsUntilEndTime()I
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->mRequestEpochMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 80
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->seconds_until_end_time:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getUpdatingSecondsUntilStartTime()I
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->mRequestEpochMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 86
    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/oculus/horizon/events/api/Event$TemporalInfo;->seconds_until_start_time:I

    int-to-long v4, v4

    sub-long v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
