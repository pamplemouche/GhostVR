.class public abstract Lcom/oculus/video/projection/ProjectionData;
.super Ljava/lang/Object;
.source "ProjectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/projection/ProjectionData$FoVProperties;,
        Lcom/oculus/video/projection/ProjectionData$Pose;,
        Lcom/oculus/video/projection/ProjectionData$Vertex;
    }
.end annotation


# instance fields
.field approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;

.field cubemapPadding:J

.field leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

.field pose:Lcom/oculus/video/projection/ProjectionData$Pose;

.field projectionType:Lcom/oculus/video/projection/ProjectionType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    .line 79
    iput-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    .line 80
    iput-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    .line 82
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->FISHEYE:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;

    return-void
.end method


# virtual methods
.method estimateProjectionMetadataFromMesh([Lcom/oculus/video/projection/ProjectionData$Vertex;)V
    .locals 49

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const/4 v1, 0x3

    .line 121
    new-array v2, v1, [Lcom/oculus/video/projection/ProjectionData$Vertex;

    const/4 v3, 0x0

    .line 122
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 126
    aget-object v7, v2, v4

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    aget-object v8, v2, v5

    iget v8, v8, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    move v5, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    .line 131
    :goto_1
    array-length v7, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    if-ge v4, v7, :cond_6

    .line 133
    aget-object v7, v0, v4

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    aget-object v10, v2, v5

    iget v10, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_2

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v7, v5, 0x1

    .line 137
    rem-int/2addr v7, v1

    aget-object v7, v2, v7

    add-int/lit8 v10, v5, 0x2

    .line 138
    rem-int/2addr v10, v1

    aget-object v10, v2, v10

    .line 139
    iget v11, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    iget v12, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v11, v12

    iget v12, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    iget v13, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v12, v7

    iget v7, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    iget v13, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v7, v13

    sub-float/2addr v12, v7

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    .line 142
    aget-object v7, v0, v4

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    aget-object v13, v0, v4

    iget v13, v13, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v7, v13

    iget v13, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    iget v14, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v13, v14

    sub-float/2addr v7, v13

    aget-object v13, v0, v4

    iget v13, v13, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    aget-object v14, v0, v4

    iget v14, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v13, v14

    iget v14, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    iget v10, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v14, v10

    sub-float/2addr v13, v14

    div-float/2addr v7, v13

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    sub-double/2addr v11, v13

    .line 145
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    .line 146
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const-wide v9, 0x3fe0c152382d7365L    # 0.5235987755982988

    cmpg-double v11, v7, v9

    if-gez v11, :cond_3

    goto :goto_3

    .line 151
    :cond_3
    aget-object v7, v0, v4

    aput-object v7, v2, v5

    move v7, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_5

    .line 154
    aget-object v8, v2, v5

    iget v8, v8, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    aget-object v9, v2, v7

    iget v9, v9, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    move v7, v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 169
    :cond_6
    aget-object v1, v2, v3

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    neg-float v1, v1

    aget-object v4, v2, v3

    iget v4, v4, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    .line 170
    aget-object v1, v2, v3

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    neg-float v1, v1

    aget-object v7, v2, v3

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v1, v7

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    const/4 v1, 0x1

    .line 171
    aget-object v7, v2, v1

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    neg-float v7, v7

    aget-object v12, v2, v1

    iget v12, v12, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v7, v12

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    .line 172
    aget-object v7, v2, v1

    iget v7, v7, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    neg-float v7, v7

    aget-object v14, v2, v1

    iget v14, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v7, v14

    float-to-double v14, v7

    invoke-static {v14, v15}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    const/4 v7, 0x2

    .line 173
    aget-object v8, v2, v7

    iget v8, v8, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    neg-float v8, v8

    aget-object v9, v2, v7

    iget v9, v9, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 174
    aget-object v1, v2, v7

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    neg-float v1, v1

    aget-object v3, v2, v7

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->z:F

    div-float/2addr v1, v3

    move-wide/from16 v19, v8

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double v21, v4, v12

    move-wide/from16 v23, v4

    .line 176
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    sub-double v25, v12, v19

    move-object v5, v2

    .line 177
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    sub-double v27, v19, v23

    move-wide/from16 v29, v12

    .line 178
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    sub-double v31, v10, v14

    move-wide/from16 v33, v10

    .line 179
    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    sub-double v35, v14, v7

    move-wide/from16 v37, v12

    .line 180
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    sub-double v39, v7, v33

    move-wide/from16 v41, v14

    .line 181
    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    move-wide/from16 v43, v7

    move-wide/from16 v6, v37

    .line 191
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    const-wide v45, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    move-wide/from16 v47, v9

    const-wide/16 v8, 0x0

    cmpl-double v10, v3, v37

    if-ltz v10, :cond_7

    cmpl-double v10, v3, v8

    if-lez v10, :cond_7

    const/4 v10, 0x0

    .line 192
    aget-object v1, v5, v10

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    const/4 v2, 0x1

    aget-object v3, v5, v2

    iget v2, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    div-double v1, v1, v21

    .line 193
    aget-object v3, v5, v10

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    float-to-double v3, v3

    mul-double v6, v23, v1

    sub-double/2addr v3, v6

    move-wide v6, v1

    move-wide v1, v3

    goto :goto_6

    .line 194
    :cond_7
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v10, v1, v3

    if-ltz v10, :cond_8

    cmpl-double v3, v1, v8

    if-lez v3, :cond_8

    const/4 v1, 0x1

    .line 195
    aget-object v2, v5, v1

    iget v2, v2, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    const/4 v3, 0x2

    aget-object v4, v5, v3

    iget v4, v4, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    sub-float/2addr v2, v4

    float-to-double v6, v2

    div-double v6, v6, v25

    .line 196
    aget-object v2, v5, v1

    iget v1, v2, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    float-to-double v1, v1

    mul-double v19, v29, v6

    :goto_4
    sub-double v1, v1, v19

    goto :goto_6

    :cond_8
    cmpl-double v1, v6, v8

    if-lez v1, :cond_9

    const/4 v1, 0x2

    .line 198
    aget-object v2, v5, v1

    iget v2, v2, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    const/4 v3, 0x0

    aget-object v4, v5, v3

    iget v3, v4, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    div-double v2, v2, v27

    move-wide v6, v2

    goto :goto_5

    :cond_9
    const/4 v1, 0x2

    move-wide/from16 v6, v45

    .line 199
    :goto_5
    aget-object v2, v5, v1

    iget v1, v2, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    float-to-double v1, v1

    mul-double v19, v19, v6

    goto :goto_4

    .line 203
    :goto_6
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    cmpl-double v4, v47, v19

    if-ltz v4, :cond_a

    cmpl-double v4, v47, v8

    if-lez v4, :cond_a

    const/4 v4, 0x0

    .line 204
    aget-object v3, v5, v4

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    const/4 v10, 0x1

    aget-object v10, v5, v10

    iget v10, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    sub-float/2addr v3, v10

    float-to-double v10, v3

    div-double v10, v10, v31

    .line 205
    aget-object v3, v5, v4

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    float-to-double v3, v3

    mul-double v12, v33, v10

    :goto_7
    sub-double/2addr v3, v12

    :goto_8
    const-wide v12, 0x400921fb54442d18L    # Math.PI

    goto :goto_a

    :cond_a
    move-wide/from16 v3, v47

    .line 206
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v10, v11, v3

    if-ltz v10, :cond_b

    cmpl-double v3, v11, v8

    if-lez v3, :cond_b

    const/4 v3, 0x1

    .line 207
    aget-object v4, v5, v3

    iget v4, v4, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    const/4 v10, 0x2

    aget-object v10, v5, v10

    iget v10, v10, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    sub-float/2addr v4, v10

    float-to-double v10, v4

    div-double v10, v10, v35

    .line 208
    aget-object v3, v5, v3

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    float-to-double v3, v3

    mul-double v14, v41, v10

    sub-double/2addr v3, v14

    goto :goto_8

    :cond_b
    cmpl-double v4, v13, v8

    if-lez v4, :cond_c

    const/4 v3, 0x2

    .line 210
    aget-object v4, v5, v3

    iget v4, v4, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    const/4 v10, 0x0

    aget-object v11, v5, v10

    iget v10, v11, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    sub-float/2addr v4, v10

    float-to-double v10, v4

    div-double v45, v10, v39

    goto :goto_9

    :cond_c
    const/4 v3, 0x2

    :goto_9
    move-wide/from16 v10, v45

    .line 211
    aget-object v3, v5, v3

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    float-to-double v3, v3

    mul-double v12, v43, v10

    goto :goto_7

    :goto_a
    mul-double v6, v6, v12

    const-wide v14, 0x4066800000000000L    # 180.0

    div-double v5, v14, v6

    .line 216
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v10, v10, v12

    div-double v10, v14, v10

    .line 217
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x4076800000000000L    # 360.0

    .line 220
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 221
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const/4 v7, 0x0

    .line 226
    aget-object v12, v0, v7

    const-wide v17, 0x3fd0c152382d7365L    # 0.2617993877991494

    .line 229
    array-length v13, v0

    :goto_b
    if-ge v7, v13, :cond_e

    aget-object v14, v0, v7

    .line 230
    iget v15, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    iget v0, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    div-float/2addr v15, v0

    move-wide/from16 v21, v10

    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v23, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double v10, v10, v23

    .line 231
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v0, v10, v17

    if-gez v0, :cond_d

    iget v0, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    iget v10, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    add-float/2addr v0, v10

    float-to-double v10, v0

    cmpl-double v0, v10, v8

    if-lez v0, :cond_d

    .line 234
    iget v0, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    iget v8, v14, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    add-float/2addr v0, v8

    float-to-double v8, v0

    move-object v12, v14

    :cond_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v10, v21

    const-wide v14, 0x4066800000000000L    # 180.0

    goto :goto_b

    :cond_e
    move-wide/from16 v21, v10

    .line 240
    iget v0, v12, Lcom/oculus/video/projection/ProjectionData$Vertex;->u:F

    float-to-double v7, v0

    sub-double/2addr v7, v1

    mul-double v7, v7, v5

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    .line 241
    iget v0, v12, Lcom/oculus/video/projection/ProjectionData$Vertex;->v:F

    float-to-double v13, v0

    sub-double/2addr v13, v3

    mul-double v13, v13, v21

    div-double/2addr v13, v9

    mul-double v7, v7, v7

    mul-double v13, v13, v13

    add-double/2addr v7, v13

    .line 242
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 243
    iget v0, v12, Lcom/oculus/video/projection/ProjectionData$Vertex;->x:F

    float-to-double v9, v0

    .line 244
    iget v0, v12, Lcom/oculus/video/projection/ProjectionData$Vertex;->y:F

    float-to-double v11, v0

    mul-double v9, v9, v9

    mul-double v11, v11, v11

    add-double/2addr v9, v11

    .line 245
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 246
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 253
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    add-double/2addr v15, v11

    div-double/2addr v15, v13

    mul-double v9, v9, v15

    cmpl-double v0, v7, v9

    if-lez v0, :cond_f

    .line 255
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    move-object/from16 v7, p0

    iput-object v0, v7, Lcom/oculus/video/projection/ProjectionData;->approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;

    goto :goto_c

    :cond_f
    move-object/from16 v7, p0

    .line 257
    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->FISHEYE:Lcom/oculus/video/projection/ProjectionType;

    iput-object v0, v7, Lcom/oculus/video/projection/ProjectionData;->approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;

    .line 261
    :goto_c
    iget-object v0, v7, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-nez v0, :cond_10

    .line 262
    new-instance v10, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    double-to-float v11, v5

    move-wide/from16 v12, v21

    double-to-float v14, v12

    sub-double/2addr v1, v8

    mul-double v1, v1, v5

    double-to-float v5, v1

    sub-double/2addr v3, v8

    mul-double v3, v3, v12

    double-to-float v6, v3

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v11

    move v3, v14

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v10, v7, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    goto :goto_d

    :cond_10
    move-wide/from16 v12, v21

    .line 267
    iget-object v0, v7, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    if-nez v0, :cond_11

    .line 268
    new-instance v10, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    double-to-float v11, v5

    double-to-float v14, v12

    sub-double/2addr v1, v8

    mul-double v1, v1, v5

    double-to-float v5, v1

    sub-double/2addr v3, v8

    mul-double v3, v3, v12

    double-to-float v6, v3

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v11

    move v3, v14

    move v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v10, v7, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    :cond_11
    :goto_d
    return-void
.end method

.method public getCubemapPadding()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/oculus/video/projection/ProjectionData;->cubemapPadding:J

    return-wide v0
.end method

.method public getLeftFovProperties()Lcom/oculus/video/projection/ProjectionData$FoVProperties;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    return-object v0
.end method

.method public getPose()Lcom/oculus/video/projection/ProjectionData$Pose;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    return-object v0
.end method

.method public getProjectionType()Lcom/oculus/video/projection/ProjectionType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    return-object v0
.end method

.method public getRightFovProperties()Lcom/oculus/video/projection/ProjectionData$FoVProperties;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    return-object v0
.end method

.method public getVR180MeshData()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"ApproximatedProjection\" : \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;

    iget-object v1, v1, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract parse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v2, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    if-eq v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    iget-object v1, v1, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Projection"

    .line 281
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    if-eqz v1, :cond_1

    .line 285
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    invoke-virtual {v2}, Lcom/oculus/video/projection/ProjectionData$Pose;->getYawDegrees()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "Yaw"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 287
    iget-object v2, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    invoke-virtual {v2}, Lcom/oculus/video/projection/ProjectionData$Pose;->getPitchDegrees()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "Pitch"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 288
    iget-object v2, p0, Lcom/oculus/video/projection/ProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    invoke-virtual {v2}, Lcom/oculus/video/projection/ProjectionData$Pose;->getRollDegrees()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "Roll"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "Pose"

    .line 289
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    const-string v2, "Horizon"

    const-string v3, "Meridian"

    const-string v4, "FovY"

    const-string v5, "FovX"

    if-eqz v1, :cond_2

    .line 293
    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovXDegrees:F

    float-to-double v6, v1

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 294
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovYDegrees:F

    float-to-double v6, v1

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 295
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->meridianDegrees:F

    float-to-double v6, v1

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 296
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v1, v1, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->horizonDegrees:F

    float-to-double v6, v1

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    if-eqz v1, :cond_3

    .line 300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 301
    iget-object v6, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v6, v6, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovXDegrees:F

    float-to-double v6, v6

    invoke-virtual {v1, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 302
    iget-object v5, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v5, v5, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->fovYDegrees:F

    float-to-double v5, v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 303
    iget-object v4, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v4, v4, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->meridianDegrees:F

    float-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 304
    iget-object v3, p0, Lcom/oculus/video/projection/ProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    iget v3, v3, Lcom/oculus/video/projection/ProjectionData$FoVProperties;->horizonDegrees:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "RightFov"

    .line 305
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/oculus/video/projection/ProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v2, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    if-ne v1, v2, :cond_4

    .line 309
    invoke-virtual {p0}, Lcom/oculus/video/projection/ProjectionData;->getVR180MeshData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VR180MeshData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-object v0
.end method
