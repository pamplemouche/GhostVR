.class public abstract Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;,
        Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;,
        Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;,
        Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;,
        Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    }
.end annotation


# instance fields
.field final initialization:Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

.field final presentationTimeOffset:J

.field final timescale:J


# direct methods
.method public constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 41
    iput-wide p2, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    .line 42
    iput-wide p4, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;)Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->initialization:Lcom/oculus/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p1
.end method

.method public getPresentationTimeOffsetUs()J
    .locals 6

    .line 60
    iget-wide v0, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->presentationTimeOffset:J

    iget-wide v4, p0, Lcom/oculus/android/exoplayer2/source/dash/manifest/SegmentBase;->timescale:J

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v5}, Lcom/oculus/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
