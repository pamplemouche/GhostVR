.class public Lcom/facebook/common/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 148
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 149
    .local v2, "min":D
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 150
    .local v0, "max":D
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    .line 151
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    .line 152
    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 132
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 133
    .local v1, "min":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 134
    .local v0, "max":F
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 135
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 136
    return p0
.end method

.method public static clamp(III)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 100
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 101
    .local v1, "min":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 102
    .local v0, "max":I
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 103
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 104
    return p0
.end method

.method public static clamp(JJJ)J
    .locals 4
    .param p0, "value"    # J
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 116
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 117
    .local v2, "min":J
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 118
    .local v0, "max":J
    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 119
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    .line 120
    return-wide p0
.end method

.method public static clampedLerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/facebook/common/util/MathUtil;->lerp(FFF)F

    move-result v0

    invoke-static {v0, p0, p1}, Lcom/facebook/common/util/MathUtil;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static clampedMap(DDDDD)D
    .locals 6
    .param p0, "value"    # D
    .param p2, "start1"    # D
    .param p4, "end1"    # D
    .param p6, "start2"    # D
    .param p8, "end2"    # D

    .prologue
    .line 290
    .line 291
    invoke-static/range {p0 .. p9}, Lcom/facebook/common/util/MathUtil;->map(DDDDD)D

    move-result-wide v0

    invoke-static {p6, p7, p8, p9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {p6, p7, p8, p9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 290
    invoke-static/range {v0 .. v5}, Lcom/facebook/common/util/MathUtil;->clamp(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static clampedMap(FFFFF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "start1"    # F
    .param p2, "end1"    # F
    .param p3, "start2"    # F
    .param p4, "end2"    # F

    .prologue
    .line 274
    .line 275
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/common/util/MathUtil;->map(FFFFF)F

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 274
    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/MathUtil;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static clampedMap(IIIII)I
    .locals 3
    .param p0, "value"    # I
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I

    .prologue
    .line 259
    .line 260
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/common/util/MathUtil;->map(IIIII)I

    move-result v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 259
    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/MathUtil;->clamp(III)I

    move-result v0

    return v0
.end method

.method public static clampedNorm(DDD)D
    .locals 6
    .param p0, "value"    # D
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 202
    invoke-static/range {p0 .. p5}, Lcom/facebook/common/util/MathUtil;->norm(DDD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v0 .. v5}, Lcom/facebook/common/util/MathUtil;->clamp(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static clampedNorm(FFF)F
    .locals 3
    .param p0, "value"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 190
    invoke-static {p0, p1, p2}, Lcom/facebook/common/util/MathUtil;->norm(FFF)F

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/facebook/common/util/MathUtil;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static decimalToBase64WebSafe(J)Ljava/lang/String;
    .locals 10
    .param p0, "n"    # J

    .prologue
    const-wide/16 v8, 0x40

    const-wide/16 v6, 0x0

    .line 325
    cmp-long v2, p0, v6

    if-gez v2, :cond_0

    .line 326
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 330
    .local v0, "BASE64_ENCODING_SYSTEM":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v2, p0, v6

    if-lez v2, :cond_1

    .line 332
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    rem-long v4, p0, v8

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    div-long/2addr p0, v8

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3
    .param p0, "a"    # Landroid/graphics/PointF;
    .param p1, "b"    # Landroid/graphics/PointF;

    .prologue
    .line 446
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method public static doLineSegmentsIntersect(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6
    .param p0, "a"    # Landroid/graphics/PointF;
    .param p1, "b"    # Landroid/graphics/PointF;
    .param p2, "c"    # Landroid/graphics/PointF;
    .param p3, "d"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 349
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/common/util/MathUtil;->intersectionFractionOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 350
    .local v1, "h2":F
    invoke-static {p2, p3, p0, p1}, Lcom/facebook/common/util/MathUtil;->intersectionFractionOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 353
    .local v0, "h1":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    cmpg-float v3, v0, v4

    if-ltz v3, :cond_0

    cmpl-float v3, v0, v5

    if-gtz v3, :cond_0

    cmpg-float v3, v1, v4

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v5

    if-gtz v3, :cond_0

    .line 367
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static intersectionFractionOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 10
    .param p0, "intersectorStart"    # Landroid/graphics/PointF;
    .param p1, "intersectorEnd"    # Landroid/graphics/PointF;
    .param p2, "baseStart"    # Landroid/graphics/PointF;
    .param p3, "baseEnd"    # Landroid/graphics/PointF;

    .prologue
    .line 431
    iget v7, p3, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float v3, v7, v8

    .line 432
    .local v3, "fx":F
    iget v7, p3, Landroid/graphics/PointF;->y:F

    iget v8, p2, Landroid/graphics/PointF;->y:F

    sub-float v4, v7, v8

    .line 434
    .local v4, "fy":F
    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget v8, p0, Landroid/graphics/PointF;->x:F

    sub-float v0, v7, v8

    .line 435
    .local v0, "ex":F
    iget v7, p1, Landroid/graphics/PointF;->y:F

    iget v8, p0, Landroid/graphics/PointF;->y:F

    sub-float v1, v7, v8

    .line 437
    .local v1, "ey":F
    neg-float v5, v1

    .line 438
    .local v5, "px":F
    move v6, v0

    .line 440
    .local v6, "py":F
    mul-float v7, v3, v5

    mul-float v8, v4, v6

    add-float v2, v7, v8

    .line 442
    .local v2, "fp":F
    iget v7, p0, Landroid/graphics/PointF;->x:F

    iget v8, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v5

    iget v8, p0, Landroid/graphics/PointF;->y:F

    iget v9, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v2

    return v7
.end method

.method public static intersectionPointOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7
    .param p0, "a"    # Landroid/graphics/PointF;
    .param p1, "b"    # Landroid/graphics/PointF;
    .param p2, "c"    # Landroid/graphics/PointF;
    .param p3, "d"    # Landroid/graphics/PointF;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 382
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/common/util/MathUtil;->intersectionFractionOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 383
    .local v1, "h2":F
    invoke-static {p2, p3, p0, p1}, Lcom/facebook/common/util/MathUtil;->intersectionFractionOfLineSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 386
    .local v0, "h1":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-object v2

    .line 391
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    cmpg-float v3, v0, v4

    if-ltz v3, :cond_0

    cmpl-float v3, v0, v5

    if-gtz v3, :cond_0

    cmpg-float v3, v1, v4

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v5

    if-gtz v3, :cond_0

    .line 400
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public static lerp(DDD)D
    .locals 2
    .param p0, "start"    # D
    .param p2, "stop"    # D
    .param p4, "amount"    # D

    .prologue
    .line 76
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .prologue
    .line 64
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerp(IIF)I
    .locals 1
    .param p0, "start"    # I
    .param p1, "stop"    # I
    .param p2, "amount"    # F

    .prologue
    .line 40
    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static lerp(JJF)J
    .locals 2
    .param p0, "start"    # J
    .param p2, "stop"    # J
    .param p4, "amount"    # F

    .prologue
    .line 52
    sub-long v0, p2, p0

    long-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static map(DDDDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "start1"    # D
    .param p4, "end1"    # D
    .param p6, "start2"    # D
    .param p8, "end2"    # D

    .prologue
    .line 244
    sub-double v0, p0, p2

    sub-double v2, p4, p2

    div-double/2addr v0, v2

    sub-double v2, p8, p6

    mul-double/2addr v0, v2

    add-double/2addr v0, p6

    return-wide v0
.end method

.method public static map(FFFFF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "start1"    # F
    .param p2, "end1"    # F
    .param p3, "start2"    # F
    .param p4, "end2"    # F

    .prologue
    .line 230
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static map(IIIII)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I

    .prologue
    .line 216
    sub-int v0, p0, p1

    int-to-float v0, v0

    sub-int v1, p2, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-int v1, p4, p3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p3

    return v0
.end method

.method public static varargs max(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;[TT;)TT;"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "first":Ljava/lang/Comparable;, "TT;"
    .local p1, "rest":[Ljava/lang/Comparable;, "[TT;"
    move-object v0, p0

    .line 13
    .local v0, "max":Ljava/lang/Comparable;, "TT;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 14
    .local v1, "n":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 15
    move-object v0, v1

    .line 13
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    .end local v1    # "n":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static varargs min(Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;[TT;)TT;"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "first":Ljava/lang/Comparable;, "TT;"
    .local p1, "rest":[Ljava/lang/Comparable;, "[TT;"
    move-object v0, p0

    .line 23
    .local v0, "min":Ljava/lang/Comparable;, "TT;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 24
    .local v1, "n":Ljava/lang/Comparable;, "TT;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 25
    move-object v0, v1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "n":Ljava/lang/Comparable;, "TT;"
    :cond_1
    return-object v0
.end method

.method public static norm(DDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "start"    # D
    .param p4, "end"    # D

    .prologue
    .line 178
    sub-double v0, p0, p2

    sub-double v2, p4, p2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "value"    # F
    .param p1, "start"    # F
    .param p2, "end"    # F

    .prologue
    .line 165
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method public static positiveMod(DD)D
    .locals 2
    .param p0, "dividend"    # D
    .param p2, "divisor"    # D

    .prologue
    .line 315
    rem-double v0, p0, p2

    add-double/2addr v0, p2

    rem-double/2addr v0, p2

    return-wide v0
.end method

.method public static positiveMod(II)I
    .locals 1
    .param p0, "dividend"    # I
    .param p1, "divisor"    # I

    .prologue
    .line 303
    rem-int v0, p0, p1

    add-int/2addr v0, p1

    rem-int/2addr v0, p1

    return v0
.end method
