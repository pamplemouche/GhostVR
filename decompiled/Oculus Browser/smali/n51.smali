.class public Ln51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:J

.field public final synthetic x:Ls51;


# direct methods
.method public constructor <init>(Ls51;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln51;->x:Ls51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Ln51;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln51;->x:Ls51;

    iget v1, v1, Lorg/chromium/media/VideoCapture;->d:I

    .line 2
    invoke-static {v1}, Ls51;->b(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    const/4 v2, 0x3

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v2, [Z

    const/16 v4, 0x10

    new-array v6, v4, [D

    new-array v7, v4, [I

    new-array v9, v2, [I

    new-array v10, v2, [[I

    .line 4
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 5
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 7
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_0
    aput v11, v7, v8

    const/4 v11, 0x1

    aput v4, v7, v11

    aput v11, v7, v2

    .line 8
    iget-object v4, v0, Ln51;->x:Ls51;

    .line 9
    iget-object v4, v4, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 10
    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v12}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    const/4 v12, 0x2

    if-eqz v4, :cond_1

    .line 11
    iget-object v4, v0, Ln51;->x:Ls51;

    .line 12
    iget-object v4, v4, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 13
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v13}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v7, v12

    .line 14
    :cond_1
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v13, 0x100

    .line 15
    invoke-virtual {v4, v13}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    .line 16
    array-length v13, v4

    const v14, 0x7fffffff

    const/4 v2, 0x0

    const v12, 0x7fffffff

    const/4 v14, 0x0

    const v15, 0x7fffffff

    :goto_1
    if-ge v14, v13, :cond_6

    aget-object v19, v4, v14

    .line 17
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-ge v11, v12, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v11

    move v12, v11

    .line 18
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-ge v11, v15, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v11

    move v15, v11

    .line 19
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v11

    if-le v11, v8, :cond_4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 20
    :cond_4
    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v11

    if-le v11, v2, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v2

    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x4

    aput v15, v7, v4

    const/4 v11, 0x5

    aput v2, v7, v11

    const/4 v2, 0x7

    const/4 v13, 0x1

    aput v13, v7, v2

    .line 21
    iget-object v13, v0, Ln51;->x:Ls51;

    .line 22
    iget v14, v13, Ls51;->s:I

    if-lez v14, :cond_7

    goto :goto_2

    .line 23
    :cond_7
    iget-object v13, v13, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 24
    iget v14, v13, Lorg/chromium/media/VideoCaptureFormat;->b:I

    :goto_2
    const/4 v13, 0x6

    aput v14, v7, v13

    const/16 v14, 0x8

    aput v12, v7, v14

    const/16 v12, 0x9

    aput v8, v7, v12

    const/16 v8, 0xb

    const/4 v15, 0x1

    aput v15, v7, v8

    .line 25
    iget-object v15, v0, Ln51;->x:Ls51;

    .line 26
    iget v12, v15, Ls51;->r:I

    if-lez v12, :cond_8

    goto :goto_3

    .line 27
    :cond_8
    iget-object v12, v15, Lorg/chromium/media/VideoCapture;->c:Lorg/chromium/media/VideoCaptureFormat;

    .line 28
    iget v12, v12, Lorg/chromium/media/VideoCaptureFormat;->a:I

    :goto_3
    const/16 v15, 0xa

    aput v12, v7, v15

    .line 29
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    const/high16 v21, 0x3f800000    # 1.0f

    if-eqz v12, :cond_9

    iget-object v12, v0, Ln51;->x:Ls51;

    .line 30
    iget-object v12, v12, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 31
    sget-object v15, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v12, v15}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 32
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 33
    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Rect;

    .line 34
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget-object v15, v0, Ln51;->x:Ls51;

    .line 35
    iget-object v15, v15, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 36
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v15, v14}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    goto :goto_4

    :cond_9
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_4
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v18, 0x0

    aput-wide v14, v6, v18

    .line 37
    iget-object v14, v0, Ln51;->x:Ls51;

    .line 38
    iget v14, v14, Ls51;->p:F

    float-to-double v14, v14

    const/16 v20, 0x1

    aput-wide v14, v6, v20

    float-to-double v14, v12

    const/4 v12, 0x2

    aput-wide v14, v6, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    const/4 v12, 0x3

    aput-wide v14, v6, v12

    .line 39
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 40
    invoke-virtual {v1, v14}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [I

    .line 41
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    const/16 v22, 0x0

    if-eqz v12, :cond_b

    .line 43
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v23, v12, v22

    if-nez v23, :cond_a

    goto :goto_5

    :cond_a
    if-lez v23, :cond_c

    div-float v12, v21, v12

    goto :goto_5

    :cond_b
    const/4 v12, 0x0

    .line 44
    :cond_c
    :goto_5
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    const/high16 v2, 0x5f000000

    if-eqz v8, :cond_e

    .line 45
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v25, v8, v22

    if-nez v25, :cond_d

    const/high16 v8, 0x5f000000

    goto :goto_6

    :cond_d
    if-lez v25, :cond_f

    div-float v8, v21, v8

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    .line 46
    :cond_f
    :goto_6
    iget-object v11, v0, Ln51;->x:Ls51;

    .line 47
    iget-object v11, v11, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 48
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 49
    iget-object v4, v0, Ln51;->x:Ls51;

    .line 50
    iget-object v11, v4, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 51
    sget-object v13, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11, v13}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 52
    iput v11, v4, Ls51;->u:F

    .line 53
    iget-object v4, v0, Ln51;->x:Ls51;

    .line 54
    iget v11, v4, Ls51;->u:F

    cmpl-float v13, v11, v22

    if-nez v13, :cond_10

    .line 55
    iput v2, v4, Ls51;->u:F

    goto :goto_7

    :cond_10
    if-lez v13, :cond_11

    div-float v2, v21, v11

    move-object v11, v5

    float-to-double v4, v2

    const/4 v2, 0x6

    aput-wide v4, v6, v2

    goto :goto_8

    :cond_11
    :goto_7
    move-object v11, v5

    .line 56
    :goto_8
    array-length v2, v14

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_18

    aget v5, v14, v4

    if-nez v5, :cond_12

    const/4 v13, 0x2

    .line 57
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v14

    float-to-double v13, v12

    const/4 v5, 0x4

    aput-wide v13, v6, v5

    float-to-double v13, v8

    const/4 v5, 0x5

    aput-wide v13, v6, v5

    const v13, 0x3c23d70a    # 0.01f

    float-to-double v13, v13

    const/16 v24, 0x7

    aput-wide v13, v6, v24

    goto :goto_c

    :cond_12
    move v13, v5

    move-object/from16 v27, v14

    const/4 v5, 0x5

    const/4 v14, 0x1

    const/16 v24, 0x7

    if-eq v13, v14, :cond_16

    const/4 v14, 0x2

    if-ne v13, v14, :cond_13

    goto :goto_b

    :cond_13
    const/4 v14, 0x3

    if-eq v13, v14, :cond_14

    const/4 v14, 0x4

    if-eq v13, v14, :cond_15

    if-ne v13, v5, :cond_17

    goto :goto_a

    :cond_14
    const/4 v14, 0x4

    .line 58
    :cond_15
    :goto_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 59
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 60
    :cond_16
    :goto_b
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    .line 61
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    :goto_c
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v14, v27

    goto :goto_9

    .line 62
    :cond_18
    invoke-static {v15}, Lorg/chromium/media/VideoCapture;->a(Ljava/util/ArrayList;)[I

    move-result-object v2

    .line 63
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v4, 0x0

    aput-object v2, v10, v4

    .line 64
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 65
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 66
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 67
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 68
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 69
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1d

    const/4 v4, 0x4

    if-ne v2, v4, :cond_19

    goto :goto_e

    :cond_19
    const/4 v4, 0x1

    if-eq v2, v4, :cond_1c

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1a

    goto :goto_d

    :cond_1a
    if-nez v2, :cond_1e

    .line 70
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 71
    iget v2, v2, Ls51;->u:F

    cmpl-float v4, v2, v22

    if-lez v4, :cond_1b

    div-float v2, v21, v2

    float-to-double v4, v2

    const/4 v2, 0x6

    aput-wide v4, v6, v2

    :cond_1b
    const/4 v2, 0x2

    goto :goto_f

    :cond_1c
    :goto_d
    const/4 v2, 0x3

    goto :goto_f

    :cond_1d
    :goto_e
    const/4 v2, 0x4

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    :goto_f
    const/4 v4, 0x0

    aput v2, v9, v4

    .line 72
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 73
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    array-length v8, v2

    const/4 v12, 0x0

    :goto_10
    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v21, 0xe

    if-ge v12, v8, :cond_23

    aget v13, v2, v12

    if-eq v13, v5, :cond_22

    const/4 v5, 0x2

    if-eq v13, v5, :cond_22

    const/4 v5, 0x3

    if-eq v13, v5, :cond_22

    const/4 v5, 0x4

    if-ne v13, v5, :cond_1f

    goto :goto_13

    .line 76
    :cond_1f
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_21

    .line 77
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Range;

    .line 78
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 79
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0x0

    const-wide/32 v30, 0x186a0

    cmp-long v5, v24, v28

    if-eqz v5, :cond_20

    cmp-long v5, v26, v28

    if-eqz v5, :cond_20

    move-object v13, v2

    move-object v5, v3

    .line 80
    div-long v2, v26, v30

    long-to-double v2, v2

    aput-wide v2, v6, v15

    div-long v2, v24, v30

    long-to-double v2, v2

    aput-wide v2, v6, v14

    goto :goto_11

    :cond_20
    move-object v13, v2

    move-object v5, v3

    :goto_11
    const-wide/16 v2, 0x0

    const/16 v14, 0xf

    aput-wide v2, v6, v14

    .line 81
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 82
    iget-wide v2, v2, Ls51;->w:J

    .line 83
    div-long v2, v2, v30

    long-to-double v2, v2

    aput-wide v2, v6, v21

    goto :goto_12

    :cond_21
    move-object v13, v2

    move-object v5, v3

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move-object v3, v5

    move-object v2, v13

    const/4 v5, 0x1

    goto :goto_10

    :cond_22
    :goto_13
    move-object v5, v3

    const/4 v2, 0x4

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_23
    move-object v5, v3

    .line 85
    :goto_14
    :try_start_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    nop

    .line 87
    :cond_24
    :goto_15
    invoke-static {v4}, Lorg/chromium/media/VideoCapture;->a(Ljava/util/ArrayList;)[I

    move-result-object v2

    .line 88
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x1

    aput-object v2, v10, v3

    .line 89
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 90
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 91
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Ln51;->x:Ls51;

    .line 92
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 93
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_25

    const/4 v12, 0x1

    goto :goto_16

    :cond_25
    const/4 v12, 0x4

    .line 94
    :goto_16
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 95
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 96
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, v0, Ln51;->x:Ls51;

    .line 97
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 98
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    const/4 v12, 0x2

    goto :goto_17

    :cond_26
    const/4 v2, 0x1

    :goto_17
    aput v12, v9, v2

    .line 99
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 100
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    .line 101
    invoke-virtual {v2}, Landroid/util/Rational;->floatValue()F

    move-result v2

    float-to-double v3, v2

    const/16 v8, 0xb

    aput-wide v3, v6, v8

    .line 102
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 103
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    .line 104
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-double v12, v4

    const/16 v4, 0x8

    aput-wide v12, v6, v4

    .line 105
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-double v3, v3

    const/16 v8, 0x9

    aput-wide v3, v6, v8

    .line 106
    iget-object v3, v0, Ln51;->x:Ls51;

    .line 107
    iget-object v3, v3, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 108
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 109
    iget-object v3, v0, Ln51;->x:Ls51;

    .line 110
    iget-object v3, v3, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 111
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    float-to-double v2, v3

    const/16 v4, 0xa

    aput-wide v2, v6, v4

    .line 112
    :cond_27
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 113
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    array-length v8, v2

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v8, :cond_29

    aget v13, v2, v12

    if-ne v13, v4, :cond_28

    const/4 v13, 0x4

    .line 116
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_28
    const/4 v13, 0x4

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_18

    :cond_29
    const/4 v13, 0x4

    .line 117
    :goto_19
    :try_start_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x2

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1a

    :catch_1
    nop

    .line 119
    :cond_2a
    :goto_1a
    invoke-static {v3}, Lorg/chromium/media/VideoCapture;->a(Ljava/util/ArrayList;)[I

    move-result-object v2

    .line 120
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x2

    aput-object v2, v10, v3

    .line 121
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 122
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 123
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 124
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 125
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 126
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/16 v17, 0x2

    if-nez v2, :cond_2b

    aput v3, v9, v17

    goto :goto_1c

    :cond_2b
    if-ne v2, v3, :cond_2c

    goto :goto_1b

    :cond_2c
    const/4 v13, 0x2

    :goto_1b
    aput v13, v9, v17

    goto :goto_1c

    :cond_2d
    const/4 v2, 0x1

    .line 127
    :goto_1c
    sget-object v3, Ls51;->H:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v7, v14

    .line 129
    sget-object v3, Ls51;->H:Landroid/util/SparseIntArray;

    .line 130
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aput v3, v7, v15

    const/16 v3, 0x32

    const/16 v4, 0xf

    aput v3, v7, v4

    .line 131
    sget-object v3, Ls51;->H:Landroid/util/SparseIntArray;

    .line 132
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_2e

    .line 133
    sget-object v3, Ls51;->H:Landroid/util/SparseIntArray;

    .line 134
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v7, v21

    .line 135
    :cond_2e
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    aput-boolean v2, v11, v2

    const/4 v3, 0x2

    aput-boolean v2, v11, v3

    const/4 v1, 0x0

    :goto_1d
    move-object v8, v1

    goto/16 :goto_22

    :cond_2f
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v11, v2

    aput-boolean v4, v11, v3

    .line 136
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 137
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 138
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 139
    iget-object v2, v0, Ln51;->x:Ls51;

    .line 140
    iget-object v2, v2, Ls51;->i:Landroid/hardware/camera2/CaptureRequest;

    .line 141
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    const/4 v2, 0x1

    const/16 v20, 0x1

    goto :goto_1e

    :cond_30
    const/4 v2, 0x1

    const/16 v20, 0x0

    :goto_1e
    aput-boolean v20, v11, v2

    .line 142
    :cond_31
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 143
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    array-length v4, v1

    :goto_1f
    if-ge v3, v4, :cond_35

    aget v8, v1, v3

    if-nez v8, :cond_32

    const/4 v12, 0x1

    .line 146
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    goto :goto_20

    :cond_32
    const/4 v12, 0x1

    const/4 v13, 0x2

    if-ne v8, v13, :cond_33

    .line 147
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    const/4 v14, 0x3

    goto :goto_21

    :cond_33
    const/4 v14, 0x3

    if-ne v8, v14, :cond_34

    .line 148
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 149
    :cond_35
    invoke-static {v2}, Lorg/chromium/media/VideoCapture;->a(Ljava/util/ArrayList;)[I

    move-result-object v1

    .line 150
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_1d

    .line 151
    :goto_22
    iget-object v14, v0, Ln51;->x:Ls51;

    iget-wide v12, v14, Lorg/chromium/media/VideoCapture;->e:J

    iget-wide v1, v0, Ln51;->w:J

    .line 152
    new-instance v17, Lorg/chromium/media/PhotoCapabilities;

    move-object/from16 v4, v17

    move-object v5, v11

    invoke-direct/range {v4 .. v10}, Lorg/chromium/media/PhotoCapabilities;-><init>([Z[D[I[I[I[[I)V

    move-wide v15, v1

    .line 153
    invoke-static/range {v12 .. v17}, LJ/N;->MumkJZ3e(JLjava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
