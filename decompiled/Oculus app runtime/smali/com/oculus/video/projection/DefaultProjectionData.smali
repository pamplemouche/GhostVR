.class public Lcom/oculus/video/projection/DefaultProjectionData;
.super Lcom/oculus/video/projection/ProjectionData;
.source "DefaultProjectionData.java"


# direct methods
.method public constructor <init>(Lcom/oculus/video/projection/ProjectionType;)V
    .locals 7

    .line 59
    invoke-direct {p0}, Lcom/oculus/video/projection/ProjectionData;-><init>()V

    .line 61
    new-instance v6, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    sget-object v0, Lcom/oculus/video/projection/ProjectionType;->HALF_EQUIRECTANGULAR:Lcom/oculus/video/projection/ProjectionType;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v2, 0x43b40000    # 360.0f

    :goto_0
    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v6, p0, Lcom/oculus/video/projection/DefaultProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    .line 63
    iput-object p1, p0, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/video/projection/ProjectionType;FF)V
    .locals 7

    .line 69
    invoke-direct {p0}, Lcom/oculus/video/projection/ProjectionData;-><init>()V

    .line 70
    new-instance v6, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v6, p0, Lcom/oculus/video/projection/DefaultProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    .line 71
    iput-object p1, p0, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v8, "ApproximatedProjection"

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/oculus/video/projection/ProjectionData;-><init>()V

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string v0, "Projection"

    .line 12
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/oculus/video/projection/ProjectionType;->fromFBProjection(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object v1

    iput-object v1, v6, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    .line 15
    iget-object v1, v6, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v2, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    if-ne v1, v2, :cond_1

    .line 16
    invoke-static {v0}, Lcom/oculus/video/projection/ProjectionType;->fromVideoLayout(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    iput-object v0, v6, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    :cond_1
    const-string v0, "Pose"

    .line 20
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "Yaw"

    .line 22
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Pitch"

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v3, "Roll"

    .line 24
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 25
    :goto_2
    new-instance v3, Lcom/oculus/video/projection/ProjectionData$Pose;

    invoke-direct {v3, v6, v1, v2, v0}, Lcom/oculus/video/projection/ProjectionData$Pose;-><init>(Lcom/oculus/video/projection/ProjectionData;FFF)V

    iput-object v3, v6, Lcom/oculus/video/projection/DefaultProjectionData;->pose:Lcom/oculus/video/projection/ProjectionData$Pose;

    :cond_5
    const-string v10, "FovX"

    .line 28
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/high16 v11, 0x43b40000    # 360.0f

    if-eqz v0, :cond_6

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v2, v0

    goto :goto_3

    :cond_6
    const/high16 v2, 0x43b40000    # 360.0f

    :goto_3
    const-string v12, "FovY"

    .line 29
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/high16 v13, 0x43340000    # 180.0f

    if-eqz v0, :cond_7

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v3, v0

    goto :goto_4

    :cond_7
    const/high16 v3, 0x43340000    # 180.0f

    :goto_4
    const-string v14, "Meridian"

    .line 31
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v4, v0

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    const-string v15, "Horizon"

    .line 33
    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v5, v0

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    .line 34
    :goto_6
    new-instance v1, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    move-object v0, v1

    move-object v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v9, v6, Lcom/oculus/video/projection/DefaultProjectionData;->leftFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    const-string v0, "RightFov"

    .line 36
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 37
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    move v2, v1

    goto :goto_7

    :cond_a
    const/high16 v2, 0x43b40000    # 360.0f

    .line 39
    :goto_7
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v1, v3

    move v3, v1

    goto :goto_8

    :cond_b
    const/high16 v3, 0x43340000    # 180.0f

    .line 40
    :goto_8
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v1, v4

    move v4, v1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    .line 41
    :goto_9
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    move v5, v0

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    .line 42
    :goto_a
    new-instance v9, Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/projection/ProjectionData$FoVProperties;-><init>(Lcom/oculus/video/projection/ProjectionData;FFFF)V

    iput-object v9, v6, Lcom/oculus/video/projection/DefaultProjectionData;->rightFovProperties:Lcom/oculus/video/projection/ProjectionData$FoVProperties;

    .line 45
    :cond_e
    iget-object v0, v6, Lcom/oculus/video/projection/DefaultProjectionData;->projectionType:Lcom/oculus/video/projection/ProjectionType;

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->VR180:Lcom/oculus/video/projection/ProjectionType;

    if-ne v0, v1, :cond_f

    const-string v0, "VR180MeshData"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 46
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 51
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/oculus/video/projection/ProjectionType;->fromVideoLayout(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    iput-object v0, v6, Lcom/oculus/video/projection/DefaultProjectionData;->approxMeshProjection:Lcom/oculus/video/projection/ProjectionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_f
    return-void
.end method


# virtual methods
.method parse([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method
