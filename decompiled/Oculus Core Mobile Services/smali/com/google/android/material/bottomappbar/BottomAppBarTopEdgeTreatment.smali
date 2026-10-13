.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"


# instance fields
.field private cradleVerticalOffset:F

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# virtual methods
.method getCradleVerticalOffset()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFLcom/google/android/material/shape/ShapePath;)V
    .locals 18

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 145
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    add-float/2addr v2, v3

    .line 76
    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v16, p2, v2

    .line 78
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v12, v2, v3

    .line 82
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, v3, p2

    mul-float/2addr v3, v9

    add-float v13, v2, v3

    .line 84
    div-float v2, v13, v9

    .line 85
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 88
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto :goto_0

    .line 98
    :cond_1
    add-float v2, v9, v16

    .line 99
    mul-float/2addr v2, v2

    .line 100
    add-float v3, v13, v16

    .line 101
    mul-float v4, v3, v3

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 104
    sub-float v5, v12, v2

    .line 105
    add-float v17, v12, v2

    .line 108
    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v8, v2

    .line 109
    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v15, v2, v8

    .line 112
    sub-float v2, v5, v16

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 116
    sub-float v3, v5, v16

    const/4 v4, 0x0

    add-float v5, v5, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 125
    sub-float v10, v12, v9

    neg-float v2, v9

    sub-float v11, v2, v13

    add-float/2addr v12, v9

    sub-float v13, v9, v13

    const/high16 v2, 0x43340000    # 180.0f

    sub-float v14, v2, v15

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v15

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v15, v2, v3

    move-object/from16 v9, p3

    invoke-virtual/range {v9 .. v15}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 135
    sub-float v3, v17, v16

    const/4 v4, 0x0

    add-float v5, v17, v16

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v6, v16, v2

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v8

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 144
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto/16 :goto_0
.end method

.method getFabCradleMargin()F
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method getFabDiameter()F
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method getHorizontalOffset()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    .line 173
    return-void
.end method

.method setFabCradleMargin(F)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 189
    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 197
    return-void
.end method

.method setFabDiameter(F)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    .line 181
    return-void
.end method

.method setHorizontalOffset(F)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    .line 150
    return-void
.end method
