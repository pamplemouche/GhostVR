.class public Lcom/facebook/react/uimanager/PixelUtil;
.super Ljava/lang/Object;
.source "PixelUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDIPFromPixel(F)F
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p0, v0

    return v0
.end method

.method public static toPixelFromDIP(D)F
    .locals 2

    .prologue
    .line 23
    double-to-float v0, p0

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    return v0
.end method

.method public static toPixelFromDIP(F)F
    .locals 2

    .prologue
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 17
    invoke-static {v0, p0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static toPixelFromSP(F)F
    .locals 1

    .prologue
    .line 33
    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(FF)F

    move-result v0

    return v0
.end method

.method public static toPixelFromSP(FF)F
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getWindowDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 39
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 40
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v0, v2

    .line 41
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 42
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    .line 45
    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method
