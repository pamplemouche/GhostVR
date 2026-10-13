.class public Lcom/facebook/react/uimanager/MatrixMathHelper;
.super Ljava/lang/Object;
.source "MatrixMathHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPerspective([DD)V
    .locals 5

    .prologue
    .line 487
    const/16 v0, 0xb

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    div-double/2addr v2, p1

    aput-wide v2, p0, v0

    .line 488
    return-void
.end method

.method public static applyRotateX([DD)V
    .locals 5

    .prologue
    .line 522
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 523
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 524
    const/16 v0, 0x9

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p0, v0

    .line 525
    const/16 v0, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 526
    return-void
.end method

.method public static applyRotateY([DD)V
    .locals 5

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 530
    const/4 v0, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p0, v0

    .line 531
    const/16 v0, 0x8

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 532
    const/16 v0, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 533
    return-void
.end method

.method public static applyRotateZ([DD)V
    .locals 5

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 538
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 539
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, p0, v0

    .line 540
    const/4 v0, 0x5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 541
    return-void
.end method

.method public static applyScaleX([DD)V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    aput-wide p1, p0, v0

    .line 492
    return-void
.end method

.method public static applyScaleY([DD)V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x5

    aput-wide p1, p0, v0

    .line 496
    return-void
.end method

.method public static applySkewX([DD)V
    .locals 5

    .prologue
    .line 514
    const/4 v0, 0x4

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 515
    return-void
.end method

.method public static applySkewY([DD)V
    .locals 5

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 519
    return-void
.end method

.method public static applyTranslate2D([DDD)V
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 504
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 505
    return-void
.end method

.method public static applyTranslate3D([DDDD)V
    .locals 1

    .prologue
    .line 508
    const/16 v0, 0xc

    aput-wide p1, p0, v0

    .line 509
    const/16 v0, 0xd

    aput-wide p3, p0, v0

    .line 510
    const/16 v0, 0xe

    aput-wide p5, p0, v0

    .line 511
    return-void
.end method

.method public static decomposeMatrix([DLcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;)V
    .locals 18

    .prologue
    .line 102
    move-object/from16 v0, p0

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(Z)V

    .line 105
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->perspective:[D

    .line 106
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->scale:[D

    .line 107
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->skew:[D

    .line 108
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->translation:[D

    .line 109
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/facebook/react/uimanager/MatrixMathHelper$MatrixDecompositionContext;->rotationDegrees:[D

    .line 113
    const/16 v2, 0xf

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 102
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 116
    :cond_2
    const/4 v2, 0x4

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 117
    const/16 v3, 0x10

    new-array v12, v3, [D

    .line 118
    const/4 v3, 0x0

    move v6, v3

    :goto_2
    const/4 v3, 0x4

    if-ge v6, v3, :cond_5

    .line 119
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    .line 120
    mul-int/lit8 v4, v6, 0x4

    add-int/2addr v4, v3

    aget-wide v4, p0, v4

    const/16 v13, 0xf

    aget-wide v14, p0, v13

    div-double/2addr v4, v14

    .line 121
    aget-object v13, v2, v6

    aput-wide v4, v13, v3

    .line 122
    mul-int/lit8 v13, v6, 0x4

    add-int/2addr v13, v3

    const/4 v14, 0x3

    if-ne v3, v14, :cond_3

    const-wide/16 v4, 0x0

    :cond_3
    aput-wide v4, v12, v13

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 118
    :cond_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    .line 125
    :cond_5
    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v12, v3

    .line 128
    invoke-static {v12}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    aget-object v3, v2, v3

    const/4 v4, 0x3

    aget-wide v4, v3, v4

    invoke-static {v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v3

    if-nez v3, :cond_7

    .line 136
    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-wide v14, v5, v6

    aput-wide v14, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-wide v14, v5, v6

    aput-wide v14, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-wide v14, v5, v6

    aput-wide v14, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-wide v14, v5, v6

    aput-wide v14, v3, v4

    .line 140
    invoke-static {v12}, Lcom/facebook/react/uimanager/MatrixMathHelper;->inverse([D)[D

    move-result-object v4

    .line 141
    invoke-static {v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->transpose([D)[D

    move-result-object v4

    .line 142
    invoke-static {v3, v4, v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->multiplyVectorByMatrix([D[D[D)V

    .line 150
    :goto_4
    const/4 v3, 0x0

    :goto_5
    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    .line 151
    const/4 v4, 0x3

    aget-object v4, v2, v4

    aget-wide v4, v4, v3

    aput-wide v4, v8, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 145
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v12, 0x0

    aput-wide v12, v7, v5

    aput-wide v12, v7, v4

    aput-wide v12, v7, v3

    .line 146
    const/4 v3, 0x3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v7, v3

    goto :goto_4

    .line 156
    :cond_8
    const/4 v3, 0x3

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [[D

    .line 157
    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x3

    if-ge v3, v4, :cond_9

    .line 158
    aget-object v4, v8, v3

    const/4 v5, 0x0

    aget-object v6, v2, v3

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 159
    aget-object v4, v8, v3

    const/4 v5, 0x1

    aget-object v6, v2, v3

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 160
    aget-object v4, v8, v3

    const/4 v5, 0x2

    aget-object v6, v2, v3

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 164
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 165
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    invoke-static {v3, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v3

    aput-object v3, v8, v2

    .line 168
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v10, v2

    .line 169
    const/4 v12, 0x1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    aget-wide v6, v10, v6

    neg-double v6, v6

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v2

    aput-object v2, v8, v12

    .line 172
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const/4 v4, 0x1

    aget-object v4, v8, v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v10, v2

    .line 173
    const/4 v12, 0x1

    const/4 v2, 0x1

    aget-object v2, v8, v2

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    aget-wide v6, v10, v6

    neg-double v6, v6

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v2

    aput-object v2, v8, v12

    .line 176
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v8, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 177
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const/4 v4, 0x1

    aget-wide v4, v9, v4

    invoke-static {v3, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v3

    aput-object v3, v8, v2

    .line 178
    const/4 v2, 0x0

    aget-wide v4, v10, v2

    const/4 v3, 0x1

    aget-wide v6, v9, v3

    div-double/2addr v4, v6

    aput-wide v4, v10, v2

    .line 181
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const/4 v4, 0x2

    aget-object v4, v8, v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v10, v2

    .line 182
    const/4 v12, 0x2

    const/4 v2, 0x2

    aget-object v2, v8, v2

    const/4 v3, 0x0

    aget-object v3, v8, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    aget-wide v6, v10, v6

    neg-double v6, v6

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v2

    aput-object v2, v8, v12

    .line 183
    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const/4 v4, 0x2

    aget-object v4, v8, v4

    invoke-static {v3, v4}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v4

    aput-wide v4, v10, v2

    .line 184
    const/4 v12, 0x2

    const/4 v2, 0x2

    aget-object v2, v8, v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    aget-wide v6, v10, v6

    neg-double v6, v6

    invoke-static/range {v2 .. v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Combine([D[DDD)[D

    move-result-object v2

    aput-object v2, v8, v12

    .line 187
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v8, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 188
    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v8, v3

    const/4 v4, 0x2

    aget-wide v4, v9, v4

    invoke-static {v3, v4, v5}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Normalize([DD)[D

    move-result-object v3

    aput-object v3, v8, v2

    .line 189
    const/4 v2, 0x1

    aget-wide v4, v10, v2

    const/4 v3, 0x2

    aget-wide v6, v9, v3

    div-double/2addr v4, v6

    aput-wide v4, v10, v2

    .line 190
    const/4 v2, 0x2

    aget-wide v4, v10, v2

    const/4 v3, 0x2

    aget-wide v6, v9, v3

    div-double/2addr v4, v6

    aput-wide v4, v10, v2

    .line 195
    const/4 v2, 0x1

    aget-object v2, v8, v2

    const/4 v3, 0x2

    aget-object v3, v8, v3

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Cross([D[D)[D

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-static {v3, v2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Dot([D[D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_a

    .line 197
    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x3

    if-ge v2, v3, :cond_a

    .line 198
    aget-wide v4, v9, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    aput-wide v4, v9, v2

    .line 199
    aget-object v3, v8, v2

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v12

    aput-wide v6, v3, v4

    .line 200
    aget-object v3, v8, v2

    const/4 v4, 0x1

    aget-wide v6, v3, v4

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v12

    aput-wide v6, v3, v4

    .line 201
    aget-object v3, v8, v2

    const/4 v4, 0x2

    aget-wide v6, v3, v4

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v12

    aput-wide v6, v3, v4

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 207
    :cond_a
    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 208
    const/4 v4, 0x0

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v9, 0x2

    aget-wide v12, v5, v9

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v6

    aput-wide v6, v11, v4

    .line 209
    const/4 v4, 0x1

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    neg-double v6, v6

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v9, 0x1

    aget-wide v12, v5, v9

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v9, 0x1

    aget-wide v14, v5, v9

    mul-double/2addr v12, v14

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v9, 0x2

    aget-wide v14, v5, v9

    const/4 v5, 0x2

    aget-object v5, v8, v5

    const/4 v9, 0x2

    aget-wide v16, v5, v9

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 211
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v6, v2

    .line 210
    invoke-static {v6, v7}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v6

    aput-wide v6, v11, v4

    .line 213
    const/4 v4, 0x2

    const/4 v5, 0x1

    aget-object v5, v8, v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const/4 v5, 0x0

    aget-object v5, v8, v5

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    neg-double v6, v6

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->roundTo3Places(D)D

    move-result-wide v2

    aput-wide v2, v11, v4

    goto/16 :goto_1
.end method

.method public static degreesToRadians(D)D
    .locals 4

    .prologue
    .line 471
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static determinant([D)D
    .locals 36

    .prologue
    .line 217
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 218
    const/4 v2, 0x1

    aget-wide v2, p0, v2

    .line 219
    const/4 v4, 0x2

    aget-wide v4, p0, v4

    .line 220
    const/4 v6, 0x3

    aget-wide v6, p0, v6

    .line 221
    const/4 v8, 0x4

    aget-wide v8, p0, v8

    .line 222
    const/4 v10, 0x5

    aget-wide v10, p0, v10

    .line 223
    const/4 v12, 0x6

    aget-wide v12, p0, v12

    .line 224
    const/4 v14, 0x7

    aget-wide v14, p0, v14

    .line 225
    const/16 v16, 0x8

    aget-wide v16, p0, v16

    .line 226
    const/16 v18, 0x9

    aget-wide v18, p0, v18

    .line 227
    const/16 v20, 0xa

    aget-wide v20, p0, v20

    .line 228
    const/16 v22, 0xb

    aget-wide v22, p0, v22

    .line 229
    const/16 v24, 0xc

    aget-wide v24, p0, v24

    .line 230
    const/16 v26, 0xd

    aget-wide v26, p0, v26

    .line 231
    const/16 v28, 0xe

    aget-wide v28, p0, v28

    .line 232
    const/16 v30, 0xf

    aget-wide v30, p0, v30

    .line 233
    mul-double v32, v6, v12

    mul-double v32, v32, v18

    mul-double v32, v32, v24

    mul-double v34, v4, v14

    mul-double v34, v34, v18

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v34, v6, v10

    mul-double v34, v34, v20

    mul-double v34, v34, v24

    sub-double v32, v32, v34

    mul-double v34, v2, v14

    mul-double v34, v34, v20

    mul-double v34, v34, v24

    add-double v32, v32, v34

    mul-double v34, v4, v10

    mul-double v34, v34, v22

    mul-double v34, v34, v24

    add-double v32, v32, v34

    mul-double v34, v2, v12

    mul-double v34, v34, v22

    mul-double v24, v24, v34

    sub-double v24, v32, v24

    mul-double v32, v6, v12

    mul-double v32, v32, v16

    mul-double v32, v32, v26

    sub-double v24, v24, v32

    mul-double v32, v4, v14

    mul-double v32, v32, v16

    mul-double v32, v32, v26

    add-double v24, v24, v32

    mul-double v32, v6, v8

    mul-double v32, v32, v20

    mul-double v32, v32, v26

    add-double v24, v24, v32

    mul-double v32, v0, v14

    mul-double v32, v32, v20

    mul-double v32, v32, v26

    sub-double v24, v24, v32

    mul-double v32, v4, v8

    mul-double v32, v32, v22

    mul-double v32, v32, v26

    sub-double v24, v24, v32

    mul-double v32, v0, v12

    mul-double v32, v32, v22

    mul-double v26, v26, v32

    add-double v24, v24, v26

    mul-double v26, v6, v10

    mul-double v26, v26, v16

    mul-double v26, v26, v28

    add-double v24, v24, v26

    mul-double v26, v2, v14

    mul-double v26, v26, v16

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    mul-double/2addr v6, v8

    mul-double v6, v6, v18

    mul-double v6, v6, v28

    sub-double v6, v24, v6

    mul-double/2addr v14, v0

    mul-double v14, v14, v18

    mul-double v14, v14, v28

    add-double/2addr v6, v14

    mul-double v14, v2, v8

    mul-double v14, v14, v22

    mul-double v14, v14, v28

    add-double/2addr v6, v14

    mul-double v14, v0, v10

    mul-double v14, v14, v22

    mul-double v14, v14, v28

    sub-double/2addr v6, v14

    mul-double v14, v4, v10

    mul-double v14, v14, v16

    mul-double v14, v14, v30

    sub-double/2addr v6, v14

    mul-double v14, v2, v12

    mul-double v14, v14, v16

    mul-double v14, v14, v30

    add-double/2addr v6, v14

    mul-double/2addr v4, v8

    mul-double v4, v4, v18

    mul-double v4, v4, v30

    add-double/2addr v4, v6

    mul-double v6, v0, v12

    mul-double v6, v6, v18

    mul-double v6, v6, v30

    sub-double/2addr v4, v6

    mul-double/2addr v2, v8

    mul-double v2, v2, v20

    mul-double v2, v2, v30

    sub-double v2, v4, v2

    mul-double/2addr v0, v10

    mul-double v0, v0, v20

    mul-double v0, v0, v30

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static inverse([D)[D
    .locals 42

    .prologue
    .line 266
    invoke-static/range {p0 .. p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->determinant([D)D

    move-result-wide v2

    .line 267
    invoke-static {v2, v3}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    :goto_0
    return-object p0

    .line 270
    :cond_0
    const/4 v4, 0x0

    aget-wide v4, p0, v4

    .line 271
    const/4 v6, 0x1

    aget-wide v6, p0, v6

    .line 272
    const/4 v8, 0x2

    aget-wide v8, p0, v8

    .line 273
    const/4 v10, 0x3

    aget-wide v10, p0, v10

    .line 274
    const/4 v12, 0x4

    aget-wide v12, p0, v12

    .line 275
    const/4 v14, 0x5

    aget-wide v14, p0, v14

    .line 276
    const/16 v16, 0x6

    aget-wide v16, p0, v16

    .line 277
    const/16 v18, 0x7

    aget-wide v18, p0, v18

    .line 278
    const/16 v20, 0x8

    aget-wide v20, p0, v20

    .line 279
    const/16 v22, 0x9

    aget-wide v22, p0, v22

    .line 280
    const/16 v24, 0xa

    aget-wide v24, p0, v24

    .line 281
    const/16 v26, 0xb

    aget-wide v26, p0, v26

    .line 282
    const/16 v28, 0xc

    aget-wide v28, p0, v28

    .line 283
    const/16 v30, 0xd

    aget-wide v30, p0, v30

    .line 284
    const/16 v32, 0xe

    aget-wide v32, p0, v32

    .line 285
    const/16 v34, 0xf

    aget-wide v34, p0, v34

    .line 286
    const/16 v36, 0x10

    move/from16 v0, v36

    new-array v0, v0, [D

    move-object/from16 p0, v0

    const/16 v36, 0x0

    mul-double v38, v16, v26

    mul-double v38, v38, v30

    mul-double v40, v18, v24

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v18, v22

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v14, v26

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v16, v22

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    mul-double v40, v14, v24

    mul-double v40, v40, v34

    add-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x1

    mul-double v38, v10, v24

    mul-double v38, v38, v30

    mul-double v40, v8, v26

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v10, v22

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v6, v26

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v8, v22

    mul-double v40, v40, v34

    add-double v38, v38, v40

    mul-double v40, v6, v24

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x2

    mul-double v38, v8, v18

    mul-double v38, v38, v30

    mul-double v40, v10, v16

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v10, v14

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v6, v18

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v8, v14

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    mul-double v40, v6, v16

    mul-double v40, v40, v34

    add-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x3

    mul-double v38, v10, v16

    mul-double v38, v38, v22

    mul-double v40, v8, v18

    mul-double v40, v40, v22

    sub-double v38, v38, v40

    mul-double v40, v10, v14

    mul-double v40, v40, v24

    sub-double v38, v38, v40

    mul-double v40, v6, v18

    mul-double v40, v40, v24

    add-double v38, v38, v40

    mul-double v40, v8, v14

    mul-double v40, v40, v26

    add-double v38, v38, v40

    mul-double v40, v6, v16

    mul-double v40, v40, v26

    sub-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x4

    mul-double v38, v18, v24

    mul-double v38, v38, v28

    mul-double v40, v16, v26

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v18, v20

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v12, v26

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v16, v20

    mul-double v40, v40, v34

    add-double v38, v38, v40

    mul-double v40, v12, v24

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x5

    mul-double v38, v8, v26

    mul-double v38, v38, v28

    mul-double v40, v10, v24

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v10, v20

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v4, v26

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v8, v20

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    mul-double v40, v4, v24

    mul-double v40, v40, v34

    add-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x6

    mul-double v38, v10, v16

    mul-double v38, v38, v28

    mul-double v40, v8, v18

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v10, v12

    mul-double v40, v40, v32

    sub-double v38, v38, v40

    mul-double v40, v4, v18

    mul-double v40, v40, v32

    add-double v38, v38, v40

    mul-double v40, v8, v12

    mul-double v40, v40, v34

    add-double v38, v38, v40

    mul-double v40, v4, v16

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x7

    mul-double v38, v8, v18

    mul-double v38, v38, v20

    mul-double v40, v10, v16

    mul-double v40, v40, v20

    sub-double v38, v38, v40

    mul-double v40, v10, v12

    mul-double v40, v40, v24

    add-double v38, v38, v40

    mul-double v40, v4, v18

    mul-double v40, v40, v24

    sub-double v38, v38, v40

    mul-double v40, v8, v12

    mul-double v40, v40, v26

    sub-double v38, v38, v40

    mul-double v40, v4, v16

    mul-double v40, v40, v26

    add-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x8

    mul-double v38, v14, v26

    mul-double v38, v38, v28

    mul-double v40, v18, v22

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v18, v20

    mul-double v40, v40, v30

    add-double v38, v38, v40

    mul-double v40, v12, v26

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v14, v20

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    mul-double v40, v12, v22

    mul-double v40, v40, v34

    add-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0x9

    mul-double v38, v10, v22

    mul-double v38, v38, v28

    mul-double v40, v6, v26

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v10, v20

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v4, v26

    mul-double v40, v40, v30

    add-double v38, v38, v40

    mul-double v40, v6, v20

    mul-double v40, v40, v34

    add-double v38, v38, v40

    mul-double v40, v4, v22

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    div-double v38, v38, v2

    aput-wide v38, p0, v36

    const/16 v36, 0xa

    mul-double v38, v6, v18

    mul-double v38, v38, v28

    mul-double v40, v10, v14

    mul-double v40, v40, v28

    sub-double v38, v38, v40

    mul-double v40, v10, v12

    mul-double v40, v40, v30

    add-double v38, v38, v40

    mul-double v40, v4, v18

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    mul-double v40, v6, v12

    mul-double v40, v40, v34

    sub-double v38, v38, v40

    mul-double v40, v4, v14

    mul-double v34, v34, v40

    add-double v34, v34, v38

    div-double v34, v34, v2

    aput-wide v34, p0, v36

    const/16 v34, 0xb

    mul-double v36, v10, v14

    mul-double v36, v36, v20

    mul-double v38, v6, v18

    mul-double v38, v38, v20

    sub-double v36, v36, v38

    mul-double/2addr v10, v12

    mul-double v10, v10, v22

    sub-double v10, v36, v10

    mul-double v18, v18, v4

    mul-double v18, v18, v22

    add-double v10, v10, v18

    mul-double v18, v6, v12

    mul-double v18, v18, v26

    add-double v10, v10, v18

    mul-double v18, v4, v14

    mul-double v18, v18, v26

    sub-double v10, v10, v18

    div-double/2addr v10, v2

    aput-wide v10, p0, v34

    const/16 v10, 0xc

    mul-double v18, v16, v22

    mul-double v18, v18, v28

    mul-double v26, v14, v24

    mul-double v26, v26, v28

    sub-double v18, v18, v26

    mul-double v26, v16, v20

    mul-double v26, v26, v30

    sub-double v18, v18, v26

    mul-double v26, v12, v24

    mul-double v26, v26, v30

    add-double v18, v18, v26

    mul-double v26, v14, v20

    mul-double v26, v26, v32

    add-double v18, v18, v26

    mul-double v26, v12, v22

    mul-double v26, v26, v32

    sub-double v18, v18, v26

    div-double v18, v18, v2

    aput-wide v18, p0, v10

    const/16 v10, 0xd

    mul-double v18, v6, v24

    mul-double v18, v18, v28

    mul-double v26, v8, v22

    mul-double v26, v26, v28

    sub-double v18, v18, v26

    mul-double v26, v8, v20

    mul-double v26, v26, v30

    add-double v18, v18, v26

    mul-double v26, v4, v24

    mul-double v26, v26, v30

    sub-double v18, v18, v26

    mul-double v26, v6, v20

    mul-double v26, v26, v32

    sub-double v18, v18, v26

    mul-double v26, v4, v22

    mul-double v26, v26, v32

    add-double v18, v18, v26

    div-double v18, v18, v2

    aput-wide v18, p0, v10

    const/16 v10, 0xe

    mul-double v18, v8, v14

    mul-double v18, v18, v28

    mul-double v26, v6, v16

    mul-double v26, v26, v28

    sub-double v18, v18, v26

    mul-double v26, v8, v12

    mul-double v26, v26, v30

    sub-double v18, v18, v26

    mul-double v26, v4, v16

    mul-double v26, v26, v30

    add-double v18, v18, v26

    mul-double v26, v6, v12

    mul-double v26, v26, v32

    add-double v18, v18, v26

    mul-double v26, v4, v14

    mul-double v26, v26, v32

    sub-double v18, v18, v26

    div-double v18, v18, v2

    aput-wide v18, p0, v10

    const/16 v10, 0xf

    mul-double v18, v6, v16

    mul-double v18, v18, v20

    mul-double v26, v8, v14

    mul-double v20, v20, v26

    sub-double v18, v18, v20

    mul-double/2addr v8, v12

    mul-double v8, v8, v22

    add-double v8, v8, v18

    mul-double v16, v16, v4

    mul-double v16, v16, v22

    sub-double v8, v8, v16

    mul-double/2addr v6, v12

    mul-double v6, v6, v24

    sub-double v6, v8, v6

    mul-double/2addr v4, v14

    mul-double v4, v4, v24

    add-double/2addr v4, v6

    div-double v2, v4, v2

    aput-wide v2, p0, v10

    goto/16 :goto_0
.end method

.method private static isZero(D)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static multiplyInto([D[D[D)V
    .locals 46

    .prologue
    .line 49
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    .line 50
    const/4 v2, 0x1

    aget-wide v2, p1, v2

    .line 51
    const/4 v4, 0x2

    aget-wide v4, p1, v4

    .line 52
    const/4 v6, 0x3

    aget-wide v6, p1, v6

    .line 53
    const/4 v8, 0x4

    aget-wide v8, p1, v8

    .line 54
    const/4 v10, 0x5

    aget-wide v10, p1, v10

    .line 55
    const/4 v12, 0x6

    aget-wide v12, p1, v12

    .line 56
    const/4 v14, 0x7

    aget-wide v14, p1, v14

    .line 57
    const/16 v16, 0x8

    aget-wide v16, p1, v16

    .line 58
    const/16 v18, 0x9

    aget-wide v18, p1, v18

    .line 59
    const/16 v20, 0xa

    aget-wide v20, p1, v20

    .line 60
    const/16 v22, 0xb

    aget-wide v22, p1, v22

    .line 61
    const/16 v24, 0xc

    aget-wide v24, p1, v24

    .line 62
    const/16 v26, 0xd

    aget-wide v26, p1, v26

    .line 63
    const/16 v28, 0xe

    aget-wide v28, p1, v28

    .line 64
    const/16 v30, 0xf

    aget-wide v30, p1, v30

    .line 66
    const/16 v32, 0x0

    aget-wide v32, p2, v32

    const/16 v34, 0x1

    aget-wide v34, p2, v34

    const/16 v36, 0x2

    aget-wide v36, p2, v36

    const/16 v38, 0x3

    aget-wide v38, p2, v38

    .line 67
    const/16 v40, 0x0

    mul-double v42, v32, v0

    mul-double v44, v34, v8

    add-double v42, v42, v44

    mul-double v44, v36, v16

    add-double v42, v42, v44

    mul-double v44, v38, v24

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 68
    const/16 v40, 0x1

    mul-double v42, v32, v2

    mul-double v44, v34, v10

    add-double v42, v42, v44

    mul-double v44, v36, v18

    add-double v42, v42, v44

    mul-double v44, v38, v26

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 69
    const/16 v40, 0x2

    mul-double v42, v32, v4

    mul-double v44, v34, v12

    add-double v42, v42, v44

    mul-double v44, v36, v20

    add-double v42, v42, v44

    mul-double v44, v38, v28

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 70
    const/16 v40, 0x3

    mul-double v32, v32, v6

    mul-double v34, v34, v14

    add-double v32, v32, v34

    mul-double v34, v36, v22

    add-double v32, v32, v34

    mul-double v34, v38, v30

    add-double v32, v32, v34

    aput-wide v32, p0, v40

    .line 72
    const/16 v32, 0x4

    aget-wide v32, p2, v32

    .line 73
    const/16 v34, 0x5

    aget-wide v34, p2, v34

    .line 74
    const/16 v36, 0x6

    aget-wide v36, p2, v36

    .line 75
    const/16 v38, 0x7

    aget-wide v38, p2, v38

    .line 76
    const/16 v40, 0x4

    mul-double v42, v32, v0

    mul-double v44, v34, v8

    add-double v42, v42, v44

    mul-double v44, v36, v16

    add-double v42, v42, v44

    mul-double v44, v38, v24

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 77
    const/16 v40, 0x5

    mul-double v42, v32, v2

    mul-double v44, v34, v10

    add-double v42, v42, v44

    mul-double v44, v36, v18

    add-double v42, v42, v44

    mul-double v44, v38, v26

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 78
    const/16 v40, 0x6

    mul-double v42, v32, v4

    mul-double v44, v34, v12

    add-double v42, v42, v44

    mul-double v44, v36, v20

    add-double v42, v42, v44

    mul-double v44, v38, v28

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 79
    const/16 v40, 0x7

    mul-double v32, v32, v6

    mul-double v34, v34, v14

    add-double v32, v32, v34

    mul-double v34, v36, v22

    add-double v32, v32, v34

    mul-double v34, v38, v30

    add-double v32, v32, v34

    aput-wide v32, p0, v40

    .line 81
    const/16 v32, 0x8

    aget-wide v32, p2, v32

    .line 82
    const/16 v34, 0x9

    aget-wide v34, p2, v34

    .line 83
    const/16 v36, 0xa

    aget-wide v36, p2, v36

    .line 84
    const/16 v38, 0xb

    aget-wide v38, p2, v38

    .line 85
    const/16 v40, 0x8

    mul-double v42, v32, v0

    mul-double v44, v34, v8

    add-double v42, v42, v44

    mul-double v44, v36, v16

    add-double v42, v42, v44

    mul-double v44, v38, v24

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 86
    const/16 v40, 0x9

    mul-double v42, v32, v2

    mul-double v44, v34, v10

    add-double v42, v42, v44

    mul-double v44, v36, v18

    add-double v42, v42, v44

    mul-double v44, v38, v26

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 87
    const/16 v40, 0xa

    mul-double v42, v32, v4

    mul-double v44, v34, v12

    add-double v42, v42, v44

    mul-double v44, v36, v20

    add-double v42, v42, v44

    mul-double v44, v38, v28

    add-double v42, v42, v44

    aput-wide v42, p0, v40

    .line 88
    const/16 v40, 0xb

    mul-double v32, v32, v6

    mul-double v34, v34, v14

    add-double v32, v32, v34

    mul-double v34, v36, v22

    add-double v32, v32, v34

    mul-double v34, v38, v30

    add-double v32, v32, v34

    aput-wide v32, p0, v40

    .line 90
    const/16 v32, 0xc

    aget-wide v32, p2, v32

    .line 91
    const/16 v34, 0xd

    aget-wide v34, p2, v34

    .line 92
    const/16 v36, 0xe

    aget-wide v36, p2, v36

    .line 93
    const/16 v38, 0xf

    aget-wide v38, p2, v38

    .line 94
    const/16 v40, 0xc

    mul-double v0, v0, v32

    mul-double v8, v8, v34

    add-double/2addr v0, v8

    mul-double v8, v36, v16

    add-double/2addr v0, v8

    mul-double v8, v38, v24

    add-double/2addr v0, v8

    aput-wide v0, p0, v40

    .line 95
    const/16 v0, 0xd

    mul-double v2, v2, v32

    mul-double v8, v34, v10

    add-double/2addr v2, v8

    mul-double v8, v36, v18

    add-double/2addr v2, v8

    mul-double v8, v38, v26

    add-double/2addr v2, v8

    aput-wide v2, p0, v0

    .line 96
    const/16 v0, 0xe

    mul-double v2, v32, v4

    mul-double v4, v34, v12

    add-double/2addr v2, v4

    mul-double v4, v36, v20

    add-double/2addr v2, v4

    mul-double v4, v38, v28

    add-double/2addr v2, v4

    aput-wide v2, p0, v0

    .line 97
    const/16 v0, 0xf

    mul-double v2, v32, v6

    mul-double v4, v34, v14

    add-double/2addr v2, v4

    mul-double v4, v36, v22

    add-double/2addr v2, v4

    mul-double v4, v38, v30

    add-double/2addr v2, v4

    aput-wide v2, p0, v0

    .line 98
    return-void
.end method

.method public static multiplyVectorByMatrix([D[D[D)V
    .locals 14

    .prologue
    .line 414
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    .line 415
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-wide v10, p1, v9

    mul-double/2addr v10, v0

    const/4 v9, 0x4

    aget-wide v12, p1, v9

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    const/16 v9, 0x8

    aget-wide v12, p1, v9

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const/16 v9, 0xc

    aget-wide v12, p1, v9

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    aput-wide v10, p2, v8

    .line 416
    const/4 v8, 0x1

    const/4 v9, 0x1

    aget-wide v10, p1, v9

    mul-double/2addr v10, v0

    const/4 v9, 0x5

    aget-wide v12, p1, v9

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    const/16 v9, 0x9

    aget-wide v12, p1, v9

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const/16 v9, 0xd

    aget-wide v12, p1, v9

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    aput-wide v10, p2, v8

    .line 417
    const/4 v8, 0x2

    const/4 v9, 0x2

    aget-wide v10, p1, v9

    mul-double/2addr v10, v0

    const/4 v9, 0x6

    aget-wide v12, p1, v9

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    const/16 v9, 0xa

    aget-wide v12, p1, v9

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    const/16 v9, 0xe

    aget-wide v12, p1, v9

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    aput-wide v10, p2, v8

    .line 418
    const/4 v8, 0x3

    const/4 v9, 0x3

    aget-wide v10, p1, v9

    mul-double/2addr v0, v10

    const/4 v9, 0x7

    aget-wide v10, p1, v9

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    const/16 v2, 0xb

    aget-wide v2, p1, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const/16 v2, 0xf

    aget-wide v2, p1, v2

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    aput-wide v0, p2, v8

    .line 419
    return-void
.end method

.method public static resetIdentityMatrix([D)V
    .locals 14

    .prologue
    .line 475
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/16 v7, 0x9

    const/16 v8, 0xb

    const/16 v9, 0xc

    const/16 v10, 0xd

    const/16 v11, 0xe

    const-wide/16 v12, 0x0

    aput-wide v12, p0, v11

    aput-wide v12, p0, v10

    aput-wide v12, p0, v9

    aput-wide v12, p0, v8

    aput-wide v12, p0, v7

    aput-wide v12, p0, v6

    aput-wide v12, p0, v5

    aput-wide v12, p0, v4

    aput-wide v12, p0, v3

    aput-wide v12, p0, v2

    aput-wide v12, p0, v1

    aput-wide v12, p0, v0

    .line 483
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/16 v2, 0xa

    const/16 v3, 0xf

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, p0, v3

    aput-wide v4, p0, v2

    aput-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 484
    return-void
.end method

.method public static roundTo3Places(D)D
    .locals 4

    .prologue
    .line 461
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static transpose([D)[D
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 404
    const/16 v0, 0x10

    new-array v0, v0, [D

    aget-wide v2, p0, v1

    aput-wide v2, v0, v1

    aget-wide v2, p0, v7

    aput-wide v2, v0, v4

    const/16 v1, 0x8

    aget-wide v2, p0, v1

    aput-wide v2, v0, v5

    const/16 v1, 0xc

    aget-wide v2, p0, v1

    aput-wide v2, v0, v6

    aget-wide v2, p0, v4

    aput-wide v2, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x9

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0x8

    aget-wide v2, p0, v5

    aput-wide v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xe

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0xc

    aget-wide v2, p0, v6

    aput-wide v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget-wide v2, p0, v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static v3Combine([D[DDD)[D
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 445
    const/4 v0, 0x3

    new-array v0, v0, [D

    aget-wide v2, p0, v1

    mul-double/2addr v2, p2

    aget-wide v4, p1, v1

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v1

    aget-wide v2, p0, v6

    mul-double/2addr v2, p2

    aget-wide v4, p1, v6

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v6

    aget-wide v2, p0, v7

    mul-double/2addr v2, p2

    aget-wide v4, p1, v7

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    aput-wide v2, v0, v7

    return-object v0
.end method

.method public static v3Cross([D[D)[D
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 455
    const/4 v0, 0x3

    new-array v0, v0, [D

    aget-wide v2, p0, v8

    aget-wide v4, p1, v9

    mul-double/2addr v2, v4

    aget-wide v4, p0, v9

    aget-wide v6, p1, v8

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    aget-wide v2, p0, v9

    aget-wide v4, p1, v1

    mul-double/2addr v2, v4

    aget-wide v4, p0, v1

    aget-wide v6, p1, v9

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, v0, v8

    aget-wide v2, p0, v1

    aget-wide v4, p1, v8

    mul-double/2addr v2, v4

    aget-wide v4, p0, v8

    aget-wide v6, p1, v1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    aput-wide v2, v0, v9

    return-object v0
.end method

.method public static v3Dot([D[D)D
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 437
    aget-wide v0, p0, v2

    aget-wide v2, p1, v2

    mul-double/2addr v0, v2

    aget-wide v2, p0, v4

    aget-wide v4, p1, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-wide v2, p0, v6

    aget-wide v4, p1, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static v3Length([D)D
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 423
    aget-wide v0, p0, v2

    aget-wide v2, p0, v2

    mul-double/2addr v0, v2

    aget-wide v2, p0, v4

    aget-wide v4, p0, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aget-wide v2, p0, v6

    aget-wide v4, p0, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static v3Normalize([DD)[D
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 428
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MatrixMathHelper;->isZero(D)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/facebook/react/uimanager/MatrixMathHelper;->v3Length([D)D

    move-result-wide p1

    :cond_0
    div-double/2addr v0, p1

    .line 429
    const/4 v2, 0x3

    new-array v2, v2, [D

    aget-wide v4, p0, v3

    mul-double/2addr v4, v0

    aput-wide v4, v2, v3

    aget-wide v4, p0, v6

    mul-double/2addr v4, v0

    aput-wide v4, v2, v6

    aget-wide v4, p0, v7

    mul-double/2addr v0, v4

    aput-wide v0, v2, v7

    return-object v2
.end method
