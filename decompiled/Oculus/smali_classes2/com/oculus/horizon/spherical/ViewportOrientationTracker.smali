.class public Lcom/oculus/horizon/spherical/ViewportOrientationTracker;
.super Ljava/lang/Object;
.source "ViewportOrientationTracker.java"


# static fields
.field private static final UP_VECTOR:[F

.field private static final upVector:[F


# instance fields
.field public aspectRatio:F

.field public azimuth:F

.field public elevation:F

.field public lastDragTimeStamp:J

.field public final lock:Ljava/util/concurrent/locks/Lock;

.field public roll:F

.field public verticalFOV:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 11
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->UP_VECTOR:[F

    .line 12
    new-array v0, v1, [F

    sput-object v0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->upVector:[F

    return-void

    .line 11
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/ViewportOrientationTracker;->lock:Ljava/util/concurrent/locks/Lock;

    .line 35
    return-void
.end method

.method public static calcAzimuth([F)F
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 81
    aget v0, p0, v3

    const v1, 0x3f7f7cee    # 0.998f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 82
    aget v0, p0, v2

    float-to-double v0, v0

    aget v2, p0, v4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 88
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    return v0

    .line 83
    :cond_0
    aget v0, p0, v3

    const v1, -0x40808312    # -0.998f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 84
    aget v0, p0, v2

    float-to-double v0, v0

    aget v2, p0, v4

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0

    .line 86
    :cond_1
    const/16 v0, 0x8

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static calcElevation([F)F
    .locals 5

    .prologue
    const/4 v4, 0x4

    const-wide/16 v0, 0x0

    .line 119
    aget v2, p0, v4

    const v3, 0x3f7f7cee    # 0.998f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    return v0

    .line 121
    :cond_1
    aget v2, p0, v4

    const v3, -0x40808312    # -0.998f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 124
    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static calcRoll([F)F
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 99
    aget v0, p0, v2

    const v1, 0x3f7f7cee    # 0.998f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 100
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 106
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    double-to-float v0, v0

    return v0

    .line 101
    :cond_0
    aget v0, p0, v2

    const v1, -0x40808312    # -0.998f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 102
    const-wide v0, -0x4006de04abbbd2e8L    # -1.5707963267948966

    goto :goto_0

    .line 104
    :cond_1
    aget v0, p0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto :goto_0
.end method
