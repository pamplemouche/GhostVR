.class Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;
.super Ljava/lang/Object;
.source "OculusDashManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/source/dash/OculusDashManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QualityPoint"
.end annotation


# instance fields
.field public final bitrate:D

.field public final quality:D

.field public final representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;


# direct methods
.method constructor <init>(Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->representation:Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;

    .line 42
    iget-object v0, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/oculus/android/exoplayer2/Format;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->getSsimDb(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    .line 43
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/oculus/android/exoplayer2/Format;

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    return-void
.end method

.method private static getSsimDb(D)D
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    const-wide p0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide p0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_1

    return-wide v2

    :cond_1
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    sub-double p0, v0, p0

    div-double/2addr v0, p0

    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    mul-double p0, p0, v2

    return-wide p0
.end method


# virtual methods
.method getSlopeTo(Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;)D
    .locals 8

    if-eqz p1, :cond_1

    .line 58
    iget-wide v0, p1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    iget-wide v2, p0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->bitrate:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-wide v4, p1, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    iget-wide v6, p0, Lcom/oculus/video/source/dash/OculusDashManifest$QualityPoint;->quality:D

    sub-double/2addr v4, v6

    sub-double/2addr v0, v2

    div-double/2addr v4, v0

    return-wide v4

    :cond_1
    :goto_0
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method
